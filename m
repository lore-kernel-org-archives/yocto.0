Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE37E009B6; Mon, 12 Jan 2015 12:02:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64747E009B3
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:01:53 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1YAlBR-0007IE-85 from Joe_MacDonald@mentor.com ;
	Mon, 12 Jan 2015 12:01:53 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 12 Jan 2015 12:01:52 -0800
Received: by burninator (Postfix, from userid 1000)	id 301AD5809F6; Mon, 12
	Jan 2015 15:01:49 -0500 (EST)
Date: Mon, 12 Jan 2015 15:01:49 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <jackie.huang@windriver.com>
Message-ID: <20150112200148.GJ6167@mentor.com>
References: <1420442714-13859-1-git-send-email-jackie.huang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1420442714-13859-1-git-send-email-jackie.huang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] lsof: use wildcard for version number in bbappend
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
X-List-Received-Date: Mon, 12 Jan 2015 20:02:05 -0000
X-Groupsio-MsgNum: 22949
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OX2aLCKeO1apYW07"
Content-Disposition: inline

--OX2aLCKeO1apYW07
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks Jackie.
-J.

[[yocto] [meta-selinux][PATCH] lsof: use wildcard for version number in bba=
ppend] On 15.01.05 (Mon 15:25) jackie.huang@windriver.com wrote:

> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The recipe in oe-core is already updated:
> b463d70 lsof: Upgrade to 4.88
>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-extended/lsof/{lsof_4.87.bbappend =3D> lsof_%.bbappend} | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-extended/lsof/{lsof_4.87.bbappend =3D> lsof_%.bbappend} (=
100%)
>=20
> diff --git a/recipes-extended/lsof/lsof_4.87.bbappend b/recipes-extended/=
lsof/lsof_%.bbappend
> similarity index 100%
> rename from recipes-extended/lsof/lsof_4.87.bbappend
> rename to recipes-extended/lsof/lsof_%.bbappend
> --=20
> 1.9.1
>=20
--=20
-Joe MacDonald.
:wq

--OX2aLCKeO1apYW07
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUtCgsAAoJEEn8ffcsOfaWwDQIANUcLG5GOz1hCz6nNsBFyVkv
b7KgFLjOMnRhTwMJqwNbCInzhwd45zFdu0g4ILAwuYVcPOfI8o0pNVrc8WZzFb29
fV2YFhrbfxymBDsINItKPYs+zSixnTcbYzGRH2CIv29hw0580dlk5OWnFBXkKZJx
HFNNJjBx26E0wG6oZp70VkIz9Xz3AL7I/6B7DSBkVYLdLRu8xDvOImi4iTegG/31
Z4GPwQ1nQbMGM9Nfk1BOn/n/fiRg8E4ovrDn+66Ksq/d/BTM+dQebp3OmVN+0dtT
bUBYOI7f6wclEw7K4m/mL1UBsC+XX2t5H4jYNzpYKznGfT5PihU6J/lIfQmVHRI=
=qpk9
-----END PGP SIGNATURE-----

--OX2aLCKeO1apYW07--
