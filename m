Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9418FE00D3A; Tue, 23 Apr 2019 01:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f196.google.com (mail-it1-f196.google.com
	[209.85.166.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D06A6E00D2A
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:02:44 -0700 (PDT)
Received: by mail-it1-f196.google.com with SMTP id y134so21971385itc.5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 01:02:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QqXRoVuEip+vbuU5B76QKNv6TzTzOKBNr1+ruXZgrdo=;
	b=MSa6FMbYFgB+6y08atzsGwlmk4XLB7pWMki/kzYpTzW/F+MrG2/MjeWAvfniJ4Vapj
	sH+gCA1gveXQieGKy4mlezHpYJZXWmqbGcJIxv2Nvtzo1LeW1B4LTuwj5vUkFX43l1B2
	jeKfBUeBOQuQBcMGIH1yezL0LTjD9ioInFfSafDyGMYe2258RMkwiX/r4VG7z45HJrcI
	aEOZRcHgFhgmxfofxCldGeF0kZC6jXQgd4rjKnkwky1VuMVZ9582VsbVou5Pij/qVKyU
	QyCu0RXKmnuNelO5OZBG8oB6I/S085hSLH+1UlIwJUGQINVFggJX3u8CdZefWnJqOVwG
	FWkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QqXRoVuEip+vbuU5B76QKNv6TzTzOKBNr1+ruXZgrdo=;
	b=hMevGlBxtPj10y0unLctnkObVssf+Ro4+K7WiIrI6Y4YoGDkwJ+HURASn0w6i1fax5
	6G8zay2wuQWZe1IJCYtSc7Fr3G/ReIwtainwdFpEo8xDmaybQlBNakeZNxOITRTbGy6o
	uGN5bfzHDZhDRFOXJ+wFx97L7DNWFwuXC/rRkDCFwS3+t3uUaDJNEVSeby5syhOGTIwp
	/p2O0inccCNcnLgqiFVXyPw0b4tSAJIwVfADDkQTav1np9zJjFwX/O5Lt13p/roXtoqv
	o2D/d5S17IDTgnRhsc6RI3eO09Vy7npN6qourcropyrDXU6urq2lwxsiKHTUV9JibXxY
	/b0Q==
X-Gm-Message-State: APjAAAW2Xv06VCsI5pbszBE865qwlfzUK1rKjwVHsBkp5h+NQCn/20c5
	rVCvwGM4Yf4j3LWhloUtDj3ZLiJD
X-Google-Smtp-Source: APXvYqxR9amLm6KRbgvxY9GBJ0YqgTRs3zn3KsHC4s1xHkpeTeS6JyrB2D1AzVe/5SVitk57ykPGbA==
X-Received: by 2002:a24:43d1:: with SMTP id s200mr940899itb.155.1556006563948; 
	Tue, 23 Apr 2019 01:02:43 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	y16sm5268430ion.64.2019.04.23.01.02.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Apr 2019 01:02:42 -0700 (PDT)
Date: Tue, 23 Apr 2019 04:02:40 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Randy 'ayaka' Li <ayaka@soulik.info>
Message-ID: <20190423080240.GA12920@linux-uys3>
References: <20190421155339.6332-1-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20190421155339.6332-1-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip] [PATCH 0/5] add new SoCs support
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
X-List-Received-Date: Tue, 23 Apr 2019 08:02:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Randy,

On Sun 2019-04-21 @ 11:53:34 PM, Randy 'ayaka' Li wrote:
> After the FOSDEM, my patches for ARMv8 cortex tuning
> are finally merged. So I think it is complete the
> lose piece at meta-rockchip.
> 
> Since the big-litte is not supported by OE now,
> I make all the chips' configure to use the big core
> tuning.
> 
> Randy 'ayaka' Li (5):
>   conf/machine: rk3288: Add some machine files
>   conf/machine: add rk3399 support
>   conf/machine: add support for rk3328
>   conf/machine: add support for rk3036
>   conf/machine: add support for rv1108

I don't get the impression any of these patches were created for
git.yoctoproject.org/meta-rockchip. Although they apply, none of them actually
work. Or if they were intended for git.yoctoproject.org/meta-rockchip, then it
doesn't look like they were intended for the master branch (which is the
assumption when no branch tags are mentioned).

For example, many of these new MACHINEs indicate the Linux kernel
to use is "linux-rockchip" or "linux". Neither of these exist in
git.yoctoproject.org/meta-rockchip (or openembedded-core), so building any of
the MACHINEs introduced in these patches that specify either of these kernels
will fail.

git.yoctoproject.org/meta-rockchip is a community layer focused on providing
builds composed of upstream and open-source components (i.e. U-Boot from
git.denx.de/u-boot.git and the Linux kernel from kernel.org). Some BSP layers
(e.g. meta-freescale) are able to provide users with a switch so that builds
can be built either from vendor sources or upstream sources by setting one
parameter, but so far git.yoctoproject.org/meta-rockchip doesn't have this
functionality and my attempts to get this functionality integrated at a
higher level (i.e. instead of having every BSP layer implement this logic
independently) haven't met with success.

Best regards,
	Trevor

