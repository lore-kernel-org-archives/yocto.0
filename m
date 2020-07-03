Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
 by mx.groups.io with SMTP id smtpd.web11.386.1593734470658961549
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 17:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=nlMC5y3H;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.210.66, mailfrom: jpuhlman@mvista.com)
Received: by mail-ot1-f66.google.com with SMTP id 72so25480044otc.3
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 17:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kJ/bFWbJmeE/6ESF+OUloGAGkopkEiaEXNKb1z81+ck=;
        b=nlMC5y3HKxe1SUzCnoXI1+kmy7ARGMsNNsBbG57gvtL30hZ/M+cOApWmitqucZlHWj
         eh6G2jKqXw3n6O6iAusBzxHua6UHuMVyGJYxFUMJMHr0p+ElFSdGznAIIDfu8kBzy2tD
         fmUjKzpdWC82YC1K3NAFDE0XHW/e358t9AV1tSKbjaw23LpqOCa9Gf0iOKQm0u8k6FfL
         j5I5KstJ6lwwLGC9TAEQjPtS8zgTzXBuJbMtYF1d+Uda1DloswJ+JmzLUIpSwSC4ixCI
         N91SB8TV9CRX70NeLtc29eLijopkAs7RfHa+Qk+4L3QETiVGfMa0yOe0H06UK/1H4eQB
         H1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=kJ/bFWbJmeE/6ESF+OUloGAGkopkEiaEXNKb1z81+ck=;
        b=U9hf/MkS+CtxYsfFDN4zJ0jDx4jmnLPzKgbhyyXbSZtf9+KFyi7VIXn8S98q6AmxN1
         6krdtLLdWUvtyh6WXWYJZ6XKVhxrTvj4iCsuozKRWhwlRg1YK2aG84Eul0mIK0ScBDdo
         jJEs6SJu1ut9y5gM4o4vJ3Ct6PN+F0RCoBVEwcOIq+QndlrqYMYcK6GxVXPl0i/Ybmah
         4J3SX8h+/vG8KmajLNAErSb1LnGoOlN4yFqvj8l3cCltFq2q2a31DNpS6uVb2snXjc1Q
         qxsEwxJeAmZpqQaDj+ZhjWgMDwu74ytCKLGoRt+KEFjG9tPHeMmKOI1YeUPK/2KCII74
         6COg==
X-Gm-Message-State: AOAM530Dr9GzHj2y5qYMm3OQLGzhTUqUmhaccwNB8U/Cj9pSut4uf8RX
	EpPM8CHmKDufqspsMCwmaill0SUAYbI=
X-Google-Smtp-Source: ABdhPJx3Ewdt6YYYn4htwbmKfK4GJ+zFPa4vPqgME8quaBX3FWcIQ1tZigfkfPEzcGpTjoAlTMgjjg==
X-Received: by 2002:a9d:8e4:: with SMTP id 91mr16394453otf.38.1593734469479;
        Thu, 02 Jul 2020 17:01:09 -0700 (PDT)
Return-Path: <jpuhlman@mvista.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id r22sm3278752ooq.37.2020.07.02.17.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 17:01:08 -0700 (PDT)
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id BB0DF2A0924; Thu,  2 Jul 2020 17:01:07 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][master|dunfell][PATCH] clamav: Fix issue when yara_grammar.h is regenerated.
Date: Thu,  2 Jul 2020 17:01:05 -0700
Message-Id: <20200703000105.9909-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jeremy Puhlman <jpuhlman@mvista.com>

Somewhere a long the line someone hand modified the yara_grammar.h file
but didn't add code to generate the same code. The result is if the
file is regenerated from the .y file it complains about a missing
definition of YR_COMPILER.

This is fixed in 0.103. Backported code snippet to resolve the issue.

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 ...yara_grammar.h-to-include-yara_compi.patch | 32 +++++++++++++++++++
 recipes-scanners/clamav/clamav_0.101.5.bb     |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch

diff --git a/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
new file mode 100644
index 0000000..1abbaea
--- /dev/null
+++ b/recipes-scanners/clamav/clamav-0.101.5/0001-force-generated-yara_grammar.h-to-include-yara_compi.patch
@@ -0,0 +1,32 @@
+From e7201870e19dea1bc3bc1bb16288c5135709ec6c Mon Sep 17 00:00:00 2001
+From: Jeremy Puhlman <jpuhlman@mvista.com>
+Date: Thu, 2 Jul 2020 23:41:17 +0000
+Subject: [PATCH] force generated yara_grammar.h to include yara_compiler.h
+
+Someone manually modified yara_grammar.h to inlude yara_compiler.h,
+however if yara_grammar.h is generated from yara_grammar.y, it fails
+to build because YR_COMPILER is not defined.
+
+Upstream-Status: Backport [https://github.com/Cisco-Talos/clamav-devel/commit/8e765853d07098a13b4f352c2c77e4d3873905f6#diff-0a6403048e9f5a96598ba9d1d45c7b31]
+---
+ libclamav/yara_grammar.y | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/libclamav/yara_grammar.y b/libclamav/yara_grammar.y
+index cb893975d..eb0784a2a 100644
+--- a/libclamav/yara_grammar.y
++++ b/libclamav/yara_grammar.y
+@@ -36,6 +36,10 @@ See the License for the specific language governing permissions and
+ limitations under the License.
+ */
+ 
++%code requires {
++#include "yara_compiler.h"
++}
++
+ %{
+ 
+ #include <assert.h>
+-- 
+2.24.3
+
diff --git a/recipes-scanners/clamav/clamav_0.101.5.bb b/recipes-scanners/clamav/clamav_0.101.5.bb
index 2ea2c9b..7694265 100644
--- a/recipes-scanners/clamav/clamav_0.101.5.bb
+++ b/recipes-scanners/clamav/clamav_0.101.5.bb
@@ -18,6 +18,7 @@ SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.101 \
     file://tmpfiles.clamav \
     file://${BPN}.service \
     file://freshclam-native.conf \
+    file://0001-force-generated-yara_grammar.h-to-include-yara_compi.patch \
     "
 
 S = "${WORKDIR}/git"
-- 
2.20.1

