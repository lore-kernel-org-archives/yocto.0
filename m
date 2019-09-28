Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF480E00C5C; Sat, 28 Sep 2019 00:45:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62EC8E0082A
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 00:45:11 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id v2so23188454iob.10
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 00:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=a3+3tXALjhTSPwhoNK4lheARiNSUnzXV9AuXH5sjysU=;
	b=eqnajXEaPThN9xM3bwhbWLOrnqHknCqqIM2FM5DEs3C4WshRRzNJ6Iu/4nmNAVlIlb
	bhlz5tMecunDVEIfz1fFOYcZpf93aYcyoeKauT+0qGAxZ/y3jF4k2W2GhGSz0Oue0iwQ
	9ji011JFaaqZnM6RMrjfZbgOCyK4hfbWG+IUXIAIXmYTUCzvvOSHB+Pnu//C+Xr5Qi/q
	CYDvGjyJSjY5v6L1MIPbE5dGz5G+L65m8hyoFqWWqUGGmTkCFAvyKo1pXX1/KwmnHhvg
	ki+AK4p2J1YT2yUTy51UsAYVpQcKzbvfV6HyH2N6OsF6nO7ELxXHqRnoAhO/7k30+/MU
	09LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=a3+3tXALjhTSPwhoNK4lheARiNSUnzXV9AuXH5sjysU=;
	b=BYWwl1rAHjq5tF4lPnezxxcvxke9OGj3NiFWsJ3tykyr8MufqvN7a7RaJN3mvaYzob
	TAog2+4govVpRv35Gs3pZeFDuT8SvZICDWKAQRFe/Wexn+0fN6DVvegCYUpX6f6PUXfN
	p4C6co69r2Lk9iJi1Rwq6uMN6HwkIMFQzF0X6biRRy/9VXwgF9EdzD/bI4u3ZSz5fEHV
	Df5nXzpZU480cBr8M+z3pfHBgxgoIeveemUaSBmIOT8pz8OTV7KREGReZVxFMV9kfX8c
	7NbyGO38ySJWqTTorKhyJXRQJQe5FCJJAiMo5R64bYyf5R0YJMJQlOVDKsnRs6AiTQBX
	wsLQ==
X-Gm-Message-State: APjAAAXBMzmJgzd3xgqXguYY2VYGkngzJoDSNUpPepUgTi+0n4jUCdrC
	0+n50KINUzu33N6Ee56c0HSNwCZYty6uLdaibpQ=
X-Google-Smtp-Source: APXvYqzY2JnTqXRSPeB8NQU4Dxq838fs5tQzRW2bV/lCwUobz+vHrAwA4UbLSiOGayLALOjIj7LtXZpwegsjV4Xp1e4=
X-Received: by 2002:a6b:6c06:: with SMTP id a6mr4044085ioh.306.1569656710633; 
	Sat, 28 Sep 2019 00:45:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Sat, 28 Sep 2019 00:45:09
	-0700 (PDT)
In-Reply-To: <b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
	<b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 28 Sep 2019 17:45:09 +1000
Message-ID: <CAA=hcWRCqya18U9L8QxQj502n=ybDwC4CGpN0-kQBFPy52RMbA@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel module and drivers missing in final image
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
X-List-Received-Date: Sat, 28 Sep 2019 07:45:11 -0000
Content-Type: text/plain; charset="UTF-8"

On 9/27/19, Maciej Pijanowski <maciej.pijanowski@3mdeb.com> wrote:
>
> On 27.09.2019 14:01, JH wrote:
>> Hi,
>>
>> I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
>> and kernel modules in emmy-w1-driver-sdiosdio are missing in the
>> deploy image, any clues why, how to debug it, how to fix it?
> It is not clear to me what do you mean by including it in packagegroup.bb
> and what stuff are you installing into the image.

The packagegroup.bb is the one defined in image FEATURE_PACKAGES, that
is usually all package in packagegroup.bb would be included in the
image.

> If you wish to install all modules which were built, simply add
> kernel-modules to your image via IMAGE_INSTALL variable.

I added IMAGE_INSTALL += " emmy-w1-driver-sdiosdio" to my image.bb,
but did not work unfortunately.

Let me clarify it, I can see emmy-w1-driver-sdiosdio and all its
kernel modules are in my build directory, but just could not be added
to the image. How should I add package to the image?

Thank you.

- jh

