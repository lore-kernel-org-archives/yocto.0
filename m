Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 453FAE0094C; Fri, 17 Feb 2017 13:24:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BA8E00995
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 13:24:14 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Feb 2017 13:24:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,173,1484035200"; 
	d="asc'?scan'208";a="48716906"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.128.120])
	([10.219.128.120])
	by orsmga002.jf.intel.com with ESMTP; 17 Feb 2017 13:24:14 -0800
To: Christopher Larson <kergoth@gmail.com>
References: <1486835474-10096-1-git-send-email-anibal.limon@linux.intel.com>
	<589F5000.8050402@linux.intel.com>
	<CABcZANkJC0FVsrRh+Kdd8_h9yRWR=3gpWWO4O0t-gbKbEMOukw@mail.gmail.com>
	<58A1DE54.9000609@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <58A76AC7.6060605@linux.intel.com>
Date: Fri, 17 Feb 2017 15:27:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <58A1DE54.9000609@linux.intel.com>
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
X-List-Received-Date: Fri, 17 Feb 2017 21:24:32 -0000
X-Groupsio-MsgNum: 34568
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Wd5qjKW9qjxgCmH7jlwjEqTJJmRINqi9L"

--Wd5qjKW9qjxgCmH7jlwjEqTJJmRINqi9L
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 02/13/2017 10:27 AM, An=EDbal Lim=F3n wrote:
>=20
>=20
> On 02/11/2017 08:04 PM, Christopher Larson wrote:
>> On Sat, Feb 11, 2017 at 10:55 AM, An=EDbal Lim=F3n <anibal.limon@linux=
=2Eintel.com
>>> wrote:
>>
>>> During the development of this script based on OEQA framework i found=
 a
>>> bug causing don't display stack traces, i sent a fix to the ML [1] al=
so
>>> is on my branch at [2].
>>>
>>> I attached and example of how a log file looks, the example log resul=
ts
>>> are based on meta-yocto-bsp.
>>>
>>> Cheers,
>>>         alimon
>>>
>>> [1]
>>> http://lists.openembedded.org/pipermail/openembedded-core/
>>> 2017-February/132494.html
>>> [2]
>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/
>>> log/?h=3Dalimon/yp_compatible
>>>
>>
>> This seems like a good start, but this isn=92t useful:
>>
>>     AssertionError: True is not false : Layer meta-yocto-bsp changed
>> signatures.
>>
>> Presumably this is telling the user it=92s modifying things without us=
ing the
>> appropriate overrides for machine or distro, but it doesn=92t actually=
 tell
>> them that, and displaying the changed checksums isn=92t of a great dea=
l of
>> use on its own either, I=92d suggest at least capturing the changed va=
riables
>> via bitbake-diffsigs or bitbake -S printdiff.
>=20
> Ok i can add another tests using bitbake -S printdiff.

Hi Christopher,

Currently the printdiff is broke, i agree with the idea to show what
actually changes in the signature but there are some work to be done in
printdiff.

	alimon

>=20
> I have a question, did you see the changed signatures like the attached=

> results log ones?
>=20
> Example,
>=20
> AssertionError: True is not false : Layer meta-yocto-bsp changed signat=
ures.
> packagegroup-core-lsb:do_build changed 3a1b91e693c766befca17e00ca69cfe9=

> -> 1153f4c44d409486e10a19449981aef7
> packagegroup-core-lsb:do_package_write_rpm changed
> 7fafda279503fb441f957fe88981cbc9 -> 45845055584bad62e1b6d67b12e668bd
> packagegroup-core-lsb:do_package changed
> c312cfe0956cecd9af010de2de09dc89 -> 3d00ea36ae703c99c2e8be57ad309a04
> meta-world-pkgdata:do_build changed d62a25aedc0adc4ed0832ea20141c4b7 ->=

> e8ee6e0e34122c095bc62a26e90be51f
> packagegroup-core-lsb:do_packagedata changed
> 9a63506a1764a11a5177c206839ce8ba -> 919b5c641cc779e59bd8df94b50a3d07
> packagegroup-core-lsb:do_package_qa changed
> 53a4bafbdea1fc41098ae48aef584b12 -> babec54733e94d0df008e237927552e7
>=20
>=20
> If not please apply this patch [1]
>=20
> Best regards,
> 	alimon
>=20
> [1]
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dalim=
on/yp_compatible&id=3Df35f9b2bc068ee4e50acdc163464da4aaadda956
>=20
>>
>=20
>=20
>=20


--Wd5qjKW9qjxgCmH7jlwjEqTJJmRINqi9L
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYp2rJAAoJEGJqcE9h3glgrIMP/1wsguWbI3m9N4Sl1qkWDzUm
9lhrKMwKE100aox0sjRDd3hsFBUuIAm+gJqAS1EoVcCq89U+SjD+MNlGvkj/1nQi
24RUo/cLCJjRBEI6U5tKouvb9YDKHVi8DtRzlHXEjasqmxms80Qk5P1ZqSCbXn6r
OMtf9wdQXZjp37vNO8XCvocmCNlS2lyKRJc3LDmw0FWGc1CqQK72bfnGEn/2/tZG
IRA/7BqW4k0HlgWXmJzPVVFpLvQIyQs86qcWDb+fCavQYoVhj+hUFzvsGfg3HzDQ
YGM90mTtO0nrCunC45MRj5/lHrwdnhB3IvvzXBYGFPIbK4h+iKrHjB4f0X9X/aE9
IRV8sf0+zuiUHBIPsXDm5TrKNkqws8Irt04QympJZHS+5q0KfQBJ5eOsBZlv9OL3
/cqMKStczsFIlcJlT/TksePBQqiU2R1bXHgIuPIadyeOlvLMbi1OTfJLU9O/j3Yu
JaeQSNf61e/I6PTH99UwScOAqx0XbPa4KG3VRk/dgmaJNorwKTkZUwWdXy0uxs61
NnXfF8Va5srf6g/FdOwzcwM4ziq+r284HwPFP+z+pZntZlbmFScZfu8XxufV0jAC
r60nmmgcUdxCQ+tbpZ/40BGq98iybBnnI9OTdr7/yVM+8mhGd9vlvJoFpCQ8XbYO
Nep/Mc1IS4fnO6eeQJLv
=SUPS
-----END PGP SIGNATURE-----

--Wd5qjKW9qjxgCmH7jlwjEqTJJmRINqi9L--
