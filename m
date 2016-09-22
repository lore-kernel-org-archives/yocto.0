Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7257AE0086B; Thu, 22 Sep 2016 08:29:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35C5BE006EE
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 08:29:20 -0700 (PDT)
Received: by mail-yb0-f176.google.com with SMTP id x93so55306472ybh.1
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 08:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rrCLG5+O8y1Cg9EWWCghbyKerqa4sjsSe1GIIVHl5yQ=;
	b=NI+mgEszPeZ8U1JGo463npL/15BP6VOWCv7pOjx8o/E+tXqnarzE1s3QuBdsy8KhiO
	Cco4NfZ070OrEkV/lFGuDshnZVhSqs/G+PUDKn29bZCJZ6rrbUlE1M5Hpf9vKdW+HFH+
	Hybpzv+rpiY5k6/rLYQpgBnPx0WqwGg/l2k0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rrCLG5+O8y1Cg9EWWCghbyKerqa4sjsSe1GIIVHl5yQ=;
	b=jcK89i/BLBap7NUo+/QJ0h2ecXX6nmAzHRC/gwm88DdVPxp61hWQaOGmNGZV5i5Xa8
	cNkGihF7ZMgfIhJH6VJD+iG3zZNB5NydEzcNzxcHBSjlRc6fM96EdfkglsoGDK3OxTaX
	/qHVUpEAWlZO/MSr3hNhc6/b+D9FO11actDeADozx/sQDuKPdh0+Kc+RuydmHJuCTOdF
	3umscPNCW2nlNC51IBG59Q/RZap/bMD9zdsv3ug7GkuolraNqUuiE+HZkDXlf4cjcJXJ
	/vZR8rt68CSiuKOurg3HSP7RcGz0u/Q39+wPUwQyF/vjBlIA2uDeFutrcMOVOzyteCMe
	uH9g==
X-Gm-Message-State: AE9vXwPalHfcoSHejAi3GW1vRimW0ey9TOnkMJzsiOCbxcZw4VZPmqFLdoK5Krqe1VZLpw==
X-Received: by 10.37.38.78 with SMTP id m75mr1992860ybm.150.1474558159355;
	Thu, 22 Sep 2016 08:29:19 -0700 (PDT)
Received: from bill-the-cat
	(cpe-2606-A000-1407-C0E8-656F-56CA-EE77-7C86.dyn6.twc.com.
	[2606:a000:1407:c0e8:656f:56ca:ee77:7c86])
	by smtp.gmail.com with ESMTPSA id
	l127sm780874ywb.23.2016.09.22.08.29.18
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 22 Sep 2016 08:29:18 -0700 (PDT)
Date: Thu, 22 Sep 2016 11:29:17 -0400
From: Tom Rini <trini@konsulko.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160922152917.GP4814@bill-the-cat>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
	<CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Thu, 22 Sep 2016 15:29:23 -0000
X-Groupsio-MsgNum: 32053
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i7KxW38SoMauyveo"
Content-Disposition: inline

--i7KxW38SoMauyveo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2016 at 11:39:48AM -0700, Khem Raj wrote:
> On Fri, Sep 16, 2016 at 2:01 PM, Mont3z Claros <mont3z.claro5@gmail.com> =
wrote:
> > Hi all,
> >
> > I just finished a first beta version of a meta layer for SBC pine64.
> > You can find it in  https://github.com/mont3z/meta-pine64
> >
> > I'd appreciate if anyone has any comments on possible improvements. A
> > major problem I had was the necessity of two toolchains: one for
> > compiling u-boot (32 bits) and another for compiling all other
> > components (64 bis). At the moment I have a very ugly hack to do it.
> > The 32 bit toolchain is an external toolchain and I set PATH
> > environmental variable in u-boot recipe.
>=20
> I think it would be desirable to have single toolchain, u-boot is a
> stand alone app
> in general, if your compiler can do multilib builds for 32bit then it
> would be possible
> to build it. May be you should work with the toolchain team for pine64 to=
 see if
> that can be done. It will simplify using this layer.

Actually, pine64 has a 64bit U-Boot, I think maybe the layer just needs
to be updated to use mainline (or v2016.09.01) U-Boot.

> Other option I would suggest to build u-boot externally for your SoC, we =
do
> not necessarily need a bootloader for building final images anyway.

Well, you do if you want a bootable image to be made :)  iirc all of the
models are SD card only, no eMMC so assuming firmware "elsewhere" is a
bad idea.

--=20
Tom

--i7KxW38SoMauyveo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJX4/jNAAoJEIf59jXTHXZSxDkP/ibwBWMDTLwr48IlXs9HGPhA
WZ84dREpKAA81qdVDtSjHd7TRKCAGnL81lBjzfZux5/kZEGqSDv9XkXaODydZwxb
9PtomluAWYojTj7yhhGCWZxjMBUV1p5Uc3Y6mIqnvXXnlfTSVCTcfiSLci2wEUvh
A3JNB64iBzutkQHYnyYzlMv5+QDE+p2lGErxiMwfpmUIt03xwpd3r+raEfXVo7c0
0WYQGwdGrMafd62JyJQ1njDlA2gjjAJ3QZaVxvG2TmLoYf95PJ3AvFZgUtsyTGFx
r5OQEpxyIE5SHuaWTTKBSPNjtzF9NYOTZpqJqQjeSEQ/AgWeEJgRVwZOrIz+utzY
A8vr/QSgVP8szb7HYcdNjYpD0yeQesR0FGdzk+F6mMlUlMfUKWtE5FQorYDs0xhX
anCgvGgPZ+oJEqOcpevsjd8u6wop4/RO/jaK36WIW6Q+vbA9jcISfMvrkZK2LL82
byjmD0ZYABElhvtGmJrDoqKI5rl/pTVLgRkeWXhhZ/AmX4VpzVGkVH/4B1v/Y0Xb
Inrr9YFcOfE3FKorslVQ9z1t37yze9Z15MGht4gSL++SOpKCPnrlm6cJPmLshBg6
qfDwv707qxycV8lKGLNrvzKqbujJHovmeVeo+XfmKSFzXHiTkPCWRpSVKScJiROK
redJ3NCY4qRV7pF2Gv3w
=IDgM
-----END PGP SIGNATURE-----

--i7KxW38SoMauyveo--
