Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38B13E00A44; Fri,  2 May 2014 08:46:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 874CCE00939
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:46:49 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id b57so1363970eek.13
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=W3OoaqA8FyMBck1EDQWGmGeRQnIQnqHm9BmMdpco1Do=;
	b=CjmNH+aP9/eG/RFn/sxvoHARU9Yh7szbMaLnRTgOT6nUi+jn/wFtBXJKemUFFXXTDV
	Lhdi99dBxGNNvn7dfl/4OIbQEc0CjBctYSBSjEsUjM9z1cIiGWN8a5tm1CiVR6P5JzNZ
	wtYpxwYhLl4JmCjKari357z4YzzdXh8V8JdpWZJwDfBz3GE8C0BmV+4u4jYUBAoXp+0a
	Tb8Fegp/lUrgqo2F0NkIAJzjR/oPwMBn7kbV2Y71q9Yf7p/j5cCG20kt5D6tWvj3Ix3w
	Wfw2TcfNtF/GqxHYW5rAU9j8UvrDT7qTuyGbmUqXsRM32+8goD6FxaBuTssD2aEUYCD6
	dPqg==
X-Received: by 10.14.218.193 with SMTP id k41mr15881664eep.16.1399045608452;
	Fri, 02 May 2014 08:46:48 -0700 (PDT)
Received: from localhost.localdomain (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id q41sm5496021eez.7.2014.05.02.08.46.46
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 02 May 2014 08:46:46 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Fri,  2 May 2014 15:46:44 +0000
Message-Id: <1399045604-8469-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.9.2
Subject: [meta-raspberrypi][PATCH] Remove uses of PRINC
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
X-List-Received-Date: Fri, 02 May 2014 15:46:53 -0000

PRINC is now obsolete and the PR Service should be used instead to keep PR
values incrementing on change.

A patch has also been submitted to openembedded-core to bump the appropriate PR
values so that PR doesn't move backwards. This patch should only be applied
after that patch, and only to branches which include that patch (ie. if that
patch doesn't go into daisy in oe-core, this patch shouldn't go into daisy in
meta-raspberrypi).

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-bsp/formfactor/formfactor_0.0.bbappend                 | 1 -
 recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend | 3 ---
 2 files changed, 4 deletions(-)

diff --git a/recipes-bsp/formfactor/formfactor_0.0.bbappend b/recipes-bsp/formfactor/formfactor_0.0.bbappend
index 0003480..72d991c 100644
--- a/recipes-bsp/formfactor/formfactor_0.0.bbappend
+++ b/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -1,2 +1 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-PRINC = "1"
diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index 3e86645..e37f942 100644
--- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,8 +1,5 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-# Don't forget to bump PRINC if you update the extra files.
-PRINC := "${@int(PRINC) + 5}"
-
 THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
 FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
 
-- 
1.9.2


