# النسخة المستقلة

هذه النسخة لا تستخدم Manus OAuth أو Manus storage أو Forge أو Manus runtime.

## ما تحتاجه قبل النشر
- استضافة Node.js أو VPS
- قاعدة MySQL/MariaDB مستقلة عبر `DATABASE_URL`
- مجلد `uploads/` قابل للكتابة
- دومينك الخاص بعد ضبط DNS

## التشغيل
```bash
pnpm install
pnpm db:push
pnpm build
NODE_ENV=production pnpm start
```

تسجيل الدخول محلي عبر حسابات `staff_accounts`، والصور تحفظ في `UPLOAD_DIR` وتظهر من `/uploads`.
