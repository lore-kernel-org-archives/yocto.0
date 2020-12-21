Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.1195.1608579949777634289
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Dec 2020 11:45:49 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=mgz3yP9o;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 16C4C38C0823
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2020 19:45:49 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id u19so10732716edx.2
        for <yocto@yoctoproject.org>; Mon, 21 Dec 2020 11:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VAh0phLA9Vk02zYHzbDugLQ+v5TCRfdfYLcetVwFvJY=;
        b=mgz3yP9o1yfPcS770ceSM94IhR+4+dpreOluQnGVT51ivJXras0xVkA9rEemd+uZGJ
         R6ffl2dnNHscY10FsEocqrtag/slWDjzyK6Xi1mP08SC0F7+t7bd/h6QsFKfFUpNzQgS
         wn9Qm2hr9i6pGHReqYOsizHTw1zD3Uv1puuksabclhLWHh5trcdUTDEN5OPt6KXvHOJn
         rBGvTREtswP1BV65m0uYRsX2/CJF7MHWu6T8cX48k6l1DahLq6xBD8nMC6+aw4dnDF2U
         MxwZehr+XMHgvMGj1VPUma+LhbuSVtgkY18WGW331FtZbb42tnxcBToFY+szmyBt7xWu
         AkQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VAh0phLA9Vk02zYHzbDugLQ+v5TCRfdfYLcetVwFvJY=;
        b=aUhGTiHPMpCRb1hWVCMBY1lIeivoH0b5nxEiZpKEgoqcUTr2eO+j1bIvHCpMx7bJMy
         wEB3KcDAS8JIr0KqdFRJ4qVhavb8BUwlDl3Wb76be26sbCcXsOO2GNKQ0riyONMB2x4X
         blmPliYAm8/krwk8llIdKSYtYrFq1XlgdEAuqLveTuWhkCSvH3ihR22lvYxTrpRldxKx
         OSaMGpd8r3csmXqIIDL5mqIUdSWNWw9nmfVOnrwkQSWH8bugpXupdZTvK+pIiKEUhpei
         iLBRgukaGWXCGdJeGQBV8sNDbWYWvrLbbpPg9SXLzenY9lDNfMhrfMeZCBgt4mSmc8+o
         dtnA==
X-Gm-Message-State: AOAM530KQWX+tb2PDYl/1065LCHbZ87dZPuV5f2lhs5ou/tHBLKDHbPn
	7PSFe5e777oBLp9bBY+RWJtsvloJO94=
X-Google-Smtp-Source: ABdhPJyq2Udqj+fZiyXyujLHXrhwi93xrz7zjoKkMo2hfRxeKX9tqakfCnrYHGnOYJbKV7YxzDJ8FA==
X-Received: by 2002:aa7:cf8f:: with SMTP id z15mr17355757edx.17.1608579947543;
        Mon, 21 Dec 2020 11:45:47 -0800 (PST)
Received: from linux-f9zs.fritz.box ([2a02:2450:1011:4f7:596d:bf31:3950:5bda])
        by smtp.gmail.com with ESMTPSA id o10sm9406050eju.89.2020.12.21.11.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 11:45:46 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [auh][PATCH] upgrade-helper.py: handle unassigned recipes correctly
Date: Mon, 21 Dec 2020 20:45:41 +0100
Message-Id: <20201221194541.2484-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Attempting to send to unassigned@yoctoproject.org bounces immediately,
which means the CC recipients (such as oe-core list) won't get the email
either.

Instead, send to cc directly.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 upgrade-helper.py | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/upgrade-helper.py b/upgrade-helper.py
index 7ed7af4..eb3935e 100755
--- a/upgrade-helper.py
+++ b/upgrade-helper.py
@@ -320,7 +320,10 @@ class Updater(object):
=20
         cc_addr =3D None
         if "cc_recipients" in settings:
-            cc_addr =3D settings["cc_recipients"].split()
+            if 'unassigned' in to_addr:
+                to_addr =3D settings["cc_recipients"].split()
+            else:
+                cc_addr =3D settings["cc_recipients"].split()
=20
         newversion =3D pkg_ctx['NPV'] if not pkg_ctx['NPV'].endswith("ne=
w-commits-available") else pkg_ctx['NSRCREV']
         subject =3D "[AUH] " + pkg_ctx['PN'] + ": upgrading to " + newve=
rsion
--=20
2.29.2

