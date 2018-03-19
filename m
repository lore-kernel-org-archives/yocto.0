Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 115CEE00C76; Mon, 19 Mar 2018 13:47:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 913F5E0070F
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 13:47:28 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id j4so19495975qth.8
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 13:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=t85aY+BWR84/b7U3kWZO0gfUVPLbF9MtMUu6XRIy8SM=;
	b=JJZhGlhvVHLbC6ltBIHskHY9q0E3c+pvHya/MFXQlgPTZCxH5HjKA6AJdDEDn80k7h
	QcoUVKLBVmBqLbEMdSfoIpSz3XGjD7LuNX72dJ8pE8F3qg29f7fkyk5nXW/tisM+YOJm
	NgeDsUlkj8uTI0GHIBz6FPRRO6TU26/FgdU4U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=t85aY+BWR84/b7U3kWZO0gfUVPLbF9MtMUu6XRIy8SM=;
	b=BYUyddBEvIJoTt4J6uvWUz2O4fEjw5XyDcDe7G4g66WL83sSgDYo3V0OrLw5CL+M9L
	3Xu0RuhBl9YhOii/DppZ5DrOAAt1PadRhmUAfzlN2gXt2x3WUy8Da4dVnkRP0AcwW9Qi
	BaXm/GpyYL9soqJnIWheBAGyb5Kq46x4v4w10XGVjNYHml7h9NK0yTJKz5ivBIr3xhFw
	fPD8Pfwv/Ppi/1TQWlwsTvSMdFWqQQdCeycFMm7i1HZPQcM+WDWXQkmZo2M0fWfPdDrO
	uZkyQWvjsxSRs6ruRPiiLPr1eefx9iyf3yQzxZ+3AHaSoZ1QzEwMoXQrSWJ6EMQDx7bu
	lYUQ==
X-Gm-Message-State: AElRT7HI59FIWMLquDgeGdF5RXul5o2MzcQZIZYVfm36k+FuD4xmf7/Z
	jjmBvpt0A69ckHiheQOREDzLMw==
X-Google-Smtp-Source: AG47ELsUvQMm4zbgfatrMXLW8FpaDW4y8zr78kvuXOF4eRz/pLQDI2zRNTS29K3TsUCMRBxY5EhN7g==
X-Received: by 10.237.36.167 with SMTP id t36mr20660922qtc.136.1521492447553; 
	Mon, 19 Mar 2018 13:47:27 -0700 (PDT)
Received: from bill-the-cat.ec.rr.com (cpe-65-184-142-68.ec.res.rr.com.
	[65.184.142.68])
	by smtp.gmail.com with ESMTPSA id t43sm59822qte.47.2018.03.19.13.47.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Mar 2018 13:47:27 -0700 (PDT)
Date: Mon, 19 Mar 2018 16:47:25 -0400
From: Tom Rini <trini@konsulko.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Message-ID: <20180319204725.GA4418@bill-the-cat.ec.rr.com>
References: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Quick hack for compiling old and outdated YOCTO Jethro for Renesas iwg20m
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
X-List-Received-Date: Mon, 19 Mar 2018 20:47:29 -0000
X-Groupsio-MsgNum: 40324
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t+hlxQ2APDzOSz17"
Content-Disposition: inline

--t+hlxQ2APDzOSz17
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 19, 2018 at 05:38:47PM +0100, Zoran Stojsavljevic wrote:
> Hello,
>=20
> I have to do some job on the Renesas iwg20m platform. From this site:
> https://elinux.org/RZ-G/Boards/Yocto_2.0
>=20
> I found some explanation how to do YOCTO build, which I a bit modified
> (conf/local.conf).
>=20
> It does download all the packages, but it fails here (in *RED*):
>=20
> [vuser@localhost conf]$ bitbake core-image-minimal
> WARNING: Host distribution "Fedora-27" has not been validated with this
> version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.

This is your biggest warning and source of problems.  If you have to
work with an old version of Yocto, you need to setup a
VM/chroot/whatever of a supported at that time host distribution.

--=20
Tom

--t+hlxQ2APDzOSz17
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJasCHdAAoJEIf59jXTHXZSllAP/0EzYnYtRX1rXNp3D0wH++N4
Q7ZMlLsfN7y/x0NNabjGdK4YsXqwBWMlVK20xUxG0xQmUotHg7JrYFDWbYvye9OQ
N+RsfOwKgMIEdz1MXB0ZAMzibW/zDBCO+FhyCHUGszLNmLVqplFM4FD99Xa968QX
DOp7siZCjORldZp7gwyR8oHFNOaTlaDdLIRPQvGWBqwdsbC+xaJsbJSuqcYm8rjF
VXKhubBrpxanORE+iOq21oXg1r9GaGaJ3bJaRW8kOEcEJi6/qIAbu25m33C3yGTf
5CuFMv73wVEZJBdDn5qhCkSyJLogFvEAVxVU5QpJE5BoV/4OGkg38h5EJ+DQ8hrB
WNhD1UfGE4Wm3h4OXQPAnMZargJlnups1pF5qP0r95Qvs8bGlSW5GNWtoumazTuf
0GtWzQ7RDCGBGr5N/X6ERlkHO7aWgcrJI9fDm8x/sSqpKt0TKz24xLUeEXwr8/pY
AuUWcGzmhVWcbIddapwCBMAWINWcjbO8VSg5vQaXizCNiJUs9p3hVss2IZSSf2B/
mz1A31h+A9kd6Q3RfOo90His6MNhTk3mePlsg66k3XsbdTtmjy3VXmSgsSGGDy7M
uaGSBYy6OjQHsu6Sl5OgRqYJtF8aNOyyGGM0RUVgsugIjUqPA9L2X80jGAie+EX7
jvF9IdRaksWUe+LC9UT/
=FOhs
-----END PGP SIGNATURE-----

--t+hlxQ2APDzOSz17--
