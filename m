Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.7512.1611914847021692957
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 02:07:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YhXA9K2e;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id v15so8248104wrx.4
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 02:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KkD4GJ3SbiaKjFXBMkhsY0VopHpR/SqmmNdrGgMhKBo=;
        b=YhXA9K2ewXxKz788/BhfFexlqzvrPCwl36qDR6qn57UjDtbzJaHfqOKGOKbAWJ2Bx1
         lfqqGHmHmGKbBYG+66cr6nBC0IGeImDax5YQLecjgXgjnUF83auFc5OAzHbQsp7PWxaR
         PwgXUPvkL0N/xLsyWPnq6AiNUuu0SCLFkbNgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KkD4GJ3SbiaKjFXBMkhsY0VopHpR/SqmmNdrGgMhKBo=;
        b=M7Wbe2efYhoshT1FLKLTzXact72zCtpL1X+ClLGTHaZAPQYeaLOhtAR4YNpCIH+D5q
         xY0sG336PQQ2aClZ7NJQTEeBA4Ggt1dtgM0cwPP+krUbX+8bJSHkAxLFuLtZ0bk7kB9p
         8mkzpWHUXq84B8FqRN2GtkZYhMEK8J5kw4+TSWpfqoFNnmbwnIJLDnYJb1DMCcyHM8DP
         bznuAccjiD2aVKWLJiJOMOSru0d2NKPjMta44LQ+LHiDLbfuvhpXvDsNHiycoR8bsUWG
         R920FI4vZlX+X5NpVTI38oXKqYaubFL8E3CGuu09yvPR0xevpwlYj9th/e+fevcAfE5u
         AGzg==
X-Gm-Message-State: AOAM53153u/4GnN98AfkbGgbpc1V0YGLYFfqHICF0dvUbpGfZGjkmhbE
	x3R1Ztcqt/s5LzCYwAQlAyJdRWRrKdzA4w==
X-Google-Smtp-Source: ABdhPJxyccU8uSOIuZ0HNlHN1kxDAiItVd1sZMiaF9e261km3tlbk7l1hS9+XvZfrAFjDQCzFZ+75Q==
X-Received: by 2002:a5d:4d4a:: with SMTP id a10mr3695342wru.174.1611914845416;
        Fri, 29 Jan 2021 02:07:25 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id b2sm9834636wmd.41.2021.01.29.02.07.24
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 02:07:25 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 1/3] bash: Update to work with autoconf 2.70
Date: Fri, 29 Jan 2021 10:07:22 +0000
Message-Id: <20210129100724.1359686-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../bash/bash-3.2.57/autoconf270.patch          | 17 +++++++++++++++++
 recipes-extended/bash/bash_3.2.57.bb            |  1 +
 2 files changed, 18 insertions(+)
 create mode 100644 recipes-extended/bash/bash-3.2.57/autoconf270.patch

diff --git a/recipes-extended/bash/bash-3.2.57/autoconf270.patch b/recipes-extended/bash/bash-3.2.57/autoconf270.patch
new file mode 100644
index 0000000..2249bb9
--- /dev/null
+++ b/recipes-extended/bash/bash-3.2.57/autoconf270.patch
@@ -0,0 +1,17 @@
+Update to add the required gettext version to work with autoconf 2.70
+
+Upstream-Status: Inappropriate [required for bash 3.2.57 (GPLv2) recipe only]
+RP - 2021/1/28
+
+Index: bash-3.2.57/configure.in
+===================================================================
+--- bash-3.2.57.orig/configure.in
++++ bash-3.2.57/configure.in
+@@ -625,6 +625,7 @@ AC_C_CHAR_UNSIGNED
+ 
+ dnl initialize GNU gettext
+ AM_GNU_GETTEXT([no-libtool], [need-ngettext], [lib/intl])
++AM_GNU_GETTEXT_VERSION([0.21])
+ 
+ dnl header files
+ AC_HEADER_DIRENT
diff --git a/recipes-extended/bash/bash_3.2.57.bb b/recipes-extended/bash/bash_3.2.57.bb
index 5c288b3..f4db7a5 100644
--- a/recipes-extended/bash/bash_3.2.57.bb
+++ b/recipes-extended/bash/bash_3.2.57.bb
@@ -10,6 +10,7 @@ SRC_URI = "${GNU_MIRROR}/${BPN}/${BP}.tar.gz \
            file://run-ptest \
            file://dont-include-target-CFLAGS-in-host-LDFLAGS.patch \
            file://string-format.patch \
+           file://autoconf270.patch \
           "
 
 SRC_URI[md5sum] = "237a8767c990b43ae2c89895c2dbc062"
-- 
2.27.0

