Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8CCBE0052B; Tue,  7 Mar 2017 08:41:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B380E00349
	for <yocto@yoctoproject.org>; Tue,  7 Mar 2017 08:41:25 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 07 Mar 2017 08:41:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,258,1486454400"; 
	d="asc'?scan'208";a="65156714"
Received: from unknown (HELO [10.219.128.139]) ([10.219.128.139])
	by orsmga004.jf.intel.com with ESMTP; 07 Mar 2017 08:41:25 -0800
To: jose.perez.carranza@linux.intel.com, yocto@yoctoproject.org
References: <20170307135854.3662-1-jose.perez.carranza@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58BEE387.7060104@linux.intel.com>
Date: Tue, 7 Mar 2017 10:44:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20170307135854.3662-1-jose.perez.carranza@linux.intel.com>
Subject: Re: [qa-tools][PATCH v2] testopia_update: Add option to define test plan
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
X-List-Received-Date: Tue, 07 Mar 2017 16:41:27 -0000
X-Groupsio-MsgNum: 34891
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Gxq9RClxnJwBUdV1oiIeleAnkUmf5wNpx"

--Gxq9RClxnJwBUdV1oiIeleAnkUmf5wNpx
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Ack

On 03/07/2017 07:58 AM, jose.perez.carranza@linux.intel.com wrote:
> From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
>=20
> There are cases where the test plan and the product name are not equal =
hence
> an option is added to handle those cases and define the test plan to wo=
rk on.
>=20
> Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com=
>
> ---
>  testopia_update.py                  | 13 +++++++++---
>  testopia_update/product/__init__.py | 40 ++++++++++++++++++++---------=
--------
>  2 files changed, 32 insertions(+), 21 deletions(-)
>=20
> diff --git a/testopia_update.py b/testopia_update.py
> index 9b35188..044074a 100755
> --- a/testopia_update.py
> +++ b/testopia_update.py
> @@ -70,6 +70,9 @@ def get_args():
>          dest=3D"project_revision", help=3D'SCM Revision of the project=
=2E')
>      parser.add_argument('--project-date', required=3DFalse,
>          dest=3D"project_date", help=3D'SCM version/revision date of th=
e project.')
> +    parser.add_argument('--test-plan', required=3DFalse,
> +        dest=3D"plan_name", help=3D'Name of the test plan of the produ=
ct, used when \
> +                                test plan name is different from produ=
ct name.')
> =20
>      parser.add_argument('--results-log', required=3DFalse,
>          dest=3D"results_log", help=3D'Results log.')
> @@ -115,8 +118,12 @@ if __name__ =3D=3D '__main__':
>      if not os.path.exists(opts.store_location):
>          os.makedirs(opts.store_location)
> =20
> +    kwargs =3D {}
> +    if args.plan_name:
> +        kwargs['plan_name'] =3D args.plan_name
> +
>      testopia =3D Testopia(opts.username, opts.password, opts.url, sslv=
erify=3DFalse)
> -    products =3D get_products(testopia, opts, logger, config)
> +    products =3D get_products(testopia, opts, logger, config, **kwargs=
)
> =20
>      if args.list_products:
>          print("List of available products: \n")
> @@ -141,8 +148,8 @@ if __name__ =3D=3D '__main__':
> =20
>      test_plan =3D product.get_test_plan(args.branch_name)
>      if not test_plan:
> -        logger.error("%s: Test plan for product %s and branch %s not e=
xists."\
> -             % (sys.argv[0], args.product_name, args.branch_name))
> +        logger.error("%s: Test plan %s for product %s and branch %s no=
t exists."\
> +             % (sys.argv[0], product.plan ,args.product_name, args.bra=
nch_name))
> =20
>          sys.exit(1)
> =20
> diff --git a/testopia_update/product/__init__.py b/testopia_update/prod=
uct/__init__.py
> index e401824..18b112e 100644
> --- a/testopia_update/product/__init__.py
> +++ b/testopia_update/product/__init__.py
> @@ -1,13 +1,17 @@
>  import re
> =20
> -
>  class Product(object):
> -    def __init__(self, testopia, opts, logger, config):
> +    def __init__(self, testopia, opts, logger, config, **kwargs):
>          self.testopia =3D testopia
>          self.opts =3D opts
>          self.logger =3D logger
>          self.config =3D config
> =20
> +        if 'plan_name' in kwargs:
> +            self.plan =3D kwargs['plan_name']
> +        else:
> +            self.plan =3D self.name
> +
>      def support(self, name):
>          if self.name =3D=3D name:
>              return True
> @@ -16,11 +20,11 @@ class Product(object):
>      def get_test_plan(self, branch_name):
>          tp =3D None
> =20
> -        tp_name =3D '%s: %s branch' % (self.name, branch_name)
> +        tp_name =3D '%s: %s branch' % (self.plan, branch_name)
> =20
>          tp =3D self.testopia.testplan_list(name=3Dtp_name)
>          if not tp:
> -            tp_alt_name =3D '%s: %s branch' % (self.name, branch_name.=
lower())
> +            tp_alt_name =3D '%s: %s branch' % (self.plan, branch_name.=
lower())
>              tp =3D self.testopia.testplan_list(name=3Dtp_alt_name)
> =20
>          if tp:
> @@ -68,7 +72,7 @@ class Product(object):
>              category_name, optional):
>          summary_alts =3D []
>          summary_alts.append('%s_%s_%s_%s' % (ttype, project_version,
> -            category_name, self.name))
> +            category_name, self.plan))
>          summary_alts.append('%s_%s_%s' % (ttype, project_version,
>              category_name))
>          summary_alts.append('%s_%s' % (ttype, category_name))
> @@ -186,7 +190,7 @@ class Product(object):
> =20
>          return missing
> =20
> -def get_products(testopia, opts, config, logger):
> +def get_products(testopia, opts, config, logger, **kwargs):
> =20
> =20
>      from . import bitbake
> @@ -204,18 +208,18 @@ def get_products(testopia, opts, config, logger):=

