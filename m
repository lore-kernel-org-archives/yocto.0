Return-Path: <schuetz@cs.uni-kl.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF4F5E0086D; Mon, 18 May 2015 05:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [131.246.120.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailgw1.uni-kl.de (mailgw1.uni-kl.de [131.246.120.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC69E007B6
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 05:12:32 -0700 (PDT)
Received: from [IPv6:2001:638:208:480d:18ca:794e:7c7a:c069]
	([IPv6:2001:638:208:480d:18ca:794e:7c7a:c069]) (authenticated bits=0)
	by mailgw1.uni-kl.de (8.14.4/8.14.4/Debian-7) with ESMTP id
	t4ICCU8v009667
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 14:12:30 +0200
Message-ID: <5559D72E.1000506@cs.uni-kl.de>
Date: Mon, 18 May 2015 14:12:30 +0200
From: Steffen Schuetz <schuetz@cs.uni-kl.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5559B3E0.7080104@cs.uni-kl.de>
In-Reply-To: <5559B3E0.7080104@cs.uni-kl.de>
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
X-List-Received-Date: Mon, 18 May 2015 12:12:38 -0000
X-Groupsio-MsgNum: 24870
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="C2u5NuVvEQdLo40bxsCA82KKQKbJSN3IV"

--C2u5NuVvEQdLo40bxsCA82KKQKbJSN3IV
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,

I found that the dtb is obtained from a git reposirtory during the build
and stored under
build/tmp/work/socfpga_cyclone5-poky-linux-gnueabi/linux-altera-ltsi/3.10=
-r1/git/arch/arm/boot/dts/
I succesfully build a custom dtb following these suggestions:
https://community.freescale.com/thread/325219

Is there a way to do this using a bitbake mechanism?

Thanks!

Best Regards,
Steffen

On 05/18/2015 11:41 AM, Steffen Schuetz wrote:
> Hi,
>
> I build a customized Linux image using Yocto Daisy - we need gcc >=3D 4=
=2E8
> - following the instructions at
> http://rocketboards.org/foswiki/Documentation/YoctoDoraBuildWithMetaAlt=
era .
> Besides the zImage and rootfs the build process outputs an .dtb file.
> Now, in order to get the FPGA fabric involved, I'd have to come up with=

> a modified dts and build it.
> That's where I'm a bit lost in the blur. I can not figure out where the=

> generated dtb is coming from? What's the mechanism behind? I cannot fin=
d
> any .dts nor .dtb in the meta-altera layer.
>
> Besides that I realized that if I use the dtb that shipped with the
> board with the "daisy" kernel, the boot process gets stuck at "Waiting
> for root device /dev/mmcblk0p3..." The "shipped" kernel is version 3.8.=
0
> while the "daisy" one is 3.10.31-ltsi.
> Was there a change in the device tree layout as the "old" one doesn't
> work with the "daisy" kernel?
>
>
> Thanks in advance!
>
> Regards,
> Steffen



--C2u5NuVvEQdLo40bxsCA82KKQKbJSN3IV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVWdcuAAoJEKrAQLUVzr6sq5YIAKNa+YNFa0oC5/lVeU3ryX+C
8pb7eM7Z66i4DQTyHsJpNvLnuMooi2+peODUWuKgODAIRGTfaGCrcOS7AJ4Eeylo
mrAWNr5gthO+0nzh5L/tkvGB0GDEApbI5E6moYMqZ3VjYgfipabbwt9od9vDIsQE
eSD7cSklysLKWchL9DwdoS8X1wXFVL/8iM6Q8OSbjMigWfmUAbDw9fxMp5iqMD6C
qVUYzOtDaL6GVOdz97PZIu+ABLt26T5w/JIsExIaAqfPa4R65hy1P1l5oqRCtdSe
l16RqybcSzz4XJLNWtnVXV+46PwAwyS1IRJdyTh0oQr/W3rTyhTZparzguYKwqA=
=bzQp
-----END PGP SIGNATURE-----

--C2u5NuVvEQdLo40bxsCA82KKQKbJSN3IV--
