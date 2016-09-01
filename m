Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B895CE00DB9; Thu,  1 Sep 2016 12:24:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D18B1E00DA6
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 12:24:34 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 01 Sep 2016 12:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,268,1470726000"; 
	d="asc'?scan'208";a="1044552419"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.146])
	([10.219.5.146])
	by orsmga002.jf.intel.com with ESMTP; 01 Sep 2016 12:24:33 -0700
To: Humberto Ibarra <humberto.ibarra.lopez@intel.com>, yocto@yoctoproject.org
References: <1472756169-3929-1-git-send-email-humberto.ibarra.lopez@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57C88081.6030602@linux.intel.com>
Date: Thu, 1 Sep 2016 14:24:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1472756169-3929-1-git-send-email-humberto.ibarra.lopez@intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [PATCH v2][yocto-autobuilder] RunOeSelftest.py: changed to new oe-selftest syntax
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
X-List-Received-Date: Thu, 01 Sep 2016 19:24:35 -0000
X-Groupsio-MsgNum: 31751
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="AqlfIeaVd6HdqNtu9o87AbMKtLMKATouq"

--AqlfIeaVd6HdqNtu9o87AbMKtLMKATouq
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Humberto,

I acked the patch only a few comments, you forget to sign your patch,
please do with git commit -s.

Only for be clear this patch will support the next oe-selftest cmdline
also the old one so it could be integrated without the integration of
the oe-selttest new cmdline patch.

Cheers,
	alimon

On 09/01/2016 01:56 PM, Humberto Ibarra wrote:
> oe-selftest is changing syntax with YOCTO #8938. This patch checks the =
correct syntax version and uses the right command to avoid breaking oe-se=
ltest autobuilder. Should be integrated together with the syntax changing=
 patch.
Acked-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
>=20
> [YOCTO #8938]
> ---
>  .../autobuilder/buildsteps/RunOeSelftest.py              | 16 ++++++++=
++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSe=
lftest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelft=
est.py
> index 809bcc3..ce0c0f6 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.=
py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.=
py
> @@ -34,9 +34,21 @@ class RunOeSelftest(ShellCommand):
>          self.command +=3D "netstat -an | grep -q 5901 ;"
>          self.command +=3D "if [ $? -ne 0 ]; then echo 'Starting a VNC =
server on :1'; vncserver :1; else echo 'Will use a VNC server already run=
ning on :1'; fi;"
>          if self.tests =3D=3D None:
> -            self.command +=3D "if [ -d ../meta-selftest ]; then export=
 DISPLAY=3D:1; oe-selftest --run-all-tests; else echo 'Skipping step - no=
 meta-selftest layer here'; fi"
> +            oe_selftest_cmd =3D ('run', '--run-all-tests')
>          else:
> -            self.command +=3D "if [ -d ../meta-selftest ]; then export=
 DISPLAY=3D:1; oe-selftest " + self.tests + "; else echo 'Skipping step -=
 no meta-selftest layer here'; fi"
> +            oe_selftest_cmd =3D ("run --tests %s" % self.tests, "--run=
-tests %s" % self.tests)
> +        self.command +=3D """ \
> +if [ -d ../meta-selftest ]; then \
> +    export DISPLAY=3D:1; \
> +    VERSION=3D$(oe-selftest --version 2> /dev/null | cut -d' ' -f2); \=

> +    if [ \"$VERSION\" =3D=3D '2.0' ]; then \
> +        oe-selftest %s; \
> +    else \
> +        oe-selftest %s; \
> +    fi; \
> +else \
> +    echo 'Skipping step - no meta-selftest layer here';
> +fi""" % oe_selftest_cmd
>          ShellCommand.start(self)
> =20
>      def _createOESelftestErrorReport(self, log):
>=20


--AqlfIeaVd6HdqNtu9o87AbMKtLMKATouq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXyICIAAoJEGJqcE9h3glg26sP/2ih29SzJWJK38TUyIkdBo3J
m/dkFWbOKwb6plpzJ/cB0sEk8pk4d9h4RRi9dckajlBNkxuCvX7YDXRUZlSq6yCB
OQyUcLhS25ZfmOTRFN+f9HX9OQwyvr9xBqrFleAE4HrT8pHsxSTEVZ6HFDhM9SCL
OnHKOoPt+ZdzXyQsc1Ij7MSbm+JvJEX50QH1+rzVCE8PqBCMY03Ipw33cEUcr/kg
wOlcW1ag70ZxwD2KhGzONlpFGfmeJ610xdd7nMGgzO7kMLXUPogNul7jI31KOeyU
ToBbRkSSQ3zCvoow2tx7awkXbcgK002Z31xcPHtqlVE0YUEw53dD6VprZI3fM8Pi
gJgZWuBLNmabe06NnM879PnzDC6iIUfzDCsr2SFgJkgQ040amsBu4PQmNOOhS2WV
zUfnQNMWkVqEaCbczGRG6YS7X4Q/7kdVtsgaTlkk9bjgmgwmLgs/wr1buQZ8mZF0
4PJKnJufLD0ZQxQS2EUpLE/BaT9nQBgju7RRUpxi82bfJp9YNRqnTuxbyBcn6ezm
T4d20RpJonsnc9ZB1b/ZHN9CO6krmsvjWotbw6nI0FrsCJWSETBFqshi17FIvPGp
54y0MvNzC5M0yiygJygd795JCZtBxjH68j3/LOfBa6C1x+s+/X0lPlbCqcXJlSvo
w5roOrWDuOL8FZCv11qb
=O96Z
-----END PGP SIGNATURE-----

--AqlfIeaVd6HdqNtu9o87AbMKtLMKATouq--
