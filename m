Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EFC8E00C9F; Sun, 28 Feb 2016 02:33:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06DFE00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:33:16 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id l68so3687915wml.3
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=NoDuzSnpWJtA17CNP37AZJNWL6RIOceXQZ7zJ5thq4g=;
	b=0UHshfycGIadFiKS94d/XOWiZkku0XQmszwNhFv1q8H53HPWxuVho7NZ7VlIjmLg8y
	suuR0kH8IgALwteOutf0XWx/1cThO3u6dPxFzit9GzIqA7E8vpjSs4jPBxQu4IGEyfu5
	Ra5xGVO6HCz21rkeYmY8TmZ1woGfMdwqi1y80j1XgJEdGJD8gpTjywFenYDRRx56AHOz
	NEUuElqWwefkE37Py8Y5SvM5doRl7LAfYQjAQbT/X1bRJux6sxNBbNFc4KatVURB27BL
	3rRBqr6je+U01PxYOH4pMRAq4k5vyspJJNmY+i6/x5IO/SlG9q6BV8E9RnC/5A7yzFGI
	2jQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=NoDuzSnpWJtA17CNP37AZJNWL6RIOceXQZ7zJ5thq4g=;
	b=L+RAJA9OzIY8v4SqWUMEgZgDIJG1MrfJ+se73HcXL/3JaaPkaR0Ld6/2KfU1ZZIJod
	WGok1r77xjv05klsjeu7dqLpSQTDn0aRI2up98z27/v5KVgl1uKLyH9wnAyn2s+KNzhj
	r/4SfaCOGeYhbZEBOpC7gq9pdpblodbTaqeW1Vfd5ZBMYV5MYlmcH+9BNmpTBAXzbMyJ
	BFBLt4ThnXqHLHEL2dowWxXw2g+fiwh/vnNxho9ZYMnACF0UKxkEeJ7NQ/wSvzw71ArD
	MuPuJNbIo7RNRjyq3vNIkM/5Ac+bZjxJAcIRmtb4hX3L79GVLnEq3twceOwIDTg2/4Uu
	WGDw==
X-Gm-Message-State: AD7BkJLN4YmTr6OpK00puQ3YfPkqJvi4sRPnJ8aPmPcYAJm3dTJI9eJJVRbbD/+KDpTUbw==
X-Received: by 10.194.188.20 with SMTP id fw20mr11747458wjc.80.1456655595423; 
	Sun, 28 Feb 2016 02:33:15 -0800 (PST)
Received: from localhost.localdomain
	([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	w136sm10966782wmw.0.2016.02.28.02.33.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Feb 2016 02:33:14 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 28 Feb 2016 11:32:53 +0100
Message-Id: <1456655573-30138-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.0
Subject: [meta-raspberrypi][PATCH 1/1] omxplayer: Add patch to fix host-user-contaminated QA
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
X-List-Received-Date: Sun, 28 Feb 2016 10:33:21 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 .../don-t-preserve-file-attributes-when-cp.patch       | 18 ++++++++++++++++++
 recipes-multimedia/omxplayer/omxplayer_git.bb          |  1 +
 2 files changed, 19 insertions(+)
 create mode 100644 recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch

diff --git a/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch b/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
new file mode 100644
index 0000000..08df12e
--- /dev/null
+++ b/recipes-multimedia/omxplayer/omxplayer/don-t-preserve-file-attributes-when-cp.patch
@@ -0,0 +1,18 @@
+When running install (fakeroot) host-user-contaminated will fail because dist
+rule copies files while preserving file attributes like user ID.
+
+Upstream-Status: Submitted [https://github.com/popcornmix/omxplayer/pull/431]
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
+@@ -87,5 +87,5 @@ dist: omxplayer.bin omxplayer.1
+ 	cp COPYING $(DIST)/usr/share/doc/omxplayer
+ 	cp README.md $(DIST)/usr/share/doc/omxplayer/README
+ 	cp omxplayer.1 $(DIST)/usr/share/man/man1
+-	cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
++	cp -P ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
+ 	tar -czf omxplayer-dist.tar.gz $(DIST)
+\ No newline at end of file
diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
index a0690a0..c8251fe 100644
--- a/recipes-multimedia/omxplayer/omxplayer_git.bb
+++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
@@ -18,6 +18,7 @@ SRC_URI = "git://github.com/popcornmix/omxplayer.git;protocol=git;branch=master
            file://0004-Add-FFMPEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch \
            file://fix-tar-command-with-DIST.patch \
            file://use-native-pkg-config.patch \
+           file://don-t-preserve-file-attributes-when-cp.patch \
            "
 S = "${WORKDIR}/git"
 
-- 
2.7.0


