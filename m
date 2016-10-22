Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84F6AE00712; Sat, 22 Oct 2016 09:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02A3AE00510
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:47:10 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id e6so74020219pfk.3
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Y4OobAgnAbGpPeBD08efomD2xf2ko7UORy8PcC0ouIY=;
	b=vnFAa3m8dCIhiqlFHbZCfJA0FvQy0nQ0p+VejSXzFqHPvZzYF0P/S4JiXvEETW5uBX
	Z7EPtkecLxs6jSN2ShrBaR1/QWs1HZKJlFTds0Kn2DVtKEiLDCFss9YbTa2AN6aQy3Bs
	w/tl/JV78mHow/DyrQ1z0zjxpX3hRRPj4sRJ0lnMWDkp3dz2V77DSxCOcSSqJ+CCZkrY
	claaOwwIKH7hqupJiNyz0f8hWlcGvCRG9E5Gmdp56gO6Noxr/SAhrBMlCBP9nnNZV0Ol
	Dza1nAn51ivMRjs12qQeoWpkgzVgYIz79LO+gr8PPTe797AXdnEy0nFYDt10TUa0WxMH
	eKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Y4OobAgnAbGpPeBD08efomD2xf2ko7UORy8PcC0ouIY=;
	b=XeGgNc0FiPj38LWzKpp5AGXd5vo2E1VRpjdqF2WuymcUFCVbryadL/NQG2CSyBMZwm
	HulZtw6FAZ9MJs9x0jh95m6Uufu2/EVYBniQ0UU1kaln9hMp4/1AebL17cEINAK9u8bH
	9g9o7Tt85+96FzT4KOGDsRZfVmGDQ4PyB0ZJmWY0o54sTgVuNE37hMgOSiSe4xVdBKPm
	NYd7c/FZWWup8FX+PEmq8rQEbwuC7c9m0HPDg1XMSTB+CswuL4C1l7iqPXsRJh6TbVev
	ZW7IWWf/P8svBiBNqfc8EOJxBO7rfFfyH5AAOoYSaPxXu1m+UgC6q5PcwNUM1oj7wH3P
	ZlBA==
X-Gm-Message-State: ABUngveY7QsPCzcfnPhny+3K59Bm37JxKXcTvyYb0IZvvK6SEip7cTUftISst/i367xG7A==
X-Received: by 10.99.52.131 with SMTP id b125mr10577070pga.42.1477154829932;
	Sat, 22 Oct 2016 09:47:09 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:69a1:6763:cf15:8ed8?
	([2601:646:8882:b8c:69a1:6763:cf15:8ed8])
	by smtp.gmail.com with ESMTPSA id
	m25sm13528648pfg.14.2016.10.22.09.47.09
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 09:47:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1610221231290.3052@localhost.localdomain>
Date: Sat, 22 Oct 2016 09:47:04 -0700
Message-Id: <4231F9BF-DBFA-4BA0-8A06-488B118EB930@gmail.com>
References: <alpine.LFD.2.20.1610221231290.3052@localhost.localdomain>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SDK manual is not listed on docs page
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
X-List-Received-Date: Sat, 22 Oct 2016 16:47:13 -0000
X-Groupsio-MsgNum: 32577
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F3573404-D98B-4E37-A62D-D91D3AFDF298";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F3573404-D98B-4E37-A62D-D91D3AFDF298
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 22, 2016, at 9:32 AM, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:
>=20
>=20
>  i don't see link to SDK manual here:
>=20
> https://www.yoctoproject.org/documentation/inprogress
>=20
> is that deliberate, or an oversight?

file a documentation ticket.

>=20
> rday
>=20
> --
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F3573404-D98B-4E37-A62D-D91D3AFDF298
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgLmAwACgkQuwUzVZGdMxTSHQCfTu9uKLN+MKieGXH3VTsmxANF
QmIAn19PFyxGxr2u+xqbq77AUUO0MPeR
=nGtQ
-----END PGP SIGNATURE-----

--Apple-Mail=_F3573404-D98B-4E37-A62D-D91D3AFDF298--