> =20
>      products =3D []
> =20
> -    products.append(bitbake.BitbakeProduct(testopia, opts, logger, con=
fig))
> -    products.append(bsp_qemu.BSPQEMUProduct(testopia, opts, logger, co=
nfig))
> -    products.append(meta_yocto.MetaYoctoProduct(testopia, opts, logger=
, config))
> -    products.append(oe_core.OECoreProduct(testopia, opts, logger, conf=
ig))
> -    products.append(runtime.RuntimeProduct(testopia, opts, logger, con=
fig))
> -    products.append(toaster.ToasterProduct(testopia, opts, logger, con=
fig))
> -    products.append(adt.ADTProduct(testopia, opts, logger, config))
> -    products.append(crops.CROPSProduct(testopia, opts, logger, config)=
)
> -    products.append(eclipse_plugin.EclipePluginProduct(testopia, opts,=
 logger, config))
> -    products.append(esdk.eSDKProduct(testopia, opts, logger, config))
> -    products.append(kernel.KernelProduct(testopia, opts, logger, confi=
g))
> -    products.append(general_runtime.GeneralRuntimeProduct(testopia, op=
ts, logger, config))
> +    products.append(bitbake.BitbakeProduct(testopia, opts, logger, con=
fig, **kwargs))
> +    products.append(bsp_qemu.BSPQEMUProduct(testopia, opts, logger, co=
nfig, **kwargs))
> +    products.append(meta_yocto.MetaYoctoProduct(testopia, opts, logger=
, config, **kwargs))
> +    products.append(oe_core.OECoreProduct(testopia, opts, logger, conf=
ig, **kwargs))
> +    products.append(runtime.RuntimeProduct(testopia, opts, logger, con=
fig, **kwargs))
> +    products.append(toaster.ToasterProduct(testopia, opts, logger, con=
fig, **kwargs))
> +    products.append(adt.ADTProduct(testopia, opts, logger, config, **k=
wargs))
> +    products.append(crops.CROPSProduct(testopia, opts, logger, config,=
 **kwargs))
> +    products.append(eclipse_plugin.EclipePluginProduct(testopia, opts,=
 logger, config, **kwargs))
> +    products.append(esdk.eSDKProduct(testopia, opts, logger, config, *=
*kwargs))
> +    products.append(kernel.KernelProduct(testopia, opts, logger, confi=
g, **kwargs))
> +    products.append(general_runtime.GeneralRuntimeProduct(testopia, op=
ts, logger, config, **kwargs))
> =20
>      return products
> =20
>=20


--Gxq9RClxnJwBUdV1oiIeleAnkUmf5wNpx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYvuOMAAoJEGJqcE9h3glgL4YP/RXxyM3CJWmQ9VduPS8Wo4IE
uSzUnOE5McANLh98EidNayNzNvOCVF5mqEDkN+2fuRm/rLBudvwLEr8rZFCnXNqR
l1YVdjSv4BKeS/w9SnIPE2Sfvd2z4bkcyoRVdYw3DO/fw9oVX3/ZXI835XDpc0xb
ibj6yOyVMZ/t5jZAv6bl328WyBUlLF/avFwwjKNcoN7p56tcePogf1JB3pHvwFhk
MDCqIjIJJ3SNsWR95lkpLAosFiEaE3Nbxr0PXqq9ezD3Wvb7GC6rUbuF+8vBBrpj
z5KiPcob2QQCl+YhbcNw+9ZHamW1TOr4wbtqUuQyKuA4ZwalDss7vDzSGw4HFvxC
yd1fJMdYRnaGSOG/4wlVLGvIXqWiijdC+1LGSvgDjoG5yz6bcLLgDo+nXUtWxk5s
VtRQAErzMfCmReZkDEMAKeRf0iL0rrDFGO6EjX62u7g7xYbO1n22OSDg8sFkRbJb
Ss66bpL+f7nV4b4e8nX42JLXOxrsD0lLcmSN4npuGFf1EMKujzaxHkEbKPTHOANn
jNMGUHXGM28Te2NMmznmVW3y52KhKyB3evycf0fBUHL+OQHHX5rwaXOUrH5enJ8w
HGQiB1UsqPaVqpVTxnLAMQcFkeMXxyvHcRGnIoAlYVb2zQVSSKDgcSovUT3sBC+H
0jMTIKU1eFyB0ctDzTDS
=qaOo
-----END PGP SIGNATURE-----

--Gxq9RClxnJwBUdV1oiIeleAnkUmf5wNpx--
