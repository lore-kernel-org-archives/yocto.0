Return-Path: <vomegaz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 203EFE00C0E; Wed,  9 Sep 2015 02:40:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1EAAE00AB5
	for <yocto@yoctoproject.org>; Wed,  9 Sep 2015 02:40:08 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so147527123wic.0
	for <yocto@yoctoproject.org>; Wed, 09 Sep 2015 02:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=bfKk3+eeLBQoEPm0xzgcYxENELeikKQdlagqWAjC7Ic=;
	b=NHSWJbze2w6w5dmkXd2gFdH4nFIYs+YDBREchNuWlv6upr+MLEVe2cr0RXbsTBFE2J
	r7DcEd2X25XU/XOSwWFjeLGx45bIdOIR0ZV/Qb9sMcnfeujFtRTNHpE+X1mt1CyZI9IY
	u1J7i6dNxHFkcAnHyxjJNyGLkP9tzsVEoArTHdpVIcw0jpdOijwL71h+9+CrUS2zXTmU
	TuPhlwxt4MVGL6f+yVzEZ2Hq+/FnS/Svc7PZW4yAmTNCGSZ/VDtknql57MqjoRG9dDe0
	0p2yJB9uxVs4xJ8n6NRlVlyvtP6aHZOJsVCm3v6swYGItJBuPkzfFPnFip55N2QcCmT9
	ozgw==
X-Received: by 10.194.90.134 with SMTP id bw6mr14355862wjb.68.1441791607507;
	Wed, 09 Sep 2015 02:40:07 -0700 (PDT)
Received: from sgxcmp131.sigfox.io ([217.114.201.133])
	by smtp.gmail.com with ESMTPSA id s9sm9279264wjy.16.2015.09.09.02.40.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 09 Sep 2015 02:40:05 -0700 (PDT)
Sender: Thomas PERROT <vomegaz@gmail.com>
From: Thomas Perrot <thomas.perrot@tupi.fr>
To: yocto@yoctoproject.org
Date: Wed,  9 Sep 2015 11:39:56 +0200
Message-Id: <1441791596-7992-1-git-send-email-thomas.perrot@tupi.fr>
X-Mailer: git-send-email 2.1.4
Subject: [meta-selinux][PATCH] To fix ERROR: No recipes available for: /home/tperrot/dev/oe-build-easy/combination/meta-selinux/recipes-extended/net-tools/net-tools_1.60-25.bbappend The version of the recipe has changed to 1.60-26 in openembedded-core.
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
X-List-Received-Date: Wed, 09 Sep 2015 09:40:12 -0000

Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
---
 .../net-tools/{net-tools_1.60-25.bbappend => net-tools_1.60-%.bbappend}   | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-extended/net-tools/{net-tools_1.60-25.bbappend => net-tools_1.60-%.bbappend} (100%)

diff --git a/recipes-extended/net-tools/net-tools_1.60-25.bbappend b/recipes-extended/net-tools/net-tools_1.60-%.bbappend
similarity index 100%
rename from recipes-extended/net-tools/net-tools_1.60-25.bbappend
rename to recipes-extended/net-tools/net-tools_1.60-%.bbappend
-- 
2.1.4


