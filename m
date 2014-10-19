Return-Path: <lpalcu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4B26E00875; Sun, 19 Oct 2014 08:27:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lpalcu[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6477EE0078A
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 08:27:35 -0700 (PDT)
Received: by mail-wg0-f46.google.com with SMTP id l18so3801014wgh.17
	for <yocto@yoctoproject.org>; Sun, 19 Oct 2014 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ydoR/v4LauchEcvbXBeGV3WJ2UM2aKFjAzImQaqRQnQ=;
	b=WNxnFaW5SRsL+yDNSdj8PSeQ1gUaALypKqoJNnfi1P+KG3Qq7yLGeeuWcLXA8qU+hO
	CfEaQ7lZH/309NV5eGL40t1Aem5GFlsS4id+LCjKdKcib97RfeSZvy+hb124E0QQV/wz
	CgYYLA3PGnYLKRX5Cglfo55NwUL7Kyps3gbNjYF8Ezh6a0Rrasf6bQJ1b5reba1Bl9kJ
	KnMVGK8k10fNLX/TAdG7+byR/Bl01TxZwzWzDE8agHEuUn4Hyd0tEXu7IO5De81M6aDA
	ymsnlwSWKz9DTlIawdmtLAeTVcFxeS2J3eeF5htfDRWPYb1806O++RPmBxPwGvRLN6SE
	HHcA==
X-Received: by 10.194.143.8 with SMTP id sa8mr2571798wjb.130.1413732454989;
	Sun, 19 Oct 2014 08:27:34 -0700 (PDT)
Received: from localhost.localdomain ([188.26.170.170])
	by mx.google.com with ESMTPSA id bl9sm6434034wib.24.2014.10.19.08.27.34
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 19 Oct 2014 08:27:34 -0700 (PDT)
From: Laurentiu Palcu <lpalcu@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 19 Oct 2014 18:25:55 +0300
Message-Id: <1413732355-15761-1-git-send-email-lpalcu@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: raname bbappend to work with any version in oe-core
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
X-List-Received-Date: Sun, 19 Oct 2014 15:27:45 -0000

Signed-off-by: Laurentiu Palcu <lpalcu@gmail.com>
---
 ...bappend => gstreamer1.0-plugins-bad_%.bbappend} |    0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-multimedia/gstreamer/{gstreamer1.0-plugins-bad_1.4.0.bbappend => gstreamer1.0-plugins-bad_%.bbappend} (100%)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
similarity index 100%
rename from recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.0.bbappend
rename to recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
-- 
1.7.9.5


