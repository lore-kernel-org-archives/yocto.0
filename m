Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A283BE00C2E; Tue, 14 Jun 2016 12:23:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5972BE00C29
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 12:23:11 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 14 Jun 2016 12:22:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,471,1459839600"; 
	d="asc'?scan'208";a="121865743"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.51]) ([10.219.5.51])
	by fmsmga004.fm.intel.com with ESMTP; 14 Jun 2016 12:22:46 -0700
To: Michael Wood <michael.g.wood@intel.com>, yocto@yoctoproject.org
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
	<1465860736-26581-6-git-send-email-anibal.limon@linux.intel.com>
	<576006DB.6050708@intel.com> <57603458.7050601@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <576059BD.4030508@linux.intel.com>
Date: Tue, 14 Jun 2016 14:23:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <57603458.7050601@linux.intel.com>
Cc: belen.barros.pena@linux.intel.com
Subject: Re: [[PATCH][error-report-web] 5/8] Post/models.py: Build model add support for Error type.
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
X-List-Received-Date: Tue, 14 Jun 2016 19:23:14 -0000
X-Groupsio-MsgNum: 30520
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="cxh4T16WEQ2GeWSInxTTHqqnwMt16LpVn"

--cxh4T16WEQ2GeWSInxTTHqqnwMt16LpVn
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 06/14/2016 11:44 AM, An=EDbal Lim=F3n wrote:
>=20
>=20
> On 06/14/2016 08:30 AM, Michael Wood wrote:
>> On 14/06/16 00:32, An=EDbal Lim=F3n wrote:
>>> In order to support other errors not only Recipe ones adds
>>> a ERROR_TYPE field to the Build model defaults to "Recipe".
>>>
>>> Add a class for store BuildErrorType currently supported
>>> Recipe, Core, Bitbake selftest and OE selftest.
>>>
>>> [YOCTO #7583]
>>>
>>> Signed-off-by: An=EDbal Lim=F3n <anibal.limon@linux.intel.com>
>>> ---
>>>   Post/migrations/0005_build_error_type.py | 19 +++++++++++++++++++
>>>   Post/models.py                           |  7 +++++++
>>>   2 files changed, 26 insertions(+)
>>>   create mode 100644 Post/migrations/0005_build_error_type.py
>>>
>>> diff --git a/Post/migrations/0005_build_error_type.py
>>> b/Post/migrations/0005_build_error_type.py
>>> new file mode 100644
>>> index 0000000..96cdf8c
>>> --- /dev/null
>>> +++ b/Post/migrations/0005_build_error_type.py
>>> @@ -0,0 +1,19 @@
>>> +# -*- coding: utf-8 -*-
>>> +from __future__ import unicode_literals
>>> +
>>> +from django.db import migrations, models
>>> +
>>> +
>>> +class Migration(migrations.Migration):
>>> +
>>> +    dependencies =3D [
>>> +        ('Post', '0004_auto_20160530_1126'),
>>> +    ]
>>> +
>>> +    operations =3D [
>>> +        migrations.AddField(
>>> +            model_name=3D'build',
>>> +            name=3D'ERROR_TYPE',
>>> +            field=3Dmodels.CharField(default=3Db'Recipe', max_length=
=3D64),
>>> +        ),
>>> +    ]
>>> diff --git a/Post/models.py b/Post/models.py
>>> index 84f8abf..f8d9916 100644
>>> --- a/Post/models.py
>>> +++ b/Post/models.py
>>> @@ -11,6 +11,12 @@ from datetime import datetime
>>>     import Levenshtein
>>>   +class BuildErrorType(object):
>>> +    RECIPE =3D "Recipe"
>>> +    BITBAKE_CORE =3D "Core"
>>> +    BITBAKE_SELFTEST =3D "Bitbake selftest"
>>> +    OE_SELFTEST =3D "OE selftest"
>>> +
>>>   # Create your models here.
>>>   class Build(models.Model):
>>>       DATE =3D models.DateTimeField('Submit date', blank=3DTrue, null=
=3DTrue)
>>> @@ -25,6 +31,7 @@ class Build(models.Model):
>>>       NAME =3D models.CharField(max_length=3D50)
>>>       EMAIL =3D models.CharField(max_length=3D50)
>>>       LINK_BACK =3D models.TextField(max_length=3D300, blank=3DTrue, =
null=3DTrue)
>>> +    ERROR_TYPE =3D models.CharField(max_length=3D64,
>>> default=3DBuildErrorType.RECIPE)
>>>     class BuildFailure(models.Model):
>>>       TASK =3D models.CharField(max_length=3D1024)
>>
>> Thanks for the patches.
>>
>> Ideally we wouldn't use a char field here as if the type string ever
>> changed the database could end up with multiple versions of the type
>> strings depending on when the type was saved, it would be possible to
>> handle that with migrations but it would be pretty messy. It also allo=
ws
>> any arbitrary chars which we probably don't want if it's something we'=
re
>> going to be filtering on.  Here is an example from Toaster on how it c=
an
>> be done with the choices option and an enum style.
>>
>> |OUTCOME_NA =3D -1 OUTCOME_SUCCESS =3D 0 OUTCOME_COVERED =3D 1 OUTCOME=
_CACHED
>> =3D 2 OUTCOME_PREBUILT =3D 3 OUTCOME_FAILED =3D 4 OUTCOME_EMPTY =3D 5
>> TASK_OUTCOME =3D ( (OUTCOME_NA, 'Not Available'), (OUTCOME_SUCCESS,
>> 'Succeeded'), (OUTCOME_COVERED, 'Covered'), (OUTCOME_CACHED, 'Cached')=
,
>> (OUTCOME_PREBUILT, 'Prebuilt'), (OUTCOME_FAILED, 'Failed'),
>> (OUTCOME_EMPTY, 'Empty'), ) ||outcome =3D
>> models.IntegerField(choices=3DTASK_OUTCOME, default=3DOUTCOME_NA)|
>>
>=20
> Thanks for the feedback, i'll change to use choices instead of char val=
ues.
>=20
> 	alimon

I made the change now is at contrib branch,

http://git.yoctoproject.org/cgit/cgit.cgi/error-report-web/log/?h=3Dalimo=
n/devel

	alimon

>=20
>>
>>
>> Michael
>>
>=20
>=20
>=20


--cxh4T16WEQ2GeWSInxTTHqqnwMt16LpVn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJXYFm/AAoJEGJqcE9h3glg9n0P/RHSRHuhZnpiVT40QsvPASSX
hYR6GArtEXOBNETcE+W5jJROSSsdiCfLeJCr75b+ir1SWLGopxxN9ofybaExK3Ai
ciXqBRrn0xNAKFRKmv8ix3ZZUUpaO02bOKz/nnGhaz/dxSBIb9iV7SXt7MbXKIo6
H4RLgSdlJ9WDQagBjA/xarHVzebbMr4oySyuT4ICICn1FzZHgo64223eJPLGZW1/
4tOqgbddle2OaiS5X+x9ZWUP5/Et3iaW5JZ5xkLlRfrsko2DnJ6qEKjioZ1/EQTL
VjpZWO+oYH1RSjDHavosQGt0t1CgVY/WAsvgRWmHyfZM67yTQGttpEKyQ6jFqsft
hq3RfLNqEQwYIvQXOyJfoVJgoRmS8gD3PphTu4YJ9kbcqs6ifnk3RUYU6Fe1AeVm
ok/9/DxE4lnGMVOFB3gmRBoKhjrkYY+0f4vLd03/Odg1Tz0/buB5GuHHsdg3/hxG
mtC+8QfKJ39vHEpcRUdD18tAVwPPPQqjq1biyFjywR0STQzyW9qLiNsCt4blT4VW
E/yc+5GMYp8atsOx5xkf4yZwd59OGTPuA4kSDp9uDhiEuwdc97IxrohRDdwlcOEH
scKRLnTLXA58pSMb9hfxYDAxAdrhDF7qbazMTOrHewZVbYv/HwPjM4GP5dpUxCoc
NgNOeLbOUDYX9pt4dHIE
=/Dgu
-----END PGP SIGNATURE-----

--cxh4T16WEQ2GeWSInxTTHqqnwMt16LpVn--
