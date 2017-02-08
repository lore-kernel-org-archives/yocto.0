Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19427E00655; Wed,  8 Feb 2017 07:07:28 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AEAE00519
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 07:07:26 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2017 07:07:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,348,1477983600"; 
	d="asc'?scan'208";a="62287881"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.125])
	([10.219.128.125])
	by orsmga005.jf.intel.com with ESMTP; 08 Feb 2017 07:07:24 -0800
To: "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1485979978-4971-1-git-send-email-anibal.limon@linux.intel.com>
	<589241B8.20809@linux.intel.com> <1486563139.3754.11.camel@intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <589B34ED.7060100@linux.intel.com>
Date: Wed, 8 Feb 2017 09:10:37 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1486563139.3754.11.camel@intel.com>
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
X-List-Received-Date: Wed, 08 Feb 2017 15:07:28 -0000
X-Groupsio-MsgNum: 34347
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Kj8WS0uIxDbtRfLFAgvDQmW6G5wCC87cC"

--Kj8WS0uIxDbtRfLFAgvDQmW6G5wCC87cC
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 02/08/2017 08:12 AM, Lock, Joshua G wrote:
> On Wed, 2017-02-01 at 14:14 -0600, An=C3=ADbal Lim=C3=B3n wrote:
>> I know we have the remote_kick.py [1] script but i don't know if is
>> currently on use also this new script support list the options in
>> builders and specify custom ones via cmdline.
>=20
> I don't use remote_kick.py, I'm loathe to carry two scripts with a
> similar purpose. Any idea how they differ?

The remote_kick script has a fixed set of parameters like builder
(nigthly), buildbot url (localhost:8010) and forces the same build.

The new forcebuild script you can specify buildbot server url, user,
password, builder and options (WEB inputs).

Cheers,
	alimon

