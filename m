Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14CE1E00EB1; Mon,  5 Mar 2018 01:31:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF7F5E01066
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:26 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id 188so14009914wme.1
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=2sN3B04MIWmwdf+tuN0ibfP1GkGTA1YHxv8Egubf+P0=;
	b=XQzIBSjMmyBePxDjXNYdIXPiBxxqKjB34hG1vvcvI6Ur2DidFTrMKmYK/XSsiUVJPu
	0rRnPTAsNtr6Ti1G0ZXUqrwVCgpY8Yd0pXExVnmYyYG3NGQ6riukgSDVCHfLjO9atDvs
	L6AGQ3DDZvFiycP6faBd1rx1/c60N5ubmNMjijpiF/phSpf88CMhKl6S/wSwFJFK/lNu
	1GrWZXnAWT65aJc+llVGJfK5RLATLRo/frfgNqpgAQ/Jx931LJWPKJRb75+vEjB9ybAW
	VLJ8zSykY56sIKuYIvu5t/XbVJuhlKJUW5AiXy2y7ey+filb88PX3oLXBPpPcbbUviO0
	STcQ==
X-Gm-Message-State: AElRT7HGZxixTS+N/RGy6w6oLIwgcEh8uqNg7BEVKfFY/AItsp9V6UOn
	OpYYa8vVImSE6SR1g47DtFgFl2BN
X-Google-Smtp-Source: AG47ELtH1rK+MnhXCqcLXSR7g5+JgUUdndUUcpfL+EtZpdlKGmczEQlVPp4oyakzRPvjVQzaDMHkqg==
X-Received: by 10.28.130.9 with SMTP id e9mr7106309wmd.161.1520242285528;
	Mon, 05 Mar 2018 01:31:25 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.24 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:24 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:02 +0000
Message-Id: <20180305093106.11858-11-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 10/14] openjdk-8: build against system libgif & zlib by default
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

This should really be the default so as to benefit from CVE fixes
etc.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-cross.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index 40db2eb..8a24b14 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -19,7 +19,7 @@ PACKAGECONFIG ??= " \
     repack \
     ${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'x11 cups', '', d)} \
     ${@bb.utils.contains('DISTRO_FEATURES', 'alsa', 'alsa', '', d)} \
-    jpeg png \
+    gif jpeg png zip \
 "
 PACKAGECONFIG[x11] = "--with-x,,libx11 xproto libxt libxext libxrender libxtst"
 PACKAGECONFIG[cups] = "--with-cups,,cups"
-- 
2.16.2


