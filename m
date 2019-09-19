Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22DB3E00D54; Thu, 19 Sep 2019 08:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [87.98.162.229 listed in list.dnswl.org]
X-Greylist: delayed 3598 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Sep 2019 08:04:53 PDT
Received: from 12.mo1.mail-out.ovh.net (12.mo1.mail-out.ovh.net
	[87.98.162.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E373CE009E2
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 08:04:53 -0700 (PDT)
Received: from player791.ha.ovh.net (unknown [10.108.54.67])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id E285018F59A
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 15:45:18 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player791.ha.ovh.net (Postfix) with ESMTPSA id 389829E2B7B2;
	Thu, 19 Sep 2019 13:45:17 +0000 (UTC)
To: Patrick Doyle <wpdster@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <17495225-57cc-ead7-d202-0a409d7a7e4f@3mdeb.com>
Date: Thu, 19 Sep 2019 15:45:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
X-Ovh-Tracer-Id: 9686679850183962281
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgdeilecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: Re: How to share files between recipes?
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
X-List-Received-Date: Thu, 19 Sep 2019 15:04:55 -0000
X-Groupsio-MsgNum: 46650
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="VqZQUJ1ov26d0Ml9pFyobTar0xRfHGGnr"

--VqZQUJ1ov26d0Ml9pFyobTar0xRfHGGnr
Content-Type: multipart/mixed; boundary="5n9xtwhbPSwDkmHK84XM5lQrf2DgJucqt";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Patrick Doyle <wpdster@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <17495225-57cc-ead7-d202-0a409d7a7e4f@3mdeb.com>
Subject: Re: [yocto] How to share files between recipes?
References: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>
In-Reply-To: <CAF_dkJBpgkpBJMTueuiNFNEVDeLy6=ZowViJ-G4QzDBOx=qRZw@mail.gmail.com>

--5n9xtwhbPSwDkmHK84XM5lQrf2DgJucqt
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 19.09.2019 15:39, Patrick Doyle wrote:
> I have a set of data files (cryptographic keys) that I would like to
> share among several recipes in my build.  They won't go into the
> rootfs, but they will be used by multiple recipes that construct the
> rootfs.  So, to the best of my understanding, it seems like I should
> put them in sysroot and somehow access them from there.
>
> I constructed the following recipe:
> SUMMARY =3D "Development keys used by my image"
> DESCRIPTION =3D "Install the development keys in the sysroot so that th=
ey \
> can be referenced by other recipes."
>
> LICENSE =3D "Proprietary"
> LIC_FILES_CHKSUM =3D
> "file://${COMMON_LICENSE_DIR}/Proprietary;md5=3D0557f9d92cf58f2ccdd50f6=
2f8ac0b28"
>
> SRC_URI =3D "file://keys"
>
> do_install() {
>     install -d ${D}/${datadir}
>     install -m 755 -d ${WORKDIR}/keys ${D}/${datadir}
> }
>
> FILES_${PN} +=3D "${datadir}/keys/"
>
> But when I attempt to bitbake this recipe, I get the following error:
> ERROR: development-keys-1.0-r0 do_package: QA Issue: development-keys:
> Files/directories were installed but not shipped in any package:
>   /usr
>   /usr/share
>
> Ummm.... I don't put anything in /usr or /usr/share.
> I don't inherit from anything (other than base.bbclass) that puts
> anything in /usr or /usr/share.
You do. datadir is /usr/share.
>
> Does base.bbclass put anything in /usr or /usr/share?
> Why?
> I suppose I could follow the advice given in the error message and
>
> rm -rf ${D}/usr
>
> in my do_install() task, but I'd like to understand why and how those
> directories are being created in the first place?
>
> --wpd

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--5n9xtwhbPSwDkmHK84XM5lQrf2DgJucqt--

--VqZQUJ1ov26d0Ml9pFyobTar0xRfHGGnr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdg4ZrAAoJEPFAHS4cyxnvDAMQAJY8mTF4jI+xnx5xgHLIFGUJ
A4XzkAgZZm738RgbnqvtWfnXPFGD1+v24SlwzQX/KwXZ6guyNq3VdV7WsjBQeSvA
nbk/9Dbv7j1ZXwIX923uIZSsuIWxONySS3wZG/q4sq49OdjrU5Lk+35xD0im5WiZ
0DrlssQLUEP6dw7h4S67jhL6tntj1LaOlqpvmxW+agyOR9HWMbvrJCdsTCWKNuU9
yUDH9Sz2OV6wXYwtCKAUTZZlnnHRV6wNbzNuXm6F1hf9wve4J43Z0uyyR2vXRsNz
hgTkeb/UjHQPku2fD9P06aif7TpZQ8ymeG1GxKiw1raup6sCDpnh/QPTZBGy4tKv
heeu7aSEPEN3Cog2BW1gBi1wciLnKtOsihmQS0Gd9+cvnhX8N7hhfEJ6PgyTq3dV
BkXAlGSvDryIRnoA66eNxeSIrJnV1WoT9pGCUm17ARP5awA25qnknW/nl5rvep3P
uTQNFVWsyVMRDEef6YHE5zw+3KxfUKbG6rfBiwV9irjDXBqABdnFJR5wMGPEbj+K
NSZE0/0drJw73DwLNAGF/auZ0pe8ghf2xhg5O1mwF2ZRY1GlP4mQ3+xp2lQ9N38q
hArNaxInnDs26fraixoPJqNa7RXU3EgAEsOTnYgXgE8ndGCGIA+1otB0QVOqeNX7
7HaYjXIWnNRKqWikRXSm
=A75b
-----END PGP SIGNATURE-----

--VqZQUJ1ov26d0Ml9pFyobTar0xRfHGGnr--
