Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web12.2986.1625431685154158207
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 13:48:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E82MCW6N;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id u14so16267757pga.11
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 13:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5Q35+7BcJPsntT+sKeqamaf7/gPo4q2jOiF5TV6Gbs=;
        b=E82MCW6N1k1IOouKs+Eu6jU9KRmtL+PvtjNwgtsxK73IYgHjliJCgEDjEia5AKISZo
         Afz83642b0hgKKuWBOZYqmik5k4PI1GcidvUryxxMDfToDnDwc1QJfUfDjf/mZF+Acjq
         JQvxUdG5vaV6UzEuH/Tyw5eUusz/wprhgl5SMAwFWh19qKSS5YcYOSzunFoVdpMc7xxW
         eRieWLAHD/D1YZocnbNyOEmU037b2usGtsFFdPcIqmN3SZk8ZKc5AtLVby0UoXlC39kf
         xIQOPuIMzm5ybJ1zdhyzRTFPwh2L/n4kNCLOebru4VSh8d/qKd9lTWkBjMO31I+7hUZ6
         WyUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5Q35+7BcJPsntT+sKeqamaf7/gPo4q2jOiF5TV6Gbs=;
        b=Au8rKI3GWaqu582iu2OgZRNJ8zBineWR/lJj/S/p3j4e+uJIyuWsXlGd5CCKbsa8Br
         0hZoNyJk11tUCLrPA6oWC9Jc+exOBvNe9rq3XzI6sfFmwbqoUmhFP5lXR1FcWmz4oyuM
         j+yYka3jfe3jgWEMiqsk29EmAAZCSj9Xj58FIMgymVwOz5UKgqBJpu4ynVt0UBIJrOH/
         sLGBq0WyGMfN1i0jpm7zcoqEYgDwKccr6Gi0CfjgY07IgjpWv6ZAvmnFyA4KZKprlMub
         ktplrzYh58rw/8m0BMlXyMMyHlhgLtViWYTYqJrU0Zd3FT6rauNLOfKGmx5VFCy6oh5i
         X1hg==
X-Gm-Message-State: AOAM530qsOF2U0t8OyLpxox1Sw4N0kYUg7vzovAmx3HPAlGLh8B388MC
	2JiRqt9ebq+fDTl9PsPBYBVCMX5h+hxesA==
X-Google-Smtp-Source: ABdhPJz9C0T1Luwzxc+DmsSocEe2dVSLJB3Dh766rVmwXCibHM1TyF755nw1LQLKpD5xx88F/Cox+A==
X-Received: by 2002:aa7:9409:0:b029:303:1db:94d5 with SMTP id x9-20020aa794090000b029030301db94d5mr11570174pfo.72.1625431684357;
        Sun, 04 Jul 2021 13:48:04 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-X13-Gen-1.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5f44:8c5e:6750:1a4a])
        by smtp.gmail.com with ESMTPSA id t5sm11939953pgb.58.2021.07.04.13.48.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jul 2021 13:48:03 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sssd: update to 2.5.1
Date: Sun,  4 Jul 2021 13:48:02 -0700
Message-Id: <20210704204802.2807983-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

See full change log: https://sssd.io/release-notes/sssd-2.5.1.html

Including a musl build work around

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/sssd/files/musl_fixup.patch  | 53 +++++++++++++++++++
 .../sssd/{sssd_2.5.0.bb => sssd_2.5.1.bb}     |  6 ++-
 2 files changed, 57 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/sssd/files/musl_fixup.patch
 rename recipes-security/sssd/{sssd_2.5.0.bb => sssd_2.5.1.bb} (96%)

diff --git a/recipes-security/sssd/files/musl_fixup.patch b/recipes-security/sssd/files/musl_fixup.patch
new file mode 100644
index 0000000..68f267c
--- /dev/null
+++ b/recipes-security/sssd/files/musl_fixup.patch
@@ -0,0 +1,53 @@
+fix musl build failures
+
+Missing _PATH_HOSTS and some NETDB defines when musl is enabled.
+
+These are work arounds for now while we figure out where the real fix should reside (musl, gcompact, sssd):
+
+./sssd-2.5.1/src/providers/fail_over.c:1199:19: error: '_PATH_HOSTS' undeclared (first use in this function)
+|  1199 |                   _PATH_HOSTS);
+|       |                   ^~~~~~~~~~~
+
+and 
+
+i./sssd-2.5.1/src/sss_client/nss_ipnetworks.c:415:21: error: 'NETDB_INTERNAL' undeclared (first use in this function)
+|   415 |         *h_errnop = NETDB_INTERNAL;
+
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: sssd-2.5.1/src/providers/fail_over.c
+===================================================================
+--- sssd-2.5.1.orig/src/providers/fail_over.c
++++ sssd-2.5.1/src/providers/fail_over.c
+@@ -31,6 +31,10 @@
+ #include <talloc.h>
+ #include <netdb.h>
+ 
++#if !defined(_PATH_HOSTS)
++#define _PATH_HOSTS     "/etc/hosts"
++#endif
++
+ #include "util/dlinklist.h"
+ #include "util/refcount.h"
+ #include "util/util.h"
+Index: sssd-2.5.1/src/sss_client/sss_cli.h
+===================================================================
+--- sssd-2.5.1.orig/src/sss_client/sss_cli.h
++++ sssd-2.5.1/src/sss_client/sss_cli.h
+@@ -44,6 +44,14 @@ typedef int errno_t;
+ #define EOK 0
+ #endif
+ 
++#ifndef NETDB_INTERNAL
++# define NETDB_INTERNAL (-1)
++#endif
++
++#ifndef NETDB_SUCCESS
++# define NETDB_SUCCESS (0)
++#endif
++
+ #define SSS_NSS_PROTOCOL_VERSION 1
+ #define SSS_PAM_PROTOCOL_VERSION 3
+ #define SSS_SUDO_PROTOCOL_VERSION 1
diff --git a/recipes-security/sssd/sssd_2.5.0.bb b/recipes-security/sssd/sssd_2.5.1.bb
similarity index 96%
rename from recipes-security/sssd/sssd_2.5.0.bb
rename to recipes-security/sssd/sssd_2.5.1.bb
index 84b7b0e..9205843 100644
--- a/recipes-security/sssd/sssd_2.5.0.bb
+++ b/recipes-security/sssd/sssd_2.5.1.bb
@@ -15,15 +15,17 @@ DEPENDS_append_libc-musl = " musl-nscd"
 DEPENDS += "${@bb.utils.contains('PACKAGECONFIG', 'nss', '', \
                bb.utils.contains('PACKAGECONFIG', 'crypto', '', 'nss', d), d)}"
 
-SRC_URI = "https://github.com/SSSD/sssd/releases/download/2.5.0/sssd-2.5.0.tar.gz \
+SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.gz \
            file://sssd.conf \
            file://volatiles.99_sssd \
            file://no_gen.patch \
            file://fix_gid.patch \
            file://drop_ntpdate_chk.patch \
            file://fix-ldblibdir.patch \
+           file://musl_fixup.patch \
            "
-SRC_URI[sha256sum] = "afa62d7d8d23fca3aba093abe4ec0d14e7d9346c5b28ceb7c2c624bed98caa06"
+
+SRC_URI[sha256sum] = "ce2f5d84a3f1750093318afd27f4fd75b1e3e75f7d80fc42d21a40cc54b58ea4"
 
 inherit autotools pkgconfig gettext python3-dir features_check systemd
 
-- 
2.25.1

