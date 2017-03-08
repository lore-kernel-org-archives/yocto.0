Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0167BE00726; Wed,  8 Mar 2017 13:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A3EE004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 13:49:40 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Mar 2017 13:49:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,265,1486454400"; 
	d="asc'?scan'208";a="1139728210"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.139])
	([10.219.128.139])
	by fmsmga002.fm.intel.com with ESMTP; 08 Mar 2017 13:49:32 -0800
To: jose.perez.carranza@linux.intel.com, yocto@yoctoproject.org
References: <20170308155659.14202-1-jose.perez.carranza@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58C07D41.5060102@linux.intel.com>
Date: Wed, 8 Mar 2017 15:53:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20170308155659.14202-1-jose.perez.carranza@linux.intel.com>
Subject: Re: [qa-tools][PATCH] testopia_update: Improvements on update action functionality
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
X-List-Received-Date: Wed, 08 Mar 2017 21:49:44 -0000
X-Groupsio-MsgNum: 34913
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="frAPNbVrdCVBqlDoxRNi5CfsMaOUjoEFR"

--frAPNbVrdCVBqlDoxRNi5CfsMaOUjoEFR
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 03/08/2017 09:56 AM, jose.perez.carranza@linux.intel.com wrote:
> From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
>=20
> Some improvements were applied when using option
> action=3Dcreate :
>=20
>    - Create a new option to update test runs by ID
>    - Create functions to load results and check missing test cases
>    - Add warning to use =E2=80=93testrun-id
>    - Improvements to update_test_run using exiting data of test run
>    - Create function get test run details by ID
>    - Create Dummy product to use on cases when specific product is not
>      relevant
>=20
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com=
>
> ---
>  testopia_update.py                  | 60 +++++++++++++++++++++++++++++=
--------
>  testopia_update/product/__init__.py | 17 +++++++++--
>  2 files changed, 61 insertions(+), 16 deletions(-)
>=20
> diff --git a/testopia_update.py b/testopia_update.py
> index 044074a..9cd9ad1 100755
> --- a/testopia_update.py
> +++ b/testopia_update.py
> @@ -17,6 +17,29 @@ ACTIONS =3D ('create', 'update')
>  BRANCHES =3D ('master', 'jethro', 'dizzy', 'daisy', 'noexists')
>  CATEGORIES =3D ('AUTO', 'MANUAL')
> =20
> +
> +def check_missing_tc(env, build, test_run, results):
> +    missing =3D product.update_test_run(test_run, results)
> +    for tcid in missing:
> +        logger.warn("%s: Test run %d, Case %d wasn't updated" %
> +                    (sys.argv[0], test_run['run_id'], tcid))

Only one comment, change the check_missing_tc to something like
update_test_run because the first time i read the function name, i
thought that do other thing.

	alimon

