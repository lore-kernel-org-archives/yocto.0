Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C225E00BB5; Sat,  1 Jul 2017 07:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0019CE00857
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 07:53:32 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id d193so82332pgc.2
	for <yocto@yoctoproject.org>; Sat, 01 Jul 2017 07:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=r4LwC3nMW51KN8I6MRxJj57f0NmEizXvIsPjcupeI7Y=;
	b=c6U0OC6SVqWaI3Scd6NJ21L8N0sEYoS//fgNCb8Rgrieqc/0R+XTIkWbs6vxgJueys
	Keg/RO9o35KU1WeyJ4zfKC+XnuC9t5Vnk94gdMVoKFTy4GrzNxtvviCa9uWlGE/Erp/a
	x6H+GZxg0KGgKCbTmQn7UWSSyiVSQXNHIhTbdcKGjKw2Kk3R/D+O+4pJECz6XUC2V6VP
	pFCpfwsNMH68rrpLv9yiohLLRuGPhlvfOtpaGJgZDjckwiuNZEYiLYOgpaft0jzGDql7
	5com5E8xob8Ru+Lj597SPCC60xxUUFmTY+giydYWSF6lRM2d19gXejKHnvgc/WDdTUq0
	BLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=r4LwC3nMW51KN8I6MRxJj57f0NmEizXvIsPjcupeI7Y=;
	b=uF7epTVDXLqGc5xgTrMjq8leJOG5V0rRGgtLCZFOYUFqbZQh03cf7k8wYJnpxF+uN6
	ak/dMWD7NJ8NiE6I43pTBtz5eLBgeLDj8nTEolVbkiUm7ZwQcIbyLk41/vXvStGwUZNp
	EsY2jXKMq4oXZkkml+QXmFkb+rJ3ebk5mMXUR72UUlsuHYy9y/gUGEPScewoPGy87ugM
	9iSqp7N+M8zfjakIK+o9UYGvOVCH4GFmbbevm0WvPlkPIE/bKtqnSbEh5u+fLf6KIPEo
	+HU9r0c58ClNbW1wdbGid8XZO7+b5Xt0tbCxcALPZkNCrMKbHiJBEl//YZqClv465Hgz
	F6qQ==
X-Gm-Message-State: AIVw111zFF8aFARgtjjPCO4Vp2C9nnQkYuTnrM32ovB+soPZJVMdmDkO
	h8QDogyQpxpjnNgGElI=
X-Received: by 10.99.168.71 with SMTP id i7mr1140547pgp.279.1498920811780;
	Sat, 01 Jul 2017 07:53:31 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5159:4118:3c4b:f59c?
	([2601:646:8882:b8c:5159:4118:3c4b:f59c])
	by smtp.gmail.com with ESMTPSA id
	g73sm13657061pfk.19.2017.07.01.07.53.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 01 Jul 2017 07:53:30 -0700 (PDT)
To: Pierre FICHEUX <pierre.ficheux@smile.fr>, yocto@yoctoproject.org
References: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
Date: Sat, 1 Jul 2017 07:53:21 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
Subject: Re: [PATCH] Added missing LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Sat, 01 Jul 2017 14:53:34 -0000
X-Groupsio-MsgNum: 36863
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="rXGHGnHEDtm9FtHC6wmAFTapI3SLOKp32"

--rXGHGnHEDtm9FtHC6wmAFTapI3SLOKp32
Content-Type: multipart/mixed; boundary="lCxXDNKEU7U0OR2HL6eQABd8EcbioCgVT";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Pierre FICHEUX <pierre.ficheux@smile.fr>, yocto@yoctoproject.org
Message-ID: <031b6952-b6af-125b-fbf4-414d6f76e1bc@gmail.com>
Subject: Re: [yocto] [PATCH] Added missing LDFLAGS in sample recipe for morty
 branch
References: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>
In-Reply-To: <1498895529-24192-1-git-send-email-pierre.ficheux@smile.fr>

--lCxXDNKEU7U0OR2HL6eQABd8EcbioCgVT
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/1/17 12:52 AM, Pierre FICHEUX wrote:
> This problem causes the following error :
>=20
> ERROR: example-0.1-r0 do_package_qa: QA Issue: No GNU_HASH in the elf b=
inary
>=20
> Signed-off-by: Pierre FICHEUX <pierre.ficheux@smile.fr>
> ---
>  .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb   =
  | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-exampl=
e/example/example-recipe-0.1.bb b/scripts/lib/bsp/substrate/target/arch/l=
ayer/recipes-example/example/example-recipe-0.1.bb
> index 5fbf594..e534d36 100644
> --- a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/examp=
le/example-recipe-0.1.bb
> +++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/examp=
le/example-recipe-0.1.bb
> @@ -14,7 +14,7 @@ SRC_URI =3D "file://helloworld.c"
>  S =3D "${WORKDIR}"
> =20
>  do_compile() {
> -	     ${CC} helloworld.c -o helloworld
> +	     ${CC} ${LDFLAGS} helloworld.c -o helloworld

perhaps doing compile and link in two steps where CFLAGS and LDFLAGS are
used would be clearer

something like

${CC} ${CFLAGS} -c helloworld.c -o helloworld.o
${LD} ${LDFLAGS} helloworld.o -o helloworld


>  }
> =20
>  do_install() {
>=20



--lCxXDNKEU7U0OR2HL6eQABd8EcbioCgVT--

--rXGHGnHEDtm9FtHC6wmAFTapI3SLOKp32
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAllXt2gACgkQuwUzVZGdMxT/cQCfTmfHOU80CEQQFM0yMBT8Tot8
HhQAn3XThqDr782zp8NwSy7/UI1HFSs+
=zAz9
-----END PGP SIGNATURE-----

--rXGHGnHEDtm9FtHC6wmAFTapI3SLOKp32--
