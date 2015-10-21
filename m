Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4331BE00AE4; Wed, 21 Oct 2015 14:13:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F404E006F1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:55 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so109333802wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=u5R3mbZylR+ZdR7PWMKTqN7xCEBFUftQo8Iczh5ZwUc=;
	b=Trs4ce+qL1rF5NsrJVkKfj2yNobDR28cMA+xJfSKHLA//BmNqP+ANDHxIpb03bM7tl
	VBR8b51zbk/mP+MLSanNQ4EuQie2w2d1I1zQ9JJXQc6EPJd7WJaFEsZCwn2ZeDZl1mYy
	RPwIeAXaH++84InUVdBkWRXdZhOetZIFwRFmwB9NLR8u43HU2VhSmNGh844KJfMjlkdq
	gwWd3Y0SOu7OUuQ0Y7cDI7ySNlTl7gvqY6vngOwnhh1xqwxcaR/tkEMH/6GXqIQzcE1l
	aV+pZEXq4Pn65GUoHKjHQUmweLsvvBJrV51lssdmNOMHm+s3j/c8aD4Njy5BpvcG6pNE
	nRlQ==
X-Gm-Message-State: ALoCoQl3u+cjDK/Ft36EIiYT4yOMD4Ga6simZd5aoI/75AOE4RNGZOwTXSLD7EN653y1sqNEz6Js
X-Received: by 10.180.208.100 with SMTP id md4mr12982156wic.41.1445461974739; 
	Wed, 21 Oct 2015 14:12:54 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.53
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:54 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:10 +0200
Message-Id: <1445461931-18349-10-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 10/11] userland: Bump revision
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
X-List-Received-Date: Wed, 21 Oct 2015 21:13:02 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/userland/userland_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index e431077..896229e 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -14,7 +14,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "cc92dfd6c4e8e2d90c3903dccfe77f7274b8d1b7"
+SRCREV = "40e377862410371a9962db79b81fd4f0f266430a"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-- 
2.6.0


