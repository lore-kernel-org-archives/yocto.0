Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70D99E00D4E; Sun, 26 May 2019 21:56:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 151FCE00D4D
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:53 -0700 (PDT)
Received: by mail-pl1-f173.google.com with SMTP id r18so6536798pls.13
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=DYcxLvcCcM0qUx+7dQoBSIVxXQDhEpYw00gdkY72DM8=;
	b=hB9NYZh63e71y3wou6g3Xnl7NIg60XNvAkjWtp87M/amWpdeE3l064L6kZdXMrqk3X
	bUgoGAyDvPKwhJ+ygJipypLpgEeGT+axuL7R2SvqfwuLbOkkTSwH0RfvFI/AEJ71Sads
	aUw8C/d1vJYDs5S0tgTLt2USutmPgmNdHr7btcalvk0q1564R2O3oeWTDAPneP3P5ma4
	Srszqf/4YHjs2gbQqEmlh/xYfFAmVJ+YATe4P87nM8Zka0BHjDnnKSTmeDPwOU/vxud5
	fexWv2xD7oWxkvwgmvAvr7spuALyMZNpcRrgujVA1rTv4l39EVxwf9WMxN07/rt7t4M8
	DO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=DYcxLvcCcM0qUx+7dQoBSIVxXQDhEpYw00gdkY72DM8=;
	b=TWv+VxfcZgdntBh41b7Rdko8+rQtRBY9tjuALgoI7XR7lhvjqb5dRYZB9OdAAsCSgo
	El3aZdo1ar7Afr5bzC/zHZing/PKyHqfIDgr3iPQaXKNDPv1uCEimZAKOytFKSWJoJB2
	NI6LwNaB+2tDskUl09AQIxU4G+ohpqSI3ph+lfsJpr14Pj65KWMCiMncItytbgsZlXf+
	sMKCu4hABKmunVbvVJb1uzWs8tokKHHqh0tfywSoC+216Tb0fwPhQoYhHxaiSzt/teRC
	5fJ05RtJum3HpAf0RSgaZYQF2mvtI3A+JZ+pN3SUihNSPgwM1b8eHvh5lXHuBJgllNIE
	10RA==
X-Gm-Message-State: APjAAAURHMxQ/6msg1SmlNoFhKDs78HUBIniaic5tEYxsXuTcA+7H6Qs
	8BLjv2iHVMaKiZ9HbVntyMl4TF7M
X-Google-Smtp-Source: APXvYqyxZJOGepKmPnWoOW8vyjW02yUkECR5FYGG6JnK9d2UqP3AtMlzslhrwAt9HkdiTejvhAm17g==
X-Received: by 2002:a17:902:704c:: with SMTP id
	h12mr69405227plt.65.1558933013547; 
	Sun, 26 May 2019 21:56:53 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:53 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:41 -0700
Message-Id: <20190527045641.18884-15-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 14/14] image: add image for testing
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
X-List-Received-Date: Mon, 27 May 2019 04:56:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../images/integrity-image-minimal.bb         | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 meta-integrity/recipes-core/images/integrity-image-minimal.bb

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
new file mode 100644
index 0000000..6ed724d
--- /dev/null
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -0,0 +1,22 @@
+DESCRIPTION = "An image as an exmaple for Ima support"
+
+IMAGE_FEATURES += "ssh-server-openssh"
+
+
+IMAGE_INSTALL = "\
+    packagegroup-base \
+    packagegroup-core-boot \
+    packagegroup-ima-evm-utils \
+    os-release"
+
+
+LICENSE = "MIT"
+
+inherit core-image
+
+export IMAGE_BASENAME = "integrity-image-minimal"
+
+INHERIT += "ima-evm-rootfs"
+IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+
+QB_KERNEL_CMDLINE_APPEND_append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
-- 
2.17.1


