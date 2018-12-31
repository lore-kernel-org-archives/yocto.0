Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 514D0E00AB0; Sun, 30 Dec 2018 18:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A13B6E009B1
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2018 18:46:14 -0800 (PST)
Received: from svr-orw-mbx-09.mgc.mentorg.com ([147.34.90.209])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1gdnan-0000Bf-Au from Joe_MacDonald@mentor.com ;
	Sun, 30 Dec 2018 18:46:13 -0800
Received: from svr-orw-mbx-02.mgc.mentorg.com (2002:9322:5aca::9322:5aca) by
	SVR-ORW-MBX-09.mgc.mentorg.com (2002:9322:5ad1::9322:5ad1) with
	Microsoft
	SMTP Server (TLS) id 15.0.1320.4; Sun, 30 Dec 2018 18:46:11 -0800
Received: from burninator.cal.mentorg.com (147.34.91.1) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Sun, 30 Dec 2018 18:46:09 -0800
Received: by burninator.cal.mentorg.com (Postfix, from userid 5844)
	id A8FC328A12EF; Sun, 30 Dec 2018 21:46:08 -0500 (EST)
Date: Sun, 30 Dec 2018 21:46:07 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Message-ID: <20181231024607.GA14710@mentor.com>
References: <20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
	<20181024234913.GA11980@deserted.net>
	<8a5b43c6-85eb-dd7a-ceee-d10f6977cca3@kernel.org>
	<CAKRytNw3Ct9mc1SVCRKDg8cK+KUvuQLhVoSD-7vJPu93eSk9Aw@mail.gmail.com>
	<a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>
MIME-Version: 1.0
In-Reply-To: <a075bc8f-aae5-443c-ba5d-a75eb6b05e58@email.android.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Mon, 31 Dec 2018 02:46:15 -0000
X-Groupsio-MsgNum: 43605
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [selinux] sumo compilation] On 18.12.30 (Sun 14:31) MacDonald,=
 Joe wrote:

> I have both ready to go, there's been a few hiccups with my access to the=
 git
> server. I'll push my queued changes somewhere public when I get to a keyb=
oard
> later today so at least everyone can see what's coming.=20

Update on this.  While we're sorting out the access issue, the current
master, sumo and thud branches on my personal mirror
(https://github.com/joeythesaint/meta-selinux) are mostly up-to-date
(the only thing I haven't included in there yet is the refpolicy update
for the 20180114 release, little overdue, that) and build for the
respective Yocto releases.  If that's not your experience, please let me
know and we'll get that sorted out right away.

Thanks.

-Joe.

>=20
> -J.
>=20
> On Dec 30, 2018 6:29 AM, Stefano Cappa <stefano.cappa.ks89@gmail.com> wro=
te:
> Are there any news about this? Also for thud branch.=20
>=20
> Il mar 30 ott 2018, 14:46 Sinan Kaya <okaya@kernel.org> ha scritto:
>=20
>     On 10/24/2018 7:49 PM, Joe MacDonald wrote:
>     > Hey all,
>     >
>     > I just thought I should quickly follow up on this.  I have a change=
 set
>     > ready that includes tagging and a minor tweak for sumo, integration=
 of
>     > the current outstanding patch list and a tag for thud and a couple =
of
>     > additional things (possibly) for post-thud.  I'll send out a set for
>     > sumo and maybe an additional one for thud/post- possibly tomorrow or
>     > after I get home on Friday.
>=20
>     Thanks, we are looking forward to see it on yocto.
>=20
>     >
>     > -J.
>=20
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org
>     https://lists.yoctoproject.org/listinfo/yocto
>=20

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--J2SCkAp4GZ/dPZZf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlwpgu4ACgkQSfx99yw5
9pb1vgf+M1RgBGQNifnFFs3PzmuxOifJ5+Rey5StIOMKfaTyttcf9LSElG4w7sjW
1GTRhF11or3+mO7F3w/hMrRLMtQccxsuEKv7+Zd73wVYPJQW6XfBc3VmcHzKYJlW
AqS2KVdyD8+e540hkidqhWV7s15nZSnJmfdGm/yxG5SXOJRPajKOTKegmiimSt36
wdI2uqsiZjHpkyQEfe+1mIFhDFccnCcZ9U347KisRIkvsFBMsayfZ9EWsK45UH3V
YWptyjGcS2U/tfUfkqxASnU1f68PCKtEubjeSrf7zyGRyrOlIYgTBxtTdAKTlTt3
nZb8sD9UZt1MZ1hShAf8yu7AVgLUzw==
=PvhU
-----END PGP SIGNATURE-----

--J2SCkAp4GZ/dPZZf--
