Return-Path: <f.deldegan@endian.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0AB1E0086E; Thu, 25 Sep 2014 03:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F30FE0086A
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:34:25 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id p10so7264654wes.3
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 03:34:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=d9HwcVJd5dudrHbIhJAwyd7AH9wPD2TpuPR5Omet/NA=;
	b=WVMsmSS9U5lrUvU3ZTORiiRj7eGGE1a3nlitliNVHUGnHv3bYLZjEQqMIy1uLOBAZb
	U2WaJD3/InvI9UMd02GPXfPq4O+8Xwz0u2Zi/WKaH/WHms3f80Cw7BMMgP7RyFU7lhq3
	WzMnTGLyMFAajGfutdCkU1HjDDogIgwgEJ/MDpgqu5bkoP4sXUMTboJphtbH+O0gjR1c
	NJ88ehrxfrJRWINfCyU0NAwVHOME8zWczxKPSYrKsNXzZL6BSHP9j/45jV5ZHLRwpiEF
	0AaxZ5jrB6EGshUCo4zFD8vGIGUnBp7NkEnJKRZ8aeyTj9B+r83g4HJj4uY3US8tmo50
	BeFQ==
X-Gm-Message-State: ALoCoQnK3j1EkPQzPO7hCbvTNoZb7rCUFBNTcHL/KdybSzjB2jGX8XkWc0haOHT9evpGj5RK5pL2
X-Received: by 10.180.182.12 with SMTP id ea12mr37887923wic.21.1411641264359; 
	Thu, 25 Sep 2014 03:34:24 -0700 (PDT)
Received: from localhost.localdomain (93-58-90-146.ip157.fastwebnet.it.
	[93.58.90.146])
	by mx.google.com with ESMTPSA id hf9sm2699266wib.11.2014.09.25.03.34.21
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Sep 2014 03:34:23 -0700 (PDT)
From: Francesco Del Degan <f.deldegan@endian.com>
To: yocto@yoctoproject.org
Date: Thu, 25 Sep 2014 12:35:52 +0200
Message-Id: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Thu, 25 Sep 2014 10:34:32 -0000

Updated to reflect the latest patchset in bash 4.3.
Fixes the CVE-2014-6271.

Signed-off-by: Francesco Del Degan <f.deldegan@endian.com>
---
 meta/recipes-extended/bash/bash_4.3.bb | 75 ++++++++++++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/meta/recipes-extended/bash/bash_4.3.bb b/meta/recipes-extended/bash/bash_4.3.bb
index 25b7410..2ff0c40 100644
--- a/meta/recipes-extended/bash/bash_4.3.bb
+++ b/meta/recipes-extended/bash/bash_4.3.bb
@@ -5,6 +5,31 @@ LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-001;apply=yes;striplevel=0;name=patch001 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-002;apply=yes;striplevel=0;name=patch002 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-003;apply=yes;striplevel=0;name=patch003 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-004;apply=yes;striplevel=0;name=patch004 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-005;apply=yes;striplevel=0;name=patch005 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-006;apply=yes;striplevel=0;name=patch006 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-007;apply=yes;striplevel=0;name=patch007 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-008;apply=yes;striplevel=0;name=patch008 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-009;apply=yes;striplevel=0;name=patch009 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-010;apply=yes;striplevel=0;name=patch010 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-011;apply=yes;striplevel=0;name=patch011 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-012;apply=yes;striplevel=0;name=patch012 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-013;apply=yes;striplevel=0;name=patch013 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-014;apply=yes;striplevel=0;name=patch014 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-015;apply=yes;striplevel=0;name=patch015 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-016;apply=yes;striplevel=0;name=patch016 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-017;apply=yes;striplevel=0;name=patch017 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-018;apply=yes;striplevel=0;name=patch018 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-019;apply=yes;striplevel=0;name=patch019 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-020;apply=yes;striplevel=0;name=patch020 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-021;apply=yes;striplevel=0;name=patch021 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-022;apply=yes;striplevel=0;name=patch022 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-023;apply=yes;striplevel=0;name=patch023 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-024;apply=yes;striplevel=0;name=patch024 \
+           ${GNU_MIRROR}/bash/bash-4.3-patches/bash43-025;apply=yes;striplevel=0;name=patch025 \
            file://execute_cmd.patch;striplevel=0 \
            file://mkbuiltins_have_stringize.patch \
            file://build-tests.patch \
@@ -14,5 +39,55 @@ SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
 
 SRC_URI[tarball.md5sum] = "81348932d5da294953e15d4814c74dd1"
 SRC_URI[tarball.sha256sum] = "afc687a28e0e24dc21b988fa159ff9dbcf6b7caa92ade8645cc6d5605cd024d4"
