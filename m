Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13FAAE00A3C; Thu, 13 Aug 2015 10:24:34 -0700 (PDT)
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
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF6C7E007AE
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:24:28 -0700 (PDT)
Received: by pdrh1 with SMTP id h1so21924739pdr.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=pzPB3FCaFbZ+vPfObHLn6QCHyG2oTDFG3VxcnD+A8gw=;
	b=dJZ4soKhs+uQTZwIJ6k4Iiyp72+LwJSdUXNqSIyZCk4PpJB12y8quu+2yJpOyUWBbH
	F3JFQbSZC+qikiIQEnlvpwlIaDg2rvUnRIG/gSeQSUeIpZHPpQKud8egMZnhnHdVOmw8
	LgPZuicj1uj/M2+BxrJhqvT+/FiwExNtXPGkbhXHxrucSF4+944o1WG+1x+9B0SkU2pF
	tUKGf02W2AHhIaOzSWsTyWZQk1kFIcrbTrDjUAs1cafrn3dR10MdBRcC6EiLugmSuVHi
	SGfigMJb0Szx+LAq6aPKOyS3Z8cam8xRTlBPBke58DRsdQmKWGevJHyMBXGN2xVSmppw
	tvyg==
X-Received: by 10.70.41.196 with SMTP id h4mr29596673pdl.147.1439486667881;
	Thu, 13 Aug 2015 10:24:27 -0700 (PDT)
Received: from ?IPv6:2601:647:4c02:370d:91a9:55b7:6f3a:6b82?
	([2601:647:4c02:370d:91a9:55b7:6f3a:6b82])
	by smtp.gmail.com with ESMTPSA id
	qv3sm3304030pbb.78.2015.08.13.10.24.26
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 13 Aug 2015 10:24:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1439485643-31467-5-git-send-email-javier@osg.samsung.com>
Date: Thu, 13 Aug 2015 10:24:20 -0700
Message-Id: <2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
X-Mailer: Apple Mail (2.2104)
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Thu, 13 Aug 2015 17:24:34 -0000
X-Groupsio-MsgNum: 26086
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DCA2F98A-9ABD-4DBC-9E7F-0A313CC42467";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DCA2F98A-9ABD-4DBC-9E7F-0A313CC42467
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas =
<javier@osg.samsung.com> wrote:
>=20
> This patch adds to the README a section that explains the RPi can =
different
> graphics stacks and that the user can choose by manually changing =
providers.
>=20
> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>=20
> ---
>=20
> Changes in v2: None
>=20
> README | 9 +++++++++
> 1 file changed, 9 insertions(+)
>=20
> diff --git a/README b/README
> index 678c0eb4a4e3..0569b353870c 100644
> --- a/README
> +++ b/README
> @@ -25,6 +25,7 @@ Contents:
>     2.K. Boot to U-Boot
>     2.L. Image with Initramfs
>     2.M. Device tree support
> +    2.O. Graphic stacks
> 3. Extra apps
>     3.A. omxplayer
> 4. Source code and mirrors
> @@ -195,6 +196,14 @@ kernels.
> NOTE: KERNEL_DEVICETREE is default enabled for kernel >=3D 3.18 and =
always disabled for
>       older kernel versions.
>=20
> +2.O. Graphic stacks
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +The Raspberry Pi boards can use one of two graphics stacks: The =
userland
> +user-space driver or the vc4 DRM/KMS kernel driver. By default =
userland
> +is used since the vc4 is still experimental. But this can be changed =
by
> +modifying the defaults for the kernel, egl, gles2, libgl and mesa =
providers.
> +This is explained in the =
conf/machine/include/rpi-default-providers.inc file.
> +

you may want to add pointer to the commented out code that you have =
added to select them
in rpi-default-providers.inc

> 3. Extra apps
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --
> 2.4.3
>=20


--Apple-Mail=_DCA2F98A-9ABD-4DBC-9E7F-0A313CC42467
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXM0sgACgkQuwUzVZGdMxTJbQCeIrv9P5ExDohRhQR7JhWnPr5y
00QAn0Nl6R4tMIok4TjetfOMr+XfuzKN
=5Pm+
-----END PGP SIGNATURE-----

--Apple-Mail=_DCA2F98A-9ABD-4DBC-9E7F-0A313CC42467--