> +
> +
> +def load_results(results_log):
> +    if not results_log:
> +        logger.error("%s: For action update --results-log needs to be =
specified"
> +                     % (sys.argv[0]))
> +        sys.exit(1)
> +    if not os.path.exists(args.results_log):
> +        logger.error("%s: Results log (%s) doesn't exists."
> +                     % (sys.argv[0], results_log))
> +        sys.exit(1)
> +
> +    res =3D product.parse_results_log(args.results_log)
> +
> +    return res
> +
> +
>  def load_opts(args, opts_list, opts):
>      for to in opts_list:
>          if to in vars(args):
> @@ -26,6 +49,9 @@ def load_opts(args, opts_list, opts):
>          if not hasattr(opts, to):
>              logger.error("%s: Requires testopia %s in arguments or con=
fig." % \
>                  (sys.argv[0], to))
> +            if args.action =3D=3D "update":
> +                logger.warn('for action create you can use only --test=
run-id ' +
> +                            'and --results-log if test run was already=
 created')
>              sys.exit(1)
> =20
>  class Options(object):
> @@ -73,6 +99,9 @@ def get_args():
>      parser.add_argument('--test-plan', required=3DFalse,
>          dest=3D"plan_name", help=3D'Name of the test plan of the produ=
ct, used when \
>                                  test plan name is different from produ=
ct name.')
> +    parser.add_argument('--testrun-id', required=3DFalse,
> +        dest=3D"trun_id", help=3D'Number of the test run to be updated=
, this \
> +                              option should be used along with update =
action.')
> =20
>      parser.add_argument('--results-log', required=3DFalse,
>          dest=3D"results_log", help=3D'Results log.')
> @@ -131,6 +160,21 @@ if __name__ =3D=3D '__main__':
>              print("%s\n" % p.name)
>          sys.exit(0)
> =20
> +    if args.action =3D=3D 'update' and args.trun_id:
> +        args.product_name =3D 'Dummy'
> +        product =3D get_product_class(args.product_name, products)
> +        try:
> +            tr =3D product.get_existing_test_run(int(args.trun_id))
> +        except Exception as e:
> +            logger.error("%s: Problem found with Test Run %s: \n=3D=3D=
>%s"
> +                         % (sys.argv[0], args.trun_id, e))
> +            sys.exit(1)
> +
> +        results =3D load_results(args.results_log)
> +        check_missing_tc(tr['environment_id'], tr['build_id'], tr, res=
ults)
> +
> +        sys.exit(0)
> +
>      load_opts(args, testopia_opts, opts)
> =20
>      params =3D ['action', 'product_name', 'branch_name', 'env_name']
> @@ -205,16 +249,8 @@ if __name__ =3D=3D '__main__':
>                  " and ID (%s)." % (sys.argv[0], template_test_run['run=
_id'],
>                  test_run['summary'], test_run['run_id']))
>      elif args.action =3D=3D "update":
> -        if not args.results_log:
> -            logger.error("%s: For update --results-log needs to be spe=
cified." \
> -                % (sys.argv[0]))
> -            sys.exit(1)
> -        if not os.path.exists(args.results_log):
> -            logger.error("%s: Results log (%s) don't exists." \
> -                % (sys.argv[0], args.results_log))
> -            sys.exit(1)
> +        results =3D load_results(args.results_log)
> =20
> -        results =3D product.parse_results_log(args.results_log)
>          test_run =3D product.get_test_run(test_plan, env, build, args.=
project_date,
>                  args.project_version, args.category_name, args.optiona=
l)
>          if not test_run:
> @@ -224,8 +260,6 @@ if __name__ =3D=3D '__main__':
>                  args.optional))
>              sys.exit(1)
> =20
> -        missing =3D product.update_test_run(env, build, test_run, resu=
lts)
> -        for tcid in missing:
> -            logger.warn("%s: Product %s, Test run %d, Case %d wasn't u=
pdated" %\
> -                    (sys.argv[0], args.product_name, test_run['run_id'=
], tcid))
> +        check_missing_tc(env, build, test_run, results)
> +
>      sys.exit(0)
> diff --git a/testopia_update/product/__init__.py b/testopia_update/prod=
uct/__init__.py
> index 18b112e..f31190c 100644
> --- a/testopia_update/product/__init__.py
> +++ b/testopia_update/product/__init__.py
> @@ -160,6 +160,7 @@ class Product(object):
>          results =3D {}
>          with open(log_file, "r") as f:
>              for line in f:
> +                line =3D line.strip()
>                  m =3D regex_comp.search(line)
>                  if m:
>                      results[int(m.group('case_id'))] =3D m.group('stat=
us')
> @@ -174,15 +175,14 @@ class Product(object):
>          else:
>              return 0
> =20
> -    def update_test_run(self, env, build, tr, results):
> +    def update_test_run(self, tr, results):
>          missing =3D []
> -
>          test_case_ids =3D self._get_test_case_ids(tr)
>          for tcid in test_case_ids:
>              if tcid in results:
>                  status_id =3D self._get_status_id(results[tcid])
>                  self.testopia.testcaserun_update(tr['run_id'], tcid,
> -                        build['build_id'], env['environment_id'],
> +                        tr['build_id'], tr['environment_id'],
>                          case_run_status_id=3Dstatus_id)
>                  continue
> =20
> @@ -190,6 +190,15 @@ class Product(object):
> =20
>          return missing
> =20
> +    def get_existing_test_run(self, testrun_id):
> +        tr_id =3D self.testopia.testrun_get(testrun_id)
> +
> +        return tr_id
> +
> +class DummyProduct(Product):
> +    #Dummy product to use when specific product is not required
> +    name =3D 'Dummy'
> +
>  def get_products(testopia, opts, config, logger, **kwargs):
> =20
> =20
> @@ -220,6 +229,8 @@ def get_products(testopia, opts, config, logger, **=
kwargs):
>      products.append(esdk.eSDKProduct(testopia, opts, logger, config, *=
*kwargs))
>      products.append(kernel.KernelProduct(testopia, opts, logger, confi=
g, **kwargs))
>      products.append(general_runtime.GeneralRuntimeProduct(testopia, op=
ts, logger, config, **kwargs))
> +    products.append(DummyProduct(testopia, opts, logger, config, **kwa=
rgs))
> +
> =20
>      return products
> =20
>=20


--frAPNbVrdCVBqlDoxRNi5CfsMaOUjoEFR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYwH1EAAoJEGJqcE9h3glgyDsP/0nPl+heeQd5eLMA16eUF1mD
sqJEzmrtuYgoKwdzgk7i7g5hfbGY3Z4v3E+Uv/xz+z40BJnuKhIc6B2VXL/4GmNN
Rn6xU5rogihIPqmy5Bv4eAyu35LKnZPT9cN2qxarnAX+2KvUH1mK/OEBIFvL72Ys
EaGC5O2TOK/nBOO6X0CSnOKJUEFJ3AKneAXmhcRXW1o2j1+ZTwouu7Kpt7uAebOq
e8PUGQCMBsfElAGoTxHaR3n8mSPyfs+SX9lU8RLeFlqQa3NzxcBTSKw7SNOQswYb
Jlr7gBs4d0IR/5A0XTcxEhv7CF6KzvVa31dLPuvcbganug7wP1JvM55CXSw6M0ZI
oo8FvgBfsdx5qkqmlFoFGWncrxqcFkp3ESwbw+41e58lqP0ecw203xX2MLd7sBlj
qlctyDUz7/uAHB2E3kGsL7PqrhPwzMyiSD9iv2jfoSW7Y0SelcBfzcSAzsjAMO9Z
ufHJijn0uUu8krvUWvY4Erv5SsPqWxe0TKhEpFB+LGokhGslqHGrwE8jmG2abgLu
Q1DcZMzh9Gh/KS0UhUOlUUBp+cSUn4IDABxodDRQxYrdDaNx165TgZ9EVCPhEQaj
RXhfJgHDsSbDHOFT0KVp0HbyW9XWB/x9gQZE6CEMnOxyyg9k0iv5+wlvAcUNozpY
mqGGAwetYopC6zW1AHKh
=TEi5
-----END PGP SIGNATURE-----

--frAPNbVrdCVBqlDoxRNi5CfsMaOUjoEFR--