>=20
> Thanks,
>=20
> Joshua
>=20
>> Cheers,
>> 	alimon
>>
>> [1]
>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/bin/
>> remote_kick.py
>>
>> On 02/01/2017 02:12 PM, An=C3=ADbal Lim=C3=B3n wrote:
>>> The script supports to list avaialable builders and his options,
>>> also can force a build if the builder is IDLE or not.
>>>
>>> Also supports specify options via cmdline using python dictionaries
>>> as string.
>>>
>>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>>> ---
>>>  bin/forcebuild.py | 183
>>> ++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 183 insertions(+)
>>>  create mode 100755 bin/forcebuild.py
>>>
>>> diff --git a/bin/forcebuild.py b/bin/forcebuild.py
>>> new file mode 100755
>>> index 0000000..5fe61a0
>>> --- /dev/null
>>> +++ b/bin/forcebuild.py
>>> @@ -0,0 +1,183 @@
>>> +#!/usr/bin/env python
>>> +
>>> +# YoctoAutobuilder force build script
>>> +#
>>> +# Copyright (C) 2017 Intel Corporation
>>> +#
>>> +# This program is free software; you can redistribute it and/or
>>> modify
>>> +# it under the terms of the GNU General Public License version 2
>>> as
>>> +# published by the Free Software Foundation.
>>> +#
>>> +# This program is distributed in the hope that it will be useful,
>>> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
>>> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>>> +# GNU General Public License for more details.
>>> +#
>>> +# You should have received a copy of the GNU General Public
>>> License along
>>> +# with this program; if not, write to the Free Software
>>> Foundation, Inc.,
>>> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
>>> +
>>> +import urllib2
>>> +import urllib
>>> +import cookielib
>>> +import uuid
>>> +import sys
>>> +import argparse
>>> +import json
>>> +from bs4 import BeautifulSoup
>>> +
>>> +class YoctoAutobuilderAPI(object):
>>> +    def __init__(self, server):
>>> +        self.server =3D server
>>> +        self.opener =3D urllib2.build_opener(
>>> +                urllib2.HTTPCookieProcessor(cookielib.CookieJar())
>>> )
>>> +
>>> +    def login(self, user, passwd):
>>> +        data =3D urllib.urlencode(dict(username=3Duser,
>>> +                                     passwd=3Dpasswd))
>>> +        url =3D self.server + "/login"
>>> +        request =3D urllib2.Request(url, data)
>>> +        result =3D self.opener.open(request).read()
>>> +        if result.find("The username or password you entered were
>>> not correct") > 0:
>>> +            print("Invalid username or password")
>>> +            return 1
>>> +        return 0
>>> +
>>> +    def _get_builders(self):
>>> +        url =3D "%s/json/builders/?as_text=3D1" % (self.server)
>>> +        request =3D urllib2.Request(url)
>>> +        json_raw_data =3D self.opener.open(request)
>>> +
>>> +        return json.load(json_raw_data)
>>> +
>>> +    def list_builders(self):
>>> +        builders =3D self._get_builders()
>>> +
>>> +        if builders:
>>> +            print('Available builders:\n')
>>> +            for builder in builders:
>>> +                print(builder)
>>> +            return 0
>>> +        else:
>>> +            print('No available builders in this server.')
>>> +            return 1
>>> +
>>> +    def _get_options_by_builder(self, builder):
>>> +        options =3D {}
>>> +
>>> +        url =3D "%s/builders/%s" % (self.server, builder)
>>> +        request =3D urllib2.Request(url)
>>> +        html =3D self.opener.open(request).read()
>>> +
>>> +        inputs =3D BeautifulSoup(html, 'lxml').find_all('input')
>>> +        for input in inputs:
>>> +            type =3D input.attrs['type']
>>> +            if  type =3D=3D 'submit':
>>> +                continue
>>> +
>>> +            options[input.attrs['name']] =3D input.attrs['value']
>>> +
>>> +        selects =3D BeautifulSoup(html, 'lxml').find_all('select')
>>> +        for select in selects:
>>> +            value =3D select.find_all('option',
>>> selected=3DTrue)[0].getText()
>>> +            options[select.attrs['name']] =3D value
>>> +
>>> +        return options
>>> +
>>> +    def list_options(self, builder):
>>> +        builders =3D self._get_builders()
>>> +        if not builder in builders:
>>> +            print('Builder %s specified isn\'t available' %
>>> builder)
>>> +            return 1
>>> +
>>> +        opts =3D self._get_options_by_builder(builder)
>>> +        print('Available options in builder %s:\n' % (builder))
>>> +        for name in opts:
>>> +            value =3D opts[name]
>>> +            print('Name: %s, Default value: %s' % (name, value))
>>> +
>>> +    def force_build(self, builder, opts, idle_check=3DFalse):
>>> +        builders =3D self._get_builders()
>>> +        if not builder in builders:
>>> +            print('Builder specified isn\'t available')
>>> +            return 1
>>> +
>>> +        state =3D builders[builder]['state']
>>> +        if idle_check and not state =3D=3D 'idle':
>>> +            print('Builder %s specified isn\'t IDLE, current state
>>> %s' \
>>> +                    % (builder, state))
>>> +            return 1
>>> +
>>> +        opts =3D eval(opts) # FIXME: transform string argument into
>>> dictionary, security?
>>> +        current_opts =3D self._get_options_by_builder(builder)
>>> +        for opt in opts:
>>> +            if not opt in current_opts:
>>> +                print('Option %s isn\'t supported by builder %s' %
>>> \
>>> +                        (opt, builder))
>>> +                return 1
>>> +            else:
>>> +                current_opts[opt] =3D opts[opt]
>>> +
>>> +        url_params =3D urllib.urlencode(current_opts)
>>> +        url =3D "%s/builders/%s/force" % (self.server, builder)
>>> +        request =3D urllib2.Request(url, url_params)
>>> +        result =3D self.opener.open(request)
>>> +        if 'Forced build' in result.read():
>>> +            return 0
>>> +        else:
>>> +            print("Failed to force build")
>>> +            return 1
>>> +
>>> +def main():
>>> +    parser =3D argparse.ArgumentParser(description=3D"Yocto
>>> Autobuilder force build script",
>>> +            add_help=3DFalse)
>>> +    parser.add_argument('-s', '--server', help=3D'Server URL',
>>> +            action=3D'store', required=3DTrue)
>>> +
>>> +    parser.add_argument('-u', '--username', action=3D'store',
>>> required=3DTrue)
>>> +    parser.add_argument('-p', '--password', action=3D'store',
>>> required=3DTrue)
>>> +
>>> +    group =3D parser.add_mutually_exclusive_group()
>>> +    group.add_argument('--list-builders', help=3D'List available
>>> builders',
>>> +            action=3D'store_true')
>>> +    group.add_argument('--list-options', help=3D'List options by
>>> builder',
>>> +            action=3D'store', metavar=3D'BUILDER')
>>> +    group.add_argument('--force-build', help=3D'Force build by
>>> builder',
>>> +            action=3D'store', metavar=3D'BUILDER')
>>> +    group.add_argument('--force-build-idle', help=3D'Force build by
>>> builder if is idle',
>>> +            action=3D'store', metavar=3D'BUILDER')
>>> +
>>> +    parser.add_argument('-o', '--options', help=3D'Custom options by=

>>> operation',
>>> +            action=3D'store')
>>> +
>>> +    parser.add_argument('-d', '--debug', help=3D'Enable debug
>>> output',
>>> +            action=3D'store_true')
>>> +    parser.add_argument('-q', '--quiet', help=3D'Print only errors',=

>>> +            action=3D'store_true')
>>> +
>>> +    parser.add_argument('-h', '--help', action=3D'help',
>>> default=3Dargparse.SUPPRESS,
>>> +                        help=3D'show this help message and exit')
>>> +
>>> +    args =3D parser.parse_args()
>>> +
>>> +    api =3D YoctoAutobuilderAPI(args.server)
>>> +    if api.login(args.username, args.password):
>>> +        return 1
>>> +
>>> +    if args.list_builders:
>>> +        return api.list_builders()
>>> +    elif args.list_options:
>>> +        return api.list_options(args.list_options)
>>> +    elif args.force_build:
>>> +        return api.force_build(args.force_build, args.options)
>>> +    elif args.force_build_idle:
>>> +        return api.force_build(args.force_build_idle,
>>> args.options, idle_check=3DTrue)
>>> +
>>> +if __name__ =3D=3D '__main__':
>>> +    try:
>>> +        ret =3D main()
>>> +    except Exception:
>>> +        ret =3D 1
>>> +        import traceback
>>> +        traceback.print_exc()
>>> +    sys.exit(ret)
>>>
>>


--Kj8WS0uIxDbtRfLFAgvDQmW6G5wCC87cC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYmzTvAAoJEGJqcE9h3glgUdAP/2k9xKLvEUPDDIYt+7rgNfTb
li9hEs/8CGX9igr1FVoqqPzAO725QYBYi3i7GMKU0klr0RSc8aCwJxa45C4BNoCa
F6wI8NNkdAWGCoB7iDKFp5FygBPq/XO8aCkwnPxPuoeoPIpUlr64PMiRDsWen+Wm
KFRScdKic+Drz6jib/h5AvF793Y11uvWjsCmVqd4u72JRp4e2uYrUhv+jMM3ZXsM
GUugUV6Z89XZ5UJMlu5RzUYZrLve0zLvNq7hluKyuYXYZ0g/DqSxARsGkcyS8d8b
W/cAni977URPD6WMV+f5pyNEeRsJqYVDh3qrwbEJmxdhF6IHvjd7W5waehT43KFB
eya7KwHNz322aYHCHRRovnVkWVt1lfHj10jlwc2tFdmnsb09gCK4VGz18rkCnGcw
4dMPvdWBSVVCHiQKxIXmVT4QyGB3j/Vcy2ljLKHA9rt1zVgAygKtUjseIRKLs72t
yH4DUqx5q6i8+l8oKs/ajk6q1a7ahUu4A2g5Ul46dibF1/lLnZKFEcgunnElsvdT
W2ZjgDGmwHlqRCRZ/VJilig6t9HUVZ6JFSAP3hr2nKy1KQgc5WlplKqCk1NhEn+T
3zn/imyXRU6IuEu+M2lLstZ1qC+3R0pNXul4z8A0V2hUuEUeLHegdd3F4rHOhmYq
6TxVim+GM/yxDlwf5YiD
=Bhf2
-----END PGP SIGNATURE-----

--Kj8WS0uIxDbtRfLFAgvDQmW6G5wCC87cC--
