Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.3591.1603188265105588386
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 03:04:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E176101E;
	Tue, 20 Oct 2020 03:04:22 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1344D3F66E;
	Tue, 20 Oct 2020 03:04:21 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
Subject: [meta-zephyr][PATCH] README: add patch submission details
Date: Tue, 20 Oct 2020 11:04:18 +0100
Message-Id: <20201020100418.136898-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 README.txt | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/README.txt b/README.txt
index be1ea39..a02659a 100644
--- a/README.txt
+++ b/README.txt
@@ -69,4 +69,15 @@ or
     $ MACHINE=3Dqemu-nios2 bitbake zephyr-kernel-test-all -ctestimage
        =20
=20
+Contributing
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
+Patches for meta-zephyr should be sent to the yocto@lists.yoctoproject.o=
rg
+mailing list.  See https://lists.yoctoproject.org/g/yocto for subscripti=
on
+details and the list archive.  Please add [meta-zephyr] to the subject s=
o
+the patches are identifable.
+
+Git can be configured to send mails appropriately when using git send-em=
ail:
+
+$ git config --local sendemail.to yocto@lists.yoctoproject.org
+$ git config --local format.subjectPrefix meta-zephy][PATCH
--=20
2.25.1

