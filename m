Return-Path: <toby.gomersall@smartacoustics.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33487E00C86; Fri, 13 Nov 2015 02:55:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [80.241.60.215 listed in list.dnswl.org]
Received: from mx2.mailbox.org (mx2.mailbox.org [80.241.60.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F9DE00C80
	for <yocto@yoctoproject.org>; Fri, 13 Nov 2015 02:55:36 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx2.mailbox.org (Postfix) with ESMTPS id E2D344209C;
	Fri, 13 Nov 2015 11:55:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by gerste.heinlein-support.de (gerste.heinlein-support.de
	[91.198.250.173]) (amavisd-new, port 10030)
	with ESMTP id uHANv_LfJT1A; Fri, 13 Nov 2015 11:55:33 +0100 (CET)
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
References: <5644591F.1090703@smartacoustics.co.uk>
	<5644C66D.4030408@windriver.com>
From: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
Message-ID: <5645C19E.1010508@smartacoustics.co.uk>
Date: Fri, 13 Nov 2015 10:55:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5644C66D.4030408@windriver.com>
Subject: Re: Building yocto with hard float support
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
X-List-Received-Date: Fri, 13 Nov 2015 10:55:39 -0000
X-Groupsio-MsgNum: 27311
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="3xN7hbVhlgqLuJ3eUjHkXWiTvxT29uViH"

--3xN7hbVhlgqLuJ3eUjHkXWiTvxT29uViH
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 12/11/15 17:03, Mark Hatle wrote:
> On 11/12/15 3:17 AM, Toby Gomersall wrote:
>> Hi,
>>
>> I want to build yocto with hard float support. I understand that I can=

>> point the EXTERNAL_TOOLCHAIN variable at the appropriate external hard=

>> float compiler (gcc-5-arm-linux-gnueabihf). However, I was wondering i=
f
>> there was anything within the yocto project to do this?
>=20
> I'm going to be pedantic for a second.. bear with me.
>=20
> ARM has two ABIs, the standard EABI which passes floating point values =
via
> integer registers and EABIHF that passes floating point values via floa=
ting
> point registers.
>=20
> EABI allows hardware floating point along with neon or any other core s=
pecific
> optimizations.
>=20
> EABIHF requires a specific set and size of VFP registers.
>=20
> The Yocto Project is capable of building for both ABIs with whatever
> combinations of optimizations you need.
>=20
> The ABI and default processor optimization is configured by the 'DEFAUL=
TTUNE'
> parameter.  This is typically defined in your machine configuration fil=
e, either
> explicitly or implicitly via the including of the tune files.
>=20
>=20
> So for example, if you have an ARMv5 CPU you would likely use:
>=20
> DEFAULTTUNE=3D"armv5e"
>=20
> This would select ARM EABI, no VFP.
>=20
> alternatively you could do:
>=20
> DEFAULTTUNE=3D"armv5e-vfp"
>=20
> This would select ARM EABI w/ VFP floating point.
>=20
> OR
>=20
> (what I think you are actually trying to ask)
>=20
> DEFAULTTUNE=3D"armv5ehf-vfp"
>=20
> This would select ARM EABIHF w/ VFP floating point.
>=20
>=20
> So start with your machine and determine which defaulttune (bitbake -e)=
 you have
> selected.  Adjust it to a compatible setting for the ABI and processor
> optimizations that you wish to use.
>=20
>> I'm concerned that future updates to an external compiler might affect=

>> my build and I would prefer to use a method from within the yocto proj=
ect.
>=20
> Unless you have a specific need, I don't recommend external compilers. =
 The
> Yocto Project compilers and configurations are well tested and high qua=
lity.
> While using an external compiler is support by some vendors, it adds co=
mplexity
> that may not be beneficial.  (Sometimes support and other aspects of co=
mmercial
> offerings outweigh the complexity..)
>=20
>> Thank you,
>> Toby
>>
>>
>>
>=20

Thank you very much for your help, that was exactly what I was looking fo=
r.


--3xN7hbVhlgqLuJ3eUjHkXWiTvxT29uViH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWRcGkAAoJEJFfznYik92WApgP/3Nx4HfGbUKZorSLOECQVH2W
pORAUM22Eg3eVOau/2zIMIYH2Sy5IY7RCKhZe62Ya5GkaB4ytn1+aP7Q4Ahlvhr5
2ztd70D2JoEBESxu95h4BjVzo299S5PDyTBFkLuxg8DmYGAPDq9QGl3GQ2LPVeyV
vV3LB13f9oUh2mCXEzo5s0AbuS9VNj346MJZIIXodWQfnakahsx/Lq1jTbWJbHkZ
r2eGDq2f7qlYiSFNNPM6nOdz31aA8E76zKbPYwCBbZp1EQD41PrlYJFn+rI5TxL+
neRqRgV1wbo9srclT1rNHoAoPY7zDgNuC/93ipKlGpKOJjPsVhUPSfM4YHyOp1sF
Xw7KjRLwDJId+oZn2i9jRtW1D0aiKNnuJ1cYySdQ/8AZmAZPcQEbLrG/ejdI13Xl
2uvLj9Fq/3shNiDi0K3invj5g8Vi/dhTpD6yy4aH0TCAoOoJ+HIKpFnHkyJITbGe
Y2LtAcco8SJL4GTpZf91hUD6sPHjps3fERy88WQJXDAdY+rcWs3knFT1xN+O3VKT
kZOmHzc3s8r9WGpRxy/RZR5fqoboSSIgKqescUWJanDXKVjQTtD+0QxBIBui1swx
hcKPbV5h6DoKyOEGvO5rFldSEduid4GzhRQ1KBusB6JHSv2yX1uy8sD5HgowlGcQ
uAjT1l+kMwYF3B4rqxOF
=ddmN
-----END PGP SIGNATURE-----

--3xN7hbVhlgqLuJ3eUjHkXWiTvxT29uViH--
