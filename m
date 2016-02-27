Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46D10E00DC7; Sat, 27 Feb 2016 07:27:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E7ADE00D26
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:14 -0800 (PST)
Received: by mail-qg0-f51.google.com with SMTP id d32so30899052qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=2edM28zwWZUP6R1aIR69mtABmsdkJ3Zs8duzvyM4H9k=;
	b=M9G/fsR/OOjap3dAbW4+P1XX56T7JsC5qzkzIwWyEHdLRZUEhR0RS6b8gNRo9Whli0
	91hhnMO1+uw28cQCTSSd2s0ymnYCSvrd5tFZZw+Aha4GkcuScdOB7alFuPi5bgg8XW47
	Aa98kKjK6xaOXQXiPWa5EJu6hRleoPnMknEuXlCubI4AnnL9g9iHOAofkC3KHbHNYqrh
	u+8C1msDVD1IMzN+d7xcSDR27fYo4ySBYSYf7ippRm8RFx4h4Xo38G1C8MD7abDFjTTO
	D7BGrsl/tW6Tp+qDHhvb4Fgtk3ll5mG8gKgqPTi6PdJ+82yZKrmL5GJJ6OY0vEQ4AWuq
	wAGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=2edM28zwWZUP6R1aIR69mtABmsdkJ3Zs8duzvyM4H9k=;
	b=HrsOe3eE3+DeqnUU8oj005YMzMNINJTJh+WpnXeHTzCBhMVdbUGlgNg/pS7awkAGkS
	nmukw8vGXoWFW08C6BzzCI2XfqvV345v5v3HzoTgwGGmVdoJVATLUFTf51lwTgUqN6WV
	VVSNOJ0busxWYO7cTlRKDdKMw08HpKFDwxraNWDBiVBEXLHKkslH78HAs3kY9pXU09IU
	LE+7A9gZcWTXcXpzGNJzhlzXLU7MYbr4crCXGvB518ha0c8bB6sqgw0MbgsB8j88aPLM
	swl/fuVOlKAGujmZNqs4F3dWAKwo3kbD49uKXKgnrn0M9NAiA6CCbHVng5ucbEZBAa5h
	y6GQ==
X-Gm-Message-State: AD7BkJJ8bgmRxy1SIU1by8cbGLuOck7OxAZhjEViDAj8ztIFupyIStsfIxPdzvs4nRyoZQ==
X-Received: by 10.140.173.133 with SMTP id t127mr9591242qht.23.1456586834516; 
	Sat, 27 Feb 2016 07:27:14 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:14 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:48 +0000
Message-Id: <0abd6bea7ae08663c26522bea91fd9f1a75f46a6.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 09/23] Delete rpc flushing of thread in glEGLImageTargetTexture2DOES
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
 .../userland/userland/0015-Remove-RPC_FLUSH.patch  | 27 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch

diff --git a/recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch b/recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch
new file mode 100644
index 0000000..d90cb09
--- /dev/null
+++ b/recipes-graphics/userland/userland/0015-Remove-RPC_FLUSH.patch
@@ -0,0 +1,27 @@
+From a09249699cab4ffe6304aaf7e5936019c97f5a26 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 6 Feb 2016 11:09:18 -0800
+Subject: [PATCH 15/16] Remove RPC_FLUSH
+
+Origins from buildroot
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/khronos/ext/gl_oes_egl_image_client.c | 1 -
+ 1 file changed, 1 deletion(-)
+
+diff --git a/interface/khronos/ext/gl_oes_egl_image_client.c b/interface/khronos/ext/gl_oes_egl_image_client.c
+index f9b7287..b04ffef 100644
+--- a/interface/khronos/ext/gl_oes_egl_image_client.c
++++ b/interface/khronos/ext/gl_oes_egl_image_client.c
+@@ -107,7 +107,6 @@ GL_API void GL_APIENTRY glEGLImageTargetTexture2DOES (GLenum target, GLeglImageO
+                    GLEGLIMAGETARGETTEXTURE2DOES_ID,
+                    RPC_ENUM(target),
+                    RPC_EGLID(image));
+-         RPC_FLUSH(thread);
+ #if EGL_BRCM_global_image
+       }
+ #endif
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 75e437f..d78a7c9 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -32,6 +32,7 @@ SRC_URI = "\
     file://0012-interface-remove-faulty-assert-to-make-weston-happy-.patch \
     file://0013-zero-out-wl-buffers-in-egl_surface_free.patch \
     file://0014-initialize-front-back-wayland-buffers.patch \
+    file://0015-Remove-RPC_FLUSH.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


