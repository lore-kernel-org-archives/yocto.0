Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A488AE009B8; Fri,  8 May 2015 13:00:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.58.60 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8399 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 May 2015 13:00:29 PDT
Received: from 3.mo68.mail-out.ovh.net (3.mo68.mail-out.ovh.net [46.105.58.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4549E0098A
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 13:00:29 -0700 (PDT)
Received: from mail626.ha.ovh.net (gw6.ovh.net [213.251.189.206])
	by mo68.mail-out.ovh.net (Postfix) with SMTP id CD0BDFF97F4
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 18:21:27 +0200 (CEST)
Received: from b0.ovh.net (HELO queueout) (213.186.33.50)
	by b0.ovh.net with SMTP; 8 May 2015 18:21:27 +0200
Received: from cpc19-shep11-2-0-cust55.8-3.cable.virginm.net (HELO
	bang.betafive.co.uk) (paul@betafive.co.uk@81.111.243.56)
	by ns0.ovh.net with SMTP; 8 May 2015 18:21:26 +0200
Received: by bang.betafive.co.uk (Postfix, from userid 1000)
	id 58803412AC; Fri,  8 May 2015 17:23:11 +0100 (BST)
Date: Fri, 8 May 2015 17:23:11 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Message-ID: <20150508162311.GA20977@bang.betafive.co.uk>
References: <3230301C09DEF9499B442BBE162C5E48258ED362@sestoex09.enea.se>
	<20150507200911.GA19158@bang.betafive.co.uk>
	<3230301C09DEF9499B442BBE162C5E48258EEECD@sestoex09.enea.se>
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48258EEECD@sestoex09.enea.se>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Ovh-Tracer-Id: 16322733901594934215
X-Ovh-Remote: 81.111.243.56 (cpc19-shep11-2-0-cust55.8-3.cable.virginm.net)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: -100
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrleduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeektddrleduucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: opkg and gpg signed ipk packages
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
X-List-Received-Date: Fri, 08 May 2015 20:00:33 -0000
X-Groupsio-MsgNum: 24745
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline

--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 08, 2015 at 02:26:26PM +0000, Sona Sarmadi wrote:
> Thanks Paul for your quick feedback .
>=20
> > opkg 0.2.x only has support for checking the package feed signature. To=
 use
> > this, add the line 'option check_signature 1' to your opkg.conf file an=
d place a
> > Packages.sig file next to the Packages file in your package feed. ASCII-
> > armoured signatures are not supported.
>=20
> Ok, even if we can't sign the individual .ipk files, by signing the Packa=
ges file we can achieve some
> Level of authentication, e.g. if someone tampers with the .ipk files they=
 can't change the matching=20
> checksum in the Packages.sig. The checksumming algorithm used for package=
s is MD5 now which is
>  not really secure. Is it possible to use another algorithm. I guess if w=
e use a better checksum for=20
> packages, there is no need for Signing each individual .ipk patches, sign=
ing package feed (Packages)=20
> would be enough. Right?
>=20

SHA256 is also supported. In OpenEmbedded, use the PACKAGECONFIG 'sha256' t=
hen
ensure that your Packages file contains a 'SHA256sum: ...' line for each
package.

Again, these instructions are fairly rough as I haven't used them for a whi=
le.

Thanks,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJVTOLvAAoJEBwoJlo7UPQD/pkH/jQHxhPttP6QnG+crDZ1azc3
22ncambsGJ2SaI0puwQs84jS/qdbO1hMYwh0QPARXiQUdJZ+zvIRwmS+G97YbR2V
CB9L1KJtRio8p5FxHq627FNN2NpG7HqTXSRtb4eqApeeR66w5JFw/nuVBYhoNoiA
3iw6PKiNAj/L36wssMZOUvfMv0EtSx4AcJmv46bKLSsPR2gCmVHK7Lcjj0iFSyNX
15bywX4UdUMUsi828WuGJSdj90EomW/VYj/7DnCDXTtmIEpslioD17I0LNQxsuzJ
L1L2Pmo/ESaKQ7VyduhxeW40aDYKpUNYzT8pMY3gu8KSAWd7vnR4Kiox4E5DenI=
=v4yY
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
