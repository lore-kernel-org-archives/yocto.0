Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06278E009B8; Wed, 15 Feb 2017 13:27:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FBADE00985
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 13:27:37 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id 203so78464250ith.0
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 13:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=oCXc7b9GJmloIzwb0yeUxJwvI5iOeoDFa3yiq0mX3Wg=;
	b=UH6KJ24oVC7fRYUH5pZoxSYRoJbEcqbRIxf0BWvkKrKLHU423t+2AilNsz0JQ/gThK
	s4YRKIZWOqI3AbIcllCJesFfu/sEckmRgaVePLzZoKfeQ4Z22CZCOX8boM/fUKV7CZKU
	DgwDIrsw73JLC6qqLp/EgsqF/gcM1tzKJ4bYHBWZrmLEopj/84SS4VA4pXPGUsrYvxgC
	iyzYOYd3ZHC+onnMvXK+4csVR8aXehNcM9W1XnCt2rAjE9iUGTCNpttcOM+kiO/i+RF7
	t598vYmhGYbU2MIaczbKMbo57UsAQaa6H8VkZrOANgC9vI9mW3Sv/3CU9R3mG2vfOvB4
	ZMzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=oCXc7b9GJmloIzwb0yeUxJwvI5iOeoDFa3yiq0mX3Wg=;
	b=feRLtpVhOcI+2Fazbjj0HKqqKz94+9FDzocbNqJY79SQY3UTrqHGQaznY75o3FLYSX
	x5BIGleJp1HLcnN2jsZm2+uvsldo81uQs9DYC4w66H+yquh+/nMSN9Ypx7lwqx51B/LT
	XLEX3mv0Ox1PKXgYPjXxr/YbdZk3sdgb2ub3YZxlD1Xh8yv/25pmlTVjhD8GlKOwod8S
	XhDA+e8c0++vIwMMuJNcmZWsRlgGoLmXCH8tJJoVxxf3R/Sd8eFlKPpUlKVXLr4QemG9
	kbXDEAgYJV3v5VT4dzF3Tn0q3d9vhjT9v/0Y9NbwHx1jPBrPpaH1f9o9vVk5lAklX7L7
	hxtg==
X-Gm-Message-State: AMke39lwpyA66DwiYxQvLOE/1gV3gN294F1d+O3XrxWXE/Uw5WlqEk+IXgwY+yDqVQvpBw==
X-Received: by 10.107.6.215 with SMTP id f84mr34032515ioi.210.1487194057091;
	Wed, 15 Feb 2017 13:27:37 -0800 (PST)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id e62sm2299130ioj.2.2017.02.15.13.27.36
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Feb 2017 13:27:36 -0800 (PST)
To: yocto@yoctoproject.org
References: <Y-XTOTj7nR2t5aC4LKsszCCny77eRfSZ5tmA0yHZxSv0gK95NP2M2aoluJLTfaWtbGr78g8O2-UyvdFFfI2SPUSyo2hLI_xjAiOJYhujYxY=@wjh.io>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <05c5fb7a-74db-5bac-8d6f-2cf9a74105eb@gmail.com>
Date: Wed, 15 Feb 2017 13:26:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <Y-XTOTj7nR2t5aC4LKsszCCny77eRfSZ5tmA0yHZxSv0gK95NP2M2aoluJLTfaWtbGr78g8O2-UyvdFFfI2SPUSyo2hLI_xjAiOJYhujYxY=@wjh.io>
Subject: Re: error: Can't install libxl-dev-1.0-r0@cortexa9hf_neon: no package provides libxl = 1.0-r0
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
X-List-Received-Date: Wed, 15 Feb 2017 21:27:39 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 2/15/17 12:45 PM, Warren Harper wrote:
> I am having trouble writing a recipe and including libxl-dev it in an image.
> 
> The recipe is libxl_1.0.bb:
> ```
>      SUMMARY = "A C++ Excel Library to read/write xls/xlxs files"
>      DESCRIPTION = "A C++ Excel Library to read/write xls/xlxs files"
>      LICENSE = "MIT"
>      LIC_FILES_CHKSUM =
> "file://COPYING;md5=2aee0be2678ee90fd327cc186826438e"
>     
>      SRC_URI = "\
>          file://COPYING \
>          file://libxl.so \
>          "
>        
>      S = "${WORKDIR}"
>     
>      do_install() {
>         install -d "${D}${libdir}"
>         install "${WORKDIR}/libxl.so" "${D}${libdir}" -m 0644

this is the problem. .so here is probably a real .so and not a symlink
so it goes into -dev package by default rules. So you also need to add
something like

FILES_${PN} += "${libdir}/*.so"
FILES_SOLIBSDEV = ""
INSANE_SKIP_${PN} += "dev-so"



>      }
> ```
> 
> When I run the command to the build the image I get the following error
> during the do_rootfs task:
>      Computing transaction...error: Can't install
> libxl-dev-1.0-r0@cortexa9hf_neon: no package provides libxl = 1.0-r0
> 
> What is causing the above issue?
> 
> Thanks,
> 
> Warren Harper
> Software Engineer
> warren@wjh.io <mailto:warren@wjh.io>
> 
> 

