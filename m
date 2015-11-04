Return-Path: <toby.gomersall@smartacoustics.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94F83E00AF6; Wed,  4 Nov 2015 06:20:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [80.241.60.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx2.mailbox.org (mx2.mailbox.org [80.241.60.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C607E00AE4
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 06:20:47 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.mailbox.org (Postfix) with ESMTPS id D6DA440254;
	Wed,  4 Nov 2015 15:20:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by gerste.heinlein-support.de (gerste.heinlein-support.de
	[91.198.250.173]) (amavisd-new, port 10030)
	with ESMTP id GeT5fpDy2WMp; Wed,  4 Nov 2015 15:20:44 +0100 (CET)
To: "Hecht, Martin (Silica)" <Martin.Hecht@avnet.eu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <563A09A3.4050706@smartacoustics.co.uk>
	<1B92730CF2B23F4DB7A48AAE6E3CAA361461CA0B@DEPOIY0MX08MB03.msg.avnet.eu>
From: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <563A1438.80309@smartacoustics.co.uk>
Date: Wed, 4 Nov 2015 14:20:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1B92730CF2B23F4DB7A48AAE6E3CAA361461CA0B@DEPOIY0MX08MB03.msg.avnet.eu>
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
X-List-Received-Date: Wed, 04 Nov 2015 14:20:49 -0000
X-Groupsio-MsgNum: 27170
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="CIV63q4swf8enKvbTV6QqLL6DnN6cg3Ko"

--CIV63q4swf8enKvbTV6QqLL6DnN6cg3Ko
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

We've tried building the linux-xlnx tree standalone and we have the DMA
drivers available to add in menuconfig but not when I build
core-image-minimal. I thought the full build would pick up the
linux-xlnx kernel and make the same options available. Is there
something I need to do to make them available?

Regards,
Toby

On 04/11/15 13:47, Hecht, Martin (Silica) wrote:
> Hi Toby,
>=20
> Please compare with http://www.wiki.xilinx.com/Linux+Drivers. Most of t=
he DMA drivers aren't mainlined by now. You need to add them by yourself =
currently.
>=20
> Regards,
> Martin
>=20
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject=
=2Eorg] On Behalf Of Toby Gomersall
> Sent: Mittwoch, 4. November 2015 14:44
> To: yocto@yoctoproject.org
> Subject: [yocto] yocto on zynq, How to configure kernel to include driv=
ers
>=20
> I'm quite new to yocto so still have a lot to learn. I'm trying to incl=
ude the DMA drivers in my yocto build for a Zynq based on the meta-xilinx=
 layer (http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/).
>=20
> I thought I'd be able to add them in the kernel configuration
> (menuconfig) by running (from within the build directory):
>=20
> bitbake linux-xlnx -c kernel_configme -f bitbake linux-xlnx -c menuconf=
ig
>=20
> I can't see the DMA drivers in menuconfig. However if I run menuconfig =
within the linux-xlnx tree (which is referenced by the SRCURI) I can see =
the DMA drivers. Is there some reason they're hidden in the build menucon=
fig?
>=20
> Thanks,
> Toby
>=20
>=20


--CIV63q4swf8enKvbTV6QqLL6DnN6cg3Ko
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWOhQ7AAoJEJFfznYik92WvtQQAIQSvKkr0hOwlSHH1bvuNAo1
9EALTyQeoIdzme4ZhrYRUknjXrWsl1oGHyCWOK76YGRMY4XPGj+2puapMTqwWz9I
/GmqA/CBZKRF29f0tdfA8VTopDM5xcijE2opGy7ADkn8mP4hQGSWCNOEjZHvzPkA
qGKyHUHOP4NBfPDjfTERQUE0J1zUq8Mwl5ve37iF+mcV+B3kJZnvgNvo1oWjmyFS
o/542N+LlJ0mTUCNyjLGpi1Fo7D+OQTooN99ImI09WV8F65ai2mD0RDKVw3CGQnL
PfQxdxQlZsUs+hiucZ4BlRKHotf9ZfdoWa5vPR2WU++9Hgx9hBSIFBYfV6x7Vu2w
pS90FaaSoQyR2caUfPUtaW4QbxjaveI96D8zmSkqbEIzNKy/IHtuzbS+NM4mPkRt
/GedXQn2L4IAqjwb/AOtkXyUHsQF/9vt88pfFTJ9+DjATlXSHKyaD665oIFbzuFY
IyiY0uoLXLvb0xsqiKpC8SdaPkVmR3/BH1+nJQcBiDR5hGP+eECTML+GHHo/mgRV
LGnhZq8kPz1FG2AOIuwS5iQU/7/YBT1Z4pelb2M97FPq4Hlcblk8FYmeSEQSFCZX
u0KgjXxWvJb1P6SsUZxUOYyFzHHZvTPmY5e8IOHxjsyk6nmv0cLC6MPf3L/smOa8
1JwAgeH2dmA1QUQ2HiN5
=uwvr
-----END PGP SIGNATURE-----

--CIV63q4swf8enKvbTV6QqLL6DnN6cg3Ko--
