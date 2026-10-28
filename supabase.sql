-- รันใน Supabase > SQL Editor
create table if not exists timetable_state (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);
alter table timetable_state enable row level security;
create policy "anon read"   on timetable_state for select using (true);
create policy "anon insert" on timetable_state for insert with check (true);
create policy "anon update" on timetable_state for update using (true) with check (true);
