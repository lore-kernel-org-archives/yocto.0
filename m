Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B49D0E00CC2; Wed, 27 Sep 2017 13:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717B9E00C89
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:19:35 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id q80so10131598ywg.2
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=RGmjSbaop4RIT3lYJqgmzyE50Sxgp5wdWfQnjAya+pk=;
	b=qIhJFSkuUhuFGMJwHV1BgCeTAowwnR2jS5472JDac0dpcI2cdEUORRYmSK0sWm4B5v
	sF4d4jQLhMm0g7+SQraBvlEsJjZHzLcU7w8/LITwNXlAwDDliN+Lo/OJjkTYQqdRkwaK
	YHJn66WOZX90dxPMy1Q44NIfkEJV7hFaojuaqHWlgGQbA/pqQwucFhVowSsYUB96xP3J
	juFJqPgFRAqixde1kYw/t1Ih1xDi9dVz0RDNiwkt4of39YqrbGqm6Rqmuskz/y8oG4Y8
	qOf6f99pJe7rY28ckpPyw/XlhnhOLvG7pq0i8kr/mxCQFOo/3MKfRbYj77sCg6D2anc0
	RRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=RGmjSbaop4RIT3lYJqgmzyE50Sxgp5wdWfQnjAya+pk=;
	b=Xt2FHn5qTUXynjibiUS1YZpJRzkzS0T6L90zmYdW1hhDKxYJtoedw2jVjXbcbhk1Ng
	dMF3ZBkUEQWaiXykvHmmht3cMr4bmYW67NrkB6i0zaX50NO9Fl8iilgI4wf9UMhvy5jv
	MTLQS23q+L02aI0IxQ+zCFCkmJ8MmOR+eNYFVqox5t6Glc/ec+HAgZoGk5BCYnj2RqEd
	qNGzKkFIWxWNhgJWYue0XJ67tKBPUwVE+ZRiZg8YCbmX2P0VZld81ktKRoN3rEqY50C4
	Fief1Saf9c11ZMyHvU6WkxEZOt17x0rf/mXXSWDPULi6pRz2qLtxMqijtBYeVhXjbDTE
	2RDQ==
X-Gm-Message-State: AHPjjUh7B8YxCMNO1nB8mIHX3f1o0l5uIryvjfyXL+vEczPKZ96P8y4p
	ukG/J12ykogsc3a9V4DjhUkMNjc2
X-Received: by 10.129.49.75 with SMTP id x72mr1800056ywx.298.1506543574324;
	Wed, 27 Sep 2017 13:19:34 -0700 (PDT)
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com.
	[209.85.218.47]) by smtp.gmail.com with ESMTPSA id
	c13sm611733ywm.101.2017.09.27.13.19.33
	for <yocto@lists.yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Sep 2017 13:19:33 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-oi0-f47.google.com with SMTP id v188so18459336oia.5
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 13:19:33 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAVEdmVQnspPkKPo1MbRdNIy6m+He4eT2kKl9W/LYbF9o9t8zZYNjxJ4/r0pS0g95KI6d77jV+KisKP4NM3bMI=
X-Received: by 10.202.184.69 with SMTP id i66mr1373612oif.241.1506543572570;
	Wed, 27 Sep 2017 13:19:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.66.149 with HTTP; Wed, 27 Sep 2017 13:19:31 -0700 (PDT)
In-Reply-To: <BL2PR02MB21636A8AABF61EEF27F2C046B9780@BL2PR02MB2163.namprd02.prod.outlook.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
	<CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
	<BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
	<CAP9ODKpcuKs9qp+UtWf28s72oht09Px_jhpTDkKNKqgCpB2keQ@mail.gmail.com>
	<BL2PR02MB21636A8AABF61EEF27F2C046B9780@BL2PR02MB2163.namprd02.prod.outlook.com>
Date: Wed, 27 Sep 2017 17:19:31 -0300
X-Gmail-Original-Message-ID: <CAP9ODKq970PQrZNCjXCyomGK+Q90T8DAC_pCHDhHxvksEQEu=g@mail.gmail.com>
Message-ID: <CAP9ODKq970PQrZNCjXCyomGK+Q90T8DAC_pCHDhHxvksEQEu=g@mail.gmail.com>
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
X-List-Received-Date: Wed, 27 Sep 2017 20:19:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 27, 2017 at 5:14 PM, Manjukumar Harthikote Matha
<MANJUKUM@xilinx.com> wrote:
>> -----Original Message-----
>> From: Otavio Salvador [mailto:otavio.salvador@ossystems.com.br]
>> Sent: Wednesday, September 27, 2017 12:23 PM
>> To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
>> Cc: Khem Raj <raj.khem@gmail.com>; yocto@lists.yoctoproject.org; Otavio
>> Salvador <otavio@ossystems.com.br>
>> Subject: Re: [yocto] [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS
>> support"
>>
>> On Wed, Sep 27, 2017 at 3:53 PM, Manjukumar Harthikote Matha
>> <MANJUKUM@xilinx.com> wrote:
>> ...
>> >> https://github.com/Freescale/meta-freescale/blob/master/classes/fsl-dynamic-
>> >> packagearch.bbclass
>> >>
>> >> Something like this?
>> >>
>> >
>> > This is very useful, can this concept be upstreamed to OE-Core?
>>
>> I think so; if people agree with this concept I can work in upstreaming it.
>>
>> There is also the machine-overrides-extender.bbclass[1] which allows
>> for overrides to be added/removed based on other overrides.
>>
>> 1. https://github.com/Freescale/meta-freescale/blob/master/classes/machine-
>> overrides-extender.bbclass
>>
>> This was how I could generalize the BSP in a kind of SoC feature set.
>>
>> You can see the original commit where I enable it:
>>
>> https://github.com/Freescale/meta-
>> freescale/commit/ad4611ab16bcd09eef11d630159253a12c5ecced#diff-
>> 7bac7755a2891a94e863ed0a7af1876a
>>
> Thanks for the patch.
>
> We were thinking on similar lines for SOC variants and MACHINE variants (basically boards supporting different features like GPU, VCU etc).  These configuration mechanism will help resolve these cases.
> SOARCH can also help in package-feed mechanism for boards
>
> You should definitely considering up streaming these to OE-core

That was the goal. I will work on this.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

