Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.13091.1619622552387194324
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 08:09:12 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5D1E1042
	for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 08:09:10 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EC9A3F73B
	for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 08:09:10 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder2 2/2] meta-arm doesn't use meta-kernel anymore
Date: Wed, 28 Apr 2021 16:09:04 +0100
Message-Id: <20210428150904.958213-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210428150904.958213-1-ross.burton@arm.com>
References: <20210428150904.958213-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.py | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/config.py b/config.py
index a723e3f..520de47 100644
--- a/config.py
+++ b/config.py
@@ -10,14 +10,14 @@ buildertorepos =3D {
     "a-quick": ["poky", "meta-intel", "oecore", "bitbake",
                 "meta-mingw", "meta-gplv2"],
     "a-full": ["poky", "meta-intel", "oecore", "bitbake",
-                "meta-mingw", "meta-gplv2", "meta-arm", "meta-kernel"],
+                "meta-mingw", "meta-gplv2", "meta-arm"],
     "non-gpl3": ["poky", "meta-gplv2"],
     "meta-mingw": ["poky", "meta-mingw"],
     "qa-extras": ["poky", "meta-mingw"],
     "meta-oe": ["poky", "meta-openembedded"],
     "meta-virt": ["poky", "meta-openembedded", "meta-virtualization"],
     "meta-intel": ["poky", "meta-intel"],
-    "meta-arm": ["poky", "meta-arm", "meta-kernel"],
+    "meta-arm": ["poky", "meta-arm"],
     "meta-agl-core": ["poky", "meta-agl"],
     "meta-aws": ["poky", "meta-aws", "meta-openembedded"],
     "qemuarm-oecore": ["oecore", "bitbake"],
@@ -54,7 +54,6 @@ repos =3D {
     "meta-gplv2": ["git://git.yoctoproject.org/meta-gplv2", "master"],
     "meta-openembedded": ["git://git.openembedded.org/meta-openembedded"=
, "master"],
     "meta-virtualization": ["git://git.yoctoproject.org/meta-virtualizat=
ion", "master"],
-    "meta-kernel": ["https://gitlab.com/openembedded/community/meta-kern=
el.git", "master"],
     "yocto-docs": ["git://git.yoctoproject.org/yocto-docs", "master"]
 }
=20
--=20
2.25.1

