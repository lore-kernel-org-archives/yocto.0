Return-Path: <eren@hambedded.org>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B11FE013A2
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 05:06:39 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id l15so5548181eak.37
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 05:06:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent
	:x-gm-message-state;
	bh=WedmULW0peFx8CELHgiy+RkfF9731VHuck3Xqure/qs=;
	b=n9Dl52YJnTCBEMwV6IWQlAHjDgQozl6lJKmCqu8GoQ6IhMvMm4n2RMnAvxvQrOh7xT
	UmM9RtbACqwpDOzUPVWHNgv1D06AhK+VSAnIrGWuOOTSOTwk/5Mk8lvpo9nkJezaeIaD
	NgBSi2ok6SV/bF53LCHGTwKEyQ5r4KoKnxabjwdfJWc1WALnoa2ApkFdC63GX8qjiVEx
	royGqZIK3FCbj4Ooy/4/r07C305u9yYNYTV41EZl4tZAg5oG63Wh6uHxwQeoW9IUHfgv
	0zyuS0/rKqnTeLBgzwOWgI2nPEGVCHVPB8LcBe4kaM5RjgnEU5Y9IorExSAehkXP6B8G
	dW5g==
X-Received: by 10.14.179.133 with SMTP id h5mr1282181eem.46.1373544398322;
	Thu, 11 Jul 2013 05:06:38 -0700 (PDT)
Received: from gmail.com ([132.231.11.113])
	by mx.google.com with ESMTPSA id a4sm68623239eez.0.2013.07.11.05.06.36
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 11 Jul 2013 05:06:37 -0700 (PDT)
Date: Thu, 11 Jul 2013 14:06:28 +0200
From: Eren =?iso-8859-1?Q?T=FCrkay?= <eren@hambedded.org>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20130711120628.GA4028@gmail.com>
References: <FCD3D60D-CC00-48A3-89DD-7C73AB3C8404@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <FCD3D60D-CC00-48A3-89DD-7C73AB3C8404@keylevel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQl2aBKrQkkfB0LlpfImCmUXunG18F0CKdLDZImwbkMfosDcaG7Glr08qKvI0plJeAymMieD
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Ubuntu 11.10 to 12.04 upgrade
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
X-List-Received-Date: Thu, 11 Jul 2013 12:06:40 -0000
X-Groupsio-MsgNum: 14912
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 11, 2013 at 11:49:47AM +0100, Chris Tapp wrote:
> My current build system is an Ubuntu 11.10 64-bit (server). This is
> now out of support, so I plan to upgrade to 12.04 (LTS).

Hello,

> Is this likely to go smoothly, or are there some gotchas to worry
> about? I'm currently building for Poky 8 if that makes a difference.

I am using 12.04 without a problem. Once you install build-essential and
other required packages by bitbake, there shouldn't be any problem.

> Thanks!
> Chris Tapp

Regards,
Eren

--=20
    . 73! DE TA1AET
      http://linkedin.com/in/erenturkay

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (Darwin)

iQIcBAEBAgAGBQJR3p/DAAoJEOM7bMm6HhcTXiIP/1Wwxjy/2mC0iSDIa1GAIUbj
pJUnkrYAXq4+saqepgafa9u0X1BP0FLnQxSygmm2+N9+yyULV6LY59cuC/iIIUOY
EnFXYGFdhD69ZdYbqnWnKNFXK1S02K2oECYEsFfp+D3zqks8gwyuS1vCxosTqK15
vN0QOC7bXjH2UIndvjHb5B08JVOCRFRJKQicsrG8EfL3bBCb/iU8PXbBPIoutSy7
7adiGYCZ/D9Z7wryILJuyTnIDlyL+6iqnLfurxG0MQPVOqquvf2Vd2/0ocnUvwIf
qR022of+R9PI6SUpDq9EoitjU1zrisu+BdQe1lQYHzI6Z4ixVfiBOdca4/3kzr5v
whh+dn9TiewzPnTJpkk93LJTbQEE6W5fOGWezWatr51/N5GWwrDWChl27CQ8pimv
iUsZdBxpVU7VadcDnyK6U3+GhpBFm/ShgsmBv1jLzPHD/Mk9w/855gPAAIi1WFcN
ut2/yroJ+JRKPHN178u1Igw5/zB5zjlM0AK0vbfRQXVS8QDI+d3xplFMOgSQvGUB
0eURod9CPvHvBXRsoxvXDRQRLdUZ+exMCd9wrpCdrAZdAfRtWtwUc27U9Lv6bvnr
yO/D77/YRXZMlwKyZ/dWIA1PNnwbCwcU+ZfmFD6gugC4xCr2b69VUWkhmyxXtEs4
bZCtAaqd8/dCa4EGjD/L
=AOyl
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--
