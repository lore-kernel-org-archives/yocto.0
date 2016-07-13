Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFA62E00DC7; Wed, 13 Jul 2016 08:11:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1960FE00D55
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 08:11:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Jul 2016 08:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; 
	d="asc'?scan'208";a="1020943636"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2016 08:07:19 -0700
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
	<1468273073-8178-2-git-send-email-anibal.limon@linux.intel.com>
	<1468339760.2733.9.camel@linux.intel.com>
	<57851926.7000907@linux.intel.com>
	<1468416734.7977.7.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5786593A.50508@linux.intel.com>
Date: Wed, 13 Jul 2016 10:07:38 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1468416734.7977.7.camel@linux.intel.com>
Subject: Re: [[PATCH][yocto-autobuilder] 2/2] buildsteps/RunOeSelftest.py: Set native_lsb to universal
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
X-List-Received-Date: Wed, 13 Jul 2016 15:11:56 -0000
X-Groupsio-MsgNum: 31045
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="HGMwOeX9nlu3TeDNJl2IoAxxpm9H7WE9H"

--HGMwOeX9nlu3TeDNJl2IoAxxpm9H7WE9H
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/13/2016 08:32 AM, Joshua G Lock wrote:
> On Tue, 2016-07-12 at 11:21 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>
>> On 07/12/2016 11:09 AM, Joshua G Lock wrote:
>>> On Mon, 2016-07-11 at 16:37 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>>>> The error report is generated into AB master and currently we
>>>> don't have a method to get AB worker distro, so set to universal.
>>>
>>> Can you elaborate a bit here? Why don't we have a method available
>>> to
>>> get the worker distro? Is it because we don't ensure all of the
>>> builders in the cluster include lsb_release?
>>
>> Currently, we don't have an easy way to get the worker distro an
>> buildstep is needed in order TODO that but isn't trivial.
>>
>> I propose to have at step at buildinit for get the worker
>> information.
>> At this time only will be distro. I removed the get_lsb_distro()
>> because
>> it gets the distro of the master instead of the worker.
>=20
> Could we just extract the value of NATIVELSBSTRING[1] from the build
> header in the logs?

I use this value in the BuildImages steps because bitbake builds an
image an print that information but for the oe-selftest isn't available
because it executes a different tests suites maybe or not using bitbake.

	alimon

>=20
> Regards,
>=20
> Joshua
>=20
> 1. http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#var-=

> NATIVELSBSTRING
>=20
>>
>> I added a bug for this task,
>>
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9917
>>
>> Cheers,
>> 	alimon
>>
>>
>>>
>>> Are our worker distro versions new enough that we can rely on os-
>>> release?
>>>
>>> http://manpages.ubuntu.com/manpages/xenial/en/man5/os-release.5.htm
>>> l
>>>
>>> Regards,
>>>
>>> Joshua
>>>
>>>>
>>>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>=

>>>> ---
>>>>  lib/python2.7/site-
>>>> packages/autobuilder/buildsteps/RunOeSelftest.py
>>>>> 4 +++-
>>>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/lib/python2.7/site-
>>>> packages/autobuilder/buildsteps/RunOeSelftest.py
>>>> b/lib/python2.7/site-
>>>> packages/autobuilder/buildsteps/RunOeSelftest.py
>>>> index 5b9e408..809bcc3 100644
>>>> --- a/lib/python2.7/site-
>>>> packages/autobuilder/buildsteps/RunOeSelftest.py
>>>> +++ b/lib/python2.7/site-
>>>> packages/autobuilder/buildsteps/RunOeSelftest.py
>>>> @@ -52,7 +52,9 @@ class RunOeSelftest(ShellCommand):
>>>>          report['machine'] =3D 'universal'
>>>>          report['build_sys'] =3D "%s-%s" % (platform.machine(),
>>>>                  platform.system().lower())
>>>> -        report['nativelsb'] =3D get_lsb_distro() or 'universal'
>>>> +        # XXX: Set to universal because isn't easy to get
>>>> Autobuilder
>>>> +        # worker distro.
>>>> +        report['nativelsb'] =3D 'universal'=20
>>>>          report['distro'] =3D 'universal'
>>>>          report['target_sys'] =3D 'universal'
>>>> =20
>>>> --=20
>>>> 2.1.4
>>>>
>>


--HGMwOeX9nlu3TeDNJl2IoAxxpm9H7WE9H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXhlk8AAoJEGJqcE9h3glg7W0P/3xS65YJvQT4HaaTZGbHJMNm
BlJewNm3xUt22pglSKNdafna8dKleWZHWHCP85Zb+ElnBKZLdMKP7KdB0P094TwL
mokf63sR0PmI8Nc1lJhCPN2X4IQS6aIqWmBvLyIRZwE47YrFqfRlKDSbO8xLY4Kg
twI1cCC9FQsYc/dOCqK2GInd9N6dXQimQ+e52ZAfZMo1C4IU7jFrUI+chUkIYnll
XGROuvczv10CdMNbIwzsmYRpDX7TD+BvlnIf7UeUaxFomxHVKZXhck2cG6x4Qvrl
e0srDBpTCNTKoQUjJkHIrYij/usVVkSEcnlcQ9XoYKT51NWuvo0tEumC+VsaD5pJ
QDNkKOwdfrz/2VUBWHt7fL8FJYdCiMp2AzRU5emxRmBYtn8KksU8fKxXB68PsZz5
tIY63xWXeIiJgUmcB1k9593YGV99IkGLarIwgWZLgopRdiz4VOAQb9jL1CN6Eo66
pnGXURdFF21V7nlQcs/oQvvKXt9SrZDu2N9Ye2rW7a+JZ6dfee2THB64zFRP/sPM
tpcOYI/Zyq9zMsVk5/GaYxRETiwS+XoTokO1O/JKSBTEQLKJIWQPg8WT7IqszZMM
A6bMS9YteBL306ILD4E1AO0EBIHjF/VqCgLBQTvsNvneJkLMZE5a81LVttdi9aEj
25lmGbb68Vp8L95SkKEk
=uVmc
-----END PGP SIGNATURE-----

--HGMwOeX9nlu3TeDNJl2IoAxxpm9H7WE9H--
