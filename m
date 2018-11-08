Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13334E00A54; Thu,  8 Nov 2018 06:36:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
	[209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9BD8E00720
	for <yocto@yoctoproject.org>; Thu,  8 Nov 2018 06:36:00 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id f19-v6so1693402wmb.0
	for <yocto@yoctoproject.org>; Thu, 08 Nov 2018 06:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=YCFqzs22kiITnqvLAkfmhhD2fTrw84xaKAZxvplsIRg=;
	b=LJPhePV+J/vpl3CN5aaeBd6R1ExqROow4Hr9HPUQcVUj4mTEJ1/tIWpzwEaGwIJR9j
	F7OX4NQ5tTmyGmdktgUO28A59/exEVqcwq00qwZUywcdrcfaOj5rT4nVX92HZOf43aSC
	DFtTZT1jWgTco+6LTA65sEMPhhAfhH2siwscs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=YCFqzs22kiITnqvLAkfmhhD2fTrw84xaKAZxvplsIRg=;
	b=DNN8fAz8zRDStB4BwM2/fL1gEbxHGmzvaRcy1ORZCEus35/S1jS2wbYdyMQb7/K7Si
	gvbH/6vSn1ThQentFdvTUOemr1TICb3KxmAw68mwJogNa+jn7OtzsuLxZQ4kLkYOIi7s
	n5iUIknkyaE3habxkdPmFlSXuEgbCxyxD/9n/EQ41BmD/uDZ/+eZ9MvIXZKXAaikwmdi
	vmlftH2sOXo3PH2uXh5kVFSYa2Ssxmt9QouOpaew/iXgdkG7O8uySsz8tdxcdnj0DQ20
	mH6kP0V2Qvsz2KZgGfLNX7vhIaIyIWAXVQJycNvxKtRL5A0uOlyARDknNvYq3Dd2GYJu
	57Tg==
X-Gm-Message-State: AGRZ1gJKkWp2Aa2JEZHlkhksd/AgfNaclmfMBuIehHId8W8ued4rgwMQ
	pg1yoR26Jj3pfCPxWMGrbuHhR/3vTkmMnA==
X-Google-Smtp-Source: AJdET5c/cogLMgUFm/MGd/FDzjMpygWDDTYm4E1OBHppfOGtXm4xrXM7D1MlbbLSZrojSX8WPGbEQw==
X-Received: by 2002:a1c:a905:: with SMTP id s5-v6mr1422599wme.75.1541687759298;
	Thu, 08 Nov 2018 06:35:59 -0800 (PST)
Received: from yct-lpt.int.rpsys.net (5751f4a1.skybroadband.com.
	[87.81.244.161]) by smtp.gmail.com with ESMTPSA id
	y2-v6sm8651486wrh.53.2018.11.08.06.35.58
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 08 Nov 2018 06:35:58 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Thu,  8 Nov 2018 06:35:51 -0800
Message-Id: <20181108143551.6056-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Cc: rpurdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: Remove sstate, add oe-selftest, and replace beaglebone
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
X-List-Received-Date: Thu, 08 Nov 2018 14:36:02 -0000

We want to build everything without sstate during bringup testing.
Adding oe-selftest will catch errors other targets wouldn't.  We just want to
test on qemuarm64 and qemux86-64 architectures so remove beaglebone as an
unneeded third. This takes advantage of the template as well.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 2945155..abc5928 100644
--- a/config.json
+++ b/config.json
@@ -146,16 +146,27 @@
             }
         },
        "nightly-bringup" : {
-            "MACHINE" : "qemuarm",
             "TEMPLATE" : "nightly-arch",
+            "SSTATEDIR" : [],
+            "MACHINE" : "qemuarm64",
             "step2" : {
-                "MACHINE" : "beaglebone-yocto",
-                "BBTARGETS" : "core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev core-image-sato-sdk-ptest core-image-sato:do_populate_sdk"
+                "MACHINE" : "qemux86-64"
             },
             "step5" : {
                 "MACHINE" : "qemux86-64",
                 "SDKMACHINE" : "x86_64",
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
+            },
+            "step6" : {
+                "MACHINE" : "qemux86-64",
+                "SDKMACHINE" : "x86_64",
+                "PACKAGE_CLASSES" : "package_rpm",
+                "PRSERV" : false,
+                "extravars" : [
+                    "RPM_GPG_SIGN_CHUNK = '1'"
+                ],
+                "EXTRACMDS" : ["checkvnc; DISPLAY=:1 oe-selftest --skip-tests distrodata.Distrodata.test_checkpkg -j 15"],
+                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
             }
         },
         "nightly-mips" : {
-- 
2.17.2


