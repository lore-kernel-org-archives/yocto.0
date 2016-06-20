Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6D4E00875; Mon, 20 Jun 2016 08:07:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97BCBE0086E
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 08:07:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 20 Jun 2016 08:05:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,499,1459839600"; 
	d="asc'?scan'208";a="991452109"
Received: from unknown (HELO [10.219.5.159]) ([10.219.5.159])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2016 08:05:41 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1466179510-9651-1-git-send-email-anibal.limon@linux.intel.com>
	<1466408538.2437.5.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57680642.3080106@linux.intel.com>
Date: Mon, 20 Jun 2016 10:05:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1466408538.2437.5.camel@toganlabs.com>
Subject: Re: [PATCH][yocto-autobuilder] autobuilder/Autobuilder.p: Add missing import of buildbot.util.
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
X-List-Received-Date: Mon, 20 Jun 2016 15:07:16 -0000
X-Groupsio-MsgNum: 30631
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="bduOcAr6kSL6nTMnCXwPgiDQmnI7aA4HJ"

--bduOcAr6kSL6nTMnCXwPgiDQmnI7aA4HJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 06/20/2016 02:42 AM, Beth 'pidge' Flanagan wrote:
> On Fri, 2016-06-17 at 11:05 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> When try to start Autobuilder fails with the next exception,
>>
>> 2016-06-07 17:06:45-0500 [-] LOADING CONFIG FILE
>> 2016-06-07 17:06:45-0500 [-] error while parsing config file:
>>
>> Traceback (most recent call last):
>>           File
>> "/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-
>> packages/Twisted-12.2.0-py2.7-linux-
>> x86_64.egg/twisted/internet/defer.py",
>> line 551, in _runCallbacks
>> ......
>> ......
>> ......
>>           File
>> "/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-
>> packages/autobuilder/Autobuilder.py",
>> line 54, in createBuildsets
>>             util.naturalSort(buildersSorted)
>>         exceptions.NameError: global name 'util' is not defined
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>=20
> Pulled into master.
>=20
> I'm going to have a few patches today to pull in. One from Bill Randle,=

> and if you have the rebase done for our bitbakeshell branch, that as
> well, so we might want to consider getting production updated.
>=20
> Have we run your BitbakeShell branch of the devel cluster (or any
> cluster not on a single machine, which is generally where we find
> issues) yet?

I ran into my machine and it works ok, but for BitbakeShell related
changes we need to wait the integration of other related changes into
Error report web because with the new changes the AB starts to send a
new field to the ERW and it possible could cause problems.

	alimon

>=20
> -b
>=20
>=20
>> ---
>>  lib/python2.7/site-packages/autobuilder/Autobuilder.py | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
>> b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
>> index 6c3e578..23f0a74 100644
>> --- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
>> +++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
>> @@ -19,6 +19,7 @@ from buildbot.schedulers.basic  import
>> SingleBranchScheduler
>>  from buildbot.changes import filter
>>  from buildbot.changes.pb import PBChangeSource
>>  from buildbot.changes.gitpoller import *
>> +from buildbot import util
>>  from lib.ABTools import capitalize
>>  import ast
>>  import BuildSet


--bduOcAr6kSL6nTMnCXwPgiDQmnI7aA4HJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXaAZGAAoJEGJqcE9h3glgBGMP/2QP5RWoUWCPMhbNOUfBxw9Y
Mz1BM/2b+w1rXcMc9nnpVzcaNCp1M4gFmz17TmKTH0XAhPFlYs10Mfa+4m68T7Sx
lAxmT79QLzWjOKlC5IK/e4kinegPG6/YwBLUoKOiAMnOsdkUDO00uJUsggDgzVub
vbk8sjYjf8NT6ccG3Lq+0ITRyBRRXK+85texv6NigXpO97PHNu7uT9tr7ln926fy
7HxF/86tWgJajz38dLvjtVYG4Qacl+w4Ovt2rda2DpbFPtAfiMwycAqyec7yPFSc
k6V/p0iLQAUjU7Dix9hHMSahgtYoI8pf+y6c769ROdtZIJOtIXZqQxG/NGCkTLW4
Oyt3v5Ss2irdYsGdBk99R4t9I8l7LHWx1oaBewfXvZoFZ3+a3IQpzQnPwLpezJR0
rSPu8bDxY45ytK8tPby4l3pHB3Z25hIMAvH7avVT7DtoablDeIqjgxLw6I7shYea
YRncz0xRMmZhcRE0LAqqAX509tV7KPlNboRknprV7Qynp6Rtj3iR8ADagIDGGp7O
Ee38kJIbGR9dd6vTh1h6XUfg+y/kerh20nslPldLIpwG2pkHQ7t2qugUzB0j6oN9
DOT1HKptV+XQembxDyCLY4XNHQxngiUmLTEKgrp0e7qUxS7ZzOiGAw1ngZKsTFo4
Mtk+CAju4nWrAii1HCWj
=hUV9
-----END PGP SIGNATURE-----

--bduOcAr6kSL6nTMnCXwPgiDQmnI7aA4HJ--
