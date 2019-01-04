Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 729CAE00C4E; Fri,  4 Jan 2019 04:10:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE004E00BE8
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2019 04:10:47 -0800 (PST)
Received: by mail-pf1-f193.google.com with SMTP id u6so18227933pfh.11
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2019 04:10:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fdvhDIRd/d3Q8Yjh6EYZW4qh37hsbk/mNOu51aDp/ZE=;
	b=DGHDp2njMSK+0ZAV4PfIE25+HKscfSTXe2YSvFlCQwcHxbbTEsS2+LvHDbTBNqI5aW
	oOhWXR6ViIIQZ6yFWcWzuUFUUMlhwksM65dLHhcFVaArIsAQH41kofLI2tT7h7u+U+Iw
	qwNpWVPj2lpSIL0hcRjgMy72V0vz5XeWFw6MUpW5cQoucyUCm86QIHx47Xh0OUlBRiSQ
	qYYJv5o/CzgZOweCgXrrnVloGQuP/JlNpV/qy/jezoE1JRKtwzSbYmw/QFZWoPyYqW+k
	dAdlOFdPFHg1dAqv1OkPwYp3oiagUK4AsKV/NH5M1fP6evUfxvcYYW5cfaSUkR6rH/Br
	oNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fdvhDIRd/d3Q8Yjh6EYZW4qh37hsbk/mNOu51aDp/ZE=;
	b=BU4yTgKIsBuZ2CJk3hR+rKJ71kt/gZuJkF0oLzzf4bBFOANSbAxOlh8xF3aU5uvhbC
	7yL4ES5ao10VIYSmz6kufowLcS/omhOAr+eacegFaDbxop14QQAv4tjriNoA4LZbJYsY
	bVYpUC4QicfJy8HqxxME6MhApVC0FRdKTKz3Th7xrpWTLXZBIM7n0iTLf4SDnBb1hgxh
	lN1NKuk2jvUneq7TCMtiQ/vk6FWgrkHLnEZvB/lHx/ZJGbU7qqxftcK6aa+3f2/0od59
	9qKSHSpfYGwj5Xqf1r1uFKIDbKjelNnQBLjCpK/bLjLdGd67Nwa9tFQe4qiidzPgZEOC
	0m4Q==
X-Gm-Message-State: AJcUukcPrvv6puSiiUyp2FKkXsYDyaV+1reJ/NG6ifLw/b/iByPyV6ry
	834WYXbJLaWPTv6x4IJPQrl765ysBtZyuF9GBxo=
X-Google-Smtp-Source: ALg8bN7s4zTSvseJuF1c+HerrUp5vqX3sKTxecqw9XIrKbVo95XkcK5VrXabTTywK22YHmlH+FO+dsxpqcCEe1ZapmA=
X-Received: by 2002:a63:df13:: with SMTP id u19mr1443538pgg.294.1546603846846; 
	Fri, 04 Jan 2019 04:10:46 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sooPOtN-Y=0_cZ=Qv2viS5mwJAsm+yVsHpOJ5gpN65eZw@mail.gmail.com>
	<20190103225915.GB29139@localhost>
	<CAMKF1sqhDzQL9P1Vaw5Xczo0co_=NcP1-efnzW=tDnJT9cAq_A@mail.gmail.com>
In-Reply-To: <CAMKF1sqhDzQL9P1Vaw5Xczo0co_=NcP1-efnzW=tDnJT9cAq_A@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Fri, 4 Jan 2019 13:10:33 +0100
Message-ID: <CAAQYJAu+vBmZS731cd=0erSMMK3P6XqhkSGOH_5S=WEM90E3eg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [Openembedded-architecture] Dropping armv5 and armv5e tunes in 2.7
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
X-List-Received-Date: Fri, 04 Jan 2019 12:10:48 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 4, 2019 at 12:21 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> Thanks Adrian
>
> On Thu, Jan 3, 2019 at 2:59 PM Adrian Bunk <bunk@stusta.de> wrote:
> >
> > On Thu, Jan 03, 2019 at 02:01:42PM -0800, Khem Raj wrote:
> > > Hello All
> > >
> > > You might have noticed a recent commit in gcc trunk
> > >
> > > https://gcc.gnu.org/git/?p=gcc.git;a=commit;h=b232e6b58e3766bc66fe08fdb7bcba1bdadda8a2
> > >
> > > Which removed support for deprecated -march=armv5 and armv5e, this
> > > will be released along with gcc-9 release which is upcoming and we
> > > might be able to add gcc9 to 2.7 release or 2.8 release for sure.
> > >
> > > We still have non-thumb tunes for armv5 and armv4 in our tune pack, I
> > > would like to propose a patch to remove them.
> > >...
> >
> > Note that gcc 9 does *not* remove non-thumb armv4 support.
> >
>
> yes that's right. However, I was taking this time to find out if we can drop all
> the ones besides armv5te even if gcc supported it unless there were OE users
> who are still interested in supporting them and had devices running OE
> which need them
>
> > Non-thumb armv5/armv5e have been removed due to
> > "have no known implementations".
> >
> > Non-thumb armv4 support was deprecated in gcc 6 together with armv2/armv3,
> > but there are still people using recent gcc on StrongARM - which is
> > non-thumb armv4.
>
> OK, that's a fair point, however, in OE's case I only have reports from users
> with armv4t devices, but it we can keep the armv4 arm-only tunes around along
> with the arm-thumb v4 ones
>

Khem,

on the kernel side it looks like RMK will not let die amrv4 so easily...

I still have around that Zaurus collie sa1100 armv4 and I think OE is
the only toolchain offering EABI for armv4
My plans were to lead it up to the upcoming linux v.5.0 so it should
not take long.
But all this is for fun I higly doubt there are still 'users'.

So IMHO it is premature to remove armv4.
Cheers
Andrea
> >
> > > Thanks
> > > -Khem
> >
> > cu
> > Adrian
> >
> > --
> >
> >        "Is there not promise of rain?" Ling Tan asked suddenly out
> >         of the darkness. There had been need of rain for many days.
> >        "Only a promise," Lao Er said.
> >                                        Pearl S. Buck - Dragon Seed
> >
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

