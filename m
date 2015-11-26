Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C63FE00AF6; Thu, 26 Nov 2015 12:25:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4D8E005B3
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 12:25:49 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 26 Nov 2015 12:25:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,348,1444719600"; d="scan'208";a="695087495"
Received: from rsiu-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.187])
	by orsmga003.jf.intel.com with ESMTP; 26 Nov 2015 12:25:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Fri, 27 Nov 2015 09:25:30 +1300
Message-ID: <1888682.UUv9aA8xNY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1448496046-13186-9-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
	<1448496046-13186-9-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 08/17] recipe/base.py: Add support for get recipe inherits.
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
X-List-Received-Date: Thu, 26 Nov 2015 20:25:53 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Wednesday 25 November 2015 18:00:37 An=EDbal Lim=F3n wrote:
> Recipe inherits are needed to detect what recipes support
> certain feature.
>=20
> For example: For detect ptest enable recipes and then do
> ptest runtime test after succesful upgrade.
>=20
> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
> ---
>  modules/recipe/base.py | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>=20
> diff --git a/modules/recipe/base.py b/modules/recipe/base.py
> index 5c70c61..dabad2f 100644
> --- a/modules/recipe/base.py
> +++ b/modules/recipe/base.py
> @@ -57,6 +57,16 @@ def modify_recipe_files(func):
>                  os.rename(full_path_f + ".tmp", full_path_f)
>      return modify
>=20
> +def read_recipe_files(func):
> +    def read(env, recipe_dir):
> +        for f in os.listdir(recipe_dir):
> +            full_path_f =3D os.path.join(recipe_dir, f)
> +            if is_recipe_or_include_file(env, full_path_f, f):
> +                with open(full_path_f) as recipe:
> +                    for line in recipe:
> +                        func(line)
> +    return read
> +
>  class Recipe(object):
>      def __init__(self, env, new_ver, interactive, workdir, recipe_di=
r,
> bitbake, git): self.env =3D env
> @@ -85,8 +95,23 @@ class Recipe(object):
>          self.commit_msg =3D self.env['PN'] + ": upgrade to " + self.=
new_ver +
> "\n\n" self.rm_patches_msg =3D "\n\nRemoved the following patch(es):\=
n"
>=20
> +        self._inherits =3D None
> +
>          super(Recipe, self).__init__()
>=20
> +    def get_inherits(self):
> +        @read_recipe_files
> +        def _get_inherits(line):
> +            m =3D re.search("^inherit (.*)$", line)
> +            if m:
> +                tmp =3D m.group(1).split()
> +                self._inherits.extend(tmp)
> +
> +        if not self._inherits:
> +            self._inherits =3D []
> +            _get_inherits(self.env, self.recipe_dir)
> +
> +        return self._inherits
>=20
>      def update_env(self, env):
>          self.env =3D env

I'm not sure I like this - you're not parsing the recipe so you'll miss=
 things=20
such as inc files inheriting the recipe. Would it be possible to parse =
the=20
recipe properly instead e.g. with tinfoil?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

