Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A784E007C9; Wed, 16 Jul 2014 01:59:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA7E1E0079A
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:17 -0700 (PDT)
Received: by mail-wi0-f175.google.com with SMTP id ho1so5761098wib.8
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=KcmhhRsK+DXAIhYlvi+ikaAvJd9id8Ko21s6cputB+A=;
	b=J1BqLdAKwok/RP3ADOz4tf8oIquA2TX2EyEmE5wpZ2Fb0BOUw2WBXAmM26DWxbt3j+
	C9DZVdLcTl0Fapc3Hj8xSPQpCHlVR7jgLg3I69OmnR4E8SDdc7sFYKH64bzM8tbgpb3h
	kwBK3kQhjAG3w1mHhnxLPag6hkTNshjfNR8xEft7d5xRLHhv66joNWkvh8wHElwd89g1
	ldk6Y90XJQMnSargqqdLtefLWHX5+s6gEreGbe16wOmWDwjC6jcywAW/edI5kaRMnHNf
	147TqF3b25rwA48Dm4GlHy9CdiHQo6/jiUFamZtqiRWOeI8DrUZ2ADSbHXBSM6LqdIcD
	NqXA==
X-Gm-Message-State: ALoCoQn/mfiHQ4P7IYV77vahOqbifAq/ymgx17xBg0q/5BHNNnsEDMy/3H+2kySEeYFlnJAkKrLS
X-Received: by 10.180.210.132 with SMTP id mu4mr11713637wic.18.1405501156793; 
	Wed, 16 Jul 2014 01:59:16 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id
	cz4sm53985702wib.23.2014.07.16.01.59.15 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:16 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:49 +0200
Message-Id: <1405501129-28327-7-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 7/7] firmware: Update to remote's HEAD
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:21 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Change-Id: I9e28318c5746484ebde636295c66f7b6b64ba2fb
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bcm/common/firmware.inc | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.inc
index 390f6b3..168cd37 100644
--- a/recipes-bcm/common/firmware.inc
+++ b/recipes-bcm/common/firmware.inc
@@ -1,6 +1,5 @@
-# 21/02/2014 firmware; this can be overridden from distro config
-RPIFW_SRCREV ?= "cf20d522e926f30e91fa890d42d010ca98913286"
-RPIFW_DATE ?= "20140221"
+RPIFW_SRCREV ?= "c8881991d9181779aee9637d6f4b215f108021a3"
+RPIFW_DATE ?= "20140508"
 RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
 RPIFW_S ?= "${WORKDIR}/git"
 
-- 
1.9.0


