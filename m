Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AE76E00AA5; Tue,  4 Aug 2015 12:12:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE04BE009CC
	for <yocto@yoctoproject.org>; Tue,  4 Aug 2015 12:12:13 -0700 (PDT)
Received: by pacgq8 with SMTP id gq8so15190561pac.3
	for <yocto@yoctoproject.org>; Tue, 04 Aug 2015 12:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=VIVVmCA2MNb8P6ks7b5MgPY6CnhMvhT5MwjFryta+Ok=;
	b=XUAwdwJgQHMZvzBpOMx7qABVMfei+AaXpDQeKAO1UA46DXXwkrl4IWLqwH+hqge5Fx
	yIyivVUcWbcPrTuUptHFlRlaTHdrYZfwRcZL/B1WyQDPa+rZueiGcmklGimcJS6rMIuy
	KOsm+rCfyoGF7WISHZyqXnaSCqq/Bl6z5StiOB5nMKxuUvxGZ0+1GrEws91V/XrRxQUt
	0TCDpyHx5K2NFvC8LvmFLmYNUe5ZxbjHOEQBConcdbP61Y+Ta2JhhM2El62w8XsfZWun
	VwhWsLto5kN3kqKjS3oCEpO9pRKHZya9OAlDirdxWv8BDrTZalN41HMbxG3SLoFVdupZ
	cZ1g==
X-Received: by 10.68.231.133 with SMTP id tg5mr11021527pbc.138.1438715532990; 
	Tue, 04 Aug 2015 12:12:12 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:b519:4241:e041:610a?
	([2601:646:8601:4580:b519:4241:e041:610a])
	by smtp.gmail.com with ESMTPSA id
	ms16sm174622pbc.11.2015.08.04.12.12.12
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 04 Aug 2015 12:12:12 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAPzboydownzwbUC8m6wt7fSLiRTsuM2u0a5YgvXnLn2r0Qnkyw@mail.gmail.com>
Date: Tue, 4 Aug 2015 12:12:07 -0700
Message-Id: <A141608C-241E-4F20-AE60-39A1D4840B36@gmail.com>
References: <CAPzboydownzwbUC8m6wt7fSLiRTsuM2u0a5YgvXnLn2r0Qnkyw@mail.gmail.com>
To: Adam Rossi <ac.rossi@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: Making a derivative BSP layer - where did I go wrong?
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
X-List-Received-Date: Tue, 04 Aug 2015 19:12:18 -0000
X-Groupsio-MsgNum: 25868
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4777BA3E-D74A-4CDF-8772-C651A132010A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_4777BA3E-D74A-4CDF-8772-C651A132010A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 4, 2015, at 7:47 AM, Adam Rossi <ac.rossi@gmail.com> wrote:
>=20
> Howdy folks. I am having trouble making a derivative BSP layer and am
> asking for your help in determining what I am doing wrong.
>=20
> I am developing a Yocto distro for a beaglebone-based prototype.  I
> made a few small changes directly to the meta-yocto-bsp layer and
> bitbaked the core-image-sato image, and everything worked great. The
> tweaks I made included:
>=20
> * Edited meta-yocto-bsp/conf/machine/beaglebone.conf to include
> additional machine features:
>=20
>     * MACHINE_FEATURES =3D "usbgadget usbhost vfat alsa touchscreen"
>=20
> * Edited meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
> to include a cfg file with the following entries:
>=20
>      * CONFIG_HID_MULTITOUCH=3Dy
>        CONFIG_INPUT_MOUSEDEV_SCREEN_Y=3D600
>        CONFIG_INPUT_MOUSEDEV_SCREEN_X=3D1024


you could do this in another bbappend in your own layer.


>=20
> While this works perfectly, it does not feel like a clean solution to
> be mucking with the meta-yocto-bsp layer directly. So I created my own
> meta-custom BSP layer using the yocto-bsp script to hold these
> changes. My bsp-layer has  the following attributes:
>=20
> *  meta-custom/conf/machine/custom.conf contains the following:
>=20
>       * require =
/home/me/poky/meta-yocto-bsp/conf/machine/beaglebone.conf
>=20
>          MACHINEOVERRIDES =3D =E2=80=9Cbeaglebone:custom"

may be you should append to it instead of overwriting

MACHINEOVERRIDES =3D. =E2=80=9Cbeaglebone:=E2=80=9D

>=20
>          MACHINE_FEATURES =3D "usbgadget usbhost vfat alsa =
touchscreen"
>=20
> *  meta-custom/recipes-kernel/linux/linux-yocto_3.14.bbappend contains
> a single line    SRC_URI +=3D to the cfg file mentioned above
>=20
> When I bitbake the new layer with the new custom machine and the same
> image target, I get file outputs which look very similar to the edited
> meta-yocto-bsp, with the exception of the zImage, which is much
> smaller and will not boot.

linux-yocto has its own list of compatible machines. see
=
http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto/tree/meta-yocto-bsp/r=
ecipes-kernel/linux/linux-yocto_3.14.bbappend

you might need to add

KBRANCH_custom =3D "standard/beaglebone"
SRCREV_machine_custom ?=3D =E2=80=9Cdbe5b52e93ff114b2c0f5da6f6af91f52c18f2=
b8"
COMPATIBLE_MACHINE_custom =3D =E2=80=9Ccustom"


>=20
> Perhaps I have an improper understanding of how layers build upon each
> other? I had though that by including meta-yocto-bsp and meta-custom,
> and specifying my custom machine in the local.conf file, it would
> build the exact same image as my tweaked meta-yocto-bsp.
>=20
> Your guidance as to my mistake or a pointer to an example of a
> derivative bsp-layer would be most appreciated.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_4777BA3E-D74A-4CDF-8772-C651A132010A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXBDosACgkQuwUzVZGdMxQavACeOXgYOfT5iGVAewsRXrcrEr2F
fUsAn1e1Jv/XA0A1/6zeD7byXQWhQLUO
=TC59
-----END PGP SIGNATURE-----

--Apple-Mail=_4777BA3E-D74A-4CDF-8772-C651A132010A--
