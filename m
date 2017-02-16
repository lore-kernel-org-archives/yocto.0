Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF676E006EA; Thu, 16 Feb 2017 14:45:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5A5CE00510
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 14:45:19 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Feb 2017 14:45:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,169,1484035200"; 
	d="asc'?scan'208";a="66758321"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.120])
	([10.219.128.120])
	by fmsmga006.fm.intel.com with ESMTP; 16 Feb 2017 14:45:18 -0800
To: jose.perez.carranza@linux.intel.com, yocto@yoctoproject.org
References: <1487284628-8916-1-git-send-email-jose.perez.carranza@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58A62C47.8090203@linux.intel.com>
Date: Thu, 16 Feb 2017 16:48:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1487284628-8916-1-git-send-email-jose.perez.carranza@linux.intel.com>
Subject: Re: [PATCH] qa-tools: Add suport for current format of templates
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
X-List-Received-Date: Thu, 16 Feb 2017 22:45:23 -0000
X-Groupsio-MsgNum: 34547
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="OPcHfPgGHBn6t0TPnOQFGw0UeE3EBGqkC"

--OPcHfPgGHBn6t0TPnOQFGw0UeE3EBGqkC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Resend it with [qa-tools] and see comments below,


On 02/16/2017 04:37 PM, jose.perez.carranza@linux.intel.com wrote:
> From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
>=20
> Currently the tempates has a format as below:
>=20
> TRTEMP_<RELEASE>_<MANUAL/AUTO>_<COMPONENT>_<OPTIONAL>
>=20
> Hence the logic was adapted to follow above structure and also a
> commit paramater was added to follow the format of build as follows:
>=20
> RELEASE MILESTONE_rc#
>=20
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com=
>
> ---
>  testopia_update.py                  | 30 ++++++++++++++++------------
>  testopia_update/product/__init__.py | 39 +++++++++++++++++++++--------=
--------
>  2 files changed, 40 insertions(+), 29 deletions(-)
>=20
> diff --git a/testopia_update.py b/testopia_update.py
> index 249d163..af281c9 100755
> --- a/testopia_update.py
> +++ b/testopia_update.py
> @@ -15,7 +15,7 @@ DEFAULT_STORE_LOCATION =3D "/tmp/testopia_update"
> =20
>  ACTIONS =3D ('create', 'update')
>  BRANCHES =3D ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
> -CATEGORIES =3D ('Full pass', 'Weekly')
> +CATEGORIES =3D ('AUTO', 'MANUAL')
> =20
>  class Options(object):
>      pass
> @@ -60,6 +60,9 @@ def get_args():
>      parser.add_argument('--project-date', required=3DFalse,
>          dest=3D"project_date", help=3D'SCM version/revision date of th=
e project.')
> =20
> +    parser.add_argument('--commit', required=3DFalse,
> +        dest=3D"commit", help=3D'Poky commit')
> +
>      parser.add_argument('--results-log', required=3DFalse,
>          dest=3D"results_log", help=3D'Results log.')
> =20
> @@ -68,6 +71,7 @@ def get_args():
>      parser.add_argument('--debug', required=3DFalse, action=3D"store_t=
rue",
>          dest=3D"debug", default=3DFalse, help=3D'Enable debug mode.')
> =20
> +
>      return parser.parse_args()
> =20
>  if __name__ =3D=3D '__main__':
> @@ -86,8 +90,8 @@ if __name__ =3D=3D '__main__':
>      testopia_config =3D ['url', 'username', 'password', 'store_locatio=
n']
>      testopia_opts =3D testopia_config + ['action', 'product_name', 'ca=
tegory_name',
>          'project_version', 'project_milestone', 'project_revision',
> -        'project_date']
> -=20
> +        'project_date','commit']

We already have a commit as a name of project-revision if you want to
change the template name order use this field.

> +
>      config =3D None
>      if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
>          args.config =3D DEFAULT_CONFIG_FILE
> @@ -103,10 +107,10 @@ if __name__ =3D=3D '__main__':
>              arg =3D getattr(args, to)
>              if arg:
>                  setattr(opts, to, arg)
> -        if not hasattr(opts, to):
> -            logger.error("%s: Requires testopia %s in arguments or con=
fig." % \
> -                (sys.argv[0], to))
> -            sys.exit(1)
> +#        if not hasattr(opts, to):
> +#            logger.error("%s: Requires testopia %s in arguments or co=
nfig." % \
> +#                (sys.argv[0], to))
> +#            sys.exit(1)

Uncomment these lines, there uis a need to make --list-products as an
option without action but this needs to be made in other commit.

	alimon

> =20
>      if not os.path.exists(opts.store_location):
>          os.makedirs(opts.store_location)
> @@ -155,11 +159,13 @@ if __name__ =3D=3D '__main__':
>              sys.exit(1)
> =20
>      build =3D product.get_build(test_plan, args.project_version,
> -        args.project_milestone, args.project_revision, args.project_da=
te)
> +        args.project_milestone, args.project_revision, args.project_da=
te,
> +        args.commit)
>      if not build:
>          if args.action =3D=3D "create":
>              build =3D product.create_build(test_plan, args.project_ver=
sion,
> -                args.project_milestone, args.project_revision, args.pr=
oject_date)
> +                args.project_milestone, args.project_revision, args.pr=
oject_date,
> +                args.commit)
>              logger.info("%s: Create build for product %s with: "\
>                  "%s, %s, %s, %s." % (sys.argv[0], args.product_name,
>                  args.project_version, args.project_milestone,
> @@ -172,8 +178,8 @@ if __name__ =3D=3D '__main__':
>              sys.exit(1)
> =20
>      if args.action =3D=3D "create":
> -        template_test_run =3D product.get_template_test_run(test_plan,=
 args.project_version,
> -                args.category_name, args.optional)
> +        template_test_run =3D product.get_template_test_run(test_plan,=

> +                args.project_version, args.category_name, args.optiona=
l)
>          if not template_test_run:
>              logger.error("%s: Product %s can't find test run with: "\
>                  "%s, %s, %s." % (sys.argv[0], args.product_name,
> @@ -189,7 +195,7 @@ if __name__ =3D=3D '__main__':
>                  args.optional))
>              sys.exit(1)
>          logger.info("%s: Test run was created with Template (%d), Summ=
ary (%s)"\
> -                " and ID (%s)." % (sys.argv[0], template_test_run['run=
_id'],=20
> +                " and ID (%s)." % (sys.argv[0], template_test_run['run=
_id'],
>                  test_run['summary'], test_run['run_id']))
>      elif args.action =3D=3D "update":
>          if not args.results_log:
> diff --git a/testopia_update/product/__init__.py b/testopia_update/prod=
uct/__init__.py
> index 04f9dac..02c6447 100644
> --- a/testopia_update/product/__init__.py
> +++ b/testopia_update/product/__init__.py
> @@ -1,5 +1,6 @@
>  import re
> =20
> +
>  class Product(object):
>      def __init__(self, testopia, opts, logger, config):
>          self.testopia =3D testopia
> @@ -42,13 +43,15 @@ class Product(object):
>          tp_envs =3D self.testopia.product_get_environments(tp['product=
_id'])
>          return [tp_env['name'] for tp_env in tp_envs]
> =20
> -    def _format_build_name(self, project_version, project_revision):
> -        return "%s: %s" % (project_version, project_revision)
> +    def _format_build_name(self, project_version, project_revision, pr=
oject_commit):
> +        return "%s_%s: %s" % (project_version, project_revision, proje=
ct_commit)
> =20
> -    def get_build(self, tp, project_version, project_milestone,
> -            project_revision, project_date):
> +    def get_build(self, tp, project_version, project_milestone, projec=
t_revision,
> +                  project_date, project_commit):
>          builds =3D self.testopia.product_get_builds(tp['product_id'])
> -        build_name =3D self._format_build_name(project_milestone, proj=
ect_revision)
> +        build_name =3D self._format_build_name(project_milestone, proj=
ect_revision,
> +                                             project_commit)
> +        exit
>          for b in builds:
>              if build_name =3D=3D b['name'] and project_date =3D=3D b['=
description'] \
>                      and project_milestone =3D=3D str(b['milestone']):
> @@ -56,8 +59,9 @@ class Product(object):
>          return None
> =20
>      def create_build(self, tp, project_version, project_milestone,
> -            project_revision, project_date):
> -        build_name =3D self._format_build_name(project_milestone, proj=
ect_revision)
> +            project_revision, project_date, project_commit):
> +        build_name =3D self._format_build_name(project_milestone, proj=
ect_revision,
> +                                             project_commit)
> =20
>          return self.testopia.build_create(build_name, tp['product_id']=
,
>                  description=3Dproject_date, milestone=3Dproject_milest=
one,
> @@ -66,14 +70,14 @@ class Product(object):
>      def _get_test_run_summary_alternatives(self, ttype, project_versio=
n,
>              category_name, optional):
>          summary_alts =3D []
> -        summary_alts.append('%s - %s - %s - %s' % (ttype, self.name,
> -            project_version, category_name))
> -        summary_alts.append('%s - %s - %s' % (ttype, project_version,
> +        summary_alts.append('%s_%s_%s_%s' % (ttype, project_version,
> +            category_name, self.name))
> +        summary_alts.append('%s_%s_%s' % (ttype, project_version,
>              category_name))
> -        summary_alts.append('%s - %s' % (ttype, category_name))
> -        if optional:=20
> +        summary_alts.append('%s_%s' % (ttype, category_name))
> +        if optional:
>              for idx, sa in enumerate(summary_alts):
> -                summary_alts[idx] =3D sa + " - %s" % optional
> +                summary_alts[idx] =3D sa + "_%s" % optional
>          return summary_alts
> =20
>      def get_template_test_run(self, tp, project_version, category_name=
,
> @@ -85,7 +89,7 @@ class Product(object):
>              first match of summary in test runs.
>          """
> =20
> -        summary_alts =3D self._get_test_run_summary_alternatives("TEMP=
LATE",=20
> +        summary_alts =3D self._get_test_run_summary_alternatives("TRTE=
MP",
>              project_version, category_name, optional)
>          tp_test_runs =3D self.testopia.testplan_get_test_runs(tp['plan=
_id'])
> =20
> @@ -100,7 +104,7 @@ class Product(object):
> =20
>      def get_test_run(self, tp, env, build, project_date, project_versi=
on,
>              category_name, optional):
> -        summary_alts =3D self._get_test_run_summary_alternatives(proje=
ct_date,=20
> +        summary_alts =3D self._get_test_run_summary_alternatives(proje=
ct_date,
>              project_version, category_name, optional)
>          tp_test_runs =3D self.testopia.testplan_get_test_runs(tp['plan=
_id'])
> =20
> @@ -133,8 +137,9 @@ class Product(object):
> =20
>          return project_version
> =20
> -    def create_test_run(self, tp, env, build, template_tr, project_ver=
sion, project_date):
> -        summary =3D template_tr['summary'].replace('TEMPLATE', project=
_date)
> +    def create_test_run(self, tp, env, build, template_tr, project_ver=
sion,
> +                        project_date):
> +        summary =3D template_tr['summary'].replace('TRTEMP', project_d=
ate)
> =20
>          test_case_ids =3D self._get_test_case_ids(template_tr)
>          new_test_run =3D self.testopia.testrun_create(build['build_id'=
],
>=20


--OPcHfPgGHBn6t0TPnOQFGw0UeE3EBGqkC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYpixJAAoJEGJqcE9h3glgg4kP/2YhMDE4lYNLKvNnRLS9pLOC
xgIl2Olht5J3YCQcmIUCaglUMRJp8S4TookjYcxbgN6ecbg9l+4VsPPSwZaf4hx/
ThvR3q/1Fk0TGHYhTI8YxSpHfSSKCQ1NCYvraRnXWluLk0tJMVhKAGEvX1SP4Mi4
HMa2gdwMy0kICeZwK4EHqX4PuaHDFels5xMTMHetQHzO9H5Umkx9wx8/2BZlXlDs
0JmA3ofZQaFoW5JarUONNfQxQi7EgvZ1X1R62AITMasAwlY6ei6y0M2o+NWjNg+k
tWoRdsk2XGbs8HcsyYESAACjqP6mrwGNFbp/EuR/KMTWyI8efpRkwKVjtGDZxF57
3lIfkv8iE3A5VUqY5JjahxT9wlyXNNZTxuxP1Wya0IHMg7jo4TVZM892hucxYUbU
eacHJzQrUoY5Z9JDS/A5o03HKMmZcxugoZhDHfldeMn5xkwOJkTVMoDnAv9yyCaZ
MkPrCM/ZffoXJyaOyulY4u31UPZpVDSrgNemCvQEHcw2Lz60N4z4IvHwIzpIqBDm
abYZwMf3iJIEO5r1c3esdDtSWhuWFMQyJZxVOHlwI542TOvnlYpEvYQeD+fzj7at
u7N1Iz/e6tJUDcR8P70xSywrQHaXtwInOGfrLVLMs5RwxuVlFrtCfRjILlqRuBtD
y6BE3k9hDwLUZSvTNH9m
=AIXN
-----END PGP SIGNATURE-----

--OPcHfPgGHBn6t0TPnOQFGw0UeE3EBGqkC--
