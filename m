Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.4852.1594959005038743125
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 21:10:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r1ROzCg6;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id e8so6043776pgc.5
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 21:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=dA9+A5Y/IjSlSDnKWUgwikrIEC5qyWmRPqAY8pJiSsA=;
        b=r1ROzCg6xG7bnHfoW0HN7n05XGxodwhGXNT4zrht36+eLb2ExGHbeJTVTLgEfdN3M1
         xSPNH2UfvBB9n2EnnNkAIX5UjnP+/Bg3D7GVIsOI2AUAT55fZi61DPt+njZqa7i7uvAO
         hqkmSTeQc1aW2ebDpbDgHULwrEfPwGtfQMxhB4JchzamGabT/gQVv7CUe0btqlObzajV
         QUn4sr0sLh9CLKGuSmWWeY8/3xoPyu6GTR6vigBhlNVTXERFlG2y3dtGTmjOVzymv2Ak
         puLiQJee81CW1ygS+/IBv0O+J6hv3pqOEEtoFcLtZfPTdO5aYVA/Z5bcWqKBXdFDJ9O1
         njbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=dA9+A5Y/IjSlSDnKWUgwikrIEC5qyWmRPqAY8pJiSsA=;
        b=m+Yr35W8BVvW4USr2pImWWlZks/mPGX3PaAaXr5zQ9aDZTMfRaMRj+icTOCeU6zqDM
         KoAC8rLUU+uYRCH35k8hqtL8En6WNdPzBgN5m1tu0UUXJJg2PS1IATRoimx3KzCC/nrp
         CGMF1Pv2EMRr80MNW63E94SmYy1G+XDwNDhSV2c/GAKJXHD3DXzX0xxis6fll1KdH1N/
         VBhGgnGDWakGBJ8lIarcRnrhUApDngbj8ULrflompQiHblc5I4U0/76gBg7h5FQye0c0
         Ckd591TATc8KsB1yqmRc32bc2PKLNHVzK4irx+oSBIZllbeWpBL63Dvk1Iv/o+fHbxL/
         ud4g==
X-Gm-Message-State: AOAM5319exSuRTre00ZNdtIBw46xMQmBSk8nFzEq9cpltiT6+/uuQxE/
	MYwh4bl4zcv7w9jANRQd9fkBgagBu7o=
X-Google-Smtp-Source: ABdhPJyRu1zvNR+i+W6KS1nEMkOrZMl3/aHAeuyEZEnxCJNxBymdnBvDuRsPG/i81R3dAx1c47us0g==
X-Received: by 2002:a63:5013:: with SMTP id e19mr7127845pgb.68.1594959003966;
        Thu, 16 Jul 2020 21:10:03 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from localhost.localdomain (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id k7sm6212446pgh.46.2020.07.16.21.10.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 21:10:03 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] python3-oauth2client: add recipe
Date: Fri, 17 Jul 2020 04:09:56 +0000
Message-Id: <20200717041001.17312-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.8.6

Signed-off-by: Armin Kuster <akuster808@gmail.com>

---
[V2]
Add missing rdepends
---
 recipes-python/python/python3-oauth2client_4.1.3.bb | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 recipes-python/python/python3-oauth2client_4.1.3.bb

diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb b/recipes-python/python/python3-oauth2client_4.1.3.bb
new file mode 100644
index 0000000..ca25d14
--- /dev/null
+++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
@@ -0,0 +1,11 @@
+SUMMARY = "Add version info to file paths."
+SECTION = "devel/python"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc"
+
+PYPI_PACKAGE = "oauth2client"
+SRC_URI[sha256sum] = "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
+
+inherit pypi setuptools3
+
+RDEPENDS_${PN} = "python3-six python3-rsa python3-httplib2 python3-pyasn1 python3-pyasn1-modules"
-- 
2.8.6

