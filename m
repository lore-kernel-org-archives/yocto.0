Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.13566.1619622552084027183
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 08:09:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EC801FB
	for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 08:09:10 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F28683F73B
	for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 08:09:09 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 1/2] meta-arm has a hardknott branch now
Date: Wed, 28 Apr 2021 16:09:03 +0100
Message-Id: <20210428150904.958213-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 schedulers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 8b166e0..93b8f34 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -206,7 +206,7 @@ def parent_scheduler(target):
                 'branch': 'hardknott',
                 'branch_poky': 'hardknott',
                 'branch_bitbake': '1.50',
-                'branch_meta-arm': 'master',
+                'branch_meta-arm': 'hardknott',
                 'branch_meta-gplv2': 'hardknott',
                 'branch_meta-intel': 'hardknott',
                 'branch_meta-mingw': 'hardknott',
--=20
2.25.1

