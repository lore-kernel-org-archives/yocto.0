Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28B9EE00DC7; Sat, 27 Feb 2016 07:27:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EBDE00C08
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:13 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id y9so87796007qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=HNeLxAZZ1diF6ItDRlEVr7eqP4mC7IZPNKOoguzZALE=;
	b=xoOjMtteRhwU+jN9oreSSZq1BybiKucEXrCIBM7c2ajxrOpTBHy4M8/tZkRWJKZzXV
	+KvuecqEWNiiczClKVbr4kgAoQ/BUt13z4vezT99zuTyQxYdXet5E0bOpXQKJTjpNXqi
	W7bBrdVGxhWK0KUImKJ4lYv+t56WYtawDtE1NpAntssbvlHmpQ6L3H9iOQZzoxWN52yI
	50nIMTomJJp/JC6YzUsMcLczr6HHSJWCsryMLEJZwv83KsTduqr9BPnFWDoETnn6A6lZ
	0y4VMziTG7Wg2hB13lo9GQZ8ofWJuJd040uXLor6xvoABRb0+vkhK4sxkQlgJZKc8Z3P
	xTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=HNeLxAZZ1diF6ItDRlEVr7eqP4mC7IZPNKOoguzZALE=;
	b=cmHXIFtwPTeOpsHVPTC/91FO7rEe229zshjeN7S92rNxQl7PvJBwi3tlMSHaUDODmt
	wkHnsCEw0djC39ASDI4xxPGE0MEHwjKatuYMmJZ0mD3r3jSRFEWK9VvA9C+avjfrv1PJ
	8yn0bBx7/qcmo1ZZ1BKe6UVBqic5qecin9SW+q4E2o5ffwVHHunDyUWLlBcX6dtC0Dmn
	fzTDBXS+d2i79Sag85gIdeHUjV6gsin7fVb0oZFWmgJjAyM7Lue+rKQ+nd6Vdh6wAOXQ
	zDsrl6USfPmyGoLfKiAF/B8LcE3lHEWNCOeoqBBwLRBJf993TOQdXolNhWlhKFHaayGr
	XT4A==
X-Gm-Message-State: AD7BkJImmqDGntGSGLG4YyM6LETUhJx70zIC3PMUi8k9W11A7jJhnthQDIRrQYdSt5ikPg==
X-Received: by 10.140.223.9 with SMTP id t9mr9371039qhb.65.1456586832842;
	Sat, 27 Feb 2016 07:27:12 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:12 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:45 +0000
Message-Id: <8e632516a6080a1a79070a9c8faf1374eadf8980.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 06/23] eglinfo-x11, eglinfo-fb: Add EGLINFO_DEVICE via bbappends
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:26 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend  | 1 +
 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend | 1 +
 2 files changed, 2 insertions(+)
 create mode 100644 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
 create mode 100644 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend

diff --git a/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
new file mode 100644
index 0000000..7f8b600
--- /dev/null
+++ b/recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
@@ -0,0 +1 @@
+EGLINFO_DEVICE_rpi  = "raspberrypi"
diff --git a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
new file mode 100644
index 0000000..7f8b600
--- /dev/null
+++ b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
@@ -0,0 +1 @@
+EGLINFO_DEVICE_rpi  = "raspberrypi"
-- 
1.9.1


