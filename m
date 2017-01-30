Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCCD9E0093F; Mon, 30 Jan 2017 00:41:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 568E4E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:41:39 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id f144so22881009pfa.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=C9RRD6c37VajRU3GO8HQ2byiPbFJCh9ByuM78ncJpnbxZOq/xXLWLtL9jmdIj2BYzm
	BPUA903Im8QmrdYbeQZ7xvTwGkBJ3YMTqUxJ0E8HgWjtppEW+H9sFVPz1YxqPW36VnoN
	SwplB12u2EqeaIkEKgEufxFELpq6IwXpAvQHYkvQ3RDFJftJh9dzT+2SmInf4qRSbdsC
	EnCk2+sedjR5nHvlbCHYJxv5h9XZWvWxXK7/Z80dTom7yChgX0qXVKucs5a1ki2Ugbx3
	/YDuxDorEQP7Qajbb7LrcAql8uS53jEA/Hiurm2TeQm4MPXrMkj4AnxSN0IO94oxsOxL
	67tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=AERwxjN2cjAi7aKzwCFGbMWxIFn9B0vMknUVveoZymE=;
	b=DVzjPRtEG8c9fUueLEPYGglkajXVY+q6uhZLdVP1xrlupQEJv2q4XbfoCObuzunook
	61Tn2UHYEBgLxjgWl6BeR6rf/rnc/zBcsDG09DBd1MZ+eoq2obJ8c6iI027jkYWX+7C+
	Pt/QCCIqaB2+JTcDDTEvgDw0yM1f8/js+Q8ADSXfGwDyWXYtf1DKpflCnSEQoyNi0toe
	HxK802YCaIAsL8w+ToVU2DDCNg1k+H7eHlw24dEbym8FUXh8eeeJlSo3gwjJlY0HksDg
	J+eH32hyKELOgzdgoNz8HX692H0DCgFjN+3yg5orsGFXCCZs7lqFWbheQCv38oMPuhLr
	CXaQ==
X-Gm-Message-State: AIkVDXItR9O+SAzWpo8rvFTjCTfEEKMFDTLtKfNcyF4byr71Djpt+WrKCm8gHdYcCNb2zg==
X-Received: by 10.84.210.5 with SMTP id z5mr30431856plh.32.1485765699407;
	Mon, 30 Jan 2017 00:41:39 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	e129sm30193384pfe.8.2017.01.30.00.41.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:41:38 -0800 (PST)
Date: Mon, 30 Jan 2017 18:41:24 +1000
Message-Id: <20170130084124.10596-1-nathan@nathanrossi.com>
In-Reply-To: <20170130084124.10596-0-nathan@nathanrossi.com>
References: <20170130084124.10596-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 1/19] mingw-w64-headers: Add 'secure-api' PACKAGECONFIG
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
X-List-Received-Date: Mon, 30 Jan 2017 08:41:40 -0000
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


