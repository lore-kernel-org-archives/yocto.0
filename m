Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 620EDE00E6D; Fri, 29 Apr 2016 07:01:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9486AE00CCC
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:01:47 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id m101so17974841lfi.1
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 07:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=rUucIEK3BezL0Pp0XXAaCrc+cvYiGU6L5WMAwXoJfog=;
	b=RgPd6IjZszmKCYeFdKh6fePq5k5klH2Wa9lKWUbfjpqPxTNFJrtwnW8mmtXLgsWnjx
	DTvwje4L0FmW4KhT2t78OqLbpRgE2QJyb1u8GOsu28rgpBWmPSrwxt7XCJcG2B0Jj3JS
	sax6AYRVOMSkBbr0Zd9CCRnf/6YrtmXPqjzvE0igpljdR2cjteoOe0QWSz32vioYqFUB
	x16kGcbnDXv9RuYSit2QMHiBIMQsW0ArW+Hj7REhQD7ZuqkUX2WI97eHpZCwiF9xGP8d
	1tZqgpNATTbhYkZdpoJCvjwyTDpQ1Du+uLWsQyypSeEgQD0NcW7cVLiCg+1DLgR9qXbU
	wVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=rUucIEK3BezL0Pp0XXAaCrc+cvYiGU6L5WMAwXoJfog=;
	b=fWydt3yRvX5fe8WTD0rZZlOv/RQrV4xv9/IXwNVOeNFZIeSt7jx7OxVWANB3AG3pPV
	3oku/x0fEzZ3pkux4ePAr4koIfTupk+zvXaPFsVwog1yuZqSekFPjUKXRV0hQ4UeE3Ds
	ep7HEGUZ45ZPEzZ6CAY5P54tIJ0zfjV7PkptfCsW8/NJXCHmkUchaQFQbeqUp7Q4GuOl
	8QuzXG5SE9HigfsmF9jXfk9pHPrCfk83lMZO6AwODigm2vwAnaugwmy5mDtsdzlfDQOP
	gGrHhZH5uoVSQpbMVKDyLrVGV0Qv8yUs5lOPiV03/1vq1cYOg5tx2rXHIIkdXu1pDJbn
	TptQ==
X-Gm-Message-State: AOPr4FV4wGhZhlinIOtOh5dilO1WPp7xzYFu/FONbYArSC1FxfMtZL67G/i3MMKzW3jZL3eaNrNiUeZuXonXXQ==
MIME-Version: 1.0
X-Received: by 10.25.206.71 with SMTP id e68mr3820590lfg.19.1461938505268;
	Fri, 29 Apr 2016 07:01:45 -0700 (PDT)
Received: by 10.112.124.10 with HTTP; Fri, 29 Apr 2016 07:01:45 -0700 (PDT)
In-Reply-To: <CAJTo0LZgaYqZize00LWxVju_1zZnAai_O4TKyfcYApOyr_gcpQ@mail.gmail.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
	<OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
	<CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
	<OFB3F7FD44.568863C7-ONC1257FA4.00364313-C1257FA4.0036E30E@esa-grimma.de>
	<CAJTo0LZgaYqZize00LWxVju_1zZnAai_O4TKyfcYApOyr_gcpQ@mail.gmail.com>
Date: Fri, 29 Apr 2016 19:31:45 +0530
Message-ID: <CAOorjZTRoxuFTkumqe-KmaVSfmNjMVpq6u=BpZGUQGoX7TAN3Q@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 14:01:49 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Apr 29, 2016 at 4:41 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 29 April 2016 at 10:59, <S.Jaritz@esa-grimma.de> wrote:
>>
>> Finally we made it - Thanks to you all for helping me! I attached my bb
>> file for that case someone is searching for a bitbake recipe for building
>> the libhiredis
>
>
> If you submit the recipe to meta-oe then you can share development of the
> recipe with others.

How can we do that? Kindly guide.

>
> Oh, and I just noticed that you commented out SRCREV.  Ideally don't use a
> tag name in the SRC_URI but set SRCREV to that tag's hash, so caches and
> offline builds can work.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

