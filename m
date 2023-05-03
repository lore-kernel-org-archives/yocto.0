Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB6EC77B78
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 12:06:49 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.17337.1683115600420337581
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 05:06:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NoM4r9HG;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-b9a6ab9ede3so7105037276.2
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 05:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683115599; x=1685707599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=sEIO8/VyT5gGbkwEHWkDFqmG73a5pVFFhVBAgfsDDiQ=;
        b=NoM4r9HGr2K6MHoCUolNjw28GsJ+Rb5mJRD7PUNVXZLv5DQkkq5mb1QEHs1ATjkj+5
         Qp/L2OjQPaZ0j6x0gB/r7IJ/LQkgSQkK9+YM5TQ3ODeBpe3rQZEHEqRY0M3xRx4Cfg9u
         3KpUG+6r0gALyVAB65QqPHfzKC8Cupuzc6vCXYZwZYXHh5Rki4ntIQ4aKSxoYTct010v
         yh6aTF3T2aMw6RakWEoJ3MHM9vVXl3BzYtI3EZ//WZVWkaFRhB5M0JptwCl6Q8Cnwh78
         d52n15D4qoAne3h5b3l+W4wjO4jQHlAlANIqBeAgQH7S+HyPiFk+Qq5ZAIVo0xJ8jlaA
         mlUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683115599; x=1685707599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sEIO8/VyT5gGbkwEHWkDFqmG73a5pVFFhVBAgfsDDiQ=;
        b=MT1bu0guoZDxet24A2UTCh52URI2ePpS+ysopY5kzacVf3c51ue1YvLKa8zCKJvcMQ
         vchBl8HL17ukJ9C7knUQtYvQVsPB5IyLzuzNnBYMH8e6bnARRHZ1OcGHs6FO3aNyssCA
         mmQU/N+A51IDl4BKt20K/1YG3igf44c/3D3gp0/kw4yP/1Q4IUWbVwSrIYIyyQIbXtQL
         YnOGRXYJuOwN84OuvG4aZR618nOU8BuvkweH1fEYLLQqM+IYs3xxK+T2V5ZsEmV8M9MS
         952gEzRpf6Xypveu0etsdjTgjB6fApQTUq9FVlzCWmeKspMw+c2tou5jqemwJxXx6PjU
         AbeQ==
X-Gm-Message-State: AC+VfDzDdvYpqy52v7ucvBBHfo4xnCmaadwVL9Rgcg9EUl6/n+XCr+Oq
	R7Sap4SNHaDLFCz9uOHIWFb/dDAS5xc0Rw==
X-Google-Smtp-Source: ACHHUZ65jreomw/9L70o/i6z4hedKi9evIJ9Omrcsbqa9IUNpw01UwsBFlZAHQ2Hzc43UvJ6Gq46VQ==
X-Received: by 2002:a25:dc44:0:b0:b9e:9513:b896 with SMTP id y65-20020a25dc44000000b00b9e9513b896mr3798739ybe.49.1683115599227;
        Wed, 03 May 2023 05:06:39 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:6f7a:c057:293d:a9b7])
        by smtp.gmail.com with ESMTPSA id a16-20020a056902057000b00b96816d3790sm7878024ybt.36.2023.05.03.05.06.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 05:06:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] lynis: Add decoding OE and Poky
Date: Wed,  3 May 2023 08:06:38 -0400
Message-Id: <20230503120638.943237-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 12:06:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59852

Patch sent upstream.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...sdetection-add-OpenEmbedded-and-Poky.patch | 51 +++++++++++++++++++
 .../recipes-auditors/lynis/lynis_3.0.8.bb     |  4 +-
 2 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch

diff --git a/meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch b/meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
new file mode 100644
index 0000000..d365ec1
--- /dev/null
+++ b/meta-security-compliance/recipes-auditors/lynis/files/0001-osdetection-add-OpenEmbedded-and-Poky.patch
@@ -0,0 +1,51 @@
+From 4b1de197ee0dd259cc05d5faf7fd38b580d841d2 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Tue, 2 May 2023 16:22:13 -0400
+Subject: [PATCH] osdetection: add OpenEmbedded and Poky
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Upstream-Status: Pending
+https://github.com/CISOfy/lynis/pull/1390
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+---
+ include/osdetection | 14 ++++++++++++++
+ 1 file changed, 14 insertions(+)
+
+diff --git a/include/osdetection b/include/osdetection
+index 989b1b3..e5974e5 100644
+--- a/include/osdetection
++++ b/include/osdetection
+@@ -308,6 +308,12 @@
+                             OS_REDHAT_OR_CLONE=1
+                             OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
+                         ;;
++                        "nodistro")
++                            LINUX_VERSION="openembedded"
++                            OS_NAME="OpenEmbedded"
++                            OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
++                            OS_VERSION_FULL=$(grep "^VERSION=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
++                        ;;
+                         "opensuse-tumbleweed")
+                             LINUX_VERSION="openSUSE Tumbleweed"
+                             # It's rolling release but has a snapshot version (the date of the snapshot)
+@@ -330,6 +336,14 @@
+                             OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
+                             OS_VERSION_FULL=$(grep "^PRETTY_NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
+                         ;;
++                        "poky")
++                            LINUX_VERSION="Poky"
++                            OS_NAME="openembedded"
++                            LINUX_VERSION_LIKE="openembedded"
++                            OS_VERSION=$(grep "^VERSION_ID=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
++                            OS_VERSION_FULL=$(grep "^PRETTY_NAME=" /etc/os-release | awk -F= '{print $2}' | tr -d '"')
++
++                        ;;
+                         "pop")
+                             LINUX_VERSION="Pop!_OS"
+                             LINUX_VERSION_LIKE="Ubuntu"
+-- 
+2.25.1
+
diff --git a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
index d38c17a..0a49812 100644
--- a/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
+++ b/meta-security-compliance/recipes-auditors/lynis/lynis_3.0.8.bb
@@ -6,7 +6,9 @@ HOMEDIR = "https://cisofy.com/"
 LICENSE = "GPL-3.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3edd6782854304fd11da4975ab9799c1"
 
-SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz"
+SRC_URI = "https://cisofy.com/files/${BPN}-${PV}.tar.gz \
+           file://0001-osdetection-add-OpenEmbedded-and-Poky.patch \
+          "
 
 SRC_URI[sha256sum] = "98373a4cc9d0471ab9bebb249e442fcf94b6bf6d4e9c6fc0b22bca1506646c63"
 
-- 
2.25.1


