Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89C61E009DA; Mon, 18 May 2015 20:08:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B64CE0099B
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 20:08:00 -0700 (PDT)
Received: by pdbqa5 with SMTP id qa5so4148608pdb.0
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 20:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iWVynOyp3D4DzwxIdxbGGshdc7TnijzjuyiISIl2kCc=;
	b=jMBRENtC0oC2FJvpctxZHxPZv2VxDzscRWtCuo0cwE6F2z8wquWGhM9A5H28HmzRjx
	qTvEdn+xH73lidBhzJDXFDunyGqHNQjK9DGb0ttkorQp5Yt8jV9qGiZk34AIX/JXSyXD
	o+/Z4GTHZ5cgE288uU+k5P0Y6n5hisqk+k0w6QaxENMaXpexc6/R8M88xBwRfBjbgFpH
	C11gZw1O8m3DDJ1/MbB4JCUJWDpgvPWhK4biRy+30aEX9F9VmGvuAv5yCwPyqrlRS+AI
	6HjZU61Jnrk/fDWIvb2etLbrsRUyJFbePvFe7JMimZsviw6wn8NmBJCYNSuevrmMFmJ5
	WzSA==
X-Received: by 10.66.250.12 with SMTP id yy12mr49813590pac.2.1432004880006;
	Mon, 18 May 2015 20:08:00 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:6195:1fa1:395:1fff?
	([2601:9:3580:84c:6195:1fa1:395:1fff])
	by mx.google.com with ESMTPSA id
	fe3sm11356340pbd.76.2015.05.18.20.07.58
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 May 2015 20:07:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <F14AEF751653024287138321000C846AF482A75F@BOS-DAG1.zone1.flir.net>
Date: Mon, 18 May 2015 20:07:54 -0700
Message-Id: <4F85D9DC-5458-4EFD-BAA0-7FC63C7A89F7@gmail.com>
References: <5559B3E0.7080104@cs.uni-kl.de> <5559D72E.1000506@cs.uni-kl.de>
	<F14AEF751653024287138321000C846AF482A75F@BOS-DAG1.zone1.flir.net>
To: "Smith, Virgil" <Virgil.Smith@flir.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Altera Cyclone V DTB origin
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
X-List-Received-Date: Tue, 19 May 2015 03:08:05 -0000
X-Groupsio-MsgNum: 24881
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EA6B03EB-7E74-4FC4-8B0E-6318218A6E95";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_EA6B03EB-7E74-4FC4-8B0E-6318218A6E95
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 18, 2015, at 7:56 AM, Smith, Virgil <Virgil.Smith@flir.com> =
wrote:
>=20
> Perhaps someone could improve on this, but
> you can build a dtb from a source dts using a bbappend for your linux =
kernel.
> 1. drop a copy of your new dts in ${S}/arch/arm/boot/dts
> 2. add the name of your dtb to the KERNEL_DEVICETREE variable.
>=20
> If you are modifying an existing dts file, the cleanest approach is =
probably to use a patch file for step 1.  However, you could also create =
a completely new file.  That you could add either as a patch or by a =
direct file copy with something like
>=20
> SRC_URI +=3D "my-device-tree.dts"
> KERNEL_DEVICETREE +=3D "my-device-tree.dtb"
> do_patch_append() {
>  cp ${WORKDIR}/my-device-tree.dts ${S}/arch/arm/boot/dts/
> }
>=20
> Using do_configure_append (or even possibly do_unpack_append) might be =
more appropriate and would let you easily patch your own file in another =
layer, but I have not personally tried that.
>=20
> However, if changing the name of the dtb (i.e. adding your own), you =
may need to tweak your bootloader (U-boot?) to pass the right dtb to the =
kernel at boot.  I don't know the Altera Cyclone =
configuration/layers/versions so take that as a very general statement.
>=20
> Also, check the kernel recipe you are extending KERNEL_DEVICETREE may =
need to be expressed as KERNEL_DEVICETREE_somemachinenamehere.
>=20


you should checkout meta-altera here
https://github.com/kraj/meta-altera

>=20
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Steffen Schuetz
>> Sent: Monday, May 18, 2015 7:13 AM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Altera Cyclone V DTB origin
>>=20
>> Hi,
>>=20
>> I found that the dtb is obtained from a git reposirtory during the =
build and stored
>> under =
build/tmp/work/socfpga_cyclone5-poky-linux-gnueabi/linux-altera-
>> ltsi/3.10-r1/git/arch/arm/boot/dts/
>> I succesfully build a custom dtb following these suggestions:
>> https://community.freescale.com/thread/325219
>>=20
>> Is there a way to do this using a bitbake mechanism?
>>=20
>> Thanks!
>>=20
>> Best Regards,
>> Steffen
>>=20
>> On 05/18/2015 11:41 AM, Steffen Schuetz wrote:
>>> Hi,
>>>=20
>>> I build a customized Linux image using Yocto Daisy - we need gcc >=3D
>>> 4.8
>>> - following the instructions at
>>>=20
>> =
http://rocketboards.org/foswiki/Documentation/YoctoDoraBuildWithMetaAlter
>> a .
>>> Besides the zImage and rootfs the build process outputs an .dtb =
file.
>>> Now, in order to get the FPGA fabric involved, I'd have to come up
>>> with a modified dts and build it.
>>> That's where I'm a bit lost in the blur. I can not figure out where
>>> the generated dtb is coming from? What's the mechanism behind? I
>>> cannot find any .dts nor .dtb in the meta-altera layer.
>>>=20
>>> Besides that I realized that if I use the dtb that shipped with the
>>> board with the "daisy" kernel, the boot process gets stuck at =
"Waiting
>>> for root device /dev/mmcblk0p3..." The "shipped" kernel is version
>>> 3.8.0 while the "daisy" one is 3.10.31-ltsi.
>>> Was there a change in the device tree layout as the "old" one =
doesn't
>>> work with the "daisy" kernel?
>>>=20
>>>=20
>>> Thanks in advance!
>>>=20
>>> Regards,
>>> Steffen
>>=20
>=20
>=20
> ________________________________
>=20
> Notice to recipient: This email is meant for only the intended =
recipient of the transmission, and may be a communication privileged by =
law, subject to export control restrictions or that otherwise contains =
proprietary information. If you receive this email by mistake, please =
notify us immediately by replying to this message and then destroy it =
and do not review, disclose, copy or distribute it. Thank you in advance =
for your cooperation.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_EA6B03EB-7E74-4FC4-8B0E-6318218A6E95
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEUEARECAAYFAlVaqQ0ACgkQuwUzVZGdMxRR9wCffBO2byL3Bb96w15eldIF4zXz
hNwAmKg6MMMuknyFTLarE16GvUU6e9w=
=eeV+
-----END PGP SIGNATURE-----

--Apple-Mail=_EA6B03EB-7E74-4FC4-8B0E-6318218A6E95--
