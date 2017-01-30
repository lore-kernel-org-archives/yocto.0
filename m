Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37DDEE009A0; Mon, 30 Jan 2017 00:44:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93B93E0096D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:23 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 3so13247501pgj.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=C/kixGafxii0Xjlh15XSHDvUtmSsgaV/r2b/nRSREV3xeLazGygEOfujvDbsZRcbaR
	19gzVQxtKWEAmxE/ua2TcsACzaDpovSKQUXA2DAt3SJH5qrsM0cf/O/gHI+FcILqdBR9
	vOjdD0SjZQQ3gaxrtLP5SocH2twzCyqS32ggjUZW0LvvBmUkS2S0tSqnClXttzrFxr+e
	LEUTu6vPRGx/1DAlNu9df2TL3Uo23PWmDgWRj1mjCII1IG8APqPH6Goo2N5QGMNJnbve
	1NqCFVfnWz6SBP0zHd+Yo23PsoJfvoGcX4ig7AuLp8sINxEmUySc6kGiDKojffoNoqoE
	0TBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=JhAk2eOfMrDLVKaGIgSwc5WvR9G6GlwtkZqaWX9TMpHmbjvkeBVjL6mYGol2V/R29F
	NexlfJVAuVoeKh4gpm+vvUwPqy7p+Hdyu+xDsFfm5NupNpDAU4KtgcWbjLMmnBrU6AbG
	QPLHqE2G8gPQvmwc8hybMurztIg+kYL18Jkda+xm4Nt/x4/qoZvT7CVmTyB7071QCMK6
	izRbR4YmVEumtXYhm4LMmgFt4rRzJblM16c+1PvM9zGM7GCJbJidRnfEi32wzaC+V1cT
	buGs6bjmkOjvGpjN+31RRl0W43N7+bBtTBz6vCZwJSlXNm/7EPzWQxleJCbYzmBV3CgA
	/z5A==
X-Gm-Message-State: AIkVDXJSzcewJaTD7/mBu9XTV+gHF1ly1iD7V0jHAzGBoZrrFaw7oDBJ0wQI6e4m/LoqkQ==
X-Received: by 10.84.238.205 with SMTP id l13mr30079060pln.168.1485765862521; 
	Mon, 30 Jan 2017 00:44:22 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	y23sm30220429pfi.66.2017.01.30.00.44.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:44:22 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-1-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 1/19] mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
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
X-List-Received-Date: Mon, 30 Jan 2017 08:44:31 -0000
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


