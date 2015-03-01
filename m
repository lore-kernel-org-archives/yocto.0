Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCFEFE008DC; Sun,  1 Mar 2015 15:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B487E00944
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:30 -0800 (PST)
Received: by lams18 with SMTP id s18so26919621lam.11
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=5bvPX06UKhQzm3enGAwpcMpPrPzqyMdknYzYlcm9wkM=;
	b=RMp/FKfS7jteS9bXRlh9nT0o2tDD36ZRj4iWLznltnZ4d0BmpkCcyziZQs6UpIDyv1
	8KCZC8hKsBK4sAVwj8Yuc9WfJrrSf3bLrxL99ViADV7fc22tB59EWKvysnmmceEMbBhj
	LlzPn1sHTHnkyKK1g1V7lNLY7EosPLeyg4XdppGBMF5hir2OaETTtjbGfEmk+BZ5w9ca
	yaEQ6KzB4wrFK/0wIeupvZwgwXoTmbF4X8YO+5xU8Kqq9Gzge7Xh8wSrAlG5TST5zqd3
	cyS2OTmMXSdjed1wYPERj7gUQ6HTCQNL+NT1RCCHuv/NF35yvfWu7wlmQMh0TgAdENN7
	PgKg==
X-Gm-Message-State: ALoCoQkwiB+d0NyMCudV9eZmlQrH9yVf8OYwl+kj6D+f0nbUZYkuL0konBsx+YfPS/ELW5uLmeNg
X-Received: by 10.152.45.37 with SMTP id j5mr22001314lam.31.1425251188492;
	Sun, 01 Mar 2015 15:06:28 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.27 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:27 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:17 +0100
Message-Id: <90bd8fa29bcd8a8dba4d02c0ed2cad9cca1b8d7d.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
References: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/6] bootfiles: Move to recipes-bsp
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:38 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 {recipes-bcm => recipes-bsp}/bootfiles/bcm2835-bootfiles.bb | 2 +-
 {recipes-bcm => recipes-bsp}/bootfiles/rpi-config_git.bb    | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename {recipes-bcm => recipes-bsp}/bootfiles/bcm2835-bootfiles.bb (95%)
 rename {recipes-bcm => recipes-bsp}/bootfiles/rpi-config_git.bb (100%)

diff --git a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
similarity index 95%
rename from recipes-bcm/bootfiles/bcm2835-bootfiles.bb
rename to recipes-bsp/bootfiles/bcm2835-bootfiles.bb
index 9751f95..0665944 100644
--- a/recipes-bcm/bootfiles/bcm2835-bootfiles.bb
+++ b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=e86e693d19572ee64cc8b17fb062faa9
 
 inherit deploy
 
-include ../common/firmware.inc
+include recipes-bsp/common/firmware.inc
 
 RDEPENDS_${PN} = "rpi-config"
 
diff --git a/recipes-bcm/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
similarity index 100%
rename from recipes-bcm/bootfiles/rpi-config_git.bb
rename to recipes-bsp/bootfiles/rpi-config_git.bb
-- 
2.1.0


