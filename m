Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C84AE00C90; Tue, 20 Nov 2018 15:55:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3CC2E00C89
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 15:55:37 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id v6so3763794wrr.12
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2018 15:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=KBemyXyUXsuLYwd2DazA+Uz3mB0FKNLZCEB03TOGyU4=;
	b=cEtx0jiCqdEsDtDaDg9IeT61D1KWsW1D+5L9XQY5c1vFD1OYqZ+Coay+LObpNKigtp
	DZAln5dNY/yYnP/B8YO2Le2ahkmhUVrhp8t1gAm+BY2yJqjHQoEgcDZVDWu/epYJUsA9
	1lWD3QPNFijGr/X1JhtQrRx/i2vHG8/fpIPOU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=KBemyXyUXsuLYwd2DazA+Uz3mB0FKNLZCEB03TOGyU4=;
	b=h5h8uPJJ5UspcaQEu0BT3uDLAmPCxqxmbUyHD4Fuit565+Xj85tCtQTW19bol8oi1F
	GODDVJ79N/sRUy268MjuVX58aeLh5oZ9FIRfwzj/wLQbkEC1SaA8jXkjJjuZRgzlv8cH
	1SxZlLc8tXdsyxdIOrw/AE2k+FUCyETH6VXmW3okJfnZ4Ua0VgWpwWZ2ED72x9LoY94o
	hyTyTskeGNt/wbeP8o71fyY9JEjAYA+oBIDFcuvmrrrlpm3WyadZZJ0rS1zXl9cJVPL7
	FlyqKKKYnnieHXUyl3wqSyHDZljHCttVstBF3fZYcPu32Xpi6YqtQhngCOiimyRlW3e6
	Y4iA==
X-Gm-Message-State: AA+aEWZAmP1T+FYmpQGaX8jFW/a75Ej5zfFeJomq4oo24IBzD3Ggb3AF
	Lj21BWJDt1UvT7fQsppDJaHeaA==
X-Google-Smtp-Source: AFSGD/Xy8LJxnmLMeNpc2e8FOO3HXx6jI5Jqjk3ZH+YNFf+b2OlaQyzb2eqspVAE5ylAml3NJJxjoA==
X-Received: by 2002:adf:dc43:: with SMTP id m3-v6mr217491wrj.107.1542758136349;
	Tue, 20 Nov 2018 15:55:36 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	4-v6sm27375779wmd.18.2018.11.20.15.55.34
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 20 Nov 2018 15:55:35 -0800 (PST)
Message-ID: <349b18ba69681090a1236d026949ed23fd4f00fb.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Date: Tue, 20 Nov 2018 23:55:34 +0000
In-Reply-To: <6e014304-0816-d141-2e9e-4e5ca168eba6@gmail.com>
References: <545a7e8a-5ccd-c8b8-6b88-0b6f1723f794@gmail.com>
	<1542539495.3707.2.camel@gmail.com>
	<41694628.BEkiBNE3Gc@localhost.localdomain>
	<9139d99908dae9aa03be1ae5cf07720206c9755c.camel@linuxfoundation.org>
	<6e014304-0816-d141-2e9e-4e5ca168eba6@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: Re: Yocto layers missing thud branches
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
X-List-Received-Date: Tue, 20 Nov 2018 23:55:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2018-11-20 at 16:21 -0700, akuster808 wrote:
> 
> On 11/20/18 4:05 PM, Richard Purdie wrote:
> > On Mon, 2018-11-19 at 09:47 +1300, Paul Eggleton wrote:
> > > On Monday, 19 November 2018 12:11:35 AM NZDT Max Krummenacher wrote:
> > > > Am Samstag, den 17.11.2018, 15:50 -0800 schrieb akuster808:
> > > > > Can the maintainers of meta-qt3, meta-qt4, meta-selinux, and
> > > > > meta-cgl
> > > > > please add a "Thud" branch
> > > > > 
> > > > 
> > > > While at it, the following patches declaring thud compatibility are
> > > > not
> > > > yet applied:
> > > > 
> > 
> > https://lists.yoctoproject.org/pipermail/yocto/2018-October/042780.html
> > https://lists.yoctoproject.org/pipermail/yocto/2018-October/042922.html
> > https://lists.yoctoproject.org/pipermail/yocto/2018-October/042923.html
> > > I have just taken care of meta-qt3 and meta-qt4, FWIW.
> > 
> > Given we don't test those any more, should we be pushing these new
> > branches?
> 
> Are the branching schemes in sync with what we test , build or both? 
> I think we should be clear what is built or built and tested if there
> are exception.
> 
> 
> The 2.6 release notes called out so it may lead to the conclusion its
> tested.
> 
> Release Name: meta-qt3-thud-20.0.0
> Branch: thud
> Tag: thud-20.0.0
> Hash: 02f273cba6c25f5cf20cb66d8a417a83772c3179
> md5: 7b73bf1132428ea898938b03815cad21

Scripts may have put that in the release notes and even done tagging
but I'm fairly sure it doesn't get built or tested...

I think processes are being followed without review. Yes, I probably
should have caught this before now but I'm not alone in that :(.

Cheers,

Richard



