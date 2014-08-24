Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFE05E0087E; Sat, 23 Aug 2014 18:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA62E00842
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:44 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id ty20so11414179lab.32
	for <yocto@yoctoproject.org>; Sat, 23 Aug 2014 18:09:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Yk4GuqABuCNdFquTPEaXrxeiUfmXCHSd2zwRZXHmTrA=;
	b=PZdCiqpS7valYKFcSks8ngF3YqFlBp7oT6SC65G1ObkMOWpc2v9RPm14twcy8yXu00
	s0oav/NEgAAV/U7AWWmq5C0OY8C1kbdDYNv9Yx7YU36a6KoIzjYalpaz0NCBIscEwopQ
	GPSwSc+nYDvp8ilzA7fbqlCbd83KItpjh8M5pjjM03jammd92ZCvycBBhcufykcwTJbX
	9OKV//9ETD9/4HIi2TmMNEFDvSlyR1dCHbiT/l7bfgrlv3PyIJB2gK01hqCT0XpGGbWs
	zPpFydNNugIIF9cdiWiLk/Z1OpJXwmIfcXr+r6IIZkuckmYlO8Dze8uZ4Ms5dI8RkkDO
	L/cQ==
X-Gm-Message-State: ALoCoQkpbG00My6rPfKgEgFT9NB5Hi8DooJ8AB19ma0hSjplmVYhdAWKkNXl8vAE5GeHMfdGbA7i
X-Received: by 10.112.76.230 with SMTP id n6mr8164145lbw.8.1408842583712;
	Sat, 23 Aug 2014 18:09:43 -0700 (PDT)
Received: from otp-agherzan-l1.gjk.dk (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id u4sm1192544laa.42.2014.08.23.18.09.42
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Aug 2014 18:09:42 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 24 Aug 2014 03:09:33 +0200
Message-Id: <1408842576-30267-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
References: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] rpi-gpio: Update to v0.5.6
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
X-List-Received-Date: Sun, 24 Aug 2014 01:09:48 -0000

Change-Id: I93d3239c6f797d4a5ebf4d0ff5a910d20a9042ac
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-devtools/python/{rpi-gpio_0.5.5.bb => rpi-gpio_0.5.6.bb} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename recipes-devtools/python/{rpi-gpio_0.5.5.bb => rpi-gpio_0.5.6.bb} (76%)

diff --git a/recipes-devtools/python/rpi-gpio_0.5.5.bb b/recipes-devtools/python/rpi-gpio_0.5.6.bb
similarity index 76%
rename from recipes-devtools/python/rpi-gpio_0.5.5.bb
rename to recipes-devtools/python/rpi-gpio_0.5.6.bb
index 1d73331..eff22d0 100644
--- a/recipes-devtools/python/rpi-gpio_0.5.5.bb
+++ b/recipes-devtools/python/rpi-gpio_0.5.6.bb
@@ -15,5 +15,5 @@ inherit distutils
 
 COMPATIBLE_MACHINE = "raspberrypi"
 
-SRC_URI[md5sum] = "8cbc1cb0c0f1a4d93bf1efe1a745f1f0"
-SRC_URI[sha256sum] = "c8e1f0da6327103a3551a6e86055ef001113b94af683fcb08070db5f5ecea51f"
+SRC_URI[md5sum] = "cbdff15871230ceef29bb407d31da485"
+SRC_URI[sha256sum] = "36b64a9485d6a0dc8f24cfca6af45759ee367ce412b952ebcf0409364e05813a"
-- 
1.9.3


