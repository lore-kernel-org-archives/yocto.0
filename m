Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C6EE00E05; Mon, 11 Apr 2016 11:28:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54791E00C90
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:28:34 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id g185so220530655ioa.2
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 11:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=xGaQ6IcqB7vINOK9vPsqKZixr/ED7556nyjUe5EYAV8=;
	b=X/Afe+4G2AvtBHkOP8TRC7z/vGRMpX26nLwXG1AOYfBzKi1DzuXEFQoQWsKVtx0Cbj
	hUbKyZYIHsUccdwU+0akGR6Kz2NYwKf4cOMYrYPcyC5/nySVgbm3Qsk6iDulHfd/LVq8
	CPPlVbhKTpup0PUkhk79yUpGeBym2+RQsai9mOJdnTZR1H+KTwZyS3g1e78j3ahbO9J9
	CGqg/57j+cyrd24QoistyYEPVHPqqhn3K66GcUtHLwOaUkvAXes//sd1L9uaD78jBmRk
	oyI90/YC2B/xss1JnQe44R1zSZkpzjvjpD4sqH1o9XrIfWZDr2jX584MU6d5nNzLEyiy
	U92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=xGaQ6IcqB7vINOK9vPsqKZixr/ED7556nyjUe5EYAV8=;
	b=ktfKfH+nOGbzPWabkeGQcgN9+sQVuewEqPvesuWZOSnQKk3ctQUCbbq3nyFHjtdAQV
	npkgp/ROs0lUXw6zhcldPo4CXvdXbpZ67P9uBSMgpBTxHnmvkLKzd0TLwEJv69djhHd/
	1AqDy4aOHIiGf9xxW44e7aINHtvgspPdpu8zBrxG3rdikzWl4Uk5mMser9f31r2GtwQ8
	t992Ihn/EsxvbORN7474t0IW3pOjOx9CXWJnP4K4/6+8ET1XEyPZwHxXaOnFsmaE7aVb
	b57OXclvTjcx+kDOLDpnYp//qYX/zEvCfsmMDmhCDZjPFcOJo/fjTRVf5i13sd8mCOiD
	9rzg==
X-Gm-Message-State: AD7BkJJ38WwWVfzJU/SOYzx4NDQmOD9thW+ufEgR6WvGwIABTJOaV/3t/PCvSfMilmRmxg==
X-Received: by 10.107.158.134 with SMTP id h128mr25214859ioe.153.1460399314294;
	Mon, 11 Apr 2016 11:28:34 -0700 (PDT)
Received: from openSUSE-i7.site (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	vs2sm12972735igb.20.2016.04.11.11.28.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Apr 2016 11:28:33 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 11 Apr 2016 14:28:30 -0400
Message-Id: <1460399310-15649-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.8.1
Subject: [meta-chip][PATCH] u-boot-chip: fix md5sum
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
X-List-Received-Date: Mon, 11 Apr 2016 18:28:37 -0000

The u-boot master and chip/stable branches have diverged such that the md5sums
of the License README files are now different. The latest master branch has
added a "SIL OPEN FONT LICENSE (OFL-1.1)" license.

diff:
	--- chip/stable-README	2016-04-10 02:05:30.783023170 -0400
	+++ upstream-README	2016-04-11 13:48:34.973027406 -0400
	@@ -67,4 +67,5 @@
	 IBM PIBS (PowerPC Initialization and		IBM-pibs			ibm-pibs.txt
		Boot Software) license
	 ISC License					ISC		Y		isc.txt			https://spdx.org/licenses/ISC
	+SIL OPEN FONT LICENSE (OFL-1.1)		OFL-1.1		Y		OFL.txt			https://spdx.org/licenses/OFL-1.1.html
	 X11 License					X11				x11.txt			https://spdx.org/licenses/X11.html

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot-chip_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/u-boot-chip_git.bb
index 2342478..60db3e0 100644
--- a/recipes-bsp/u-boot/u-boot-chip_git.bb
+++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
@@ -2,6 +2,8 @@ require recipes-bsp/u-boot/u-boot.inc
 
 DESCRIPTION = "U-Boot port for C.H.I.P. boards"
 
+LIC_FILES_CHKSUM = "file://Licenses/README;md5=0507cd7da8e7ad6d6701926ec9b84c95"
+
 DEPENDS += "dtc-native"
 PROVIDES += "u-boot"
 
-- 
2.7.0.rc3


