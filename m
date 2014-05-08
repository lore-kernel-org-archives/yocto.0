Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87447E00B3F; Thu,  8 May 2014 06:40:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f48.google.com (unknown [209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 181D3E00B21
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 06:40:04 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so2789501qgf.35
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 06:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=tmwC1Lvk9y6lxF4WWRTVVLIzyT38wgXqkEbFu3REEM8=;
	b=gWpvhF9i6gE1z+L7Dba5OeL2ZkQXODNlyaP3RaPVLM8xqL0oB4mYgXWxoasuuai4mp
	3mkv9sEeptvjaZEvZ0zq5X+y7979T/i11rGfPF8/AxhcMuWrR6Q/mffgUPrg34osnBW3
	1UdQEl7v4p6SfEV+8UlEUFEKeA4jU1vV7LhtBY4nddgejWvCNZZLgzL6WZtYY9iZv/2a
	LUUkPuQiWLX8KTt0mkVOgksYKeR01pPh/OfSZzgadw0zL5vRhZ0RpG7ixDDNEjHr9IAk
	o8WhNAU+d6Qs3By5R5C7DfB2rzwgEZdKxjv/480j/+ksw9Do5H9gBx3bNWKyauLPSKt2
	hkuA==
X-Gm-Message-State: ALoCoQmnw4GfpA5Fo4yOPissjRMz4unwRGxdsuXerZAFRma3mk53zJeAVPMOqXBvpvWN4uqMjuiM
X-Received: by 10.224.38.138 with SMTP id b10mr4837126qae.98.1399555945238;
	Thu, 08 May 2014 06:32:25 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id 11sm1184765qgv.20.2014.05.08.06.32.23
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 08 May 2014 06:32:23 -0700 (PDT)
Date: Thu, 8 May 2014 09:32:21 -0400
From: Joe MacDonald <joe@deserted.net>
To: Martin Jansa <martin.jansa@gmail.com>
Message-ID: <20140508133218.GA5600@deserted.net>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
	<1399492168-13096-10-git-send-email-joe@deserted.net>
	<20140508103406.GL30955@jama>
MIME-Version: 1.0
In-Reply-To: <20140508103406.GL30955@jama>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 9/9] linux-yocto: remove PRINC warning
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
X-List-Received-Date: Thu, 08 May 2014 13:40:07 -0000
X-Groupsio-MsgNum: 19450
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 9/9] linux-yocto: remove PRINC warning] O=
n 14.05.08 (Thu 12:34) Martin Jansa wrote:

> On Wed, May 07, 2014 at 03:49:28PM -0400, Joe MacDonald wrote:
> > Convert PRINC to PR .=3D so as to not break package feeds.  Next time t=
his
> > won't be necessary at all.
> >=20
> > Signed-off-by: Joe MacDonald <joe@deserted.net>
> > ---
> >  recipes-kernel/linux/linux-yocto_3.10.bbappend |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/recipes-kernel/linux/linux-yocto_3.10.bbappend b/recipes-k=
ernel/linux/linux-yocto_3.10.bbappend
> > index 159d63b..6686974 100644
> > --- a/recipes-kernel/linux/linux-yocto_3.10.bbappend
> > +++ b/recipes-kernel/linux/linux-yocto_3.10.bbappend
> > @@ -1,4 +1,4 @@
> > -PRINC =3D "1"
> > +PR .=3D "1"
>=20
> Does this one really help? PRINC increments first numeric part of PR, so
> in linux-yocto case it would be INC_PR and you're appending 1 to last
> part.
>=20
> so from r6.5 you'll get r5.51 if I parse it correctly before morning
> coffee.

Oop, yeah, you're right.  This one's a bit more complicated.

-J.

>=20
> >  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> > =20
> >  # Enable selinux support in the kernel if the feature is enabled
> > --=20
> > 1.7.10.4
> >=20
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
--=20
-Joe MacDonald.
:wq

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlNrh1MACgkQwFvcllog0XxLYgCfeCfE1Guv8y1juZCMDFJfjmUa
DPgAnjUcAdHmkUDyRFHaB0fSncvhkzgS
=NpI9
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
