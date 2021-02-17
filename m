Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.11039.1613582462562119133
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 09:21:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 101DF1FB
	for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 09:21:02 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD9873F73D
	for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 09:21:01 -0800 (PST)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2] schedulers: add appropriate meta-arm branches to the release selector
Date: Wed, 17 Feb 2021 17:20:56 +0000
Message-Id: <20210217172056.3012239-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 schedulers.py | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/schedulers.py b/schedulers.py
index dbf72c9..8479290 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -175,6 +175,7 @@ def parent_scheduler(target):
                 'branch': 'master',
                 'branch_poky': 'master',
                 'branch_bitbake': 'master',
+                'branch_meta-arm': 'master',
                 'branch_meta-gplv2': 'master',
                 'branch_meta-intel': 'master',
                 'branch_meta-mingw': 'master',
@@ -184,6 +185,7 @@ def parent_scheduler(target):
                 'branch': 'master',
                 'branch_poky': 'master-next',
                 'branch_bitbake': 'master-next',
+                'branch_meta-arm': 'master',
                 'branch_meta-gplv2': 'master',
                 'branch_meta-intel': 'master',
                 'branch_meta-mingw': 'master',
@@ -194,6 +196,7 @@ def parent_scheduler(target):
                 'branch_poky': 'ross/mut',
                 'repo_poky': 'git://git.yoctoproject.org/poky-contrib',
                 'branch_bitbake': 'master',
+                'branch_meta-arm': 'master',
                 'branch_meta-gplv2': 'master',
                 'branch_meta-intel': 'master',
                 'branch_meta-mingw': 'master',
@@ -203,6 +206,7 @@ def parent_scheduler(target):
                 'branch': 'gatesgarth',
                 'branch_poky': 'gatesgarth',
                 'branch_bitbake': '1.48',
+                'branch_meta-arm': 'gatesgarth',
                 'branch_meta-gplv2': 'gatesgarth',
                 'branch_meta-intel': 'gatesgarth',
                 'branch_meta-mingw': 'gatesgarth',
@@ -212,6 +216,7 @@ def parent_scheduler(target):
                 'branch': 'dunfell',
                 'branch_poky': 'dunfell',
                 'branch_bitbake': '1.46',
+                'branch_meta-arm': 'dunfell',
                 'branch_meta-gplv2': 'dunfell',
                 'branch_meta-intel': 'dunfell',
                 'branch_meta-mingw': 'dunfell',
--=20
2.25.1

