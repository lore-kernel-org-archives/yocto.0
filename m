Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C824E00C5D; Wed, 30 Sep 2015 17:45:52 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F7D3E00B2C
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 17:45:46 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so57042294pac.2
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 17:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kb98sIEznc9hAVJaeevFWsHP6nOnAnfv/XM8q/O1Wn0=;
	b=iz3TSZ/nMsZiO3uCugwkiZjwohSDzo1niLNvZkBoJ+3FZwx3urkYGAbN9K1eZ8rRml
	He+DmAs9B4qVMH9wPHU+VLd0AccI4UVvVgGZ5R2o2kIcnaiKWjLyZpLB56ULrRWbhfpP
	toJi31pIEK8L9+zSJNr3Z82JrkUiU8GFeI/lmQAr7W1YV7/kdR6AJO0MSWku3U2XKW2/
	+ebfb2VVFoQcCBW/IUubPArbHD4pkIh7yhTRKlRQPvdTRGvl0Lfg4EsWzeOKxbZ4bIfX
	Fj8U5N3CnEG2bs2qywT4yqUJ9GnURnpbFO8OrnryZuDeHa3O09X8+OQEDLAyQ4dn0GAS
	0KQg==
X-Received: by 10.68.137.161 with SMTP id qj1mr8451904pbb.14.1443660346124;
	Wed, 30 Sep 2015 17:45:46 -0700 (PDT)
Received: from [192.168.0.4] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	sl7sm2906386pbc.54.2015.09.30.17.45.44
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 30 Sep 2015 17:45:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <560C54B1.20307@mender.io>
Date: Wed, 30 Sep 2015 17:45:40 -0700
Message-Id: <3CF90DC1-AE76-4429-A645-72BF8D4DDA21@gmail.com>
References: <560C54B1.20307@mender.io>
To: =?utf-8?Q?Eystein_M=C3=A5l=C3=B8y_Stenberg?= <eystein@mender.io>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: Run-time discovery of machine for image compatibility check
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
X-List-Received-Date: Thu, 01 Oct 2015 00:45:52 -0000
X-Groupsio-MsgNum: 26630
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5CF42F7C-FC28-435D-93AF-84C5E99BE19A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5CF42F7C-FC28-435D-93AF-84C5E99BE19A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 30, 2015, at 2:31 PM, Eystein M=C3=A5l=C3=B8y Stenberg =
<eystein@mender.io> wrote:
>=20
> Hi,
>=20
> Before starting a bitbake build, we input the MACHINE variable in
> local.conf (e.g. MACHINE ?=3D beaglebone).
>=20
> Is there a way to detect this variable at run-time? I.e. if I have =
built
> the image, written it to a device, and I'm now logged in to it.

There is no standard bill of materials that you will find on images. =
Everyone produces it
per own needs. The reason is that we do not have a one OTA mechanism =
recommended or preferred
in OpenEmbedded or maintained by yocto project. May be this could be a =
thing to consider come future
right now, there were other big fish to fry around workflow. OTA =
firmware upgrade, could be big thing for next release
or there after.

I don=E2=80=99t have a better answer for you at the moment. You have to =
work with device firmware manufacturer
and see if they have put some image info into the image in some form.

>=20
> The reason I want this is that I'm working on a project to deploy =
image
> updates (remotely), and I only want to write the image if the device =
is
> compatible with the image file. So I need to know both the
> hardware/board type and what the image target is (assuming this is the
> MACHINE variable alone). Then I will only write the image if they are
> the same.
>=20
> Also, do you think using the MACHINE variable is the right approach =
for
> this problem? Maybe someone has had a similar problem?
>=20
> I'm new to Yocto, sorry if I'm asking something obvious (but I could =
not
> find an answer in the docs).
>=20
> Thanks!
>=20
> --
>=20
> Eystein
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_5CF42F7C-FC28-435D-93AF-84C5E99BE19A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYMgjcACgkQuwUzVZGdMxT20ACaAvJlrw9kaDUa9oTnR//pQgtA
ieMAnRGEfXY1sF9ltMxyX+kVJ6XWTMHM
=9Co/
-----END PGP SIGNATURE-----

--Apple-Mail=_5CF42F7C-FC28-435D-93AF-84C5E99BE19A--
