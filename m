Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6677AE00AEB; Tue, 10 Nov 2015 00:47:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 415B5E009D9
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 00:47:00 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 10 Nov 2015 00:46:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,269,1444719600"; d="scan'208";a="846799203"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.0.72])
	by orsmga002.jf.intel.com with ESMTP; 10 Nov 2015 00:46:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Tue, 10 Nov 2015 08:46:56 +0000
Message-ID: <1520936.0Hx4VQ3Cib@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1447106501-470-4-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
	<1447106501-470-4-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 03/10][AUH] recipe.py: Improvements and refactor of fetch method.
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
X-List-Received-Date: Tue, 10 Nov 2015 08:47:04 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi An=EDbal,

On Monday 09 November 2015 16:01:34 An=EDbal Lim=F3n wrote:
> Make more clear fetch method changing recursive manner to
> loop and split logic into try fetch and suffix change.
>=20
> Now when fails only retry changing recipe suffix when recipe
> isn't git based because does not make sense suffixes in SCM's.
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  recipe.py | 58 +++++++++++++++++++++++++++++++++--------------------=
-----
>  1 file changed, 33 insertions(+), 25 deletions(-)
>=20
> diff --git a/recipe.py b/recipe.py
> index 6fd8f24..0e8799f 100644
> --- a/recipe.py
> +++ b/recipe.py
> @@ -55,7 +55,6 @@ class Recipe(object):
>              "tar.gz", "tgz", "zip", "tar.bz2", "tar.xz", "tar.lz4", =
"bz2",
>              "lz4", "orig.tar.gz", "src.tar.gz", "src.rpm", "src.tgz"=
,
>              "svnr\d+.tar.bz2", "stable.tar.gz", "src.rpm"]
> -        self.suffix_index =3D 0
>          self.old_env =3D None
>=20
>          self.commit_msg =3D self.env['PN'] + ": upgrade to " + self.=
new_ver +
> "\n\n" @@ -540,33 +539,42 @@ class Recipe(object):
>          self.bb.unpack(self.env['PN'])
>=20
>      def fetch(self):
> -        try:
> -            self.bb.fetch(self.env['PN'])
> -        except Error as e:
> -            machine, failed_recipes =3D self._get_failed_recipes(e.s=
tdout)
> -            if not self.env['PN'] in failed_recipes:
> -                raise Error("unknown error occured during fetch")
> -
> -            fetch_log =3D failed_recipes[self.env['PN']][1]
> -            if self.suffix_index < len(self.suffixes) and
> self._is_uri_failure(fetch_log): -                I(" Trying new SRC_=
URI
> suffix: %s ..." % self.suffixes[self.suffix_index]) -              =20=

> self._change_source_suffix(self.suffixes[self.suffix_index]) -       =
     =20
>   self.suffix_index +=3D 1
> -                self.fetch()
> -
> -            if not self._is_uri_failure(fetch_log):
> -                if not self.checksums_changed:
> +        from gitrecipe import GitRecipe
> +
> +        def _try_fetch():
> +            try:
> +                self.bb.fetch(self.env['PN'])
> +                return
> +            except Error as e:
> +                machine, failed_recipes =3D
> self._get_failed_recipes(e.stdout) +                if not self.env['=
PN']
> in failed_recipes:
> +                    raise Error("Unknown error occured during fetch"=
,
> +                            stdout =3D e.stdout, stderr =3D e.stderr=
)
> +
> +                fetch_log =3D failed_recipes[self.env['PN']][1]
> +
> +                if not self._is_uri_failure(fetch_log) and not \
> +                        self.checksums_changed:
>                      self._change_recipe_checksums(fetch_log)
> -                    return
> -                else:
> -                    raise FetchError()
> +                    self.checksums_changed =3D True
> +                    return True
>=20
> -                if self.recipes_renamed and not self.checksums_chang=
ed:
> -                    raise Error("fetch succeeded without changing
> checksums") +                return False
> +
> +        succeed =3D _try_fetch()
> +        if succeed is False and not isinstance(self, GitRecipe):
> +            for sfx in self.suffixes:
> +                I(" Trying new SRC_URI suffix: %s ..." % sfx)
> +                self._change_source_suffix(sfx)
> +
> +                succeed =3D _try_fetch()
> +                if succeed is True:
> +                    break
>=20
> -            elif self.suffix_index =3D=3D len(self.suffixes):
> -                # Every suffix tried without success
> -                raise FetchError()
> +        if succeed is False:

"x is True" or "x is False" is very odd syntax - the "is" operator is f=
or when=20
you want to compare the instance of two things, and whilst that may wor=
k that=20
isn't what you want here. Simply "x" or "not x" would be the more stand=
ard way=20
to do this.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

