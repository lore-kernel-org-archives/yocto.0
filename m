Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.5405.1618814532486049950
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 23:42:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=cnMinmP2;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: liu.ming50@gmail.com)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1562838C06E9
	for <yocto@yoctoproject.org>; Mon, 19 Apr 2021 06:42:12 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id n138so54320435lfa.3
        for <yocto@yoctoproject.org>; Sun, 18 Apr 2021 23:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PRS50Uy8HE6ElCuFrPQGJWN6U7lKcsioc3T58SJUtgY=;
        b=cnMinmP2gKieXqHCSB3/cuiJfOLe/1jcrCWXmq/XTkp4j+x2ZR8mN1zTCNUyyHuqUc
         Hr4KvNYLIn2ij1vzLZOH4wiYz7xHurgFu07PJPYFjr+ZTG1gnFGQiXhkdcpdNHuXL2cZ
         Ph4mzFObsCxXd+N/utDVMdTnDq7nznmOX2o+t7pZvWCpcnL1XQXK7qrKSk/OoTtDOqYN
         OA2oD5T3aa/psvsgyscQIdrueREPLs3w1Ynxzt7TX6EdifcpaupUSZseDLJst01M6U+8
         HGCIbr/NiM5CsFGtCD9r9oNMArRNWO7fnkLkzKEGwEK7l/3WFC7+rb00y5oUzYHsU19C
         Px5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PRS50Uy8HE6ElCuFrPQGJWN6U7lKcsioc3T58SJUtgY=;
        b=OKDpJv/8z0EoR65UYq+3tODxUy3Pfn+2nBVeWdlJoowFIvB+pJxAw8C3hvN1mTLyuq
         N4eYncecms2vCSuvLCsIvwyfauywKhbpo3wLuEbBhE1KZuFohNHtZnqU88c0TcQXfQBY
         JolqPZCAx6kD1Rbs3qxWZpd/dX/ozW3Uyd2+P3zzZzoCn7MifPY51uRr8DaPAPxLiJEi
         ATaepoEFUi3p77Su3hFiDCx1/rv3M2Wt9ZobTi4axbXWuPt9fpCvUyc4hX5tOMt/dY3Q
         T0hbQqqdsLTlKGu9nDar0eSwgm3bQY3hbgELAaX8tFDkDu+U/1aUEeYQapJ5J15c63dn
         RTpQ==
X-Gm-Message-State: AOAM531a++JvkrKdloV1Gwpup6aTGfoFk/bdvuIV45ygVbt6TCYx0Xec
	muMLmC6qB9p02hB58nuIMOa1Vn3Ue2yl+g==
X-Google-Smtp-Source: ABdhPJw31XcxMYHcSuuB9r5v8C/Ovwxy6BTe+su7v/7rYVFT4HmcRA3CIDfuIL5eLbIhDSjjgmwDrw==
X-Received: by 2002:a19:c218:: with SMTP id l24mr8262052lfc.529.1618814530414;
        Sun, 18 Apr 2021 23:42:10 -0700 (PDT)
Received: from localhost.localdomain ([2a00:801:234:864a:9887:2624:8ad3:e96d])
        by smtp.gmail.com with ESMTPSA id q29sm602509lfd.264.2021.04.18.23.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Apr 2021 23:42:10 -0700 (PDT)
From: "Ming Liu" <liu.ming50@gmail.com>
To: yocto@yoctoproject.org
Cc: akuster808@gmail.com,
	sergio.prado@toradex.com,
	Ming Liu <liu.ming50@gmail.com>
Subject: [meta-security] [dunfell] [PATCH 2/3] meta: drop IMA_POLICY from policy recipes
Date: Mon, 19 Apr 2021 08:41:58 +0200
Message-Id: <20210419064159.12487-3-liu.ming50@gmail.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210419064159.12487-1-liu.ming50@gmail.com>
References: <20210419064159.12487-1-liu.ming50@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Ming Liu <liu.ming50@gmail.com>

IMA_POLICY is being referred as policy recipe name in some places and it
is also being referred as policy file in other places, they are
conflicting with each other which make it impossible to set a IMA_POLICY
global variable in config file.

Fix it by dropping IMA_POLICY definitions from policy recipes

Signed-off-by: Ming Liu <liu.ming50@gmail.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ima-policy-appraise-all_1.0.bb                       | 9 ++-------
 .../ima_policy_hashed/ima-policy-hashed_1.0.bb           | 9 ++-------
 .../ima_policy_simple/ima-policy-simple_1.0.bb           | 9 ++-------
 3 files changed, 6 insertions(+), 21 deletions(-)

diff --git a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-=
policy-appraise-all_1.0.bb b/meta-integrity/recipes-security/ima_policy_a=
ppraise_all/ima-policy-appraise-all_1.0.bb
index da62a4c..84ea161 100644
--- a/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-=
appraise-all_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-=
appraise-all_1.0.bb
@@ -2,19 +2,14 @@ SUMMARY =3D "IMA sample simple appraise policy "
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_appraise_all"
-
-SRC_URI =3D " file://${IMA_POLICY}"
+SRC_URI =3D " file://ima_policy_appraise_all"
=20
 inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_appraise_all ${D}/${sysconfdir}/ima/im=
a-policy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy=
-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-po=
licy-hashed_1.0.bb
index ebb0426..ff7169e 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed=
_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed=
_1.0.bb
@@ -2,13 +2,8 @@ SUMMARY =3D "IMA sample hash policy"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_hashed"
-
 SRC_URI =3D " \
-    file://${IMA_POLICY} \
+    file://ima_policy_hashed \
 "
=20
 inherit features_check
@@ -16,7 +11,7 @@ REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-poli=
cy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
diff --git a/meta-integrity/recipes-security/ima_policy_simple/ima-policy=
-simple_1.0.bb b/meta-integrity/recipes-security/ima_policy_simple/ima-po=
licy-simple_1.0.bb
index cb4b6b8..0e56aec 100644
--- a/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple=
_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple=
_1.0.bb
@@ -2,19 +2,14 @@ SUMMARY =3D "IMA sample simple policy"
 LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbc=
b788c80a0384361b4de20420"
=20
-# This policy file will get installed as /etc/ima/ima-policy.
-# It is located via the normal file search path, so a .bbappend
-# to this recipe can just point towards one of its own files.
-IMA_POLICY ?=3D "ima_policy_simple"
-
-SRC_URI =3D " file://${IMA_POLICY}"
+SRC_URI =3D " file://ima_policy_simple"
=20
 inherit features_check
 REQUIRED_DISTRO_FEATURES =3D "ima"
=20
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima/ima-policy
+    install ${WORKDIR}/ima_policy_simple ${D}/${sysconfdir}/ima/ima-poli=
cy
 }
=20
 FILES_${PN} =3D "${sysconfdir}/ima"
--=20
2.29.0

