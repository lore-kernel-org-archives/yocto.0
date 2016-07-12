Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1B90E00F39; Tue, 12 Jul 2016 09:22:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA46E00F35
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 09:22:11 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 12 Jul 2016 09:21:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,352,1464678000"; 
	d="asc'?scan'208";a="844947645"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.159])
	([10.219.5.159])
	by orsmga003.jf.intel.com with ESMTP; 12 Jul 2016 09:21:40 -0700
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <1468273073-8178-1-git-send-email-anibal.limon@linux.intel.com>
	<1468273073-8178-2-git-send-email-anibal.limon@linux.intel.com>
	<1468339760.2733.9.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <57851926.7000907@linux.intel.com>
Date: Tue, 12 Jul 2016 11:21:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1468339760.2733.9.camel@linux.intel.com>
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
X-List-Received-Date: Tue, 12 Jul 2016 16:22:12 -0000
X-Groupsio-MsgNum: 31010
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="6Mochn3gLuxmqkWTOeJWin1kGieSWrGcX"

--6Mochn3gLuxmqkWTOeJWin1kGieSWrGcX
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 07/12/2016 11:09 AM, Joshua G Lock wrote:
> On Mon, 2016-07-11 at 16:37 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> The error report is generated into AB master and currently we
>> don't have a method to get AB worker distro, so set to universal.
>=20
> Can you elaborate a bit here? Why don't we have a method available to
> get the worker distro? Is it because we don't ensure all of the
> builders in the cluster include lsb_release?

Currently, we don't have an easy way to get the worker distro an
buildstep is needed in order TODO that but isn't trivial.

I propose to have at step at buildinit for get the worker information.
At this time only will be distro. I removed the get_lsb_distro() because
it gets the distro of the master instead of the worker.

I added a bug for this task,

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9917

Cheers,
	alimon


>=20
> Are our worker distro versions new enough that we can rely on os-
> release?
>=20
> http://manpages.ubuntu.com/manpages/xenial/en/man5/os-release.5.html
>=20
> Regards,
>=20
> Joshua
>=20
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
>> | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/RunOeSelftest.py
>> b/lib/python2.7/site-packages/autobuilder/buildsteps/RunOeSelftest.py
>> index 5b9e408..809bcc3 100644
>> --- a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/RunOeSelftest.py
>> +++ b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/RunOeSelftest.py
>> @@ -52,7 +52,9 @@ class RunOeSelftest(ShellCommand):
>>          report['machine'] =3D 'universal'
>>          report['build_sys'] =3D "%s-%s" % (platform.machine(),
>>                  platform.system().lower())
>> -        report['nativelsb'] =3D get_lsb_distro() or 'universal'
>> +        # XXX: Set to universal because isn't easy to get
>> Autobuilder
>> +        # worker distro.
>> +        report['nativelsb'] =3D 'universal'=20
>>          report['distro'] =3D 'universal'
>>          report['target_sys'] =3D 'universal'
>> =20
>> --=20
>> 2.1.4
>>


--6Mochn3gLuxmqkWTOeJWin1kGieSWrGcX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXhRkpAAoJEGJqcE9h3glgnRcP/2TmCbqsplJcB9UtDGt1H/Km
bj7+znMuM4043dDQUxGkoZCGIMBfASiE6WgsKYQGFrj5i4mkStmcgUaegzAeuqlY
gcNVlUhopzGLgesoid3RFj+UvEO5ML9hlEvg6fk27WaQB6K7tytH7OCqWtqq36Qo
aidghiY+i8xSXeCsHaIw7p4hQnekkoHfpv4vxKKMhoNAOGQcdHhXD0lCWpGUTMyP
lI0EyjOZRczvAEwL7x421R3njPMJXAFcAPIvoii+xM4vWkAY9qsPu3QKKIu4+VxS
IiihK4aonqbtvlSBeDxjWyHhjmmrvgH+hOEXVeTdmIN4rwHbs6wy5qndMrCVo4fg
Uzsk6AZCeI6WLIkSxICOSQ5MFZ7g4RCk/EwbZCgqG5q02kATfTvjp5fQ5Z4LW8Q2
UI9J8ddSpi5miffPjIaVIVUEFhCffJ8dP+wCxj1r4UsMN8siC0/MY+9OhgIErNZy
fja4yef1ogpvEDtqaLvOJVtlViXJp5D4KhIuP/acoVn+2Xsj+JVrP2csjvnvADJO
6D45bOcAm744vDbmHPWvfOIC9QaRItSTJ9Z0BDXfmmgfJfk4PokXaUlQdpa/X+mI
1cSobqGOVYQtHL66fXPbbEnWmaAvlIFYnDY7o2WHMW68b0TXUaFxvx6K6GBF4cSC
+4BUKCyzeTgq3YRL58+f
=beai
-----END PGP SIGNATURE-----

--6Mochn3gLuxmqkWTOeJWin1kGieSWrGcX--
