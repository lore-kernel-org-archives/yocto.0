Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6F9E00A8C; Wed, 21 Oct 2015 14:12:55 -0700 (PDT)
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
	*      [209.85.212.175 listed in list.dnswl.org]
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B140E008AE
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:49 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so109030113wic.0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=wRCstQbKojt1qKwRyvWyMkf2OZwOODK08Fp2RU21rck=;
	b=LtUBIvj1lkNGLsaH/Y9yT2mm+YxqFjZwj2i/AonQPQuiB4Zv4za/HW5m9Q6/jvuqIn
	3kh6QKaFDwansio/PaPjZK9cyf982JGtF0kYz0ldPL0KL9TXvy3h+lMzo10s9a5osSrQ
	TguVR6zFAG7AoP8FGXudf8/boGlHdBT/zSSCu4AZPMa7oiI/Cobu0CJ+dkYBwdCfFZ15
	nTfCbqrLljQTrPLjtKES0NoRf9fEsJx6YEIJ2+kNiJEhgmD4Uie7YiNd57593N6jCCnA
	1Fd4VLJQSUtawgJ6mxc66gRsQ6cX+RjAikCe7HXcgkuWGBsnQw8yaWYsMlUBaUznNole
	LXSA==
X-Gm-Message-State: ALoCoQmyIdzF+EJQtXIhufZU9G68p7AdHPQ0ukqspa37km+OG3WtP2gP+vxzkOBUdUByyzu1jZv+
X-Received: by 10.194.88.74 with SMTP id be10mr12616841wjb.67.1445461968316;
	Wed, 21 Oct 2015 14:12:48 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:47 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:05 +0200
Message-Id: <1445461931-18349-5-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 05/11] rpi-default-versions: Default kernel on 4.1.%
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
X-List-Received-Date: Wed, 21 Oct 2015 21:12:55 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-versions.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index bcf7828..c879dde 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "3.18.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "4.1.%"
-- 
2.6.0


