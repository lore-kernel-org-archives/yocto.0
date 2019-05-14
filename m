Return-Path: <matthias.schoepfer@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B430FE00D53; Tue, 14 May 2019 05:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (matthias.schoepfer[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD68E00D42
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 05:56:31 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id i3so2765074wml.4
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 05:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=FaSVaSwYFlrcGulGhUWGOf9I6Y0KOLQ0J71cV0aK+kw=;
	b=aAYN7jDyk8ek7rt7dKUrKaLiWWoV685GR81AK/bLuxF9asqDHw1txtk7LrqLsluFzK
	drGnKSverqVA6SLOB1HwbiZp5T+H88NUgAIQw84QoDwwsp03MQEuWpoic/TKk32OMtP0
	FkR7dAK4vojWEGTKK49umT1COsPQk3yf6Xd8RCsG5Xd9NL2Lxzur7Osk/3oToeIbHmsG
	U/zBh0OZVhZBHlBrhUrlFX0dUvUOdYtTxfPPkXQkI0GsjsDbtpBCpwWw5PIFfPoTkaJD
	BMgeQrPRyHNt17hq5jblhz7NFcISGAJkacs7zsUHP+4/giVjVVveQkaXi23Abl4X/+Hb
	vUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=FaSVaSwYFlrcGulGhUWGOf9I6Y0KOLQ0J71cV0aK+kw=;
	b=WAR/zFaOqXTvbzSCwzwRZ6ksjjQ7ZIZBWl2MWlqdkx+p407jB3JkAFWDi5hujGU+CP
	6Uy9XJ0iRwRXhF6Ho3ybBFIOJ9v+c31nYzjX5MveQmT3T2fNjpLtrUYuxW+Q3HOQswoc
	pNeubUESKEsgB1NjcnLZhxgYCxugwZmnRkhvqdNmHpqxDkrEmQSFlmOtVgpnFFVmpTbN
	NosqeGnQkMVtFIAc1Hs8b6QWmtkakwil01r7bKjizuRswl/SUdtSFXQDs6DQuOvCkGgL
	Q0s3ezjcKrbXHxfuvK5q1xav/3FJg7DkNv5P0SsCs8XGSTj+s0wrp1ESqDFC0iguF9gA
	LaNg==
X-Gm-Message-State: APjAAAV/z0CdR7zh22GmQdTz+cISJlmPuou1XWjW3eUfibMVW4X+Y7Jx
	K2NwLHLJnmAz0Cvu4d6tHGH1Nmcw
X-Google-Smtp-Source: APXvYqy1h9pz5W2QR3cGP1y/a+3hbEAL23TF88yFJ8T0F5v4TU/ROfSUB3JhkclwNhKvTGJ8Td+mzQ==
X-Received: by 2002:a1c:ed12:: with SMTP id l18mr20533558wmh.13.1557838590334; 
	Tue, 14 May 2019 05:56:30 -0700 (PDT)
Received: from [172.16.100.14] ([213.168.66.146])
	by smtp.gmail.com with ESMTPSA id f7sm1697951wmc.26.2019.05.14.05.56.28
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 May 2019 05:56:29 -0700 (PDT)
To: Yocto-mailing-list <yocto@yoctoproject.org>
References: <7b3a42c2-1bc2-e739-5ff8-77e27b053c9c@googlemail.com>
	<CAJTo0LaMbbd4NZdZH-3M-H_OO7HMmSHo3fu4zdtjhRvAXQGF0Q@mail.gmail.com>
From: Matthias Schoepfer <matthias.schoepfer@googlemail.com>
Message-ID: <3165dea5-d464-b287-a7c7-e5d53a543cfe@googlemail.com>
Date: Tue, 14 May 2019 14:56:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaMbbd4NZdZH-3M-H_OO7HMmSHo3fu4zdtjhRvAXQGF0Q@mail.gmail.com>
Subject: Re: Debugging dev-deps
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
X-List-Received-Date: Tue, 14 May 2019 12:56:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Ross,

thanks for the hints, funnily enough it was .so symlinks that where in 
-dev and caused the dev-deps...

Regards,

     Matthias

On 5/13/19 7:55 PM, Burton, Ross wrote:
> On Mon, 13 May 2019 at 09:54, Matthias Schoepfer
> <matthias.schoepfer@googlemail.com> wrote:
>> I am trying to write a recipe for a rather tricky component (that has
>> plugins and stuff). Anyhow, I cannot get bitbake not to complain that
>> <PACKAGENAME> rdepends on <PACKAGENAME>-dev. And if I INSANE_SKIP it,
>> the -dev package will get installed. But I cannot figure out which file
>> is responsible. I tried to ldd all installed files in <PACKAGENAME>, but
>> could not get any results. Any hints on how to debug this further?!
> The problem is probably that the plugins are being shipped as
> /usr/lib/libpluginfoo.so, and so have the same names as development
> library symlinks which get packaged into PN-dev automatically.
> Alternatively unversioned libraries will also have the same issue.
>
> Look at what files go into what package (using oe-pkgdata-util), and
> ensure that PN-dev only contains headers and the link-time symlinks.
> For example libfoo.so -> libfoo.so.1, libfoo.so should be in PN-dev
> and libfoo.so.1 should be in PN.
>
> Ross

