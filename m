Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49FE4E00C89; Wed, 27 Sep 2017 12:22:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.172 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43F4AE00B53
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 12:22:35 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id s62so10032418ywg.0
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 12:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=LGW/pDXg2QOoroXtWUy2gGn0H6pUFQbSWf5hrWwelgE=;
	b=Uc8lwZase60uhWZG1zGb1KJzzRUT1RsvwHiGUqzSrdhh77QIOcoAXGz9sFGTjzOsOf
	rtl14RwaNT8LxdEOEH784dCQ+vo8daCo15WB3Z4LOi5O0PB/E/XsBTktoYahZfIY5f0F
	76AdspnmuAkv26AyzX55Ojsuxx42Sv6neuaY11EsNacVSYjhNErFfx/RJ0fRV3b78E5S
	fJnxUvrz9S0IZ7Z9AiZF54YaK/+kiRcq3g4PFqm6x109n1q2Fwo7hh/zK3PcwQuFTERf
	YXQlHFda+FEdb/oTALECy0Zrc3ojF6GPkEsd/0bvos3wl3gIZmSmOejvCr0TvC/xoulC
	qiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=LGW/pDXg2QOoroXtWUy2gGn0H6pUFQbSWf5hrWwelgE=;
	b=XyjNDNiMHdKUJTJyvNcgp16cZ3Yq4E2/qz0MHJta4scxMyfRU308YRPIo715uHw1sa
	lgMhH59lX4SMxN557EOEc1SGgJ2pprpua2PNlVWhNyORBRD1Gy7D6N//ASh/SFV3WTzk
	cOW6tLzWWsldTHFRGeaZXV0zuhDMDMEPvtSy2vkwZpfoAfKHawpW+yI+6quQsB9x4OuT
	YRI3rXXxj3s1WiM1EbYaNSE02u50301jqczwW6snL0+Buezj5D6rGcFJfjTzRuC5G6Rt
	7Tus9yxwynMk0FI3TyzivVX3AOGxZtZDFwbcd2Gr5n5UKC7c4hH6HMyGQO00ed56+uW9
	sh9g==
X-Gm-Message-State: AHPjjUgumyFaadPi8x510QMiFEqavErWd0MTgPdMESccKXBxfzZeBpNc
	uRG0doghg2GBVBhvmgDYtyZkQc6l
X-Received: by 10.37.51.66 with SMTP id z63mr1724301ybz.8.1506540154157;
	Wed, 27 Sep 2017 12:22:34 -0700 (PDT)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com.
	[209.85.218.46]) by smtp.gmail.com with ESMTPSA id
	t185sm4651699ywa.17.2017.09.27.12.22.32
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 12:22:32 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f46.google.com with SMTP id i128so18250025oih.6
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 12:22:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDEftsPaFsZGltGoCE+QfASULhPyKhmCO+Ysm/BGrCOgbyZu1AXmvUGEqBM/1zZaZ+Q0uMUMNXlD+OM7utt/+A=
X-Received: by 10.157.24.15 with SMTP id b15mr72874ote.476.1506540151863; Wed,
	27 Sep 2017 12:22:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.66.149 with HTTP; Wed, 27 Sep 2017 12:22:31 -0700 (PDT)
In-Reply-To: <BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
	<CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
	<BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
Date: Wed, 27 Sep 2017 16:22:31 -0300
X-Gmail-Original-Message-ID: <CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
Message-ID: <CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS support"
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
X-List-Received-Date: Wed, 27 Sep 2017 19:22:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 3:53 PM, Manjukumar Harthikote Matha
<MANJUKUM@xilinx.com> wrote:
...
>> https://github.com/Freescale/meta-freescale/blob/master/classes/fsl-dynamic-
>> packagearch.bbclass
>>
>> Something like this?
>>
>
> This is very useful, can this concept be upstreamed to OE-Core?

I think so; if people agree with this concept I can work in upstreaming it.

There is also the machine-overrides-extender.bbclass[1] which allows
for overrides to be added/removed based on other overrides.

1. https://github.com/Freescale/meta-freescale/blob/master/classes/machine-overrides-extender.bbclass

This was how I could generalize the BSP in a kind of SoC feature set.

You can see the original commit where I enable it:

https://github.com/Freescale/meta-freescale/commit/ad4611ab16bcd09eef11d630159253a12c5ecced#diff-7bac7755a2891a94e863ed0a7af1876a

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

