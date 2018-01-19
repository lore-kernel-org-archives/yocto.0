Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4711E00F58; Thu, 18 Jan 2018 23:28:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D52FFE0085E
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 23:27:59 -0800 (PST)
Received: by mail-wr0-f170.google.com with SMTP id x1so678596wrb.5
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 23:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0lz62+lLNna0nW17wGxcviHcpV8IWQ0ejyAWg3B2A/g=;
	b=UDlg2SKh/g2BfbwBmJnU0ADltvIvCIahmCEYsQ5XCaeEWyFbywdi3n43Thtd3WLLAi
	qpyYAdEKgExxxq6NQNtw2jX6HYvLEvRweh49Gb6NpLf5j+EMJK5860uuUMF9vCsxAyln
	GY0Itht0OC8q3dJ8EUkPEmoi1cfEJfUpY5tZzHKnXjnrh5vffj98vmA0UwTIsH2kHoPt
	ZXUC+ooqJgyfiVbFV7Ar4icS1wf3a/+aEd+bAG49awiuNaewZ2tVjnrP8020EmPMJ0/5
	dYMgmPU9aDIIpnljhJ7OaKR41Wew0S9I1CmLAvm4KQF8eEGCEJnCpqvhRUR+XOPdt9Pm
	Qwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0lz62+lLNna0nW17wGxcviHcpV8IWQ0ejyAWg3B2A/g=;
	b=BGV6eR6q47Ik8+NfAtn/b/S+n79RE6h25VEo8zDxjsl1iz18NaPBt0CaZBmL7xCcjQ
	e7+EMBbhemZqheT8T6cOmV4w2g6vai5bT38/Diht+urkkL1yta/3G7yCORH/i0EHBPiX
	ltsCLVdJIjtT5S8+33s27pP9VomcmQ6Rmw+77td0aBELYEtUAPcYJY8vFAZKNFiunfKt
	EFal6eXEVqFvHI79cHDKqI9VgLBE15mXbaYKs1O+hwVPuEOCKDOqjJ7wOIR2VefAZuDX
	8o8DdMrO1SwcDU51vr3Gu2abFVSO8ugOyGz3LuN/6woyW3Ksh9hq7XuZcDfTw757Qg0Y
	askg==
X-Gm-Message-State: AKwxytcaG4ozuF/rf8xwAWFVcd9ML+J069hQ14Yh0/JOIxjncQzf4Gzv
	BFLzArXwpxIG3BOB1uz/0mVftJe3WbPMyGmHdbhSzepe
X-Google-Smtp-Source: ACJfBotTFLmKaNm+ZtEm6a0LaeeKEltqIWJE60JtECZ1zuFg8Fn9DT4Ut0u6H2uawL9H2XeSOnu4jgw/KD9Ei5QRxDI=
X-Received: by 10.223.185.21 with SMTP id k21mr8998130wrf.37.1516346878464;
	Thu, 18 Jan 2018 23:27:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.178.232 with HTTP; Thu, 18 Jan 2018 23:27:38 -0800 (PST)
In-Reply-To: <85fe1cf4f30c0686302a4a51acf7b503@herrie.org>
References: <CAM0bAiVtPQOif+srytHn4XGrd-=i+4ud9rvDsYUOE41HZpUBnA@mail.gmail.com>
	<85fe1cf4f30c0686302a4a51acf7b503@herrie.org>
From: philippe gislard <philippe.gislard@gmail.com>
Date: Fri, 19 Jan 2018 08:27:38 +0100
Message-ID: <CAM0bAiWBOmnUV+0z_YbjfeA5jSRX5=6cbTHOKuc-UFMD33Af6A@mail.gmail.com>
To: yoctoproject.org@herrie.org
Cc: yocto@yoctoproject.org
Subject: Re: [Pyro] Multiple toolchains
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
X-List-Received-Date: Fri, 19 Jan 2018 07:28:00 -0000
Content-Type: text/plain; charset="UTF-8"

2018-01-17 17:11 GMT+01:00 Herman van Hazendonk <me@herrie.org>:
> Hi Philippe,
>
> You might want to try to patch your kernel for newer GCC versions. We've
> done that successfully with our 3.4 based kernels. See for example the
> commits we used on our LG Hammerhead (Nexus 5) kernel.
> https://github.com/Halium/android_kernel_lge_hammerhead/commits/halium-5.1
> See the commits from 13th of October for reference. There are other ways to
> do it and have separate toolchains, but that should address your main GCC
> related issues probably.
>

Herman,

Thank you for your tip.
I actually managed to compile our kernel with the 5.x toolchain using:
1. your patch https://github.com/Halium/android_kernel_lge_hammerhead/commit/af33db048d85d789410e2c1fa44aa5fca187c777
2. had to specify in our recipe the C Dialect to gnu89 (see:
https://gcc.gnu.org/onlinedocs/gcc-4.9.0/gcc/C-Dialect-Options.html#C-Dialect-Options)
with: KERNEL_EXTRA_ARGS += " KCFLAGS=-std=gnu89 "

It might also work with the 6.x using the compile-gcc6.h header

-- 
Philippe GISLARD

