Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9ABEE0087E; Sat, 23 Aug 2014 18:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 536ADE00869
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:46 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id c11so10745181lbj.23
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=nwIaV9xwut9wtBm4yyALcvzvbUFkD2aTPftRZ2wlqgo=;
	b=QODW1mUCLjEUt+HSUMjR4XvG1MgfH5DQOyryIsOaTolf3KWItmmswvQnhDMFzepfJS
	DNVH7AtuK2lx1KhWK/CqaXqWqJDYZR/6ZEDAVerLDZg+COwK0Rh54tfeeZThYbB6ZwN2
	bJBfhQW4zQ2eNDQk3bBxKoJJx8Ii0LAa0CAMfMA6h1NsYi/9uhuqdzwiV96CiaxW6Io0
	sDwrdF2iys4F3an+oZvLSYfo7ElrL22VscromoZ+BGqrRGUTDJqPG0x+cE1bdLGS5kEN
	lYOCOvp8LgCQ82uqbQvcTqaVSuo5IZAKEdw73gVcJzU6ZzEc/nO/2qih5cKou/Zi1xMs
	3SKA==
X-Gm-Message-State: ALoCoQkyyxly/horTq2GsJJazGfh8sZwenuMdaPJ9T3RjS4YMdCZDG+l5kdJHr4i+ObW5FQNWbRR
X-Received: by 10.112.163.103 with SMTP id yh7mr4633562lbb.73.1408842584466;
	Sat, 23 Aug 2014 18:09:44 -0700 (PDT)
Received: from otp-agherzan-l1.gjk.dk (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id u4sm1192544laa.42.2014.08.23.18.09.43
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Aug 2014 18:09:43 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 24 Aug 2014 03:09:34 +0200
Message-Id: <1408842576-30267-3-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
References: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 3/5] linux-raspberrypi: Update 3.12 branch to 3.12.26
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
X-List-Received-Date: Sun, 24 Aug 2014 01:09:50 -0000

Change-Id: Ie6630f53bb2e4dd71825e0453236de30d25bd07b
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .../{linux-raspberrypi_3.12.21.bb => linux-raspberrypi_3.12.26.bb}      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-kernel/linux/{linux-raspberrypi_3.12.21.bb => linux-raspberrypi_3.12.26.bb} (77%)

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb b/recipes-kernel/linux/linux-raspberrypi_3.12.26.bb
similarity index 77%
rename from recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
rename to recipes-kernel/linux/linux-raspberrypi_3.12.26.bb
index a40b54f..3865a62 100644
--- a/recipes-kernel/linux/linux-raspberrypi_3.12.21.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_3.12.26.bb
@@ -1,4 +1,4 @@
-SRCREV = "cb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe"
+SRCREV = "f03cd5e1012d3fe8314a944879308cf0f3d9e29b"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
            file://sl030raspberrypii2ckernel.patch \
           "
-- 
1.9.3


