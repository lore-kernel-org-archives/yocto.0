Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30FFAE0106C; Mon,  5 Mar 2018 01:31:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C2DE0108B
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:27 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id z12so16475116wrg.4
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=48YI+EVkX8h98oXQyNGKwtwqzF5sLsbcaECLabCd/Bg=;
	b=V7T9urKGkEcweAuwfxH3Vj3NhP/tXOqS6TPfn4tvZvuPDoQVUiwOnDdtzZdYrW8e6H
	Z3GoAtNeqOhbnELtlSdl+aeDI2cIwuI4gtsGQBfxKQrrhdxfgeuzQCYXSE3Szu6ikrz+
	MWXwtlG9F+ZqIWAmrtiLe9PejdEyeio+9yVMaZ8CXaWrnJ+/jWmK9x6/KEtSwdmobIUP
	0KrULekQhiwOuD8pwlDACIIq3gdubMsbTlRraTRBY8AgkeqzfvL0/KE0Db8d7D+kgV13
	R5rmt7YWQBEC/JxaN4rzbSqaQDvaGby6Ybof11J36OxMtEMhUoKnk39hL2p0bCoAQyQu
	nk/Q==
X-Gm-Message-State: APf1xPB5DrgdoP4IrffqJ4j+TQLbISg+3uQmkbCBz7onJxYkDGYy4wu4
	lQX0QlBUCUYC7KOzDGiNCj75KjkZ
X-Google-Smtp-Source: AG47ELsoUcPXtk6dUCmv3c+lnqxoPGVv82wL15IAhRQgz1kK4urye+kbkiSwBJSI2crQBJzCT86RCQ==
X-Received: by 10.223.190.17 with SMTP id n17mr11226018wrh.189.1520242286329; 
	Mon, 05 Mar 2018 01:31:26 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:25 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:03 +0000
Message-Id: <20180305093106.11858-12-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 11/14] openjdk-8: rename PACKAGECONFIG zip -> zlib
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
X-List-Received-Date: Mon, 05 Mar 2018 09:31:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

The existing PACKAGECONFIG option 'zip' affects OpenJDK's
usage of zlib, not zip, so this option is a bit inconsistent
and confusing.

Rename to zlib.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-cross.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index 8a24b14..922c2ae 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -19,7 +19,7 @@ PACKAGECONFIG ??= " \
     repack \
     ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11 cups', '', d)} \
     ${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'alsa', '', d)} \
-    gif jpeg png zip \
+    gif jpeg png zlib \
 "
 PACKAGECONFIG[x11] = "--with-x,,libx11 xproto libxt libxext libxrender libxtst"
 PACKAGECONFIG[cups] = "--with-cups,,cups"
@@ -27,10 +27,10 @@ PACKAGECONFIG[alsa] = "--with-alsa,,alsa-lib"
 
 PACKAGECONFIG[jce] = "--enable-unlimited-crypto,,"
 
-PACKAGECONFIG[zip] = "--with-zlib=system,--with-zlib=bundled,zlib,"
 PACKAGECONFIG[gif] = "--with-giflib=system,--with-giflib=bundled,giflib,"
 PACKAGECONFIG[jpeg] = "--with-libjpeg=system,--with-libjpeg=bundled,jpeg,"
 PACKAGECONFIG[png] = "--with-libpng=system,--with-libpng=bundled,libpng,"
+PACKAGECONFIG[zlib] = "--with-zlib=system,--with-zlib=bundled,zlib,"
 
 export WANT_LLVM_RELEASE = "3.5.2"
 PACKAGECONFIG[zero] = "--with-jvm-variants=zero,,,"
-- 
2.16.2


