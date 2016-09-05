Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B57B7E00E2A; Mon,  5 Sep 2016 05:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 681E0E00E1B
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 05:44:14 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id f76so76000745vke.0
	for <yocto@yoctoproject.org>; Mon, 05 Sep 2016 05:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4A7/4UHSfvriTADuWs1DvPyvyx0PunQ/yrMYvDvEk4A=;
	b=jpWFeSE7onaTAOeJgQrY0I3Zaqyg0ELEZ+9u9OOFqJgYCfpg+JXCg+LoXPZMCj/uxK
	Pmm+lYVimRL31i5yviguRXgugXWEdhWNlAo8RK4SrNkgnN8irkMbV+jdkKjI7GnoFF2U
	FZUZwCchTGad8fbx8atK/GzROxNhLFbmjAS7oZxJS+Hrb0Adh99Fkv7VYw9D3W4dDbe6
	9ZvAP23jMkbjPL/22mVCkOggUyNo+nunSOp6z41W+dafhLSppPiUGUA7mKkNkVcXSjG9
	y23bAJw9iJ15BCOqEjSysz7u9VFrj6eu0xDTny7xQrVQDB9EJ3EcbATzftfoAhWaRC84
	DZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4A7/4UHSfvriTADuWs1DvPyvyx0PunQ/yrMYvDvEk4A=;
	b=WLMtq7CoFJPvEIkf8zSZmcjmUh41JfM+EXBYSLhw80hB5cAIPoE6RrPpN256mMp6VB
	NZsUGBk7snLW17Vz0S5xrml2IFHv3eqAS9m17G23Bd92uVnIq+ZlZ38Q51ArK0vFi4fc
	Gh2R178E0lpiTwLsL+iQDAU9/ivByu1EFt0gp3Hu8rRJRplZaAYOejP3dsRaOlTXipUR
	w9LKQP09SHmIjwc5kaXEhtHGUcHWushMMtomGqPAoLIOGU9VwCZM/ybkjni3J3j4cCfP
	kGjfGY5mDZ++GbpJsazUhE3dcOfifVevEY7OsDBSKVd3Jnl48vidIlDps19w6bkUOgbA
	s7UA==
X-Gm-Message-State: AE9vXwMpqVLXFH+YsQNwmWRPCVA6cF7+Ffhp42LqOwPsmkrRrW/53ilXGqbHVWYVIR08K77ZW5aCjxlPfzZm8A==
X-Received: by 10.31.206.68 with SMTP id e65mr18500629vkg.129.1473079453802;
	Mon, 05 Sep 2016 05:44:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Mon, 5 Sep 2016 05:44:13 -0700 (PDT)
In-Reply-To: <871t0ya6co.fsf@posteo.net>
References: <871t0ya6co.fsf@posteo.net>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 5 Sep 2016 09:44:13 -0300
Message-ID: <CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: arm-*-linux-gnueabi : unrecognized option -Wl, -soname
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
X-List-Received-Date: Mon, 05 Sep 2016 12:44:18 -0000
Content-Type: text/plain; charset=UTF-8

I *guess* that it should be -Wl,-soname=libgpr.so.1 intead of
-Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
good question..

2016-09-05 9:17 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
>
> Hi all,
>
> I want to cross compile the gRPC library for ARM and I am using the
> Yocto build system.
>
> The build fails for the following error, which I am suspicious has
> something to do with the compiler being used:
>
>
> [LD]      Linking
> /export/arm/xxx/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-linux-gnueabi/libgrpc/1.0.0-r0/git/libs/opt/libgpr.so.1.0.0-pre1
>
> arm-phytec-linux-gnueabi-ld
> : unrecognized option '
> -Wl,-soname,libgpr.so.1
>
>
> arm-phytec-linux-gnueabi-ld
> : use the --help option for usage information
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

