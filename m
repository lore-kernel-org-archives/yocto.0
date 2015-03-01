Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F3FE00871; Sun,  1 Mar 2015 15:06:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B0AE00825
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:28 -0800 (PST)
Received: by lbjb6 with SMTP id b6so26619707lbj.12
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=O+DlbQLpZSQk8ZjpWeIHmJpp+ytrO3lowwklgqT+734=;
	b=l6lre1vSvYkj09YUtvpv8oOrqCykmcm0+xaBB460c5NfM3cBxDpAOfapQoZ4pdmO8C
	Z6yO8yGqMk/X00nYpWoGzxWafjWSkVZ0z5Ma3RJX068Cu3ZQdKLjCIleNf5slLo0fCNl
	iwnlv+2xAYU5ssaVjI/4H2qZXApz0ENbwv42iWiYNdavvhiC01cKToyvRLGg9BtPAR3M
	w8JAoBnI5IKX0WBMmjmK38C+iAGLk7yXPVdjT66/iP6FRYYZc9O65M5Mov4x59GarqL0
	QzvnlayvZsftOZQ2pNOqSZbPety1bXI/dOgkQJyRNj3byfdGXOBgZCwEk36L7i9S43Ul
	WwOw==
X-Gm-Message-State: ALoCoQnfXM8I/CY09h1TEPE0g3SdqRIbFwUC96kF0eglf7k7qebzkaSxu23f9H905d5aBL/MPOjH
X-Received: by 10.152.10.66 with SMTP id g2mr21761362lab.44.1425251187722;
	Sun, 01 Mar 2015 15:06:27 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.26 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:16 +0100
Message-Id: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 1/6] bcm2835: More recipe to devtools
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:29 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 {recipes-bcm => recipes-devtools}/bcm2835/bcm2835_1.38.bb | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-bcm => recipes-devtools}/bcm2835/bcm2835_1.38.bb (100%)

diff --git a/recipes-bcm/bcm2835/bcm2835_1.38.bb b/recipes-devtools/bcm2835/bcm2835_1.38.bb
similarity index 100%
rename from recipes-bcm/bcm2835/bcm2835_1.38.bb
rename to recipes-devtools/bcm2835/bcm2835_1.38.bb
-- 
2.1.0


