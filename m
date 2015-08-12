Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9239E00A3B; Wed, 12 Aug 2015 00:39:06 -0700 (PDT)
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
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BE2AE00AC0
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 00:38:49 -0700 (PDT)
Received: by pacgr6 with SMTP id gr6so8932289pac.2
	for <yocto@yoctoproject.org>; Wed, 12 Aug 2015 00:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=52CEtgV1XvB/AaOwIlbxYeKrbFIowEwWEVCElWlylZc=;
	b=wShqVjIWPDtZ15mO7nOUyNELHr8Gz6Ca19G0Ua1ivPW6BtyyVugopFUEYbLeg6iMQ9
	cXfl6X+Ho5xLvE50yxNlZsWo5IZHB5B39k+bh6pVPXrRM8yqGFxe9tYwLKLLQviagDmN
	X+uADf3jJG+eLAqmedDOx70KaJ1vJWFGt1IQ1pnYDrwQVf9w68BHAubiIuA1vlH7hfk2
	20DDQvsh4yHW+AsLjlb2Uw+cOZeTH/qX+ex47t+ajGFUpHwR7Ms3tA4HhliZh0c4nzAz
	GYxabQY7kP7mr9y11EEHxb5gl6qQWfYQ1MKt97niP8knyf8ZK3qmYmRm5ZSzuqwj/Rk1
	dhfA==
X-Received: by 10.68.253.232 with SMTP id ad8mr66161622pbd.115.1439365129097; 
	Wed, 12 Aug 2015 00:38:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:b9e7:cb72:7ff1:d60c?
	([2601:646:8601:4580:b9e7:cb72:7ff1:d60c])
	by smtp.gmail.com with ESMTPSA id
	u16sm5259362pdl.71.2015.08.12.00.38.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 12 Aug 2015 00:38:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAM8P1k8HtFW8OniXY_dprAz+DdJWREpHQEe8nVtNALnWqYUwNA@mail.gmail.com>
Date: Wed, 12 Aug 2015 00:38:41 -0700
Message-Id: <B47319B5-6524-437E-BCFA-CEDBF14A4652@gmail.com>
References: <CAM8P1k8HtFW8OniXY_dprAz+DdJWREpHQEe8nVtNALnWqYUwNA@mail.gmail.com>
To: Lukas Weiss <lukas.weiss@janitza.de>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: Add custom tools to yocto build environment
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
X-List-Received-Date: Wed, 12 Aug 2015 07:39:06 -0000
X-Groupsio-MsgNum: 26040
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0DE69EF3-0AD3-4776-AF4A-8AD27DC2A789";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0DE69EF3-0AD3-4776-AF4A-8AD27DC2A789
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 22, 2015, at 12:00 AM, Lukas Weiss <lukas.weiss@janitza.de> =
wrote:
>=20
> Hello yocto friends,
>=20
> I have a problem with yocto you could help me with. The Background:
> Iam working on a yocto-linux for a TI OMAP-L138, which is a ARM9+DSP =
in one package. The Linux on ARM is running fine, and does everything I =
want. I have implemented a kernel driver to start the DSP-Core from the =
Linux on the ARM9-Core, but now I need to generate the Firmware for the =
DSP with the Yocto buid system. Main problem is, that I need a =
compiler/toolchain from TI to compile the Code for the DSP in the yocto =
build environment.
>=20
> At this point I did not understand how to add tools to the yocto build =
environment at all. I think there must be a way to add software to my =
host (build) system for generating code for my target. But I have no =
idea how to do it. When I write a BB-recipe, the architecture of the =
resulting files is checked to be from targets type (arm in my case), but =
host tools are of type x86... (which is totally correct!)
>=20
> I think I need a recipe, which downloads the compiler/toolchain for =
the DSP, extracts and installs it to my yocto build environment, so that =
I can use it in another recipe that compiles my code to a loadable =
firmware-image (which is placed to my targets rootfs).
>=20
> Do you have any suggestions for me how to do that?

This is a multi machine build case, and in single bitbake invocation we =
only support single arch. But this is not a big issue you can issue two =
cmds

MACHINE=3Ddsp-machine bitbake blah

and then

MACHINE=3Darm-machine bitbake blah

I think DSP firmware is another rootfs+kernel  or may be bare metal app, =
you could certainly use OE/Yocto tooling for that however, I think its =
not trivial if you want to build from source and I think there is no =
support for this DSP chip as supported architecture in OE, which means =
it will require changes in OE-Core to support the DSP architecture and =
then you would either build the toolchain internally or you can also =
hook in a prebuilt toolchain into OE and only after that you can start =
to build
packages for firmware. You can look into git history and see how a new =
architecture is added ( mips64 was one I remember last I did ) you will =
need something like that.

quick method would be to keep building DSP firmware outside OE/yocto =
environment ( as you have been ) then just package the final firmware =
blob into ARM image

>=20
> Thanks,
>=20
> Lukas
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0DE69EF3-0AD3-4776-AF4A-8AD27DC2A789
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXK+AUACgkQuwUzVZGdMxQkTACfc2gK/+SbKqMg0x0WJqeSY8kE
ixgAn3HUbW2bZGYVgK1fWwl7GgLoAvfc
=VndI
-----END PGP SIGNATURE-----

--Apple-Mail=_0DE69EF3-0AD3-4776-AF4A-8AD27DC2A789--
