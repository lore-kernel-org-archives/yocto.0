Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26D6AE00CF9; Mon, 25 Apr 2016 01:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74977E00CA1
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:33:16 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id e201so77095084wme.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 01:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=O2bW2qnbY9Nob9HXfflh0mW8ttumhbbplDiMrdhmZJg=;
	b=gbyPoEFYxyWbT5f/cjFVGKGDSR1Q/cqjX3yRxbS2o6fG0svwhIEjO5njTirqeS22ly
	I2+mM7i+nWqF8MGmBnrIaejk3Y9aeq506ShNXi1Tt/AUwv/VXuFYBayDWWq6tuAO3DMv
	FFpTO2tbXfO7AAgE0BSLYcW9sPUq90Efp0MLXiuy5FnyA5nL0yOhKqmI1CkseOqb5Bas
	uPOTvqvYZyzvICnab/8UgUnLT3oD9SyjMgyYeQMmcY1SupDAC/eFqWM+dth595+Jhm9G
	CSUFD+8YSVydGqpvzjqH/Rvwp2A9wAHe3UVBYaioMoD/GIzo6S+VREbutsJaOWMTFr6g
	NEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=O2bW2qnbY9Nob9HXfflh0mW8ttumhbbplDiMrdhmZJg=;
	b=DqPwL+wxET5UsbmtaR7BXKKtnsbORbpshQIFryF8i06Pvdvff/V0qEYpo7rbeeLmiL
	edn/Fblj0sGNnfo1DKomgcCahjDUAFPkRnd8AgruycA4fMegMwl/vp6kjIOSiDdWvJ+K
	zwu8JSrmYSsyV9YvPewkiluPgWRaM6fI+nGGLeGz9KHaZuUGNHJxHPScE7mhB7yVFWdw
	A3WBdSdtkeA8QRgHB3guHHfaCW6gqact1BYjwcSrToKfWPr5YFuBvDKmg6vvdlXX6zHh
	j/kDzp3IXbFJxqXD1CdrUkev1MzBQzJ8+zzMPUILLpHlhKJEZQ7qEO6u2A/qh/8lsxtl
	GNMQ==
X-Gm-Message-State: AOPr4FXpveIRrkCT6/MRMN1D9O9KtJc+R8u+5cg2xIYHp68YKHf5ioEKCv8sANvx840n9g==
X-Received: by 10.194.176.129 with SMTP id ci1mr32601471wjc.166.1461573195722; 
	Mon, 25 Apr 2016 01:33:15 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	o73sm17546991wme.16.2016.04.25.01.33.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Apr 2016 01:33:14 -0700 (PDT)
Date: Mon, 25 Apr 2016 10:33:12 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Steve Rae <srae@broadcom.com>
Message-ID: <20160425083312.GF26977@resin>
References: <1453755618-11640-1-git-send-email-srae@broadcom.com>
	<789D469E-10A9-4DC2-9232-2955580421CD@gmail.com>
	<56A6BE9B.9050207@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <56A6BE9B.9050207@broadcom.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot-rpi2: use the upstreamed U-Boot
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
X-List-Received-Date: Mon, 25 Apr 2016 08:33:19 -0000
X-Groupsio-MsgNum: 29612
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bqc0IY4JZZt50bUr"
Content-Disposition: inline

--Bqc0IY4JZZt50bUr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Steve,

On Mon, Jan 25, 2016 at 04:32:27PM -0800, Steve Rae wrote:
>
>
> On 16-01-25 01:32 PM, Khem Raj wrote:
> > Hi Steve
> >
> > > On Jan 25, 2016, at 1:00 PM, Steve Rae <srae@broadcom.com> wrote:
> > >
> > > For Raspberry Pi 2, use the U-Boot from "den".
> >
> >
> > Can this be done by using/extending OE-Core recipe please ?
> >
> >
>
> I modelled it after the existing RPi recipe:
>         diff recipes-bsp/u-boot/u-boot-rpi_git.bb
> recipes-bsp/u-boot/u-boot-rpi2_git.bb
> sorry -- I don't know enough about this to answer your question...
> Which recipe should I "extend"? Could you please provide more details?
> Thanks in advance, Steve

Khem Raj is proposing to use a uboot recipe from oe-core
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-boot
and extend it with a bbappend to include rpi support. Is that possible?

P.S.: Sorry for this late reply. I'm trying to catch up with some old
threads.

--
Andrei Gherzan

--Bqc0IY4JZZt50bUr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXHdZIAAoJEHO76Gt+erfPdl0P/j1Q7Ww5TFKL+vaTyi1nhBQD
DfgN3VakRs9ZuHvgcNyRChQVEHr8nbQyDK3csoa9EUCWmkHH5NcnGoYFBOJRSJ1X
SDykCRlrYd+DDJWiiEeN8n0Ggcxjwm0jcBMLXzmhbUqk0Pw4iegNlAsRmjvYJsRs
Na2D8h5TO7tQtU0g+CupD2Fn9Tr0MANf2kLp34IhkOv58iL5a6RDhtszfUoBbXh4
SOa5ld1GQcIA/D97RUwgm3hnRPzkrC37tWXJBoFCj7Qg1iVHP/GEsQasYWNBDGLC
/uOXcqEdfyWUM0YW37+IbW2zJe0wC/H/5rby9r+fJM81OcOxZ0aPQemTnhRTkEZG
0uSx8iUOtPbTrKpHvgNGtc0MJ+n/cTDAYYQpDRkKtW/7/mBCUhCkvH27L7nAJ2t3
bt9ByjYyFMv/c0rMvsIW0ROo0jWE3eJP3eM0jA1TmZejamrRIpYNOLzgJRwpSL+t
1mnh+VWAcb8EPcYpPZk27fJXRXqAIgjDRi1TJgEDDJE5gPhPsrWDOsZDpTxfy1et
0QGlvlP0IMRv40Br8DLTwgSAu5RDSZ6fXdNxezFOQrj86a7N6Ehuy/7Un+0G7l9U
GHoJ37rGq06sN7to4UauaffAvyRMMSbqWHozzWeW4gunG7rPQiL4Y/bJgQYwyUyO
bsDcg5oRAvdm1Grxt5pO
=8mk1
-----END PGP SIGNATURE-----

--Bqc0IY4JZZt50bUr--
