Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A66DE008D2; Fri, 27 Apr 2018 02:25:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF35BE00823
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 02:25:20 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id a202so862189qkg.3
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 02:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=rH5ihB2qAQ7AKeMhlbZ50S9NAGaXhdvlY2ImVGoX09I=;
	b=acybPN/3GjUsjjyErWpyLYCfbGZig0LvaRx5O3PindO/ob17GWvQlnBXdqEDuPl8av
	BqZW/Q1uUyuIwAhUrp2HTERKZDM1YpoeEUANYoNqXDqSu9/d66PcaixEIVYX864OvbnG
	a7IggsHhtkLMUodlGSGlwn2JN4YtyyopslMOM3Eny3gzVwoDQgUSkbAJg0qGRa1FovxZ
	4bEGKqiY3zR8Q4b3oTABBV8yTS+EwBFSOQHie3za4BNdS7rW4IRVHSVrhfLF0nhY0L8I
	RaYLh05Es1OGUp1puSDW0Z1OBECaKu9KdQ6ND80GscrWMItA29vVJyD5g8baNH8eSRV+
	t80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rH5ihB2qAQ7AKeMhlbZ50S9NAGaXhdvlY2ImVGoX09I=;
	b=HNJ7ECgbV0q8AgMGqvPmEDfrqWhj+I717ULhpmId2WMBsQQX6A5FGhVSyolArU6RVM
	34wKlXrhig9PkhxOXGuCuZ8Mn03FW3xfEh9dfB9tTsycMKtR0E4CDWrlR+T4x3yVxPS5
	Rbp5kqL23WTu/nlbzmxfhbHz6xFN4mbnDdSx03VuNA6vpXimX5H09vT+vkLDvI5au1u8
	5OZrMHxBSorDl5C70E5YUonsRl+vJQKvjm9sD2JeKmEHR9kTDS5w+IiMz0vcYN+t+CZt
	GI6f1tHirgfsF1TlNmbxZ3wszQ7rScXmrlRGNzB6/fol+4DsP0v35gsC8PnOXRmeZmjZ
	962g==
X-Gm-Message-State: ALQs6tD6uZd8myGhOLYdwpIV+N1Sr389OrFcxleTtEbJZWPagMU3/BH8
	HfvUVS7OllgxSnxnipXJYoothqmXlf7RIMxZBFsQZg==
X-Google-Smtp-Source: AB8JxZrzfb/MgFBuf44dlXTg8kvbQ/PDV1tlLNWYoBUKXRwhU5lAdqIkRwIAmjZjsOy1pHn+8zmE76bG7PqrzG1wpnY=
X-Received: by 10.55.192.197 with SMTP id v66mr1139802qkv.343.1524821119681;
	Fri, 27 Apr 2018 02:25:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Fri, 27 Apr 2018 02:25:19 -0700 (PDT)
In-Reply-To: <20180427061932.GB9349@graute-opti>
References: <20180425150333.GA9349@graute-opti>
	<CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
	<5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
	<CAGAf8LwkCDyzkej_c31EjtxXBDP+dqx5ihMCwuBH5CDP5X5T4w@mail.gmail.com>
	<20180427061932.GB9349@graute-opti>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 27 Apr 2018 11:25:19 +0200
Message-ID: <CAGAf8Lx2jsA0EC+SwJiicxfdCDoHRaJF4gbm0ygHw7Piay6FsQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Fri, 27 Apr 2018 09:25:22 -0000
Content-Type: text/plain; charset="UTF-8"

> Perhaps I will try 18.04  LTS which released yesterday ;)

This will be very interesting test. I bet it'll not work 100% (any of
use cases, with any number of threads). Native packages moved far
beyond Y2015, far beyond YOCTO Jethro release.

Zoran
_______

On Fri, Apr 27, 2018 at 8:19 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> On 26/04/18, Zoran Stojsavljevic wrote:
>> > I deleted all the build-imx6ulevk folder and build everything from
>> > scratch with only one thread, waited a few hours for compilation and now
>> > its working ;)
>>
>> Still, I am struggling to understand why??? What is the requirement
>> behind this ask?
>
> The requirement was just get our older yocto (jethro) build running on a
> PC of a different developer. Often developers have their own flavor of
> Ubuntu releases and they update to newer versions while they still
> develop on yocto releases which is much older. Because that yocto
> release is currently in the field by our costumer. Our product cycle is
> not so fast to use the newest yocto releases. We started to develop when
> jethro was up to date.
>
> We compiled single threaded just because his PC is a bit unstable on
> high load. And it crashed a few times on parallel makes. I know that
> this is not ideal for yocto development.
>
>>
>> As we see, it is much longer (one thread only) than on 14.04!?
>
> its takes much longer then with settings
>
> PARALLEL_MAKE = "-j 4"
> BB_NUMBER_THREADS = "4"
>
>> Could you, please, do it on Ubuntu 17.04, or 17.10 (i bet, you
>> can't)??? And why, after all???
>
> currently not im using only Ubuntu LTS Releases.
> Perhaps I will try 18.04  LTS which released yesterday ;)
>
> Best regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

