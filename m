Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32388E00985; Mon, 16 Jan 2017 06:24:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E439DE009F0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:32 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 204so5499868pge.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=8I+WmDNd9yXWv0L864OULsrvhG7XRCdGW51u5ybAsm0=;
	b=hzmZUcIT/h82pBX3jYwu3MUlFn1f4o322wiW4YLtXVMKfYOUbK9uQegQuNa7yhdMqI
	G4I/iMvls5uf/CM+HjFPo1K27g2/kPXhlzyJcn2TRth/lfOsJw/ytMIMb8sLUA39GfnM
	al9bTvHtcZ0v1H86neLCMlh64SeSdDppA8tTX/rb6ciuq+hn3GLEfh9ROGVCiZRJPNEL
	OilTc9YPOSxFfbvskuXZ0sgLBbc/oL4U7mArVke8f47NSB6ukGpo/I4XcNT6RMCt5cOY
	eJw+BvgO6mg2vF9Wxysw4kfkP9IPId8RIA3OMQluVg9VLVNwI4tJ9KgyBq3SVVDNCF12
	jUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=8I+WmDNd9yXWv0L864OULsrvhG7XRCdGW51u5ybAsm0=;
	b=TvR7R32GOwHIaXhJXVyzLYzJA0dY3aIg1yQm/kLvBK9O3dPoWzLXPPB+bQj+gdwVp3
	i0Vtq8Cfyha7kXZ4OGhgmjET9L3SFHe+fdGnwITjO5w8xRP08jPUrDigHScFx5NNupDM
	UMqKSehPd/IGZ5Cl72z+MXlZZwc1wyq9srWLSotNhNPiH32VFKvqlZIgf/JqWw3jtNpy
	FVf3nQXk7H/Gv3xWnzZiM6D8IhW+yRrF4JPJvRIAPbyyvlo5TtJYn1CmUMlgbMK3cgLi
	oNwyc/iaePE5fdc/pcuE8wyzllXXGVr7iXoiIkLops/fBNIoCIXkS1ACYYIha65MrGyN
	JUJw==
X-Gm-Message-State: AIkVDXLeZSDKyPPKoOS+It3BrXGdx2QDgF/UxcyMkFsDFV2G3Kh8ELKmPKfY1sL3ICPAWw==
X-Received: by 10.99.127.71 with SMTP id p7mr40075841pgn.125.1484576672662;
	Mon, 16 Jan 2017 06:24:32 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	f191sm9040152pgc.12.2017.01.16.06.24.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:32 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-6-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 6/7] libgcc_%.bbappend: Relocate and package dll's in bindir
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:47 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Relocate and package the dll's provided by libgcc in bindir. It is
convention that on mingw/windows dll files are installed into the
bindir, this is done to avoid issues with search paths and allows for
execution of binaries without the need to point at a libdir.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-devtools/gcc/libgcc_%.bbappend | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/gcc/libgcc_%.bbappend b/recipes-devtools/gcc/libgcc_%.bbappend
index dd95317618..2a95d02cad 100644
--- a/recipes-devtools/gcc/libgcc_%.bbappend
+++ b/recipes-devtools/gcc/libgcc_%.bbappend
@@ -1,2 +1,8 @@
-FILES_${PN}_append_mingw32 = " ${base_libdir}/libgcc*.dll"
+FILES_${PN}_append_mingw32 = " ${bindir}/libgcc*.dll"
 FILES_${PN}-dev_append_mingw32 = " ${base_libdir}/libgcc*.a"
+
+do_install_append_mingw32 () {
+	# move the .dll files into bindir
+	install -d ${D}${bindir}
+	mv ${D}${base_libdir}/libgcc*.dll ${D}${bindir}/
+}
-- 
2.11.0


