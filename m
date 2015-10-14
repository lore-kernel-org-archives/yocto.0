Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28DA2E00A38; Wed, 14 Oct 2015 05:49:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F30DE0086D
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:49:12 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so45334040lbc.3
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=FVRiViA3lTQaM59RlrLoveIgUkADyRL2lDjlBWXkd98=;
	b=Tq/X3cd3KiBfo9spOCyyuBYy7lxs2rXrEB5Rf6Bogws64Dbdj2A52l6x09MtGpK02s
	cn1o/U7bTmVn7qATwIF0mL0ov6UMHAMPXalO9pmE0BkpRsN9kp1kCpLXBksI6r+qp7tT
	ivJ/UvLucaUUHj3uPq9AVIgOSlOf3BPs2brEj13fGTmOTKYHOagN2Wxne0SafhCUguL0
	dHL1/Kxlv8mKCPv/c0B3tVU1otlo6oomavDbrnrPEq3XewgNyKJ33W8oQ2kXcUzpn/9/
	M2d2R+uv5JqXPSWpQiM3li132O/f5CEML6AhkjiaLLmA89i83djoeus1Z2PNf15I+0lX
	FmsA==
X-Received: by 10.112.141.228 with SMTP id rr4mr1514325lbb.48.1444826952048;
	Wed, 14 Oct 2015 05:49:12 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id
	l201sm1337329lfl.13.2015.10.14.05.49.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Oct 2015 05:49:10 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Oct 2015 14:49:07 +0200
Message-Id: <1444826947-13462-3-git-send-email-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1444826947-13462-1-git-send-email-ricardo.ribalda@gmail.com>
References: <1444826947-13462-1-git-send-email-ricardo.ribalda@gmail.com>
X-Mailman-Approved-At: Mon, 19 Oct 2015 09:31:39 -0700
Subject: [meta-oracle-java][PATCH] oracle-jse-ejre.inc: Make LIC_FILES_CHKSUM path relative
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
X-List-Received-Date: Wed, 14 Oct 2015 12:49:14 -0000

If the path is absolute, it invalidates the SSTATE, which also
invalidates all the recipes depending on this package.

Signed-off-by: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index 9a1fdfed2d98..65de848aea4c 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -12,6 +12,6 @@ JDK_JRE = "ejre"
 require oracle-jse.inc
 
 LIC_FILES_CHKSUM = "\
-       file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
-       file://${WORKDIR}/${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
+       file://${JDK_JRE}${PV}_${PV_UPDATE}/COPYRIGHT;md5=be9fe5d47a7dcfb78f142f487afb34bb \
+       file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=f3a388961d24b8b72d412a079a878cdb \
        "
-- 
2.6.1


