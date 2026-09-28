# 60-Day Hair and Face Log

Live app: https://mrshahameer.github.io/hair-face-tracker/

A tracker for a 60-day hair and face routine. It covers the derma roller, Anagrow serum, minoxidil, finasteride, Maxzoon, Nutri Collagen and Face It wash.

## Features
- Daily checklist for morning, afternoon and night
- Weighted score out of 100. Missed tasks cost points.
- Missed tasks list and red marks on the 60-day grid
- Cloud sync with Supabase (email login, private per user)
- Works offline. Data also saves in the browser.

## Cloud sync setup (once)
1. Create a free project at supabase.com.
2. SQL Editor, New query, paste `setup.sql`, press Run.
3. Project Settings, API. Copy the Project URL and the anon public key.
4. Open the app, go to Cloud sync, paste both, press Save connection.
5. Create account, then sign in on every device with the same email.

Never paste the service_role key into the app.
