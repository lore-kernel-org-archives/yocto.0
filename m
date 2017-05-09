Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C832FE00B58; Tue,  9 May 2017 07:47:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A8EE00B3F
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:09 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id a23so307582pfe.0
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=7LnHKdB7TkV6JWAMb1nA7ROWJ+QfMwpAWyvwdXVZ1wE=;
	b=GEInXpnHoelI2Vw/h+Jg040f0E8Iut65JFpEoywMKwFiwOa1a0DkZB0bq2OgOd5kK4
	+in3kMC7UoSvWI1wTHAoKQeqdvEEUW70KbYjsol92GnUElZyRf1WmGyiNe0lVk5tlkIA
	eq5sy5t97LXUzfKViRQL0+gnakmoK158d75a8NLzb/hUbxe4kRvpVfWhgjxio8XXb+HK
	u+5uL6RYf8OFkTw+piyPUEI8iidFjD6KHrua5uBuv5027LktNMF4xpw2VFbigD0N52C2
	jR+oltUwdOTqMoiSN417GgCHCv+q+T+G6CfB0CHu382RH2Q9M92iHkndzTI7LmEG1LVm
	UaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=7LnHKdB7TkV6JWAMb1nA7ROWJ+QfMwpAWyvwdXVZ1wE=;
	b=C1JwZsdp7zHHCwLmKk3ynvjBYBL7eg7GKaMuFGYuXIat6pQslS6BUHL8zw+aBGrVEK
	0gVmzjGLF4yIn4jR6F2wlGR0L1EaGy5TtmqMOmGZLi2Cg3Az/hzZ8EToyYMxDhaSmuzI
	51FAgfOh/ffl8I44A+T8xrx2xwBDeyP+3AA6CExRt8YY004TUyrLxLdkVnOphfjaXWOh
	VVLH5QgCZWtJmY8teecPC9F2EmdP+XDY65m0wqTRsVlZYtzxFAIgX7i5c/e4+jRlE3mC
	GwO28B4R1sjeDwayAbJkRIaU2jtayu7rzbOeeBOtBvMgvc638PT6VSX/AUxc5enT0ZHU
	Baig==
X-Gm-Message-State: AODbwcCEwBQkSvPh5UYLJhQa5HYV7GT+UPBnuyN9THcGH+qjaCBq1qVT
	Wpfb8iW5e1GuHQ==
X-Received: by 10.99.97.68 with SMTP id v65mr580113pgb.76.1494341229061;
	Tue, 09 May 2017 07:47:09 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:08 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:57 -0700
Message-Id: <1494341221-17621-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/10] tpm-i2c: some systems us i2c TPM
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
X-List-Received-Date: Tue, 09 May 2017 14:47:10 -0000

add modules and i2c support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup/packagegroup-security-tpm-i2c.bb       | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
new file mode 100644
index 0000000..d4c3bb7
--- /dev/null
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
@@ -0,0 +1,17 @@
+DESCRIPTION = "Security packagegroup for TPM i2c support"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=4d92cd373abda3937c2bc47fbc49d690 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+inherit packagegroup
+
+PACKAGES = "packagegroup-security-tpm-i2c"
+
+SUMMARY_packagegroup-security-tpm-i2c = "Security TPM i2c support"
+RDEPENDS_packagegroup-security-tpm-i2c = " \
+    kernel-module-tpm-i2c-atmel \
+    kernel-module-tpm-i2c-infineon \
+    kernel-module-tpm-i2c-nuvoton \
+    kernel-module-tpm-st33zp24 \
+    kernel-module-tpm-st33zp24-i2c \
+    "
-- 
2.7.4


