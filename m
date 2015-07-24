Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3756DE00978; Fri, 24 Jul 2015 08:41:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC33EE00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 08:41:28 -0700 (PDT)
Received: by wibud3 with SMTP id ud3so33272778wib.0
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 08:41:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=LNHz3ZjUZvGqTzKFZ0Tmp06xrVb063fpH3XN3Wm8bcM=;
	b=jK5s2xpzDnS5PUlsOV2lP0yCGLJRiWCLtvPO5n4EhfxJ2xauCzsK/qA+NMUvpEcWaV
	E/ZWYwxW42lndQeX0V0V5KXhtRgyH6XMKYMvx5OxmkjLcUIE2ncvfL506WehFyKDakfF
	KTUxJkPFGVg/tJgC/gqD8+DROKmuL5oQrxwSKNrM+WKTool6r2rdr+UDshvgtynGENQx
	DGGYsux/wGacAfrUpWNCmPAoNlML0p4n0d/QAYmlAicEd/NYpIgdZSz+5bqfFfzXtOil
	fKwF9+6BDJ7JDeGZBlxRm2kZzJeEVuRW/tCbe9b2fOxX/YjXXfG+WbznCwEIEFwEm6g7
	XhoA==
X-Gm-Message-State: ALoCoQkKMg/sPKLXh7Je0FcUMeW349q9blnoqAs1Nx59uDIybr5lMPqxMcdT9bfB3KyeMZMJkTWD
X-Received: by 10.181.13.230 with SMTP id fb6mr8062287wid.47.1437752487195;
	Fri, 24 Jul 2015 08:41:27 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id r8sm4112599wiz.5.2015.07.24.08.41.26
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Jul 2015 08:41:26 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Jul 2015 16:35:33 +0100
Message-Id: <1437752133-31524-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH][yocto-autobuilder] buildset-config.controller: don't specify test suites explicitly
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
X-List-Received-Date: Fri, 24 Jul 2015 15:41:32 -0000

The autobuilder was specifying the test list explicitly in several buildsets
because in the past the SMART and RPM tests didn't skip automatically on non-RPM
images.  However we're removing the dmesg test as it is obsolete (replaced by
parselogs) but the autobuilder still attempts to run it.

Now that the RPM and SMART tests skip correctly, remove all explict test suite
lists and instead either let the image specify what test suites to run, or use
suitesappend.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-deb-non-deb.conf | 4 +---
 buildset-config.controller/nightly-deb.conf         | 4 +---
 buildset-config.controller/nightly-ipk.conf         | 4 +---
 buildset-config.controller/nightly-multilib.conf    | 3 +--
 4 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/buildset-config.controller/nightly-deb-non-deb.conf b/buildset-config.controller/nightly-deb-non-deb.conf
index 716332c..691ff01 100644
--- a/buildset-config.controller/nightly-deb-non-deb.conf
+++ b/buildset-config.controller/nightly-deb-non-deb.conf
@@ -11,7 +11,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False, 'packages': 'deb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal'}},
-        {'RunSanityTests': {'images' : 'core-image-sato', 'suites' : 'ping ssh auto'}},
-        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-deb.conf b/buildset-config.controller/nightly-deb.conf
index fa8813c..4d2fd8c 100644
--- a/buildset-config.controller/nightly-deb.conf
+++ b/buildset-config.controller/nightly-deb.conf
@@ -11,7 +11,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False, 'packages': 'deb'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal'}},
-        {'RunSanityTests': {'images' : 'core-image-sato', 'suites' : 'ping ssh auto'}},
-        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}},
+        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-ipk.conf b/buildset-config.controller/nightly-ipk.conf
index ba78f8c..797a622 100644
--- a/buildset-config.controller/nightly-ipk.conf
+++ b/buildset-config.controller/nightly-ipk.conf
@@ -11,7 +11,5 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : False, 'packages': 'ipk'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images' : 'core-image-minimal'}},
-        {'RunSanityTests': {'images' : 'core-image-sato', 'suites' : 'ping ssh auto'}},
-        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}},
+        {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-multilib.conf b/buildset-config.controller/nightly-multilib.conf
index a836974..6bd68f0 100644
--- a/buildset-config.controller/nightly-multilib.conf
+++ b/buildset-config.controller/nightly-multilib.conf
@@ -32,8 +32,7 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'packages' : 'ipk',
                             'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato',
-                            'suites' : 'ping ssh connman xorg multilib dmesg auto'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'multilib'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686',
                             'buildhistory' : False, 'multilib': 'lib64',
                             'distro': 'poky'}},
-- 
2.1.4


