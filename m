Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47945E00BEB; Fri, 13 Jun 2014 01:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8E3E00BB3
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:22:59 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id q58so2418101wes.30
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 01:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=4M7yi6hnLJ0UfJPKRNa+hSMV0AmeEN4X6tcllUu+oRA=;
	b=R60mMk/RCfzEF9SnfSp26vgLESErmkA3NFhbwW5x3kY+RZ03DMmrm5JQ6MlJyhXJyC
	GZNTQvaB6WbVh/gggymubU75DIGGHk0hBj9rd5GJ/F7YBFKxkOqhZeQ/u6EEglEt4tV3
	1KJZiclkkWjtQINRR4KGPSC31qa3dlwtlklu0hizmW1pKsQSUnn3doY1B5hR2DK/oSL7
	Nf5XLeLfTX1O2Vf4+Dvfe1a/DLoGXHosYal8LinI6WExN6k3aeFwWTG6OzJraQreVMkA
	QDHdak2hnrXNAm9xF1ZHT1+9MtiBj/hzPENH1h+lpdGuNL6grIMHBCo4HkfPKJuOePWa
	paLQ==
X-Received: by 10.194.204.170 with SMTP id kz10mr2076101wjc.38.1402647778591; 
	Fri, 13 Jun 2014 01:22:58 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id a1sm10367336eep.3.2014.06.13.01.22.57
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jun 2014 01:22:57 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Fri, 13 Jun 2014 08:22:55 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Anup Kini <akini@synapticon.com>
Message-ID: <20140613082255.GH24880@gmail.com>
References: <CAKS01o=UeW1WYTAkAnKrvazMV+4kSgULOJW17tG+3M1RxmDgtg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKS01o=UeW1WYTAkAnKrvazMV+4kSgULOJW17tG+3M1RxmDgtg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: building armhf deb with Yocto Daisy
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
X-List-Received-Date: Fri, 13 Jun 2014 08:23:11 -0000
X-Groupsio-MsgNum: 20142
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YrlhzR9YrZtruaFS"
Content-Disposition: inline

--YrlhzR9YrZtruaFS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2014 at 10:13:54AM +0200, Anup Kini wrote:
> Dear All,
>=20
> I am currently trying to build armhf debs using Yocto.
>=20
> I use the machine tune =3D "cortexa9hf-neon" for an iMX6 Dual Lite Dev bo=
ard.
> All the debs built in the build/tmp/deploy/deb/ folder are XYZ_armel.deb
>=20
> How do i build XYZ_armhf.deb using Yocto ?
>=20

For my the Beagleboard xM I enabled hard float ABI by setting DEFAULTTUNE i=
n my
local.conf:

    DEFAULTTUNE =3D "cortexa8hf-neon"

You could give that a try with the appropriate value. I assume it will work=
 in a
machine conf file as well as in local.conf.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--YrlhzR9YrZtruaFS
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJTmrTfAAoJEBwoJlo7UPQDfOwIAJ2OVEsdI3UTxKSowX1S9VN1
bUpveeiBKuWoFZ9W7arEYIzx07WMGTqVw+Y7KEJ2ex5VuSE76l23txZPO41LAn2W
4ewOSIv+Pk/uz9zJvkVFNsDGge2YrzyCnSkIxko+fzJt43ro02dzpJ+2+uYcasor
ndLeWUKpo9UFTkCdrxGamZRvaUIQln6RGj4b4+TgoaQ46IkJ8CCZzUlGuXKZCgK5
YCNW9jh9nyPY2c5/O0mbqvoW9+1cXhnWHwLagRJo3f9o5lcO9fQYdoTYds1xPLON
LCm8RK27WgoNS/vH9lsEDhcDq/k/SeSfYMk4z1xbXbs/Z79MWaafJ875Pd8/CiM=
=r1FR
-----END PGP SIGNATURE-----

--YrlhzR9YrZtruaFS--
