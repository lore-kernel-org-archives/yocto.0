Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD0AE00924; Mon, 16 Jan 2017 06:24:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C9B8E0092C
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:23:59 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 204so5498993pge.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=ieig1S7aKoJby3YI/u0/EQC9dq+rSHwM8j/1OAJV4bU=;
	b=BRa5kFbaONT0kKgQafnT382QC6IVKTpdAnYnxAdcnG0D/ZcWlrrYVVui2WH9I56V+q
	Dq4C4FCRQ+P1dUy3W4G4Iib1VGZaE/jVHM5aSJ2yn3QCttctrFOyJBRM0yYnYiQLXigM
	UutZ+NwA+og9wRvnoQ0O3d1Nsz32K9zl0cLorRfyF3h9VdrD3GBoU8vZETNau7QkKP6m
	PlmyIQiL+krmavtVwIaScKYfHIXd49a1Qxw7B0sy1G/wYdO9dKZF8EdC0ccILYu3Ql0r
	smSRwwG4JIViZfRWvfqeDG/p3NzUzgaab07716axZ7F0S798Te8j2LpieTkpovDMmUS+
	uchg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=ieig1S7aKoJby3YI/u0/EQC9dq+rSHwM8j/1OAJV4bU=;
	b=Ct5nSbTmQRrRowx92F5DlSFMVVdlZmH41OEqunA5A1FvS6FGOsBIytG8zphjP2z2cD
	GPZIJmz7TEUOlDALp0kereJ9nszGpjl020Oe9FJraeBjhBVLcMZvYEf+pJmxoaB5z72K
	LYn6qhVdUMdsHWQa0t3+AXyuF7oTiefefo/ysNJT2zXiiLZzk0oQu+bgbHJH9t7SymK2
	rWmyNC9AEoQbBh4a0myv9KmmvWXsNg98OZqROnze8xM0uEIumI9sMplSdvOMQ8p7QMKr
	ciy8h1IQsFAYliurts4niyKaj3NOagHq+VN+U142KC+/kdXslEAtRkmlLFVU3eGVx+qd
	j3yA==
X-Gm-Message-State: AIkVDXJnuXS2QjPyzg/odVIGNnwnHAuo0s3I5wZWKCUcrZvbgP3DFIg3D+mpzE7ub3+oHg==
X-Received: by 10.84.218.77 with SMTP id f13mr51058250plm.141.1484576639489;
	Mon, 16 Jan 2017 06:23:59 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	e127sm48229591pfh.89.2017.01.16.06.23.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:23:59 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-1-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 1/7] mingw-64-runtime_3.1.bb: Adapt to SDK_ARCH -> SDK_SYS chanages for crosssdk
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:05 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

From: Juro Bystricky <juro.bystricky@intel.com>

With the change of crosssdk to use SDK_SYS instead of SDK_ARCH, we need to update
the recipe to match the changes in master.

[YOCTO #9281]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
index ddffcf4180..c4292ad48e 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_3.1.0.bb
@@ -24,7 +24,7 @@ PROVIDES += "virtual/nativesdk-${SDK_PREFIX}libc-for-gcc"
 PROVIDES += "virtual/nativesdk-libintl"
 
 STAGINGCC = "gcc-cross-initial-${TARGET_ARCH}"
-STAGINGCC_class-nativesdk = "gcc-crosssdk-initial-${TARGET_ARCH}"
+STAGINGCC_class-nativesdk = "gcc-crosssdk-initial-${SDK_SYS}"
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_TARGET}"
 PATH_prepend = "${STAGING_BINDIR_TOOLCHAIN}.${STAGINGCC}:"
 
-- 
2.11.0