+SRC_URI[patch001.md5sum] = "1ab682b4e36afa4cf1b426aa7ac81c0d"
+SRC_URI[patch001.sha256sum] = "ecb3dff2648667513e31554b3ad054ccd89fce38e33367c9459ac3a285153742"
+SRC_URI[patch002.md5sum] = "8fc22cf50ec85da00f6af3d66f7ddc1b"
+SRC_URI[patch002.sha256sum] = "eee7cd7062ab29a9e4f02924d9c367264dcb8b162703f74ff6eb8f175a91502b"
+SRC_URI[patch003.md5sum] = "a41728eca78858758e26b5dea64ae506"
+SRC_URI[patch003.sha256sum] = "000e6eac50cd9053ce0630db01239dcdead04a2c2c351c47e2b51dac1ac1087d"
+SRC_URI[patch004.md5sum] = "bf8d53d227829d67235927689a03cc7a"
+SRC_URI[patch004.sha256sum] = "5ea0a42c6506720d26e6d3c5c358e9a0d49f6f189d69a8ed34d5935964821338"
+SRC_URI[patch005.md5sum] = "c0c00935c8b8ffff76e8ab77e7be7d15"
+SRC_URI[patch005.sha256sum] = "1ac83044032b9f5f11aeca8a344ae3c524ec2156185d3adbb8ad3e7a165aa3fa"
+SRC_URI[patch006.md5sum] = "6f01e364cd092faa28dd7119f47ddb5f"
+SRC_URI[patch006.sha256sum] = "a0648ee72d15e4a90c8b77a5c6b19f8d89e28c1bc881657d22fe26825f040213"
+SRC_URI[patch007.md5sum] = "dcf471d222bcd83283d3094e6ceeb6f8"
+SRC_URI[patch007.sha256sum] = "1113e321c59cf6a8648a36245bbe4217cf8acf948d71e67886dad7d486f8f3a3"
+SRC_URI[patch008.md5sum] = "f7553416646dc26c266454c78a916d36"
+SRC_URI[patch008.sha256sum] = "9941a98a4987192cc5ce3d45afe879983cad2f0bec96d441a4edd9033767f95e"
+SRC_URI[patch009.md5sum] = "7e73d2151f4064b484a4ba2c4b09960e"
+SRC_URI[patch009.sha256sum] = "c0226d6728946b2f53cdebf090bcd1c01627f01fee03295768605caa80bb40a5"
+SRC_URI[patch010.md5sum] = "a275463d21735bb6d7161f9fbd320d8f"
+SRC_URI[patch010.sha256sum] = "ce05799c0137314c70c7b6ea0477c90e1ac1d52e113344be8e32fa5a55c9f0b7"
+SRC_URI[patch011.md5sum] = "c17103ee20420d77e46b224c8d3fceda"
+SRC_URI[patch011.sha256sum] = "7c63402cdbc004a210f6c1c527b63b13d8bb9ec9c5a43d5c464a9010ff6f7f3b"
+SRC_URI[patch012.md5sum] = "3e2a057a19d02b3f92a3a09eacbc03ae"
+SRC_URI[patch012.sha256sum] = "3e1379030b35fbcf314e9e7954538cf4b43be1507142b29efae39eef997b8c12"
+SRC_URI[patch013.md5sum] = "fb377143a996d4ff087a2771bc8332f9"
+SRC_URI[patch013.sha256sum] = "bfa8ca5336ab1f5ef988434a4bdedf71604aa8a3659636afa2ce7c7446c42c79"
+SRC_URI[patch014.md5sum] = "1a1aaecc99a9d0cbc310e8e247dcc8b6"
+SRC_URI[patch014.sha256sum] = "5a4d6fa2365b6eb725a9d4966248b5edf7630a4aeb3fa8d526b877972658ac13"
+SRC_URI[patch015.md5sum] = "4f04387458a3c1b4d460d199f49991a8"
+SRC_URI[patch015.sha256sum] = "13293e8a24e003a44d7fe928c6b1e07b444511bed2d9406407e006df28355e8d"
+SRC_URI[patch016.md5sum] = "90e759709720c4f877525bebc9d5dc06"
+SRC_URI[patch016.sha256sum] = "92d60bcf49f61bd7f1ccb9602bead6f2c9946d79dea0e5ec0589bb3bfa5e0773"
+SRC_URI[patch017.md5sum] = "11e4046e1b86070f6adbb7ffc89641be"
+SRC_URI[patch017.sha256sum] = "1267c25c6b5ba57042a7bb6c569a6de02ffd0d29530489a16666c3b8a23e7780"
+SRC_URI[patch018.md5sum] = "cd5a9b46f5bea0dc0248c93c7dfac011"
+SRC_URI[patch018.sha256sum] = "7aa8b40a9e973931719d8cc72284a8fb3292b71b522db57a5a79052f021a3d58"
+SRC_URI[patch019.md5sum] = "cff4dc024d9d3456888aaaf8a36ca774"
+SRC_URI[patch019.sha256sum] = "a7a91475228015d676cafa86d2d7aa9c5d2139aa51485b6bbdebfdfbcf0d2d23"
+SRC_URI[patch020.md5sum] = "167839c5f147347f4a03d88ab97ff787"
+SRC_URI[patch020.sha256sum] = "ca5e86d87f178128641fe91f2f094875b8c1eb2de9e0d2e9154f5d5cc0336c98"
+SRC_URI[patch021.md5sum] = "1d350671c48dec30b34d8b81f09cd79d"
+SRC_URI[patch021.sha256sum] = "41439f06883e6bd11c591d9d5e9ae08afbc2abd4b935e1d244b08100076520a9"
+SRC_URI[patch022.md5sum] = "11c349af66a55481a3215ef2520bec36"
+SRC_URI[patch022.sha256sum] = "fd4d47bb95c65863f634c4706c65e1e3bae4ee8460c72045c0a0618689061a88"
+SRC_URI[patch023.md5sum] = "b3cb0d80fd0c47728264405cbb3b23c7"
+SRC_URI[patch023.sha256sum] = "9ac250c7397a8f53dbc84dfe790d2a418fbf1fe090bcece39b4a5c84a2d300d4"
+SRC_URI[patch024.md5sum] = "b5ea5600942acceb4b6f07313d2de74e"
+SRC_URI[patch024.sha256sum] = "3b505882a0a6090667d75824fc919524cd44cc3bd89dd08b7c4e622d3f960f6c"
+SRC_URI[patch025.md5sum] = "193c06f578d38ffdbaebae9c51a7551f"
+SRC_URI[patch025.sha256sum] = "1e5186f5c4a619bb134a1177d9e9de879f3bb85d9c5726832b03a762a2499251"
 
 BBCLASSEXTEND = "nativesdk"
-- 
1.8.1.2


