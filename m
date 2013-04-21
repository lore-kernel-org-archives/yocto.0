Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 471E0E01498
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 16:34:03 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id z13so5153215lbh.13
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2013 16:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=XmA6kKC3VC7COYF7eUDGg4p4anlcF7vX4ZR6AGdtdbU=;
	b=wjD4sBo6dvIYWFGW7oxcnVHP7qhsVMA4G1h2LnkXfJ/EJNDrfgjcMsnS/+1pDIyVCv
	wcJs0EZXGeIopCoVxsgFTqG46pIsY54C2rKlpALdHObh53JWUvyN7CNEOrpxlGIiAh23
	z7eEuYficXoFnsHhSYObKuBlHyMWFN15IzSXfIeF95iAdbSS2XXzmYhyWgnuwzBMY03w
	dPLWkNjHCJKagL3ZBKdGKLRE4E5XNiojPVfzbEQo/uuaBpOcT6vYo7ncNOf9+V4s+kaY
	eSfzViTeHCnavVbSniiNE+FbAGebO7X96YRRLKLYKGI7Nd4/s3y5CtQfFSCiwJeIKHDT
	X1UA==
MIME-Version: 1.0
X-Received: by 10.112.128.231 with SMTP id nr7mr11975562lbb.26.1366587241618; 
	Sun, 21 Apr 2013 16:34:01 -0700 (PDT)
Received: by 10.112.75.161 with HTTP; Sun, 21 Apr 2013 16:34:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304211541540.9853@oneiric>
References: <alpine.DEB.2.02.1304211541540.9853@oneiric>
Date: Sun, 21 Apr 2013 19:34:01 -0400
Message-ID: <CADkTA4NQ4+njk7Q5Y4xaGB6EPELw4LajevyyFCgDqQpvJ5OCYA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: looking to "yoctify" mips-based ubiquiti edgerouter lite
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
X-List-Received-Date: Sun, 21 Apr 2013 23:34:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Apr 21, 2013 at 3:53 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   bruce ashfield will know what i'm talking about as i've been
> torturing him over the last few days with this cool, new 64-bit, dual
> core MIPS router that looks like a perfectly respectable replacement
> for the current MIPS yocto reference board, the routerstation pro
> (both being from ubiquiti).

Indeed! Over the next few weeks, I'll have a meta-yocto-bsp and linux-yocto-dev
support for the board, and once that is done and working, I can throw the switch
and make this the MIPS hardware reference for yocto 1.5.

So if anyone else is working on this, let me know and I'll keep you in the loop
on the development of the reference BSP.

Cheers,

Bruce

>
>   this is what i'm talking about:
>
>   http://ubnt.ca/en/edgemax/61-edgemax.html
>
> salient specs:
>
>  * dual-core 500MHz, MIPS64 (cavium octeon+)
>  * 512MB DDR2 RAM
>  * 2 GB onboard flash storage
>
> anyway, i wrote a bunch of wiki pages on it starting here:
>
>   http://www.crashcourse.ca/wiki/index.php/EdgeRouter_Lite
>
> i've already downloaded the source so i have the kernel and the
> .config file and was interested in building the toolchain so i could
> at least compile and test the kernel.
>
>   i know next to nothing about MIPS but, based on what i've read and
> the possible tunings being:
>
> AVAILTUNES += "mips mips64-n32 mips64 mipsel mips64el-n32 mips64el
> mips-nf mips64-nf-n32 mips64-nf mipsel-nf mips64el-nf-n32 mips64el-nf"
>
> i would think what i want is "mips64-nf", but anyone who's a MIPS
> expert is welcome to correct me.
>
>   this seems like a perfectly respectable MIPS platform for
> experimenting, and it seems like it wouldn't be hard to come up with a
> yocto machine definition for it.
>
> rday
>
> p.s.  one of the ubnt engineers i've been chatting with is adamant
> that they're keeping the price of this thing at $99 USD (MSRP), so
> it's certainly affordable for hackers.
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

