Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5666DE008F2; Sun, 29 Jan 2017 09:12:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 096A8E0053B
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:35 -0800 (PST)
Received: by mail-pf0-f175.google.com with SMTP id e4so84326283pfg.1
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=pJ472iaR8nXXT/Btczb1RbjzUjgbjmfBDoXJ7n42u74=;
	b=GqAjh+Zo10aUjzgdVgG96euUPY/smEoSs/9n3ECJ6J0UJJlOdFJ9JSGoF9R9Y7OM8e
	cAdOqX7sdsoBFHYdyFxe2dQdy7RQqM9yjYcABtLerZdjSxKU3+ULj4b4DHvoUirdKST1
	TwHDSnVZTDxKkpTE6Rjjkg7kwdonV7z5KXzfuhh3i/pPKGTJoIRP5wrgCbzzD8BskEVd
	Eaq8t48QNbamK8c/HP8uziciVOyuw0GUB6K1Dq8rlq+dEQTJ8ez2YTn+cxqcKMRc9RPX
	5UfjqtVTEiK1YJxbhlsmUyR3potBNBRU15T3pxguflNrTaoHeqrNBHxXarxJEY+FcvEa
	rMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=pJ472iaR8nXXT/Btczb1RbjzUjgbjmfBDoXJ7n42u74=;
	b=pjEdCSs9phByjFayTOQ03UFYsqZ2Ix/dsxXBnDeKWm7IfD6juTjheuqAEXO0hnEgg5
	xRLRNyEMjDwZBGQb6LX5dWM1qOSGuJ7/zRIJf4xOH8WU5mdfmB23taEw0UQVKoCzrk9n
	VMiRzLtYr33Y7qoTPq6Cga/0dTT9OJ9EVpgbKkHa4eleGitSDqLmxduuY7FU03H9COLW
	5Z3D6kbCNwmmgcIEbD8AMI0s973YO/4Mo/p5tb8hdjFy60ntposH0TV1NOlYuvZHWS0V
	kraiojP0fHej6yYZFS1hfeIy//8tOlP9Z05sQTEnQ74VUCoX0+slKmO114f5ldNX9w+k
	GUXQ==
X-Gm-Message-State: AIkVDXJShsP2eAxQUt49M+pDWynj0CDN0cdnurllc0jsEo7TzSfExNQHKVVJVSghQoMTXg==
X-Received: by 10.99.99.5 with SMTP id x5mr19658685pgb.225.1485709955041;
	Sun, 29 Jan 2017 09:12:35 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:34 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:27 -0800
Message-Id: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/6] tpm2.0-tss: fix musl build error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Jan 2017 17:12:39 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2.0-tss/fix_musl_select_include.patch       | 31 ++++++++++++++++++++++
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb           |  3 ++-
 2 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
new file mode 100644
index 0000000..ecaca6e
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
@@ -0,0 +1,31 @@
+This fixes musl build issue do to missing FD_* defines.
+Add sys/select.h
+
+Upstream-Status: Pending
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: TPM2.0-TSS/tcti/tcti_socket.cpp
+===================================================================
+--- TPM2.0-TSS.orig/tcti/tcti_socket.cpp
++++ TPM2.0-TSS/tcti/tcti_socket.cpp
+@@ -28,6 +28,7 @@
+ #include <stdio.h>
+ #include <stdlib.h>   // Needed for _wtoi
+ 
++#include "sys/select.h"
+ #include <sapi/tpm20.h>
+ #include <tcti/tcti_socket.h>
+ #include "sysapi_util.h"
+Index: TPM2.0-TSS/resourcemgr/resourcemgr.c
+===================================================================
+--- TPM2.0-TSS.orig/resourcemgr/resourcemgr.c
++++ TPM2.0-TSS/resourcemgr/resourcemgr.c
+@@ -28,6 +28,7 @@
+ #include <stdio.h>
+ #include <stdlib.h>   // Needed for _wtoi
+ 
++#include "sys/select.h"
+ #include <sapi/tpm20.h>
+ #include <tcti/tcti_device.h>
+ #include <tcti/tcti_socket.h>
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index c4b5c8c..a03559c 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -7,7 +7,8 @@ SECTION = "tpm"
 SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
 SRC_URI = " \
     git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
-    file://ax_pthread.m4"
+    file://ax_pthread.m4 \
+    file://fix_musl_select_include.patch "
 
 inherit autotools pkgconfig
 
-- 
2.7.4


