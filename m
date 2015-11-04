Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8CC0E00AE4; Wed,  4 Nov 2015 05:56:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8B74FE00ACE
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 05:56:09 -0800 (PST)
Received: (qmail 16656 invoked by uid 1003); 4 Nov 2015 13:56:09 -0000
Received: from unknown (HELO ?192.168.11.125?)
	(philip@opensdr.com@108.44.122.7)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	4 Nov 2015 13:56:09 -0000
To: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>,
	yocto@yoctoproject.org
References: <563A09A3.4050706@smartacoustics.co.uk>
From: Philip Balister <philip@balister.org>
Message-ID: <563A0E6E.9010005@balister.org>
Date: Wed, 4 Nov 2015 08:55:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563A09A3.4050706@smartacoustics.co.uk>
Subject: Re: yocto on zynq, How to configure kernel to include drivers
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
X-List-Received-Date: Wed, 04 Nov 2015 13:56:16 -0000
X-Groupsio-MsgNum: 27169
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="hIUCqW5VI8XvaehnATvvr6npgQ97i0CXD"

--hIUCqW5VI8XvaehnATvvr6npgQ97i0CXD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 11/04/2015 08:35 AM, Toby Gomersall wrote:
> I'm quite new to yocto so still have a lot to learn. I'm trying to
> include the DMA drivers in my yocto build for a Zynq based on the
> meta-xilinx layer (http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilin=
x/).

You should try emailing this list for meta-xilinx specific issues.

https://lists.yoctoproject.org/listinfo/meta-xilinx

Philip

>=20
> I thought I'd be able to add them in the kernel configuration
> (menuconfig) by running (from within the build directory):
>=20
> bitbake linux-xlnx -c kernel_configme -f
> bitbake linux-xlnx -c menuconfig
>=20
> I can't see the DMA drivers in menuconfig. However if I run menuconfig
> within the linux-xlnx tree (which is referenced by the SRCURI) I can se=
e
> the DMA drivers. Is there some reason they're hidden in the build
> menuconfig?
>=20
> Thanks,
> Toby
>=20
>=20
>=20
>=20


--hIUCqW5VI8XvaehnATvvr6npgQ97i0CXD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWOg54AAoJEMDJd4rr0mer2wgH/iRaTbennqPZ/e7MaqZxORnh
snSm+2+ZJuoLpWkUxOk9vYQ6uTpNMT+vJUW9fc1MKM5P4QJ1VBFcFlbD09XY+THc
s8OpzcmTPdyfgagmt9C4ynXeDr8Yf+6RrMgJw9FK3s48uJo8wUrX3DfNrMosNKbv
DGolwBPlriRhXR1LZUUxqRDRbFudgjfPQmglm/svSw+5uazCMK/FF4493bvqGdfL
05KsYayAQ0iT1sDjt9lfjiaHDliN+pOKU8U6/XDn4oe0I0ivnF9hgGptVkVPPFQT
ZEf/agdQ+0x8zF7mJCiczjVdj9qbwA47iMudKPP+zJfRHdUxyPu3dhUdfinU/ZM=
=0iYd
-----END PGP SIGNATURE-----

--hIUCqW5VI8XvaehnATvvr6npgQ97i0CXD--
