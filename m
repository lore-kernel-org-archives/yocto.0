Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 479CAE0108B; Mon,  5 Mar 2018 01:31:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC780E01070
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:25 -0800 (PST)
Received: by mail-wr0-f193.google.com with SMTP id p104so16440178wrc.12
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=nUEW6wtr9PZvEvykt5s5hZT7Yaftg0+SIGHvH8O9z64=;
	b=E/D987FHWgZd355Yh6zE2KNmQLfdIRCPsqW1RdSLoPyHaP6wpUqEV6hxjOAI7OFvTP
	so0KqR0hanHSgrTDL0H+6NbLNCa5dUWpauHmZGcPTFvf5c7wY+vOfuNwY4R7f9I6rDYU
	vmX5qJ0lr+UUqRy23rJcbybvaSqzrjP1ejngANYc+VqABfzSKqiq+N9OTBKGI2YlGMXJ
	BvW1o2i4tcWd1q87whPLKGn/0qBpyq5bGwaBJyEZsLUwu94iuQkDhXSekYBY8TfFXrc9
	/wkyVGbaDZQ+Lq3HqHrFSIreX+JDKymqwCKFeoD98N7kN5DpBrSIb9spPeKMYya62IhC
	ZQUQ==
X-Gm-Message-State: APf1xPCuzI8xKLE0ObMjIu3Abw7MW8vJOYsvbE8H76X9JYPJrslN6+HR
	VXcCSzwnHREOfnZMzLmjqPM8uqG6
X-Google-Smtp-Source: AG47ELsqmHyLmksOCfFwemoPobjDQuShfrZb0Me+X4XHNiGibrzhs/jnAb41D4Y1b82+dwFX0JIRrg==
X-Received: by 10.223.209.65 with SMTP id b1mr11270404wri.277.1520242284682;
	Mon, 05 Mar 2018 01:31:24 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.23 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:24 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:01 +0000
Message-Id: <20180305093106.11858-10-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 09/14] openjdk-8-native: really use system libgif & zlib
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

The intention seems to be to build against above system
libraries, but configure still picked the bundled versions,
even though the libraries are in the sysroot. Make it
deterministic and force use of the system libraries using
PACKAGECONFIG and the appropriate configure arguments.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-native.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-8-native.inc b/recipes-core/openjdk/openjdk-8-native.inc
index 10b31bc..d674474 100644
--- a/recipes-core/openjdk/openjdk-8-native.inc
+++ b/recipes-core/openjdk/openjdk-8-native.inc
@@ -2,22 +2,22 @@ JDK_DIR = "openjdk-8-native"
 DEPENDS = "\
     icedtea7-native ant-native \
     libxslt-native attr-native \
-    giflib-native \
     glib-2.0-native freetype-native fontconfig-native \
-    zlib-native zip-native \
-    unzip-native make-native \
+    zip-native unzip-native make-native \
     ca-certificates-native openssl-native coreutils-native \
 "
 
 SRC_URI_append += "file://handle_extra_output.patch"
 
-PACKAGECONFIG ??= "jpeg png"
+PACKAGECONFIG ??= "gif jpeg png zlib"
 PACKAGECONFIG[x11] = "--with-x,,libx11-native xproto-native libxt-native libxext-native libxrender-native"
 PACKAGECONFIG[cups] = "--with-cups,,cups"
 PACKAGECONFIG[alsa] = "--with-alsa,,alsa-lib-native"
+PACKAGECONFIG[gif] = "--with-giflib=system,--with-giflib=bundled,giflib-native"
 PACKAGECONFIG[jce] = "--enable-unlimited-crypto,,"
 PACKAGECONFIG[jpeg] = "--with-libjpeg=system,--with-libjpeg=bundled,jpeg-native"
 PACKAGECONFIG[png] = "--with-libpng=system,--with-libpng=bundled,libpng-native"
+PACKAGECONFIG[zlib] = "--with-zlib=system,--with-zlib=bundled,zlib-native"
 
 EXTRA_OECONF_append = "\
     --with-jobs=${@java_get_parallel_make(d)} \
-- 
2.16.2


