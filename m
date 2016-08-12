Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED1E4E0124E; Thu, 11 Aug 2016 18:06:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C7FE01252
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:33 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g202so589356pfb.1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=I61SpFf0UThR+7kirGoTYAuYgRgA4o4/bG5NuAGrOAc=;
	b=NJ4gt5w1EwY49ZNRyx/AP0mDJPsleIOovmZ5eCPQ0oWMuEj7j7l3fkAn7TN3GcT1Ci
	GMuJR0HdkNtcSfGA3CMbPOaM3tdJBC2nor9EkyS9TInZ3vqPgwIRdMQjdk17uHl2gI66
	rrPMgjYOVhn3fSnO2krc/jhW8qgKuVJk7zTjilJvJEbkaJyrpKZ3bClD52dTALZ9uQ3t
	9mtQe9sdNo/x9INVnEJkA9pOOa5Gah+eSkERkBFqfFEI8c7d39HaI6xvgNoWK69jYJlV
	cIx9uHsGeHMQ4VlOlUraG6H2MOz8nDdfaaUQyBLOhw7Rj3sA4aYjzmn5nhCu9dvrocBo
	xoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=I61SpFf0UThR+7kirGoTYAuYgRgA4o4/bG5NuAGrOAc=;
	b=jn4s89imq0anbpZQFVAd+uXQY7AOTg2eZtMYS2mk3RdiAez69cW6a+l56DDjEQ83CN
	YjGU+xJjhQenumFJNuZdtPBZZGbC0W5L6KygWmoJRdj1cM6NOhLVCcQSXOPs60PHQ5Ft
	ff+7+pht7YY0fgfRe+7ZCvx+xe3FglY3/WiwhBmDd3y0TJOAkCkUwiT46JWDr6s8SYaf
	WgTo/FU3jy+hywnTKfksRGcG4W6NqlDaSRo4twxPndphwC1lz4QH+4ADytT8FTlEzy4J
	r1bcLe0iDbhf6fx7epckoJbyDkMS31rqL0InJ+LYy6ba9YAGylGOh4DitjMMXnBNG2lf
	4ecQ==
X-Gm-Message-State: AEkooutXPNhEslm8+C9zjryJMS9kLLK1boKQXrmbdmVioU/XvglC+900wWYxokXmvObD0w==
X-Received: by 10.98.51.131 with SMTP id z125mr22466503pfz.109.1470963993016; 
	Thu, 11 Aug 2016 18:06:33 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:32 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:06:02 -0700
Message-Id: <20160812010608.31182-17-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 17/23] linux-raspberrypi_4.4: upgrade to 4.4.16
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:40 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 8fe5330..9a49dc1 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.13"
+LINUX_VERSION ?= "4.4.16"
 
-SRCREV = "680be5e27a9593cf26079c6e5744a04cc2809d13"
+SRCREV = "cff67c7e03f4333149f2a8f6eafd3bc44475114a"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
            file://0002-vc4-ioctl-rendering-allow.patch \
-- 
2.9.2


