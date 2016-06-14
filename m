Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4968E00C1F; Tue, 14 Jun 2016 10:02:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D4C6E00BFF
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 10:02:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jun 2016 10:02:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,471,1459839600"; 
	d="asc'?scan'208";a="997498589"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.51]) ([10.219.5.51])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2016 10:02:17 -0700
To: "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"pidge@toganlabs.com" <pidge@toganlabs.com>,
	"Randle, William C" <william.c.randle@intel.com>
References: <5759DE3F.9040002@linux.intel.com>
	<1465916993.2814.14.camel@intel.com> <57602958.70402@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <576038D0.3090100@linux.intel.com>
Date: Tue, 14 Jun 2016 12:03:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <57602958.70402@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder] [RFC] Add support for generate bitbake error reports
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
X-List-Received-Date: Tue, 14 Jun 2016 17:02:40 -0000
X-Groupsio-MsgNum: 30516
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="86AaevlpTOuf6s0eI6qbTol9NfSnokI5c"

--86AaevlpTOuf6s0eI6qbTol9NfSnokI5c
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 06/14/2016 10:57 AM, An=EDbal Lim=F3n wrote:
>=20
>=20
> On 06/14/2016 10:09 AM, Lock, Joshua G wrote:
>> On Thu, 2016-06-09 at 16:23 -0500, An=EDbal Lim=F3n wrote:
>>> Hi folks,
>>>
>>> Currently we support to send error reports to errors.yoctoproject.org=

>>> about failing tasks on bitbake using SendErrorReport buildstep but we=

>>> have a lack of bitbake related errors like exceptions.
>>>
>>> A bug exist to implement this support into Error report web [1], i'm
>>> working on it but for generate bitbake error reports there's a need
>>> of
>>> some process monitoring the bitbake output in this case the Yocto
>>> Autobuilder.
>>>
>>> This email is for review my current implementation for generate
>>> bitbake
>>> error reports in the Autobuilder [2] next i'll try to explain how it
>>> works.
>>>
>>> I aadded a BitbakeShellCommand [3] class for use in the buildsteps
>>> that
>>> executes bitbake the main objective of this class is to have common
>>> operations to be made in bitbake commands like create error reports
>>> if
>>> fails.
>>>
>>> For create error reports this class add an stdio observer to look at
>>> bitbake output and if bitbake fails review the bitbake output for
>>> identify if the failure is an non-related task error [4]. If the
>>> observer found bitbake error creates an Error report with the
>>> information in the master controller.
>>>
>>> In order to send the bitbake error to Error report web the controller=

>>> transfer the report to the worker using a new DownloadDirectory
>>> implementation that i made [5], the SendErrorReport buildstep works
>>> on
>>> the worker side so it's easy to transfer the reports from master to
>>> worker instead of send it by master.
>>>
>>> Finally to complete with the job of have the bitbake errors reports
>>> the
>>> Error report web changes need  (i'm working on it) to be integrated
>>> first in order to don't break anything.
>>>
>>> Please review it and provide me feedback.
>>
>> This would've been much easier to review as a series of patches.
>>
>> After a quick read via the gitweb the series as a whole looks good.
>>
>> A couple of review comments:
>>
>> In a04b41d37c29191318386455d8d958ff815a3a10 "lib/buildsteps.py: Add
>> BitbakeLogLineObserver for BitbakeShellCommands." you have a comment
>>
>> "discard line that are not errors and line that is recipe task errors"=

>>
>> but the lines are not actually discarded, afaict  from a cursory read
>> through they aren't used in the rest of the series
>> unless errors['bitbake'] =3D=3D True?=20
>>
>> Could we move the error['log'].append() to after the if statement whic=
h
>> checks whether this is a bitbake error?
>=20
> Yes and i'll update the commit message to be more consistent.
>=20
>>
>> Minor nit, in caf472bc696053227825c5a102feef3e17574ba2 "lib/buildsteps=
:
>> BitbakeShellCommand add support for create error reports"
>> in get_error_report_bitbake_dir() you use both " and ' for strings.
>>
>> Same in 40279597615c49bc4f4f067cbab937584b626671
>=20
> I'll fix the typos for only use "".
>=20
> 	alimon
>=20
I updated the branch with the changes suggested now at,

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3Dcont=
rib/alimon/devel

	alimon

>>
>> Regards,
>>
>> Joshua
>>
>>>
>>> Cheers,
>>> 	alimon
>>>
>>> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7583
>>> [2]
>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=3D=
co
>>> ntrib/alimon/devel
>>> [3]
>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/=

>>> python2.7/site-
>>> packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/devel#n92
>>> [4]
>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/lib/=

>>> python2.7/site-
>>> packages/autobuilder/lib/buildsteps.py?h=3Dcontrib/alimon/devel#n53
>>> [5]
>>> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/commit/?h=

>>> =3Dcontrib/alimon/devel&id=3D4022920bb0e56d1eef3dfe7c5e9b4699f801cdf1=

>=20
>=20
>=20


--86AaevlpTOuf6s0eI6qbTol9NfSnokI5c
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXYDjSAAoJEGJqcE9h3glg3bUP/38NUeFbf3yl5FiHuugFKKHP
kwvgmhW5oRX6UM9lkRs0PyLl5zDMpb9bS3GIwE97h6r1nim7ZQhygkjVGV84NT4O
3rk3uY5iWCXqJb6cFWEJTejGD0+OyU9P/E3U22sGldDObfUs6rKcKBOHAdku21Cr
196lNoIBC3c9aEexC1UOZJObsLEqvHZ8r0+HHwLD30Pow/I3l6YtVdtudoBbSv3B
rm2RgiX7rWoHQ/SObtI8NPtIB/EbzxFeN5MoL6bprLZHPoFvpoXI8pd0ECgfMJst
4gwhmcmj4UiLLaE614hjOn70sVJNqrEAF1MGgdovfsI+u8O6AS31aKmodwbDma7e
zqdCG/PA7cYVskrHKgrciBi9Yj2+P8JgFiXXmgPN9JkzQ4/UPaLg2jj6kAjb/t/H
Nf3rlfE4kEbpgwzLzKTp+2jfiJB+XybNfZz1Td/la2h7V+qkwIYilZtEQJAaL2Dy
DrFHl+TpQfAiGeHOB4JaV4ml2VrfHTrQ7InOho+pXuHdukCs3oA/9ubT7DUDLgDZ
9NnB4tUAaM9raXKDkSmEHwtQbcmqXe9Cq+YR2zC0OgX/OHm1zGMR8nqXt6wnmiDn
fY9+30Mm737qvyFiPzuy15OLqfimtuNztqXcmmtfp/n7DoI4UkATYE2p5/u1ojug
6ZfqH1sbfelYpzWWurAm
=YAWs
-----END PGP SIGNATURE-----

--86AaevlpTOuf6s0eI6qbTol9NfSnokI5c--
