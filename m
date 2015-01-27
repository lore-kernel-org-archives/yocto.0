Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 591A7E008A7; Mon, 26 Jan 2015 18:46:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78CB1E00853
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 18:46:32 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1YFwAi-0001KC-Au from Joe_MacDonald@mentor.com ;
	Mon, 26 Jan 2015 18:46:32 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 26 Jan 2015 18:46:31 -0800
Received: by burninator (Postfix, from userid 1000)	id 436E85810A4; Mon, 26
	Jan 2015 21:46:28 -0500 (EST)
Date: Mon, 26 Jan 2015 21:46:28 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <rongqing.li@windriver.com>
Message-ID: <20150127024627.GL4791@mentor.com>
References: <1421833776-10864-1-git-send-email-rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1421833776-10864-1-git-send-email-rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] lxc: inherit enable-selinux
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
X-List-Received-Date: Tue, 27 Jan 2015 02:46:43 -0000
X-Groupsio-MsgNum: 23181
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OQhbRXNHSL5w/5po"
Content-Disposition: inline

--OQhbRXNHSL5w/5po
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [PATCH][meta-selinux] lxc: inherit enable-selinux] On 15.01.21 (We=
d 17:49) rongqing.li@windriver.com wrote:

> From: Roy Li <rongqing.li@windriver.com>
>=20
> inherit enable-selinux to kill the warning that lxc rdepends on libselinu=
x,
> but it isn't a build dependency
>=20
> Signed-off-by: Roy Li <rongqing.li@windriver.com>

Merged, thanks Roy.

-J.

> ---
>  recipes-containers/lxc/lxc_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 100644 recipes-containers/lxc/lxc_%.bbappend
>=20
> diff --git a/recipes-containers/lxc/lxc_%.bbappend b/recipes-containers/l=
xc/lxc_%.bbappend
> new file mode 100644
> index 0000000..8c11cac
> --- /dev/null
> +++ b/recipes-containers/lxc/lxc_%.bbappend
> @@ -0,0 +1 @@
> +inherit enable-selinux
> --=20
> 2.1.0
>=20
--=20
-Joe MacDonald.
:wq

--OQhbRXNHSL5w/5po
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUxvwDAAoJEEn8ffcsOfaWmNUIAIxdcb71oIYiyAC3h7ffSYfc
foda9cHc9KOne+E+eM0srOntLIY/79r9LMamd61GZWsuORu9ZQP41fkCrD9icqYc
IHZP6uY/0nRoUm0JVe3A0U4iKAxN890g7FAnqcM449BkLCB3Ve8rwR9HoMN4Bula
7FkyEMjdlr4v6le/Rm31oo4S0eiCID/ZxrJBwAV07OfgW7olikDgxvP2pyNr3Gre
OPp27OaPR+XlBaFSY/9TFAx1+SOropJ4vNEW7Pu3AVXttc2M25BrwxJ+MjD3fozB
cohNhFACclWMuiL2eZQA00JtWbZALuk7GlF64Eetlja706opyDeaN9t1cKwmqBo=
=R4mW
-----END PGP SIGNATURE-----

--OQhbRXNHSL5w/5po--
