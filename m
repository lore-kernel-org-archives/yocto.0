Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D314DE0083D; Fri,  1 Jul 2016 06:17:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66C6EE007DA
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 06:17:39 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id r201so5279425wme.0
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 06:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=8E70X+pSkDB21kHP+zL7gycE22A61RnUYUot+6lZHds=;
	b=antDrldthO4K/AwUovhVIGv2COcCq7NNrjiyceDRJb3Un2Eaxip/AsaLR86yMVpwbp
	ZS8XYJGJTcOa6h3R+/scWXVyuivZckDYHj5aBJEyGS4WT6YUe9nmLdxIU/HvkQdgl7mI
	xLRtW2pjUeG1Wj8E2OD0OA7po9r0NaJtTvEDG8FBacKLjcyg/fEnUIWFSjlCSHD9MXOl
	h76z3ZMmUJ6QvS7Yfv2skqmdyZ8XY8NX02G7AHsD4SnE/4QykA7z2a+K+AGGV4YmWXPc
	woQavoR+9Dle+s+HhAsI8OPeFFph/FVbOHyzB5RQPy2i+xazJQXIfEAAPiYNm8IXDyUb
	0YyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=8E70X+pSkDB21kHP+zL7gycE22A61RnUYUot+6lZHds=;
	b=bJEf+EPMvTy6kfWG61ZFa58dMWT6UUEnWJsZHmZyN6Ja9r6YauCh8wojB4XwNapMnT
	OltELd8DtZ9n26Z2XlSM+LJPw1jc2LrL1aSgszf3pwizMsctP9g19uDR9QtD1p6njc5O
	XVg9tjQ0xNnZxJIBQcpm3FlFhVtusj/hFR0Cf6JJ/tKK4l0we8hp+LFlijqxegeWhMDK
	T/hpCwkuaTfeF7Wr624aqqnN+H9V0iDzj9vLJUCeM0lsfEaI1gW+M0a0FNP3F8HQSYug
	Ot+J9H80tDgom00D1V9sAzgmAZaJyMeFKMZ/A2HyAKSvqFsgWrMD3SmTXW1/BfOCQ4g1
	pICQ==
X-Gm-Message-State: ALyK8tJAnnOEkWMn0aNqi+Jty+HDcDz0+zZvaO8UTlTJvAkR/UBv4SeYFkDYp7z5+3VRZg==
X-Received: by 10.28.166.150 with SMTP id p144mr31393069wme.57.1467379058242; 
	Fri, 01 Jul 2016 06:17:38 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	i74sm2407844wmg.21.2016.07.01.06.17.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 01 Jul 2016 06:17:37 -0700 (PDT)
From: bobadeshrikant@gmail.com
To: yocto@yoctoproject.org
Date: Fri,  1 Jul 2016 18:47:22 +0530
Message-Id: <1467379042-17559-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] README: update with systemd & virtual/refpolicy details
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
X-List-Received-Date: Fri, 01 Jul 2016 13:17:42 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add init manager user guidelines and examples for using refpolicy with
perticular version and type.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 README | 27 +++++++++++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 284d862..dabaa41 100644
--- a/README
+++ b/README
@@ -65,6 +65,8 @@ An "oe-selinux" distribution is also included as a convienence for people
 working with this layer, without the additional Poky meta data.  This
 approach may work, but is not generally tested by the maintainers.
 
+e.g. DISTRO="poky-selinux"
+
 
 Using different versions of linux-yocto
 ---------------------------------------
@@ -75,6 +77,7 @@ currently supported: v3.14, v3.19, v4.1(by default).
 * enable the preferred linux-yocto to local.conf or oe-selinux.conf
 e.g. PREFERRED_VERSION_linux-yocto_qemuarm = "3.19%"
 
+
 Using different versions of refpolicy
 -------------------------------------
 To prepare selinux enabled images using different ver. of refpolicy,
@@ -86,8 +89,28 @@ By default refpolicy from git builds head commit of master branch, we can update
 SRCREV for refpolicy and refpolicy-contrib as appropriate at refpolicy_git.inc
 to check refpolicy as per required commits.
 
-* enable the preferred refpolicy-mls to local.conf or oe-selinux.conf
-e.g. REFERRED_VERSION_refpolicy-mls = "2.20140311"
+* enable the preferred refpolicy-minimum to local.conf or oe-selinux.conf
+e.g. PREFERRED_VERSION_refpolicy-minimum = "2.20151208"
+
+
+Using perticular refpolicy policy type
+--------------------------------------
+Provider "virtual/refpolicy" used to set perticular refpolicy type.
+
+* enabled refpolicy-minimum from refpolicy types at config level
+e.g. PREFERRED_PROVIDER_virtual/refpolicy ?= "refpolicy-minimum"
+
+
+Using different init manager
+----------------------------
+By default selinux enabled images coming up with "sysvinit" as init manager,
+we can use "systemd" as an init manager using below changes to local.conf
+
+* enable systemd as init manager changes to local.conf
+DISTRO_FEATURES_remove = " sysvinit"
+DISTRO_FEATURES_append = " systemd"
+VIRTUAL-RUNTIME_init_manager = "systemd"
+DISTRO_FEATURES_BACKFILL_CONSIDERED = ""
 
 
 License
-- 
1.9.1


