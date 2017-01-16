Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F7FEE0096D; Mon, 16 Jan 2017 06:24:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42DB3E0096D
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:06 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 204so5499171pge.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=Iqxm9jcvIRLygwCIDU4HZd4DVS+RA6Jv4M9AM0nMfmOhQZDyikcY+X4gDX8Vg2qjQ8
	2aEGC5QZ98WDtTeT9T6N4/5yKnrDTWDe6Za0pJG8RAhMNR6Y+qdtQ8wvb1CA+1kWs7ON
	yHf9WbaXKERYzZEsLudMznkluAn+VDJcQ/wgEqy25UWDZbMQ6lJ4R4eV8I8Gbl2zDO57
	+eBgLpjpD1UAxnwZXRBZNfJSy/25dObucSLfinOIxoNxsBlrc55XiNSAg0dHRZixzkZj
	r6tHi8z4i6d7FORLL0z7cNXRhDs6bQ0lWl5JArQCMTHfSG+Dtev5kUlXzhC1xHNqZW96
	ozpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=LYiZfSqU9yetvHA6PtZiKMIhCi5lsQ5kJ3Ei4bL9x4NnwQxgyziXeLreAr8J05ibwA
	Fl9BLmAWEWC9+mi55TrtdneOLHoduBjeyCz7JG22BbOsBDM5t7kKEeg+iSoSrXc3F6sg
	HF0W744lAg2NCEx2eJvgUIxoQMnDfrPZcDBCYKSXYbU9VaRh1zyanQflcPGXNAPzY9tX
	Ynn0tiRH2j9YyvM7g7Xjh7bc1JGtM0mMHs96R0LcYkIVLm8hiN9hm8rT+UcjBBFLc3Hf
	uDCHR2JN69gg1YlUA7IuNkZGfNAR4/15rb5u3TC4MCu4EN/u1X0AIrTWUslDbPWuZAg0
	kj8g==
X-Gm-Message-State: AIkVDXKeLk0MNWVmaduqjJyhEm5NsRqYiA14kusErWY8K6SqiJZf3gS13Wc+agbniWDdlg==
X-Received: by 10.84.143.233 with SMTP id 96mr32977439plz.124.1484576646568;
	Mon, 16 Jan 2017 06:24:06 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	c15sm48299293pfd.36.2017.01.16.06.24.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:05 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-2-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 2/7] mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Add the 'secure-api' PACKAGECONFIG and enable it by default. The
'secure-api' feature enables the secure string functions that are
provided in the MS C Runtime e.g. "strerror_s".

These functions are needed for glib-2.0 compilation.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
index 06312d604e..5cd4e34e09 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_3.1.0.bb
@@ -18,6 +18,10 @@ inherit autotools nativesdk
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS = ""
 
+PACKAGECONFIG ??= "secure-api"
+
+PACKAGECONFIG[secure-api] = "--enable-secure-api,--disable-secure-api"
+
 do_configure() {
 	oe_runconf
 }
-- 
2.11.0


