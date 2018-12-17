Return-Path: <richard.weinberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F29ABE00C7D; Mon, 17 Dec 2018 04:25:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (richard.weinberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD73DE00C5F
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 04:25:53 -0800 (PST)
Received: by mail-wr1-f66.google.com with SMTP id t27so12074096wra.6
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 04:25:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/Onsm+LP7BREy5XakWIi3ocCdEhiEDStV9qyR6DxPfk=;
	b=r7DgsBGlRf+RmUKyhOGgGXY52V7s4Af5sqHuhwXftrTL2/z3jkY3e15q7dl9eOkR7R
	yW2QJgDn95nBxW8qCnqRnUBfjfA0YvUOoTTdMn/isWv6F07p2mblqh7Gipm3Vwxd8UEB
	7hAelqAeTILxTUik1uvhQz1MfVPvRGFTNmdmRM+bXqn5ZRBSKSr8BQ1CaosTcuN4KGMs
	ADabw1rqEs0u75VPPLslMtfVW/3WlxsvxRoYODCj/i2OCxTgelU6HFh44dtVsbLj6o48
	G/7SgMsfsvFXLFiKtxCOQf2mh1r/FsX6UNcQ0XM2XRws5MKD1JMAD80JO+m6J1VWjEne
	7BVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/Onsm+LP7BREy5XakWIi3ocCdEhiEDStV9qyR6DxPfk=;
	b=AGn6zSF8WaoqxsvjTU4ghrQngTiRFCBoOm3V0jUH3eLon2sEX/vjNfNwknmsVlY/AP
	CZyhw/tetoi1hmLyz8ar/o/y+vgXqerPkVStKsbcMv5PhNTMpwgcr8pE6l/G9f0eFFyV
	sOQ6svS+LoLnB8EYeZNjEc0H+t9IqLXs8yqYkFHoI7Zv9COn8HCp/V192NohkROqCTcF
	TNd58iftxDvPoH2Kp+UKGTzIQrAbuIq0i4lNVKcsSaKsVuOZWvD2o1qDtiZfJzTw0MTk
	m2EgZ377/W6pKunXaoyxTijmJSQtEPvxSJ/stzklXv1WTp0skKjmou3yWvBNs6o0/JHo
	5v8g==
X-Gm-Message-State: AA+aEWY+hvUsc/94/pbCQigzM1GZEEeg5+d0RqwAHytrPu5rngoQJbHj
	TgJbawPPSxsOfJQTnIl3fTIMcq/GOR86pvwIBhynCPB5
X-Google-Smtp-Source: AFSGD/Uv2tEojJWkFwjtRMebOrH24A0S5s2zMo7GxGcv2lDBSLBWxLN6S4BwgjXxBlTpYEUUlKdJQ32KBAiL6Wk0WfI=
X-Received: by 2002:adf:ed46:: with SMTP id u6mr10903782wro.262.1545049552738; 
	Mon, 17 Dec 2018 04:25:52 -0800 (PST)
MIME-Version: 1.0
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
	<d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
In-Reply-To: <d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 13:25:40 +0100
Message-ID: <CAFLxGvysO_g2z0f_50NO4iqcdFRN5YTzHpTbLHp4Va9jACai8w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 12:25:55 -0000
Content-Type: text/plain; charset="UTF-8"

[Resending with correct mail]

Richard,

On Mon, Dec 17, 2018 at 11:34 AM <richard.purdie@linuxfoundation.org> wrote:
>
> On Mon, 2018-12-17 at 11:26 +0100, Richard Weinberger wrote:
> > On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> > > The system can definitely do it, its just not something we tend to
> > > do
> > > very often so its not entirely clear the best way to do it.
> > >
> > > What may work is selecting the i586 tune from an x64-64 target
> > > machine?
> > >
> > > Copying qemux86-64.conf to qemux86-64-2.conf and changing it to
> > > have
> > > DEFAULTTUNE ?= "i586" did appear to start to build at least in a
> > > quick
> > > test here...
> >
> > I went this approach for now.
> > That way I get i586 userland and an SDK with both 32bit and 64bit
> > toolchains.
> > The SDK offers me multiple environment files to include.
> >
> > What I don't understand right now is, how can i tell the kernel
> > recipe
> > that it has
> > to use the 64bit toolchain to build the kernel?
> >
> > Any hints?
>
> I think (but am going from memory) that the x86 toolchains can generate
> 64 and 32 bit code with the right compiler option. The kernel just
> passes in the right options if configured to build as 64 bit even if it
> has the 32 bit toolchain?

This was my hope, and this is also what I get when doing such builds manually.
Having a x86_64 gcc and building userspace with "-m32" appended.

Yocto seems to try a different approach.
When I use qemux86-64.conf with DEFAULTTUNE being "i586" it generates a 32bit
toolchain by default.

Build Configuration:
BB_VERSION           = "1.38.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "i686-poky-linux"
MACHINE              = "myqemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "2.5.1"
TUNE_FEATURES        = "m32 i586"

What I need is a x86_64-poky-linux toolchain with -m32 set for everything except
kernel (and modules).

-- 
Thanks,
//richard

