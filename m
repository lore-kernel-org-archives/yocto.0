Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83AAAE00BF8; Tue, 29 Mar 2016 20:44:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C76CE0092C
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 20:44:38 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id x3so31010519pfb.1
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 20:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=OLh23w+nyLvZ99QnkxfY3PcVnCTNuxgCgV3jXyns6qQ=;
	b=c/N/lPw0rTvvoeOw6R6Xmf56/tHn13Bo+RBXGq2JtAZuTwwMapzwpQSxCAxFBbk6Qb
	RNsNdlKDq9ytakRtce+00ou5zVXNSI3kq11p8Kn6I1NLUqjxNxC4y+hP+XhB29DZ9b+3
	8WjzBeUZOzhYglUuaxfVn7Jel78mHelZ/X3VE1CcDDw4dKLmRFDLnxGunuhIAtOT7lyL
	Kkv6X6chfj6mQuZJs0BQ91h6BLATsQGpGuLrzo9dUPHHA9xsfBwTPRQiyBNrCCx6BPcO
	YNDvQ49MWXRtyUtUbpGN7FSrpkoN/iPBOipt+GQT0XHAqm6dVOblDt+dAldcG60gV2vZ
	6N+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=OLh23w+nyLvZ99QnkxfY3PcVnCTNuxgCgV3jXyns6qQ=;
	b=Fjo5mQdC+jvpJxNnoCNBMeS6gBAZPO9OPxfFJ+wRMhjNrQpf7RBUJ8rIJLJXgoIapv
	pdvr4O0R2wEQ1sBzmcs+HSbJEWkk6Lj5hV4335NnfEPVtNE4flGxjk9jMnuOsSfZ/vR/
	AESujn70XyGkT2+9htXGYPaECDsvdyh9qpFN7aIKUrkai8niRoF83tFm5XQoFHCRXq+c
	mZpwQ5oe5M8xC38U94HnjoWuCXa3504jpoZb0NjEDyJspp6/kdgwoPFe1zHmiEzUkbFP
	d0JRiChum2KdYP3P/BDpWfcd/sN5vid3V47mMG169mBfvaXy4Sthxv3r4w3ls+txT3vx
	1jAQ==
X-Gm-Message-State: AD7BkJIdRcwwXhkTHuR1uQ03Ft53RrT+uSiDoXzjoWDtymN6Gl2Ma4UfPvJXk0p404wwMw==
X-Received: by 10.98.34.200 with SMTP id p69mr9227937pfj.114.1459309478600;
	Tue, 29 Mar 2016 20:44:38 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id f66sm1630274pff.8.2016.03.29.20.44.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 29 Mar 2016 20:44:37 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Mar 2016 20:44:30 -0700
Message-Id: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 1/2] firmware: Update to 20160326
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
X-List-Received-Date: Wed, 30 Mar 2016 03:44:44 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-bsp/common/firmware.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
index 2c4f497..c1117d6 100644
--- a/recipes-bsp/common/firmware.inc
+++ b/recipes-bsp/common/firmware.inc
@@ -1,5 +1,5 @@
-RPIFW_SRCREV ?= "028b1f6585280bd0a21885973589c4b101355597"
-RPIFW_DATE ?= "20160303"
+RPIFW_SRCREV ?= "046effa13ebc4cc7601df4f06f4834bd0eebb0f8"
+RPIFW_DATE ?= "20160326"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
2.7.4


