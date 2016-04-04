Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1A6EE00527; Mon,  4 Apr 2016 10:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCF3E0048B
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 10:28:09 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id 184so48694382pff.0
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 10:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ewhmUiaRYx6H++37KSzo4XhQI2OOZZHUrUGCaj3IsCQ=;
	b=AXPdLOEkJYCFC5GV4XiHn37qYpQZ3sI992aeDAC20aCFwM+Zw8CWUyaF/n7U1KlTRV
	rQz/z8C9YOWZSr9VC+oZT07C8FvcrKr90AmYdC+1lvdJL76YHzKM0piBSUqHqLT/GkKG
	e/r5DOtZovR0gKLqFEf8rxtdDtPJXkbDthEmPpVVBz+WL7tcX1EuI8yEhN5VA7hERYlV
	CB88Tge9bik5knEaWdmway6elviTGIOp1xyemXD7XblMVygutTXpfoI4WQzQVMtigwoV
	GqiOOzI/5ZXtVptPY2h+qU6LczXgPGN5cgBkZz+ahfQUbKMndyXQWyvkpw0ly76YNN5m
	Lw6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ewhmUiaRYx6H++37KSzo4XhQI2OOZZHUrUGCaj3IsCQ=;
	b=XiM/cOrtuXT41OM4/fW1Bg7x0qKWJ5uUOE/c/p2ZEu4gd3v9sh+o33t3pjGEiMsVYv
	zBLtr2DjW9CzWTzvF31lIQp/TGdJUIE6hVkip1GKD/ZKKOAppFs9KNIlUJjNOa4ERXeA
	968v/ZugjPdgABbOYcUfbFK3nJ4CErWbwIQ81jY7EyehWsvg5jgAlEqxYkVVGTkD8YoV
	A1jmmw62hWgvdv+aR7yvt35zgn1zDger320DZ37Q/Vxqb2yosfH5v0ZIxYnT1WagxtrZ
	0+pt7U/bZFUd2pgKCHWDO6MZVqURKzJ/knXqDrih+NpuFdksxKYkEDK9M2H2S7N7KHBg
	FN5g==
X-Gm-Message-State: AD7BkJKqFD6p3QhL6gmSMCo5Nxr9zRqBoR1riWATpCPstDoxfbaJt2LJaNR7Al079mqAjQ==
X-Received: by 10.98.12.83 with SMTP id u80mr22205155pfi.116.1459790888694;
	Mon, 04 Apr 2016 10:28:08 -0700 (PDT)
Received: from resin ([209.65.105.100]) by smtp.gmail.com with ESMTPSA id
	f65sm40914314pfd.47.2016.04.04.10.28.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Apr 2016 10:28:07 -0700 (PDT)
Date: Mon, 4 Apr 2016 19:27:59 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: petter@technux.se
Message-ID: <20160404172759.GA14683@resin>
References: <EC7BC1CD2E085743BB2AE634252C39C171CDB5@server.exchange.local>
	<de89d347015b4afe389e8b6d0e3d66b3@technux.se>
MIME-Version: 1.0
In-Reply-To: <de89d347015b4afe389e8b6d0e3d66b3@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Adding more screens / PiTFT support.
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
X-List-Received-Date: Mon, 04 Apr 2016 17:28:13 -0000
X-Groupsio-MsgNum: 29282
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vNYLRcllDrimb99"
Content-Disposition: inline

--5vNYLRcllDrimb99
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 04, 2016 at 05:09:03PM +0200, Petter Mab=E4cker wrote:
>
>
> 2016-04-04 15:17 skrev GUEYTAT Julien:
>
> > Hi,
> >
> > I would like to
> add PiTFT support to the meta-raspberry layer. Or at least I would like
> to add it in my own BSP layer.
> >
> > I read that Peter were playing with
> that recently. Could you please give me some hints to do so?
> >
> > I
> have at least two more screens to integrate.
> >
> > If someone could
> point me to an example of a BSP based on meta-raspberrypi that would be
> awesome.
> >
> > Thanks in advance,
> >
> > Best Regards
> >
> > JULIEN
> GUEYTAT
> >
> > ING=C9NIEUR INFORMATIQUE
> >
> > 1027, avenue du Docteur
> Julien Lefebre BP27
> >
> > 06271 Villeneuve-Loubet Cedex
> >
> > Fixe : +33
> (0) 492 024 545
> > Mob : +33(0) 617 980 383
> > Fax : +33(0) 492 024 546
> >
> Email : j.gueytat@cdssoft.studiel.fr
> >
> > www : www.studiel.fr [1]
> >
>
> > PPENSEZ ENVIRONNEMENT, IMPRIMEZ SEULEMENT SI N=C9CESSAIRE
>
> Hi Julien,
>
>
> After some discussions with the community, we decided that the
> official meta-raspberrypi pitft support should be added using
> MACHINE_FEATURES. If you look in README for meta-raspberrypi there are
> some basic description about how to enable support:
>
> For a already
> supported pitft model (pitft22 is supported and 28r is on it's way
> https://lists.yoctoproject.org/pipermail/yocto/2016-March/029284.html),
> you can just add below MACHINE_FEATURES to local.conf:
>
>
> MACHINE_FEATURES +=3D "pitft pitft22"
>
> In order to add support for
> additional models you can use
> https://lists.yoctoproject.org/pipermail/yocto/2016-March/029284.html as
> a reference.
>  Basically what you need are to:
>
> * add the overlay for
> the screen
>
> * Add dtoverlay option with wanted default arguments in
> rpi-config_git.bb
>
> * Add a default calibration (if needed)
>
> Assuming
> an overlay exists for your model, it shouldn't be so tricky to fix the
> rest..
>

As Petter says, everything should be in the README. Try to give it a
spin and tell us how it goes.

--
Andrei Gherzan

--5vNYLRcllDrimb99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXAqQfAAoJEHO76Gt+erfPSyIP/12PGjEIytpWaUms5ignJsRF
/hEqnWHWu7ml/23mL/Q0XX087HyvgXe+lrntw9TIfZue0TpK4erjDvQ2tzthx42+
uBhhoBbxuKH7bC+HrZryLmrQNmpjsL6rpuEGoPCAQU6k/ca7uFartJ4WjJHXJ1wG
BX7d7t6ng9kWhmfDk06hMO8qiYinqNUKj2XcbEDYsXqCbhqkO/rUXgOGgCtB++/J
nwUmGJeLBGafhz3IbXPHtQgsc0LVaCUzKovlBbqHkMC+50kz2qMw3UB7O9vkMBPW
3P435sq3cA4w4LQeBZEYJhYd8ex17fBNs2eYtiAHUXi2kFGwCjO3b4LgfzTwEMat
1rPv2z2Ws+wh88UGyxVoFy0FNtxOmXVEIVXspL5x17/ee3Y2OWmXJirIPSUHNSUy
kCJsFm7DDnAh952xeLm8PirRL2cgKVBVPNUli8CxA8yEvQ5YiiQIAv6/fetpeAa/
XvFPtWr4DUPDPgyID4GzRDcJBEThue0YiYYyIJoGiGt8yzQ30XzB9x8CJo9OYIYZ
lBBW6P9656nnv61IFzXjDukdOKSkdDiZ2yjbPHTK2FIvzeNLDvt5rWzpjKvzU2CK
rKK6BKMJiZMteD566oqrHHbGrtI1zFOxhQOxoKX2OhyBOPvWugaFPZJ8cdOCu67o
RUxrlBwCmNBbCrPfvhiq
=0hk8
-----END PGP SIGNATURE-----

--5vNYLRcllDrimb99--
