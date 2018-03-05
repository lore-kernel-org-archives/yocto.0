Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58C28E00EDA; Mon,  5 Mar 2018 01:31:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E865E00F22
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 01:31:28 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id q83so14428062wme.5
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 01:31:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=u0xDFUzv4PnBdv4ttid08ZOJON/QbZO4CzsV7QmnPaU=;
	b=BniQxz5ZhVU+qzCd+4xSuiKYmGZKt4YQQKgx1H3KZ/DLWcqVaW3nBp81bHkNXODRax
	ghALiWfxKE4QS1+Pbh+sZoZlq9t0VlPFU2+I8ylN+lrT6uJPUsYfQY51otj6tefen7eP
	spJY04sp3v7xGe4/ds+mbGDcFkjzGv1nrssJRwrr/DvJWPdV35PREYM5+GwjFyc5tVE2
	z5O08y5/sFw6l7bJFggusYIMlEIRNdMRVX6rUN8YIsRfGgPUKiWBb4WkbHkG5fqGvhwK
	NJG9x/uapHXPvFw2WyDIRtTGFfBba5/f28AlKwDKglUqw9/r8Pm353EDXil2qJbaKGHG
	ix7g==
X-Gm-Message-State: AElRT7FsDsWknsU1mN413IO577Bclri02fFOrnH6sIYPk0fqNonv4pQH
	fSDj/+VTjEzaTATYBngUz28YyH2p
X-Google-Smtp-Source: AG47ELvGh0M0eH458pzaWNtuVH+DWjEhExz5VwdJfnd6oc35+vMlPPvREU4IkA/HfCsd6Jbtx17+qA==
X-Received: by 10.28.95.139 with SMTP id t133mr7296064wmb.16.1520242287163;
	Mon, 05 Mar 2018 01:31:27 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	f142sm7255289wme.15.2018.03.05.01.31.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Mar 2018 01:31:26 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon,  5 Mar 2018 09:31:04 +0000
Message-Id: <20180305093106.11858-13-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180305093106.11858-1-git@andred.net>
References: <20180305093106.11858-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 12/14] openjdk-8: stop passing obsolete make variables (freetype)
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

OpenJDK's build system complains about passing in obsolete ALT_
variables.
Stop passing in those for freetype, as pkg-config is used to figure
out the correct compiler and linker flags.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 recipes-core/openjdk/openjdk-8-cross.inc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-core/openjdk/openjdk-8-cross.inc b/recipes-core/openjdk/openjdk-8-cross.inc
index 922c2ae..d70c946 100644
--- a/recipes-core/openjdk/openjdk-8-cross.inc
+++ b/recipes-core/openjdk/openjdk-8-cross.inc
@@ -99,8 +99,6 @@ EXTRA_OEMAKE_append = '\
     ${@jdk_make_options(d)} \
     ALT_SDT_H="${STAGING_INCDIR}" \
     ALT_CUPS_HEADERS_PATH="${STAGING_INCDIR}" \
-    ALT_FREETYPE_HEADERS_PATH="${STAGING_INCDIR}/freetype2" \
-    ALT_FREETYPE_LIB_PATH="${STAGING_LIBDIR}" \
     STRIP_POLICY=no_strip \
     MAKE_VERBOSE=y VERBOSE=-s LOG_LEVEL=trace \
     QUIETLY= \
-- 
2.16.2


