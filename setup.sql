-- Run once in Supabase: SQL Editor > New query > paste > Run
create table if not exists public.tracker_days (
  user_id    uuid not null default auth.uid() references auth.users(id) on delete cascade,
  app        text not null,
  day_key    text not null,
  data       jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (user_id, app, day_key)
);

alter table public.tracker_days enable row level security;

drop policy if exists "Own rows only" on public.tracker_days;
create policy "Own rows only" on public.tracker_days
  for all to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
