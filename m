Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2CAE6E00BD0; Fri,  9 Nov 2018 03:23:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83E1E0053F
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 03:23:11 -0800 (PST)
Received: by mail-pf1-f194.google.com with SMTP id b11-v6so810800pfi.5
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 03:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=3BUXxrAmLOUy9x3d0E7QzrSh+JyAw8cBqXkgvianNWU=;
	b=RNcEROEOJ6yX2Alj3UpyOw90JhZezjnZ7DI3h2EHKhsU53YflbX4GMYNQ/li/5FbwB
	59GNYbBPpRIj+dROJEX0sKfWHKFZuhR+omWfM+aJZBxu1zxDmmLqwyPyChla+AEW2RUB
	bi0G0fNrDtQH+LJ2B8fzYk4URW7lvsu/BLVB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3BUXxrAmLOUy9x3d0E7QzrSh+JyAw8cBqXkgvianNWU=;
	b=Q2Ry5SpEsvc54PPuK139cIz5LSqmyh/tl1BEzZD1j3zf/aJVx0Ffk6y0k7/HcBYR5P
	USkP7uMdXICgPgm5PJSy5m8Gds+HzZdD18Nj4xYE1bNyVlTc335lpvXdT9adB5wpMnwk
	TcbfZ06vkuPpN2ZLG5F0wEkcrNPBHj7T7d8y8vpTP4NDQ/91VoLa9vtdTw4nVmHZ0uMS
	KJ4HaYCy5HLZKY9D4KoZgy6ty3TTjcHwcsLvhtaoxciSNpvxCcD1f1rZnopq7ZAZJTok
	SDxD4tf8Es7Tuuss2giHQdllszz3IvgmQIGh2pEAO71VGtqbwxv2c1eIY1yP4T0QFQl9
	U5+A==
X-Gm-Message-State: AGRZ1gITcSsivKOw9HecW/1f9pL6x2Mf+R0zEDq2ur74hoZwf83mUFBf
	fs/febwU3tSlBK7xpx9YRQVw0T8Ux6W0Tg==
X-Google-Smtp-Source: AJdET5cK7ewENdEyoOcfBin6ULdagxrGRxHrfSbjYY7HpOH+UcfWjeKFcKNXS6apTnB4BHl0rTcdGg==
X-Received: by 2002:a63:235f:: with SMTP id u31mr7040339pgm.122.1541762590814; 
	Fri, 09 Nov 2018 03:23:10 -0800 (PST)
Received: from yct-lpt.pdx.yoctoproject.org (5751f4a1.skybroadband.com.
	[87.81.244.161]) by smtp.gmail.com with ESMTPSA id
	86-v6sm7657608pft.184.2018.11.09.03.23.08
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 09 Nov 2018 03:23:10 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Fri,  9 Nov 2018 03:23:04 -0800
Message-Id: <20181109112304.13678-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Cc: rpurdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: Disable BUILDINFO for oe-selftest
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
X-List-Received-Date: Fri, 09 Nov 2018 11:23:12 -0000

Currently the containerimage.ContainerImageTests.test_expected_files test
doesn't expect a file at /etc/build so BUILDINFO must be false for the test to
pass.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 6288e4b..8a694d7 100644
--- a/config.json
+++ b/config.json
@@ -158,6 +158,7 @@
                 "BBTARGETS" : "core-image-minimal:do_populate_sdk_ext core-image-sato:do_populate_sdk"
             },
             "step6" : {
+                "BUILDINFO" : false,
                 "MACHINE" : "qemux86-64",
                 "SDKMACHINE" : "x86_64",
                 "PACKAGE_CLASSES" : "package_rpm",
-- 
2.17.2


