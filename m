Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F6C9E00E08; Sun,  4 Sep 2016 19:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049DFE00E01
	for <yocto@yoctoproject.org>; Sun,  4 Sep 2016 19:17:51 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id j189so57329297vkc.2
	for <yocto@yoctoproject.org>; Sun, 04 Sep 2016 19:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LJypcJ8TyQe6NaeAm2C5ZCr9HrgR0yOWRwQPDpo0ro4=;
	b=X1DjnJ0Kk5SSKuHB67WB0mhBtI8QqNKM3hnwMDoqQatXsQjx/NDRptsc9XulieIIdb
	R33JnQ/r7K3ZXb1MKhdIJMcfsz2raygzE8BDrE9obY4wn6pi8XljxAp7UNtd2LAOgeEJ
	z2McUkjFMWyAM6lN/pCQZgQlSga9Y3h2luXyWiRTN0Cn9nkPVuOGImd1IOKP3IbmWmrY
	NnunmPkkPKZ5voYWmLLrhBgt6hkFryFP8ixwpYd5zGozUK5ZWpUKbqEkSdU1RI8pHwIc
	5ZSuZNij3F3M1dNUjymvl9umwq9NxCLMfsFIT0DfDgPHPydY+m0qO3DZwZodbStOPZYz
	loBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LJypcJ8TyQe6NaeAm2C5ZCr9HrgR0yOWRwQPDpo0ro4=;
	b=IQshL3a5BeSKOHMbBHJCuG5WC52PlCfoeaeZbwW92tyKdX1BvLkBfoFREYwKVkLmTl
	ISHJU9Bu4A1xdOSPCftmTZSxk049yEi/S0qVQMRGqi1LSKSrKEtH4LIj1voGrSk9waex
	fbrVAednWbruZZGCCMgT7V6CBcavd2DLCqtaKVBw8Azov0tG3GrN2xgC6mwRjLNS+wFh
	O/F8jOoO28zqF1Ecpt8GZwgPHsO6PEVPMCS84cidTeGxSdEyxKI8kOq/qt2mCOieAmX8
	kareINNJuW2BUU+Ot4Aq/4uHV4gtUba6m7k5+XlXdukR/Mi0fCi0Ap9ekiqL3xE+xSui
	xH6w==
X-Gm-Message-State: AE9vXwMfjQ4AlSte01oA/S19wHT2N//d9sAtbMWqzLhkATWF/rGd+C2l3gZscvmmKdmRaM7CVeg3bUZ4JaYVXA==
X-Received: by 10.31.206.68 with SMTP id e65mr17588069vkg.129.1473041871097;
	Sun, 04 Sep 2016 19:17:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Sun, 4 Sep 2016 19:17:50 -0700 (PDT)
In-Reply-To: <1473027499.20226.7.camel@linuxfoundation.org>
References: <CAF3SDA7xnKy6nGNqzzOcp+nwERrT522OdZVUnaFqyjhR9y3_ng@mail.gmail.com>
	<1473027499.20226.7.camel@linuxfoundation.org>
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 4 Sep 2016 23:17:50 -0300
Message-ID: <CAF3SDA7UYJUsbHBNLYQutufFBAXkL65tB7R1Ne+U7DESU3RMFw@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libSegFault.so crashing on Daisy
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
X-List-Received-Date: Mon, 05 Sep 2016 02:17:55 -0000
Content-Type: text/plain; charset=UTF-8

Ohhh you may be right, I'll try it

Thanks Richard!

2016-09-04 19:18 GMT-03:00 Richard Purdie <richard.purdie@linuxfoundation.org>:
> On Fri, 2016-09-02 at 16:36 -0300, Daniel. wrote:
>> Hi everybody,
>>
>> I was trying to use libSegFault.so to capture stacktraces but the
>> libSegFault it self is crashing? Can someone try to reproduce this?
>>
>> 1) Install libc6-dbg. This will give you access to libSegFault.so at
>> /lib/.debug/libSegFault.so
>> 2) Set LD_PRELOAD: export LD_PRELOAD=/lib/.debug/libSegFault.so
>> 3) Running any executable results in a crash for me :/
>
> I suspect you want a /lib/libSegFault.so rather than the file in a
> .debug directory since the .debug version is just the debug symbols.
> Try the libsegfault package itself?
>
> Cheers,
>
> Richard



-- 
"Do or do not. There is no try"
  Yoda Master

