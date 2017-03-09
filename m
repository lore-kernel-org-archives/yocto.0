Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA19E00726; Wed,  8 Mar 2017 16:51:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F59E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 16:51:07 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id o126so5394899pfb.1
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 16:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=MDyOEhFtk+ZsdPj46js6zz1n+rtJL6WtzUSve1eqjr0=;
	b=O5Fy6H/hMN6WsNBE2xhLTlNUdT74AWIiCqrLTragoHcYzqB2Rfh3sPeT2e2Zl0gLQv
	Wa54oLPu7AQprG1EjQfoPUBm+d0lqdy+iksWH1x81ZS5CylMFnZ+Q5iHTEjUKGltUTNt
	hUFiIbQTf9GebaY6Y77lqhTcKyV7vT0lNvQ11N86pPQS/nznROrVvrpwPjB5kQFtpoLx
	MzoEsDVOSrjklFeyd+aGM7pQWYqeAKKzJ2MbUZIH7nr5uALSoHl7KSZVnD93EnXW18Rr
	REKxOjsF25NpiDuOXYGGTIbcpR78AghUOu/FoENF/y0YTQKF6+ZccRCh66+hPLlo8sbQ
	ddXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=MDyOEhFtk+ZsdPj46js6zz1n+rtJL6WtzUSve1eqjr0=;
	b=HaSRsLD+dOqbQDwAB558e1KsJ25Pe9TsdBc9PRZQjg+Y/G3VyjUmcvVjXW4nCKikLK
	MU09UboXHWRjKiLqVpp021On+nsQJm1RpwlL6RrjrcamabCS1zkmbQxHzLI8SaeF10ym
	l3Ry40MdMKGB5KQbSVgLoVwe3e2Ti2QzYzSbeImh1FWgW6aBjjzLz3y48dEKYKjIxD6L
	QzioS2pUufNdq1NQwhg+jZul3x6yj76mC+yciWwd+PND8KHCDoZbyEl8brwV9r0oPbcX
	Bdva0HoZl3VyZr4Wyy/590aYELQv+oBfVSdvmEo2BcRGxPYWLxBo4DON8F/d73+KNGMx
	v1vw==
X-Gm-Message-State: AMke39nGVaGgegaqhZS3qyFs6d76WRONw7cCniamEqEssHUMydpCKr+XyPIuY+7VekawrQ==
X-Received: by 10.98.57.23 with SMTP id g23mr10739709pfa.32.1489020667008;
	Wed, 08 Mar 2017 16:51:07 -0800 (PST)
Received: from haswell (c-76-102-32-192.hsd1.ca.comcast.net. [76.102.32.192])
	by smtp.gmail.com with ESMTPSA id
	v143sm8345836pgb.47.2017.03.08.16.51.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 16:51:06 -0800 (PST)
Date: Wed, 8 Mar 2017 16:51:04 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Tom Rini <trini@konsulko.com>
Message-ID: <20170309005103.GC24752@haswell>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
	<20170308234200.GA24752@haswell>
	<20170309000105.GI19897@bill-the-cat>
MIME-Version: 1.0
In-Reply-To: <20170309000105.GI19897@bill-the-cat>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Thu, 09 Mar 2017 00:51:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 17-03-08 19:01:05, Tom Rini wrote:
> On Wed, Mar 08, 2017 at 03:42:00PM -0800, Khem Raj wrote:
> > On 17-03-08 18:28:21, Tom Rini wrote:
> > > On Wed, Mar 08, 2017 at 12:31:47PM -0500, Trevor Woerner wrote:
> > > 
> > > > openembedded-core updated bintuils from 2.27 to 2.28 which causes u-boot to
> > > > fail to compile:
> > > > 
> > > > 	arm-oe-linux-gnueabi-ld.bfd: u-boot: Not enough room for program headers, try linking with -N
> > > > 
> > > > Building with -N does fix the issue, so this patch simply adds that flag to
> > > > the build so it succeeds.
> > > > 
> > > > This has been build-tested, as well as run-tested on the firefly.
> > > > 
> > > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > > 
> > > Unless there's an immediate need I would ask holding off on this for a
> > > bit, I want to track down why this is happening.
> > 
> > perhaps linker map files from 2.27 and 2.28 binutils will help to
> > understand it
> 
> Nothing is standing out yet:
> https://lists.denx.de/pipermail/u-boot/2017-March/283278.html
> https://lists.denx.de/pipermail/u-boot/2017-March/283286.html

I see that .data.rel.ro are generated eventhough they are empty they
appear to be in final link this section will hold constant variables
that gcc sees and needs dynamic relocation, that probably is not
relevant to u-boot since its linked stand-alone

Can you try to do just the final link with 2.28 and all built with 2.27
and see if it still happens, want to rule out assembler

> 
> I'm asking Trevor to poke at something that would change where we link
> things at and perhaps there's a linker bug here (this platform says that
> we link U-Boot at 0x0).
> 
> -- 
> Tom

