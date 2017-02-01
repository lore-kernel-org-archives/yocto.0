Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF3D6E0082A; Wed,  1 Feb 2017 12:11:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5FA0E004D8
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 12:11:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2017 12:11:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; 
	d="asc'?scan'208";a="1120835914"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.122])
	([10.219.128.122])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2017 12:11:43 -0800
To: yocto@yoctoproject.org
References: <1485979978-4971-1-git-send-email-anibal.limon@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <589241B8.20809@linux.intel.com>
Date: Wed, 1 Feb 2017 14:14:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1485979978-4971-1-git-send-email-anibal.limon@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: Re: [[PATCH][yocto-autobuilder]] bin/forcebuild.py: Add a script to support force a build
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
X-List-Received-Date: Wed, 01 Feb 2017 20:11:45 -0000
X-Groupsio-MsgNum: 34213
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="shjLm1JpS9U2J0Ae7TMNo7GI8a7kPNa6m"

--shjLm1JpS9U2J0Ae7TMNo7GI8a7kPNa6m
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I know we have the remote_kick.py [1] script but i don't know if is
currently on use also this new script support list the options in
builders and specify custom ones via cmdline.

Cheers,
	alimon

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/bin/remo=
te_kick.py

On 02/01/2017 02:12 PM, An=C3=ADbal Lim=C3=B3n wrote:
> The script supports to list avaialable builders and his options,
> also can force a build if the builder is IDLE or not.
>=20
> Also supports specify options via cmdline using python dictionaries
> as string.
>=20
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  bin/forcebuild.py | 183 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
>  1 file changed, 183 insertions(+)
>  create mode 100755 bin/forcebuild.py
>=20
> diff --git a/bin/forcebuild.py b/bin/forcebuild.py
> new file mode 100755
> index 0000000..5fe61a0
> --- /dev/null
> +++ b/bin/forcebuild.py
> @@ -0,0 +1,183 @@
> +#!/usr/bin/env python
> +
> +# YoctoAutobuilder force build script
> +#
> +# Copyright (C) 2017 Intel Corporation
> +#
> +# This program is free software; you can redistribute it and/or modify=

> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License al=
ong
> +# with this program; if not, write to the Free Software Foundation, In=
c.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +
> +import urllib2
> +import urllib
> +import cookielib
> +import uuid
> +import sys
> +import argparse
> +import json
> +from bs4 import BeautifulSoup
> +
> +class YoctoAutobuilderAPI(object):
> +    def __init__(self, server):
> +        self.server =3D server
> +        self.opener =3D urllib2.build_opener(
> +                urllib2.HTTPCookieProcessor(cookielib.CookieJar()))
> +
> +    def login(self, user, passwd):
> +        data =3D urllib.urlencode(dict(username=3Duser,
> +                                     passwd=3Dpasswd))
> +        url =3D self.server + "/login"
> +        request =3D urllib2.Request(url, data)
> +        result =3D self.opener.open(request).read()
> +        if result.find("The username or password you entered were not =
correct") > 0:
> +            print("Invalid username or password")
> +            return 1
> +        return 0
> +
> +    def _get_builders(self):
> +        url =3D "%s/json/builders/?as_text=3D1" % (self.server)
> +        request =3D urllib2.Request(url)
> +        json_raw_data =3D self.opener.open(request)
> +
> +        return json.load(json_raw_data)
> +
> +    def list_builders(self):
> +        builders =3D self._get_builders()
> +
> +        if builders:
> +            print('Available builders:\n')
> +            for builder in builders:
> +                print(builder)
> +            return 0
> +        else:
> +            print('No available builders in this server.')
> +            return 1
> +
> +    def _get_options_by_builder(self, builder):
> +        options =3D {}
> +
> +        url =3D "%s/builders/%s" % (self.server, builder)
> +        request =3D urllib2.Request(url)
> +        html =3D self.opener.open(request).read()
> +
> +        inputs =3D BeautifulSoup(html, 'lxml').find_all('input')
> +        for input in inputs:
> +            type =3D input.attrs['type']
> +            if  type =3D=3D 'submit':
> +                continue
> +
> +            options[input.attrs['name']] =3D input.attrs['value']
> +
> +        selects =3D BeautifulSoup(html, 'lxml').find_all('select')
> +        for select in selects:
> +            value =3D select.find_all('option', selected=3DTrue)[0].ge=
tText()
> +            options[select.attrs['name']] =3D value
> +
> +        return options
> +
> +    def list_options(self, builder):
> +        builders =3D self._get_builders()
> +        if not builder in builders:
> +            print('Builder %s specified isn\'t available' % builder)
> +            return 1
> +
> +        opts =3D self._get_options_by_builder(builder)
> +        print('Available options in builder %s:\n' % (builder))
> +        for name in opts:
> +            value =3D opts[name]
> +            print('Name: %s, Default value: %s' % (name, value))
> +
> +    def force_build(self, builder, opts, idle_check=3DFalse):
> +        builders =3D self._get_builders()
> +        if not builder in builders:
> +            print('Builder specified isn\'t available')
> +            return 1
> +
> +        state =3D builders[builder]['state']
> +        if idle_check and not state =3D=3D 'idle':
> +            print('Builder %s specified isn\'t IDLE, current state %s'=
 \
> +                    % (builder, state))
> +            return 1
> +
> +        opts =3D eval(opts) # FIXME: transform string argument into di=
ctionary, security?
> +        current_opts =3D self._get_options_by_builder(builder)
> +        for opt in opts:
> +            if not opt in current_opts:
> +                print('Option %s isn\'t supported by builder %s' % \
> +                        (opt, builder))
> +                return 1
> +            else:
> +                current_opts[opt] =3D opts[opt]
> +
> +        url_params =3D urllib.urlencode(current_opts)
> +        url =3D "%s/builders/%s/force" % (self.server, builder)
> +        request =3D urllib2.Request(url, url_params)
> +        result =3D self.opener.open(request)
> +        if 'Forced build' in result.read():
> +            return 0
> +        else:
> +            print("Failed to force build")
> +            return 1
> +
> +def main():
> +    parser =3D argparse.ArgumentParser(description=3D"Yocto Autobuilde=
r force build script",
> +            add_help=3DFalse)
> +    parser.add_argument('-s', '--server', help=3D'Server URL',
> +            action=3D'store', required=3DTrue)
> +
> +    parser.add_argument('-u', '--username', action=3D'store', required=
=3DTrue)
> +    parser.add_argument('-p', '--password', action=3D'store', required=
=3DTrue)
> +
> +    group =3D parser.add_mutually_exclusive_group()
> +    group.add_argument('--list-builders', help=3D'List available build=
ers',
> +            action=3D'store_true')
> +    group.add_argument('--list-options', help=3D'List options by build=
er',
> +            action=3D'store', metavar=3D'BUILDER')
> +    group.add_argument('--force-build', help=3D'Force build by builder=
',
> +            action=3D'store', metavar=3D'BUILDER')
> +    group.add_argument('--force-build-idle', help=3D'Force build by bu=
ilder if is idle',
> +            action=3D'store', metavar=3D'BUILDER')
> +
> +    parser.add_argument('-o', '--options', help=3D'Custom options by o=
peration',
> +            action=3D'store')
> +
> +    parser.add_argument('-d', '--debug', help=3D'Enable debug output',=

> +            action=3D'store_true')
> +    parser.add_argument('-q', '--quiet', help=3D'Print only errors',
> +            action=3D'store_true')
> +
> +    parser.add_argument('-h', '--help', action=3D'help', default=3Darg=
parse.SUPPRESS,
> +                        help=3D'show this help message and exit')
> +
> +    args =3D parser.parse_args()
> +
> +    api =3D YoctoAutobuilderAPI(args.server)
> +    if api.login(args.username, args.password):
> +        return 1
> +
> +    if args.list_builders:
> +        return api.list_builders()
> +    elif args.list_options:
> +        return api.list_options(args.list_options)
> +    elif args.force_build:
> +        return api.force_build(args.force_build, args.options)
> +    elif args.force_build_idle:
> +        return api.force_build(args.force_build_idle, args.options, id=
le_check=3DTrue)
> +
> +if __name__ =3D=3D '__main__':
> +    try:
> +        ret =3D main()
> +    except Exception:
> +        ret =3D 1
> +        import traceback
> +        traceback.print_exc()
> +    sys.exit(ret)
>=20


--shjLm1JpS9U2J0Ae7TMNo7GI8a7kPNa6m
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYkkG6AAoJEGJqcE9h3glgipUP/3Yy0xww6xiecVy2T7u4Egsi
t5ZKhZBPhxJE0NdMSaIE18KzsbgD+jHlbSMBiTEmUYQEUTKisGw95Mv9XaSvIEQw
SVP3w3AQmuOKc6XBMI3PTzer24wTe6qb+HjUlT6JvP3hJoigDefIDvjjSGgaQZvd
boexBU541rAhXrCS/ZTV1tM4qfFx57VD56VD42bOV677g3dkf46O9QZtH+EVtt8Z
1cnUfj5gyN4R+IlTJM3BF8dnuDen/mTKpZHmOS5OE4RuJU71pCbB+/TLOq8jn97k
xGVIjCvWIzK8DynhH6P9z4DMO2wkvky7bIvExIB8mxftrJs8gQOexAlG3R9A3h90
41FdFjab3DhsU/0tqNYJwe/q904OLC2STwfnEilWWZ74B9rN0ru+UCqRadz6OMk8
ePe//0n5p5WMtuQkleGoapvQOaqhD92xktd+eZ/IuzP1irX6n9ueelEECDH6Vi3l
ch2Sy+GkUPY/jlqMjQFxHOF5U0BCE82c9skgbmL14Cl4QuZCn7w1YxCMS6hPTGUZ
gqNuY7preXcypLwcE7sawhsDYceYH4XjwUrGBjQneIIOsuH0Vu7qtcWN0StXjbuq
DM35iQzByH+bZpxpHy/fxnjeKVv6l+ukE1qMUPrRZ/tnLApws73b9LWBfIHE3Vjm
27jTjkiFwpS+0Z+hH5av
=vQbY
-----END PGP SIGNATURE-----

--shjLm1JpS9U2J0Ae7TMNo7GI8a7kPNa6m--
