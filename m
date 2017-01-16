Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0465EE009DF; Mon, 16 Jan 2017 06:24:27 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F3CDE0097C
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:13 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id f144so14245265pfa.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=date:message-id:in-reply-to:references:from:to:cc:subject
	:mime-version:content-transfer-encoding;
	bh=npKMCO04sVWkaazkKokRv++cLjQOT3dKTbXposNW+m8=;
	b=PQ/JiMJSl3Bxqg4LSjk8OeppH1Lv0Dlnm6u1IzYFqPFiRl0G42wtlNnVYWUWD9bg2L
	tblG0ln2QX+ypMZJRTN35Y/y4X8xo6ZVcIHiww3mhDAyyMclM1c8OTSHSF+owzIY0Y7L
	YIMWUAKZcUuk8R7P0V4dcACBaHReBVCiTcWj+X97hkuAqxOAFlYVHpAawqJw+MsVoQTl
	LPAqr1CHHwfd53Y/hhwDS+aP+V0uS+rgzxdJmRAqaX8vi+c+AF9sRGJtnQVt1THLudxu
	oCS33gNyuEjpM/S26Xvirj4dGZ3JggcxRFpMH6FqGZdJ1Txh2gMoGxpDyziI8wltBQaH
	FyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:message-id:in-reply-to:references:from:to
	:cc:subject:mime-version:content-transfer-encoding;
	bh=npKMCO04sVWkaazkKokRv++cLjQOT3dKTbXposNW+m8=;
	b=WMWoHbDEaYH28gPGnV2oOxmZCXNIdydbmPobnARAl4ckruz38aIul/qzscxTX54QU5
	Xp6lArVHBSRQ4Yo1239NGXA6Z69ftV7ioSvx+Do3s40CS9/MDMw1gmlduNx7bg2xfl6m
	83y/ufJY2KWoGvrOLsXtc2gw1pSkDiGukyYXyq0pIXR+lmg0KymX9etsQ03qMOQHFf4z
	eYG7IfuonuTgN3+qSJEp9ORzmKcv+fg57cgKXYrh3ITdp2rISNUP5igMWyBmkxa5PWmz
	a2TnoRUhjFpHMjSriVTKXfGAJPzEfMNHfAiQWV1rJ1BOOoTaOTDdJBecNHqaE4m25t3M
	yCRg==
X-Gm-Message-State: AIkVDXJERdg/3NFyHZc7U+vWmznlrjUUcwlWpCGbhM4qsl2oirzlTn2fDvtAgSH+ZWPzdA==
X-Received: by 10.84.133.1 with SMTP id 1mr50885245plf.151.1484576653030;
	Mon, 16 Jan 2017 06:24:13 -0800 (PST)
Received: from [127.0.1.1] (CPE-58-165-45-185.lns1.lon.bigpond.net.au.
	[58.165.45.185]) by smtp.gmail.com with ESMTPSA id
	z29sm23194404pgc.7.2017.01.16.06.24.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Jan 2017 06:24:12 -0800 (PST)
Date: Tue, 17 Jan 2017 00:23:41 +1000
Message-Id: <20170116142341.5400-3-nathan@nathanrossi.com>
In-Reply-To: <20170116142341.5400-0-nathan@nathanrossi.com>
References: <20170116142341.5400-0-nathan@nathanrossi.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Cc: Alistair Francis <alistai@xilinx.com>
Subject: [meta-mingw][PATCH 3/7] gettext: Enabling building shared libs/dlls
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
X-List-Received-Date: Mon, 16 Jan 2017 14:24:27 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Enable building of shared libs/dlls for gettext.

Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
---
 recipes-core/gettext/gettext_0.19.%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_0.19.%.bbappend
index efd10d6bb6..d6ecc46f4d 100644
--- a/recipes-core/gettext/gettext_0.19.%.bbappend
+++ b/recipes-core/gettext/gettext_0.19.%.bbappend
@@ -2,5 +2,5 @@ DEPENDS_append_mingw32 = " pthreads-win32"
 LDFLAGS_prepend_mingw32 = " -lpthread "
 
 CFLAGS_append_mingw32 = " -DLIBXML_STATIC"
-EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static --disable-shared "
+EXTRA_OECONF_append_mingw32 = " --enable-threads=windows --enable-static"
 
-- 
2.11.0


