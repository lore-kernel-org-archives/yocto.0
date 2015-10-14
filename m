Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEA1CE00B1A; Wed, 14 Oct 2015 05:51:28 -0700 (PDT)
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
	*      [209.85.215.41 listed in list.dnswl.org]
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78ECBE00A7B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:51:25 -0700 (PDT)
Received: by lffy185 with SMTP id y185so10745835lff.2
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 05:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=FVRiViA3lTQaM59RlrLoveIgUkADyRL2lDjlBWXkd98=;
	b=kvxaRwyCEp9hOlhjFh4cwVIxliQvPw1FKDIGyAwKP3DCXJrbkkx6wRUdlFo7kMxsaF
	Pj7rE0TacNZN6f8DHA1tPee5JNWk5fxUe7EbZtZ/QXnUY1fw86G57zuNwOpC64c4f5Nw
	l0wbwDJaRIg+Lh0KSxEuFjWt0ZkyMbC18KhMp25EQu81H7SyCchYk9cLEpOSRNdhwR2t
	qVEoFZSMcHSMPNnGSQ/1kZmkHUD+ZrUXvlzAUnOvKxlFWnWuq+HHPnZ4FDz9G1WXoens
	qavmQLQXWPttssD0ABdafGdPQTRasR0duolNRCbDDMPhaMDVrQ3tmrtciKFBIMmbU/M+
	1yzA==
X-Received: by 10.25.161.136 with SMTP id k130mr1011905lfe.25.1444827085181;
	Wed, 14 Oct 2015 05:51:25 -0700 (PDT)
Received: from neopili.qtec.com
	(cpe.xe-3-0-1-778.vbrnqe10.dk.customer.tdc.net. [80.197.57.18])
	by smtp.gmail.com with ESMTPSA id
	b193sm1326801lfb.46.2015.10.14.05.51.23
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 Oct 2015 05:51:23 -0700 (PDT)
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
To: yocto@yoctoproject.org, Bruce Ashfield <bruce.ashfield@windriver.com>,
	Pavel Shumeika <Pavel_Shumeika@epam.com>,
	"Maxin B . John" <maxin.john@intel.com>,
	Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
Date: Wed, 14 Oct 2015 14:51:19 +0200
Message-Id: <1444827079-13679-3-git-send-email-ricardo.ribalda@gmail.com>
X-Mailer: git-send-email 2.6.1
In-Reply-To: <1444827079-13679-1-git-send-email-ricardo.ribalda@gmail.com>
References: <1444827079-13679-1-git-send-email-ricardo.ribalda@gmail.com>
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
X-List-Received-Date: Wed, 14 Oct 2015 12:51:29 -0000

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


