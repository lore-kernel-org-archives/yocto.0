Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69285E007AD; Wed, 16 Jul 2014 01:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D28CE0074B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:13 -0700 (PDT)
Received: by mail-wg0-f43.google.com with SMTP id l18so559004wgh.26
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=r/QxJDf7QK2OJDPKboX6fVTbTYLPaK74KaN2BdxrAHU=;
	b=A84VNtCKdMJSMNDPxSIcaNblSVM/ECyJR2WpaU4cZm2CQIL65dmkJP5e8OJ9wXC9EC
	ukMHNjCnwz6jMNLI/BKJz0gWG48R6TFdPmIFGGxWf+ScX1CjWLxazjdb/4aBYR1i1O+F
	lBUeJhmVrOBR5Sg66ZEpjYjPrYEPs1gXkryPieXtBrocpYH2jDw6V1W/mpUkmLgAEsBb
	R/Yxt3Edbg8erf1Mbd52t38svntZdNGpIrlYj+XGjlnZefU34JuYO2wOae2D/4Oj4MN9
	h+ZRq3a755BGPlptSvx1SVGrzo2NpTqz3CSdH4Av2NXvnv9FLQD8Qd5Oozpwesrtv1x4
	Lq/w==
X-Gm-Message-State: ALoCoQm/C7u/WZr76awXczBb2cOxIBKZ1h75TBvzLwwIjQ98O7W4yT+exjSV0cEjS6LhMlT0BBd0
X-Received: by 10.194.60.35 with SMTP id e3mr35054842wjr.12.1405501152873;
	Wed, 16 Jul 2014 01:59:12 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id
	lb3sm38359805wjc.30.2014.07.16.01.59.11 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:12 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:47 +0200
Message-Id: <1405501129-28327-5-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 5/7] userland: Update to remote's HEAD
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:19 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Change-Id: If0e36184c741da5d68c158e1fb582050f5835bf9
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 07c8381..a348090 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,7 +11,7 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRCREV = "8181677fc08814cd5fcd1475ab73046f89f8dc80"
+SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
 SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
           "
 S = "${WORKDIR}/git"
-- 
1.9.0


