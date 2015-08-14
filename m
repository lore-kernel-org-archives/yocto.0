Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A705E00A54; Thu, 13 Aug 2015 23:30:07 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D08E009B8
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:30:02 -0700 (PDT)
Received: by paccq16 with SMTP id cq16so10054695pac.1
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=bYZPR1uQB27XeYHYzKD8WH166jDQpEdo3bHtP25c97Q=;
	b=eOsyZC+V52zXPaWkEIYwjwDgfbJ6RrgrYiz8oxQthg1XnRKl+3rngJA3UeFkGTeJWn
	JV2+Wm3uHSROgHmmCYMXCZKmKhjBID5uqn3tbhY8Qcurjf+lp9lBTzgJYEZZYdgvqSNu
	acuOeghegMCyywfU1IumeQXrbHBfW6ak0qA8yFvSc5DGyE93h99PXzoneyK7sPMab4gt
	2EGb/3/WlsxenHdwIRCBWybi1XDC71vKfSj2AUQsBmLlhMpbS/XdcisGmIUTJN7npo6J
	fGsks1bbu9jL+OitKbMBpLXwhkVJzuV1kqzUbiZKYCXC8nAeN/Pumll2/XGH1yf4pCzC
	Hm8g==
X-Received: by 10.66.171.9 with SMTP id aq9mr50151778pac.117.1439533802170;
	Thu, 13 Aug 2015 23:30:02 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:7d4a:3993:27b2:859?
	([2601:646:8601:4580:7d4a:3993:27b2:859])
	by smtp.gmail.com with ESMTPSA id
	sk5sm4718954pbc.75.2015.08.13.23.30.01
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 23:30:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <mkh8a7$kt6$1@ger.gmane.org>
Date: Thu, 13 Aug 2015 23:29:52 -0700
Message-Id: <33AFEB7E-09F8-4AFE-AF4A-601068E7F9F3@gmail.com>
References: <mkh8a7$kt6$1@ger.gmane.org>
To: Neuer User <auslands-kv@gmx.de>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: Strange configure error (???)
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
X-List-Received-Date: Fri, 14 Aug 2015 06:30:07 -0000
X-Groupsio-MsgNum: 26110
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A243EBD5-4A25-460F-A8DC-57FBA4B7EC4B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A243EBD5-4A25-460F-A8DC-57FBA4B7EC4B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jun 1, 2015, at 2:23 AM, Neuer User <auslands-kv@gmx.de> wrote:
>=20
> Hi
>=20
> I'm currently moving from Dora to Fido. I moved all my recipes to a =
new
> yocto installation and are modifying the recipes where necessary.
>=20
> I have a very strange error when configuring a kernel recipe
> (linux-cubox-i). Actually, there is no error when using the defaut
> recipe included in fido. Only if I add the following bbappend file in
> order to change the kernel configuration, I get the error:
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-cubox-i:"
>=20
> SRC_URI =3D "file://defconfig \
>           file://videoin.cfg \
>           file://networking.cfg \
>           file://wlan.cfg \
>           file://dm-crypt.cfg \
>           file://no-caam.cfg \
>           file://leds.cfg \
>           file://mod-to-builtin.cfg \
>           file://watchdog-nowayout.cfg \
> "
>=20
> KERNEL_IMAGETYPE_cubox-i =3D "zImage"
>=20
>=20
> Error:
>=20
> | DEBUG: Executing python function sysroot_cleansstate
> | DEBUG: Python function sysroot_cleansstate finished
> | DEBUG: Executing shell function do_configure
> | WARNING: exit code 128 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> =
/home/ubuntu/yocto1.8/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubo=
x-i/3.14.14-r0/temp/log.do_configure.29043)
>=20
>=20
> Nothing more in the configure log. :(
>=20
> Any idea, what is wrong? In general I just want to use a diffent =
kernel
> config. Actually a kernel config that worked before without problems =
on
> dora. I really have no idea, why this isn't working or even what the
> error means.

in Fido kernel directories have moved a bit and it has started to use =
work-shared to store its sources etc.
your recipe might need an updates

>=20
> Thanks for any help
>=20
> Michael
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A243EBD5-4A25-460F-A8DC-57FBA4B7EC4B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXNiugACgkQuwUzVZGdMxTEkQCdHbFlSpgIEMKUIEtv+XtT/JIT
KmoAoIjGjelCvrkIGVrs+EnUGantz90b
=vIao
-----END PGP SIGNATURE-----

--Apple-Mail=_A243EBD5-4A25-460F-A8DC-57FBA4B7EC4B--
