Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE3C5E00814
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 07:50:26 -0800 (PST)
Received: by mail-pb0-f44.google.com with SMTP id rp16so2671220pbb.31
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 07:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=URLLjDUDr/9DvWr5+iaO8R678u10/MZUd2TDRiJ/Kv4=;
	b=gFTBGIQDyDG8+/I18PamyRLPyn3pqkmbuwWKDmbRharoqVL7uGyMYOvwxhnFTQmdqd
	/qsYCAvbT5srJqXUyOc2GjXRECJ+/dFJgqChz7sCub/Oqv7dMPnAZKCvN/FE2VyvtI+O
	AqpBkRDY8/3QmpUn7SzD0iHJdFso3e4vFZ9rSghVeaVlcXCYCdJ84lxHKWZs7pIEfcYp
	ipJCTprqJ/vfUvULaMzYP9sympQhzGWfhWhOB0GmKd5RJe5FZUt9V4PS58PdI28kab/8
	WC5FSHeBFC38lmuZoVbZVry5AG13NcSTfe9eHICLd5Hfb7fax5xy//omDKb6rwOEgCuJ
	l06g==
X-Received: by 10.68.247.201 with SMTP id yg9mr14172287pbc.148.1393516225869; 
	Thu, 27 Feb 2014 07:50:25 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	ou9sm14692043pbc.30.2014.02.27.07.50.24 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 07:50:25 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 07:50:22 -0800
Message-Id: <B124B2C9-2644-4E26-BBD2-D465284C00FE@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 15:50:28 -0000
X-Groupsio-MsgNum: 18239
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2C0B132E-D860-44CE-83D8-F17A37D3E82D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_2C0B132E-D860-44CE-83D8-F17A37D3E82D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Feb 27, 2014, at 6:16 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk> wrote:

> +PR =3D "r1"
> +

get rid of that

--Apple-Mail=_2C0B132E-D860-44CE-83D8-F17A37D3E82D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMPXr8ACgkQuwUzVZGdMxTWewCeK7Prbyp3p60qY0gHlOU6Wbh8
WtwAn3NLMCPtk5Ep55S/zIOF8LTdR39X
=90MG
-----END PGP SIGNATURE-----

--Apple-Mail=_2C0B132E-D860-44CE-83D8-F17A37D3E82D--
