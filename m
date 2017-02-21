Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D3BE008D0; Tue, 21 Feb 2017 10:12:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DBB2E0052B
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 10:12:36 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Feb 2017 10:12:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,190,1484035200"; 
	d="asc'?scan'208";a="67916619"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.120])
	([10.219.128.120])
	by fmsmga005.fm.intel.com with ESMTP; 21 Feb 2017 10:12:36 -0800
To: jose.perez.carranza@linux.intel.com, yocto@yoctoproject.org
References: <58A62C47.8090203>
	<1487695638-2475-1-git-send-email-jose.perez.carranza@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58AC83DF.5060400@linux.intel.com>
Date: Tue, 21 Feb 2017 12:15:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1487695638-2475-1-git-send-email-jose.perez.carranza@linux.intel.com>
Subject: Re: [qa-tools][PATCH V2] testopia-update: Add suport for current format of templates
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
X-List-Received-Date: Tue, 21 Feb 2017 18:12:39 -0000
X-Groupsio-MsgNum: 34641
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="ldO09EJ9CNA5fx1FrWL9V6dm5lpOW70uD"

--ldO09EJ9CNA5fx1FrWL9V6dm5lpOW70uD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

I integrated the patch,

Thanks,
	alimon

On 02/21/2017 10:47 AM, jose.perez.carranza@linux.intel.com wrote:
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
>  testopia_update.py                  | 11 ++++++-----
>  testopia_update/product/__init__.py | 26 ++++++++++++++------------
>  2 files changed, 20 insertions(+), 17 deletions(-)
>=20
> diff --git a/testopia_update.py b/testopia_update.py
> index 249d163..1c2db63 100755
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
> @@ -68,6 +68,7 @@ def get_args():
>      parser.add_argument('--debug', required=3DFalse, action=3D"store_t=
rue",
>          dest=3D"debug", default=3DFalse, help=3D'Enable debug mode.')
> =20
> +
>      return parser.parse_args()
> =20
>  if __name__ =3D=3D '__main__':
> @@ -87,7 +88,7 @@ if __name__ =3D=3D '__main__':
>      testopia_opts =3D testopia_config + ['action', 'product_name', 'ca=
tegory_name',
>          'project_version', 'project_milestone', 'project_revision',
>          'project_date']
> -=20
> +
>      config =3D None
>      if not args.config and os.path.exists(DEFAULT_CONFIG_FILE):
>          args.config =3D DEFAULT_CONFIG_FILE
> @@ -172,8 +173,8 @@ if __name__ =3D=3D '__main__':
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
> @@ -189,7 +190,7 @@ if __name__ =3D=3D '__main__':
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
> index 04f9dac..689d004 100644
> --- a/testopia_update/product/__init__.py
> +++ b/testopia_update/product/__init__.py
> @@ -1,5 +1,6 @@
>  import re
> =20
> +
>  class Product(object):
>      def __init__(self, testopia, opts, logger, config):
>          self.testopia =3D testopia
> @@ -45,8 +46,8 @@ class Product(object):
>      def _format_build_name(self, project_version, project_revision):
>          return "%s: %s" % (project_version, project_revision)
> =20
> -    def get_build(self, tp, project_version, project_milestone,
> -            project_revision, project_date):
> +    def get_build(self, tp, project_version, project_milestone, projec=
t_revision,
> +                  project_date):
>          builds =3D self.testopia.product_get_builds(tp['product_id'])
>          build_name =3D self._format_build_name(project_milestone, proj=
ect_revision)
>          for b in builds:
> @@ -66,14 +67,14 @@ class Product(object):
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
> @@ -85,7 +86,7 @@ class Product(object):
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
> @@ -100,7 +101,7 @@ class Product(object):
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
> @@ -133,8 +134,9 @@ class Product(object):
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


--ldO09EJ9CNA5fx1FrWL9V6dm5lpOW70uD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYrIPhAAoJEGJqcE9h3glg/uEP/ia2wfer6+3bVuad6x5qwdlc
IBz6DwmE5LPBVO7EOXtSl92o/nomJmMYNT4SD/SkWQiWSbsGjN6F06puSOdgFGql
ss8Obhqa6ThP6Edy+QZlK9byoTqoCWAPRPefZiJNsE03xB8QZoTXmGGPWDAWZEhz
rZrVrxT7XUHF/5rq8PYmKeyAZ0DBLm4V6aPVRicnhTRj7AX7teOnAb/LnqgBESdt
7fRoDvmGXGFM+jVyUutj09mQCb2AX7yC92O8TP3rjfT9oKz56yGtlZlR2kA9rR2G
9824QrCraXsOXdx7EHddD+m1tqfzkrereqON6vzgCGHLoZGNZT8NdPvlk0mOlDKu
JGsKm1XfvxkcZbx3Bhlq34kT3D4BfjnE1MZW325OKr6DNxWe4fbdRZwdquZLl1ZV
6rbKDUXB5XSYdbYYGRG2dtle7J4jijr+ZI8UxT6S5lGemK7TAUnC9Leudt+vYqzL
8qU6IIk0ccBUc6be1VgMu+2ye9cxDqCzBq8abzG5B1oRVv06d59MfbmSUbFA+UPg
cL/2rG18wUvOc77cKpSSzag393bBYY2LDG6gRDLRsNprwk6DGfrFWIon7FNYha3U
t6A95lrm7FnoaD9om7MxhwX7IydABxgU56b7nxF04VUxAW2RUFHFlw7AGnGjg0wP
L9ZnFcktxyKSudb0yUjs
=awJf
-----END PGP SIGNATURE-----

--ldO09EJ9CNA5fx1FrWL9V6dm5lpOW70uD--
