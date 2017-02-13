Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 348ECE00726; Mon, 13 Feb 2017 08:23:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB3FE00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:23:45 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Feb 2017 08:23:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,156,1484035200"; 
	d="asc'?scan'208";a="65205987"
Received: from unknown (HELO [10.219.128.120]) ([10.219.128.120])
	by fmsmga006.fm.intel.com with ESMTP; 13 Feb 2017 08:23:44 -0800
To: Christopher Larson <kergoth@gmail.com>
References: <1486835474-10096-1-git-send-email-anibal.limon@linux.intel.com>
	<589F5000.8050402@linux.intel.com>
	<CABcZANkJC0FVsrRh+Kdd8_h9yRWR=3gpWWO4O0t-gbKbEMOukw@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58A1DE54.9000609@linux.intel.com>
Date: Mon, 13 Feb 2017 10:27:00 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CABcZANkJC0FVsrRh+Kdd8_h9yRWR=3gpWWO4O0t-gbKbEMOukw@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [[RFC][PATCH]] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Mon, 13 Feb 2017 16:23:49 -0000
X-Groupsio-MsgNum: 34453
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="ausOxrtkB20AcCx37pRBemckPNTfSN9T0"

--ausOxrtkB20AcCx37pRBemckPNTfSN9T0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 02/11/2017 08:04 PM, Christopher Larson wrote:
> On Sat, Feb 11, 2017 at 10:55 AM, An=C3=ADbal Lim=C3=B3n <anibal.limon@=
linux.intel.com
>> wrote:
>=20
>> During the development of this script based on OEQA framework i found =
a
>> bug causing don't display stack traces, i sent a fix to the ML [1] als=
o
>> is on my branch at [2].
>>
>> I attached and example of how a log file looks, the example log result=
s
>> are based on meta-yocto-bsp.
>>
>> Cheers,
>>         alimon
>>
>> [1]
>> http://lists.openembedded.org/pipermail/openembedded-core/
>> 2017-February/132494.html
>> [2]
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/
>> log/?h=3Dalimon/yp_compatible
>>
>=20
> This seems like a good start, but this isn=E2=80=99t useful:
>=20
>     AssertionError: True is not false : Layer meta-yocto-bsp changed
> signatures.
>=20
> Presumably this is telling the user it=E2=80=99s modifying things witho=
ut using the
> appropriate overrides for machine or distro, but it doesn=E2=80=99t act=
ually tell
> them that, and displaying the changed checksums isn=E2=80=99t of a grea=
t deal of
> use on its own either, I=E2=80=99d suggest at least capturing the chang=
ed variables
> via bitbake-diffsigs or bitbake -S printdiff.

Ok i can add another tests using bitbake -S printdiff.

I have a question, did you see the changed signatures like the attached
results log ones?

Example,

AssertionError: True is not false : Layer meta-yocto-bsp changed signatur=
es.
packagegroup-core-lsb:do_build changed 3a1b91e693c766befca17e00ca69cfe9
-> 1153f4c44d409486e10a19449981aef7
packagegroup-core-lsb:do_package_write_rpm changed
7fafda279503fb441f957fe88981cbc9 -> 45845055584bad62e1b6d67b12e668bd
packagegroup-core-lsb:do_package changed
c312cfe0956cecd9af010de2de09dc89 -> 3d00ea36ae703c99c2e8be57ad309a04
meta-world-pkgdata:do_build changed d62a25aedc0adc4ed0832ea20141c4b7 ->
e8ee6e0e34122c095bc62a26e90be51f
packagegroup-core-lsb:do_packagedata changed
9a63506a1764a11a5177c206839ce8ba -> 919b5c641cc779e59bd8df94b50a3d07
packagegroup-core-lsb:do_package_qa changed
53a4bafbdea1fc41098ae48aef584b12 -> babec54733e94d0df008e237927552e7


If not please apply this patch [1]

Best regards,
	alimon

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dalimon=
/yp_compatible&id=3Df35f9b2bc068ee4e50acdc163464da4aaadda956

>=20


--ausOxrtkB20AcCx37pRBemckPNTfSN9T0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYod5ZAAoJEGJqcE9h3glgSDUP/1zx24KImohHivAG1TgtB9w7
0+uixKYuzOb19iX9bbJ0tQdYGS/bks7EZIfQHOkQ4YcIergvdEoSVGUBo541j/3J
yCzxB7+w279GdJH8mNJtQlqmGqKfNGA2ICdL67xQbWCdlNO2z4twQ3+Ecjc1aOn+
v3qIxwNLTWiHWUdetpdmPeP8g4zrQN1QvJ+yBf2WerZlf/u6laptOxNqKVzP4Hqa
vgXhxpdWSeQLDmnRusaGBz9iBSijTwq2Lelm+yBQM+2wlD1PCgtPldpUNfm3QV2m
2nJ6C1TIksy7G8C6AW29OvUkqbi6HeDEFE5KK2StcKCjq72h03BskGxA+S4pZuQ8
wMBd8/1ylSP3ENRD66xgLfGMmM3dXYXkViU9n+Nop+yEiDT/yf/gOMNUFU/OBBy3
4oiVZ32m52z30jaEIFVNbHZgGvRIU8kF9e6W06E5z6Yo+DoOODFv6YdBbXL+DDxl
ZJHJdmKqDeBa3oduXYKfe/Xw/IPDittY9nysyyU5+b5NMwAVjkOKrwfRPYHdbMLR
LJiihBFDvT1eBcpjyMSfr5m2iR7/r7JAAgSRw0XXSo7xgkJ/fwFtzoyCXDLK5n5G
TiqB8fH8o1Q/LgTboaBk5M//ANQYg6HGzen/PY9WdHOEoaLxYPoOZw1yof5BOQDC
VzsnsDE573fP7UXhUxHK
=QAU2
-----END PGP SIGNATURE-----

--ausOxrtkB20AcCx37pRBemckPNTfSN9T0--
