Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6334E00A81; Wed, 21 Oct 2015 14:13:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625B6E00957
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:56 -0700 (PDT)
Received: by wijp11 with SMTP id p11so3401798wij.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=p+F3h9EqMqF4JqjG7OSc+4JeZfPlAXp8EJ4BMO6xHVQ=;
	b=IltbrRZSTlv7aTNdkb2CJRsSW+1bqmFhUwS0uT4bCvQ0wR94h9r9zdkVwvNpfuUbg/
	e6PnucCKuWnjTVHIR2BAT++QzvOABQI6Fxm97/Skfun5A+0uZ1TlodtNQQ72O73y/BiN
	8l5XWFgSOrQ8gwhSlhpwgOvQRB+x8TI9YGs7qbW+bwz61ZK2WWAdmPIgFIlDUU0DgPM4
	6fInkseQNsXcQl8vihLiVLewD7djJua1pOEEch60VQBl2GaRc6uxIGrdiv9wZcZR4yrI
	XIeFLfWw3oBYS521RmpVXBd5jMxHc4wn+jp3DsI+4Hm0v+kK1soi81ZPhNeuJy0hiyvM
	PMag==
X-Gm-Message-State: ALoCoQkqZzLWkViLuqwE4DSp2eYmWI2+LO0fWM3Ej7ZZ674JIYmatjtM5zdEA8T7RtBAn4Sdi10u
X-Received: by 10.180.198.174 with SMTP id jd14mr13570807wic.2.1445461976133; 
	Wed, 21 Oct 2015 14:12:56 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:55 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:11 +0200
Message-Id: <1445461931-18349-11-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 11/11] pi-blaster: Bump revision
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
X-List-Received-Date: Wed, 21 Oct 2015 21:13:06 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/pi-blaster/pi-blaster_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/pi-blaster/pi-blaster_git.bb b/recipes-devtools/pi-blaster/pi-blaster_git.bb
index 01a55ca..263852b 100644
--- a/recipes-devtools/pi-blaster/pi-blaster_git.bb
+++ b/recipes-devtools/pi-blaster/pi-blaster_git.bb
@@ -1,3 +1,3 @@
 require pi-blaster.inc
 
-SRCREV = "bce7c1b4c53b0dd12665e46bdebd3b7cb0987e3d"
+SRCREV = "ec5e1b4c6191d8f9a538497dbbb86f9cf0de7016"
-- 
2.6.0


