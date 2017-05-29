Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E97E00812; Mon, 29 May 2017 08:54:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D986DE007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 08:54:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga105.fm.intel.com with ESMTP; 29 May 2017 08:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,415,1491289200"; 
	d="asc'?scan'208";a="1175747828"
Received: from unknown (HELO [10.219.128.117]) ([10.219.128.117])
	by fmsmga002.fm.intel.com with ESMTP; 29 May 2017 08:54:30 -0700
To: Anders Wallin <wallinux@gmail.com>, yocto@yoctoproject.org
References: <b62b9ddae6fdd02a759346f6d9779554bb487c48.1495964122.git.wallinux@gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <592C4439.5010901@linux.intel.com>
Date: Mon, 29 May 2017 10:54:33 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <b62b9ddae6fdd02a759346f6d9779554bb487c48.1495964122.git.wallinux@gmail.com>
Subject: Re: [ptest-runner] timeout option missing the argument option ":" to getopt
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
X-List-Received-Date: Mon, 29 May 2017 15:54:32 -0000
X-Groupsio-MsgNum: 36253
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="WlP9TQO2DqVBQFDwsCogrUkoNl9fG05u4"

--WlP9TQO2DqVBQFDwsCogrUkoNl9fG05u4
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Anders,

Thanks for notice this issue, i will integrate the patch.

Cheers,
Anibal

On 05/28/2017 04:47 AM, Anders Wallin wrote:
> ptest-runner -t xx gives segfault
>=20
> Signed-off-by: Anders Wallin <wallinux@gmail.com>
> ---
>  main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/main.c b/main.c
> index d7a546f..505829c 100644
> --- a/main.c
> +++ b/main.c
> @@ -66,7 +66,7 @@ main(int argc, char *argv[])
>  	opts.ptests =3D NULL;
>  	opts.xml_filename =3D NULL;
> =20
> -	while ((opt =3D getopt(argc, argv, "d:ltx:h")) !=3D -1) {
> +	while ((opt =3D getopt(argc, argv, "d:lt:x:h")) !=3D -1) {
>  		switch (opt) {
>  			case 'd':
>  				free(opts.directory);
>=20


--WlP9TQO2DqVBQFDwsCogrUkoNl9fG05u4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJZLEQ7AAoJEGJqcE9h3glg0RUP/0LUjcxy/mrqfW+Sx2TpXXCy
d9M9IkFS/lDO9mDtJ2RdSE1ci0KFVXXulpd5Mjq3jX7BOl4Y2aQtNv3pn36G2X1C
k95ensiZ90LBB4LM/+sPaIyVDzRbaQ0WgbnM6e54ZMOI6hKdPXEL95rhNSkrRmVF
c14aQY6mkUrm2mG2bZ/INHH2zao/orqUwUKnpbXPx27UqoqMrbq7TLLGR2KVOM2g
nboh8OU3e8MGQlm0DlJeFhFVmBSUPyq1dd1PxaolPiUhNKcnTEv2Yyv0+5uN7/WE
x1fUOjjOvvn2TtqFybHcHVYlqddEn0a5AFiwBYwmCHIYTCq6A+Y/mmDWlwL25OP1
1ec/8ndXDSYomgQkVhFqRpRk0wr/pgDBUxr/a1/CeZNiNRzXNXJSYabu2RRPJwnS
edA0KpVWCocnZx5SKkfw2EqEmOjeZdG5igQ94+QeM1EnsuClqO9R8IG3RRK6imEI
a95eezYE92Lmdtpermo4ejcm4yPf7T/Y6iIcEZLNgnFMgwES//1w9b37WBmf3bEo
9FQf2tT1BbPro+UO5t0fFsbJKBGAus5cHic5rC1HakoMmyPUFTE5MPNRw0vedWlg
7KzP1Xdmy5C5UvI+m9LlkeW5YbC7SIcvnAYrTkdlUpjwcH7RK499oBrQfttmtwO4
7ayBDSJZu+MC8OWcLmzu
=AMpT
-----END PGP SIGNATURE-----

--WlP9TQO2DqVBQFDwsCogrUkoNl9fG05u4--
