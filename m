Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 731ABE00B5F; Thu, 23 May 2019 21:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09245E0043B
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:08:50 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id i21so4264775pgi.12
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 21:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=KERkdR0W9yCCYaQYCZtdzN04FZ823CGzKb3eZO0vtLg=;
	b=WViNLdIyA4NxTqP/lNHqSxLKztvbjjGuAbtgJklBNBX4UzYaGevoo09Q697VQhJIk5
	925BQLr71wFO92vkBQSulLw0UC4thhwWaZkVuNX6FV7+IBkL4BnSfBIZmIdq3DCVkp+D
	jlY2Z52k344X3Nek4RwnPWhT1ZPW1Kf41LF5yM2e+QZmnUQXiHJQWFrLJa+2wh3WroR9
	a5uxTfroSoMcHSHSpJ/j5mYxFm03ZO7zYE/8kYU23lcq/4E9VAC4T3ZurXh2adjMzWfd
	74WJi3H9Jv7tmoYvBkj+Wj/ph0ztal2NhQi/8Nj+g12grbql/smKDe962QJXcEAnWCaO
	mB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=KERkdR0W9yCCYaQYCZtdzN04FZ823CGzKb3eZO0vtLg=;
	b=WZHhsv1o2AEgKss+EsADhqVlUEvIP0xW7wozgR2hltducjP/TLTv+oHS6inEWOSlJ6
	+QBZLBn1IwPWYrL1cJbrpTMq1eSpJ0o1HIg7PcL7bwGdkDfxfFYZ55N8aX7w05h6o2hM
	RO51rkkZwrQzgKknEnz/8RhIRquKIcqHDTxcHJK1PYzyzQR5dASB5nbZNOe1y5DaHS8D
	jKpvT4oQdAPRk2VMuN90KNrrme/liH7F8NCdE1ABO7RynOThuX3ad/xhNLUNDy5edkoO
	iTaWDe2V5ZHVEo0Z/UfWVvwzyNynzfOlrlYiXGyyr+vqE8oEgs3heClS2kvxhIaX9Ij7
	wLRA==
X-Gm-Message-State: APjAAAWjLvdVDuo/E+77fylo87mo36t67jeZkClk0H4Sf+aj1f2IdfOw
	lC/jEk3a+aPBGzfJTbZiiat/8Rn+q5E=
X-Google-Smtp-Source: APXvYqzUnVpYVpZxfiB4fFd2MVnp2I9E4KsI4TxEvg+amQWZTvxfzUD+PfpHZKTEQGGp/ez6cRgMoA==
X-Received: by 2002:a17:90a:c381:: with SMTP id
	h1mr6536457pjt.129.1558670929730; 
	Thu, 23 May 2019 21:08:49 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:313d:8ef2:9687:9b74])
	by smtp.gmail.com with ESMTPSA id p63sm978644pfb.70.2019.05.23.21.08.48
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 21:08:49 -0700 (PDT)
To: Shane Peelar <lookatyouhacker@gmail.com>
References: <CAEseUX=OG1gVjXzBNAj=DiOMJ9eA9x58-ng7xDro0_arS1nXSw@mail.gmail.com>
	<50b3ec46-1c13-f0cb-64eb-bde7809db99d@gmail.com>
	<CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <bb585fca-cdc0-1c2a-47db-cf854b23d850@gmail.com>
Date: Thu, 23 May 2019 21:08:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CAEseUXkdwLzK-r92SUMXVoMWFpVNVRNzVpjQGMzNLOJvx=jcbg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: prelink-cross with -fno-plt
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
X-List-Received-Date: Fri, 24 May 2019 04:08:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 5/23/19 7:53 PM, Shane Peelar wrote:
> Any of them on the system pretty much, and yes they are also built with 
> -fno-plt.

OK, I think its better to them conditionally check for .plt section,
can you describe more of whats going on when sections are checked.

> 
> On Thu, May 23, 2019 at 9:59 PM Khem Raj <raj.khem@gmail.com 
> <mailto:raj.khem@gmail.com>> wrote:
> 
> 
> 
>     On 5/23/19 8:05 AM, Shane Peelar wrote:
>      > Hi Everyone @ the Yocto project,
>      >
>      > I'm Shane Peelar, a PhD Candidate at the University of Windsor.
>      > I'm writing to you about prelink-cross, as part of the Yocto project.
>      > Specifically, I'm looking at using it with executables built using
>      > `-fno-plt` under GCC.
>      > I wasn't quite sure where to send this email to, so I figured I'd
>     try
>      > here.  If there's a better place to send this, please let me know.
>      >
>      > Right now, prelink-cross seems to fail an assertion in
>     arch-x86_64.c,
>      > line 421, when
>      > using it with an executable built with `-fno-plt`:
>      >
>      > ...
>      > assert (i < dso->ehdr.e_shnum)
>      > ...
>      >
>      > This snippet seems to be looking for the ".plt" section and,
>     since it
>      > can't find it, the assertion fires.  This makes sense because in
>      > `-fno-plt` executables, the `.plt` section is missing entirely.
>      > I'm not an expert on ELF stuff, although I am learning quickly.  It
>      > looks like
>      > this code wants to write into GOT[1] the address of ".plt" + 0x16 --
>      > since ".plt" doesn't
>      > exist, does it make sense to just change this assert to an if
>     statement
>      > like so:
>      >
>      > ...
>      >        if (i < dso->ehdr.e_shnum)
>      >        { ... }
>      > ...
>      >
>      > and skip over that part?  Or is this a real error condition for
>      > prelink-cross and it really should not continue?  The executable in
>      > question is also non-PIE, if that makes a difference.
>      >
> 
>     what shared libs is this linking to ? are they also built with
>     -fno-plt ?
> 
>      > Thanks for your time,
>      > Shane
>      >
> 

