Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D735FE00955; Mon, 30 Jan 2017 00:45:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C76F3E009B9
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:24 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id f144so22886914pfa.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 00:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=MlGJYOYu2HjXCuiYP83ofnTRFw/txKeyn5W8dAGdW2I=;
	b=kvdKUNMQyb9SbXTZuIXH3vlHzh5mMsaElNFwm79/iVI1FyfrUBJkwb3ZFvxsvJTph/
	opURvIpQm4uc1gm6d8tNr1ITyFKZNELwf0a6tmgZJFF0Y5TKadHZz0xiyooWFLV3fT4X
	vS3yqomjpJvsUgoOTl+56Uze2yjUngkukaE0BMgKp5fVCtgqTK6opQV5f2t+4b/qGt6D
	IM0Ke+OmpPY9V9JiDbPJcDWcmyrfHUaI6k91kvX2Rx9HUzdemGutwUP0kx5yjJkNlWvR
	3o8v8mOOFZh3ZHuMMK64+h0s9NazcYxzGNiMfQ4/3IVbWRO0sLZfavxOP3LbfBrcFhWr
	Qm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=MlGJYOYu2HjXCuiYP83ofnTRFw/txKeyn5W8dAGdW2I=;
	b=pfaRxI1nGBoodhufEeROuIhk2Nrg2aHTTqsSfG0pm/XZmCWJONpBmPkvQE4b2y5i3d
	GUxPNCm6Qqt/KWzBGb1YuFS20+4UBR9xUwqT7tL2QJ5CPK81Oj9iGaV3vGEYGGgQlR7z
	+EBh1Jw/40/maZfDeM9Ny6LQpi57G3igSelAyYWq3syhYU9WukKhewJiVG9J9ZzoCA7M
	Vc5JRix5oldmOmfFRj8OZEH/XSCpUVtrSsuJA0qor39OKMBD/bIutOFMRSkNLor2UQNF
	yh1YCRZTZ1l1dqNQ5We8N8VeM1QlCR36DL/X7Y0luc+9IY882lilyiirLjbYzoC2hCwe
	bHNg==
X-Gm-Message-State: AIkVDXIenMhDTXPJxLafzi8wqr8L7SzR/ATR7o8V8nMO/nRa3T2qMuokGq7WVYukruIpvw==
X-Received: by 10.84.178.131 with SMTP id z3mr30515369plb.176.1485765924050;
	Mon, 30 Jan 2017 00:45:24 -0800 (PST)
Received: from [127.0.1.1] ([58.165.136.65]) by smtp.gmail.com with ESMTPSA id
	r8sm30229251pfi.82.2017.01.30.00.45.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 00:45:23 -0800 (PST)
Date: Mon, 30 Jan 2017 18:44:13 +1000
Message-Id: <20170130084413.12033-14-nathan@nathanrossi.com>
In-Reply-To: <20170130084413.12033-0-nathan@nathanrossi.com>
References: <20170130084413.12033-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH v2 14/19] libsdl: Fix ${PN}-bin handling for .exe files
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
X-List-Received-Date: Mon, 30 Jan 2017 08:45:33 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

For mingw it is convention to have DLLs in bindir. To avoid grouping
anything other that .exe files into the ${PN}-bin package, override it
so that only '*.exe' files are shipped.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-graphics/libsdl/libsdl_%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-graphics/libsdl/libsdl_%.bbappend b/recipes-graphics/libsdl/libsdl_%.bbappend
index 5f5787d318..bb65f03d89 100644
--- a/recipes-graphics/libsdl/libsdl_%.bbappend
+++ b/recipes-graphics/libsdl/libsdl_%.bbappend
@@ -5,3 +5,5 @@ PACKAGECONFIG_class-nativesdk_mingw32 = ""
 PACKAGECONFIG[stdio-redirect] = "--enable-stdio-redirect,--disable-stdio-redirect"
 PACKAGECONFIG[directx] = "--enable-directx,--disable-directx"
 
+FILES_${PN}-bin_mingw32 = "${bindir}/*.exe ${sbindir}/*.exe"
+
-- 
2.11.0


