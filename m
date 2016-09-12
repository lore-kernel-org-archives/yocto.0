Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86FC4E00EE5; Mon, 12 Sep 2016 00:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE206E00EE5
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:09:44 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id r192so3061268ita.0
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 00:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=sDkiZ2tNnYK6cDTjtXG2BJyL14txoHdnXwWn8iK3CXc=;
	b=Suz66B0eRvFXKrmAa/ZLwiGwLEfMCTnSAta+7FYSlMDdjRkH6iVcwvuDw7DmLcjfDQ
	fTvzbARc6dTcX15T0DF1TPWYaSp5bZik6w8EEFgt879t4XHGOS/TzpDDgycdrE5eg9wI
	KoZfc2XW7YUM+GgO249ZIKlGsZ1VQ2HkB4/DHT7Dc4tBJNBibIoXCbOj8IyLx7o6f8Om
	PqgK87lV9o6SF1Fj9kD1MV2RmF4x5JrTYkUwsABBMbOrZfiq4/jNMMOAaK1D0kjqzjtv
	2jzUs7thMirDsPkFomyouBGwu19YkQg0VPr5LKKFyq2N8zSpL+QLupDPCzUyC9mACFsm
	1Clw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=sDkiZ2tNnYK6cDTjtXG2BJyL14txoHdnXwWn8iK3CXc=;
	b=dctCSxdE1IobFX2NcOesIin6jJNbqtoMbqI3Y7SHgXcZiXHIUbIKJMWtkRPHLRIuR1
	Y30v1NgEjgwul4GUiUF/Z4l6RW3NAU64PYGTg9TAPwl6bGTA2hQ1Z2jO7vGsI3O29RqI
	zY/rLZG7Uo++7FfpidN1JaRsiq/plX4VauX7OKtUG0fGZ8mxgfe9uuln5aSiFggUfkAB
	mqL1azzK1o6O/IfZqp4B3Yw0vcJlY7PSOqHUI2bJtYrqeYitZUMH3x8HFnNc2IDKBW+Y
	8u1OlwEtifiQnLVDeqVnGqoEhFsrH034Qv9C8cukl2w4XXWHoPFd3C1t/3W2JMo0LK42
	wpWA==
X-Gm-Message-State: AE9vXwPz1d62WuLbf+d/EHOKNij4KWjiPHtu2O1ZdvhG8emTAquOE8mDVTQ5TTnpQHp6T7YK
X-Received: by 10.157.7.200 with SMTP id 66mr22304822oto.32.1473664184183;
	Mon, 12 Sep 2016 00:09:44 -0700 (PDT)
Received: from pohly-desktop.fritz.box (p5DE8CACD.dip0.t-ipconnect.de.
	[93.232.202.205])
	by smtp.gmail.com with ESMTPSA id 8sm8565042itm.0.2016.09.12.00.09.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 12 Sep 2016 00:09:42 -0700 (PDT)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Sep 2016 09:09:26 +0200
Message-Id: <1473664166-2472-1-git-send-email-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.1.4
X-Mailman-Approved-At: Mon, 12 Sep 2016 07:00:21 -0700
Cc: joshua.g.lock@intel.com
Subject: [meta-swupd][PATCH] swupdimage.bbclass: ensure that do_rootfs gets executed
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
X-List-Received-Date: Mon, 12 Sep 2016 07:09:47 -0000

OE-core commit 6d969bacc718e changed do_rootfs so that it creates
IMGDEPLOYDIR. That change broke the creation of additional swupd
images, because setting do_rootfs to empty caused the entire task to
be skipped, including the evaluation of the 'cleandirs' task
attribute.

It remains to be seen whether that's really the desired behavior (see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10256), but as it is
what it is right now, we need to avoid the situation by overwriting
do_rootfs with non-empty code that doesn't do anything. That way, the
directory gets created.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 classes/swupdimage.bbclass | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/classes/swupdimage.bbclass b/classes/swupdimage.bbclass
index 20bd4c8..56aa60a 100644
--- a/classes/swupdimage.bbclass
+++ b/classes/swupdimage.bbclass
@@ -48,7 +48,11 @@ python swupdimage_virtclass_handler () {
     e.data.setVar("IMAGE_BUNDLE_NAME", imageext)
     # We override the default methods such that they only copy from the mega rootfs.
     e.data.setVar("do_image", "    import swupd.rootfs\n    swupd.rootfs.create_rootfs(d)\n")
-    e.data.setVar("do_rootfs", "")
+    # do_rootfs must not be empty, because empty tasks get skipped
+    # and we don't want that for do_rootfs because its cleandirs
+    # variable triggers the creation of the IMGDEPLOYDIR that we
+    # are going to write into.
+    e.data.setVar("do_rootfs", "    pass")
     # Depend on complete bundle generation in the base image.
     dep = ' %s:do_stage_swupd_inputs' % pn_base
     e.data.appendVarFlag('do_image', 'depends', dep)
-- 
2.1.4


