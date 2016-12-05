Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 089FFE00C2B; Mon,  5 Dec 2016 06:07:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0121E00BF8
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 06:07:42 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga104.jf.intel.com with ESMTP; 05 Dec 2016 06:07:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,747,1477983600"; 
	d="asc'?scan'208";a="37208324"
Received: from jalamego-mobl2.zpn.intel.com (HELO [10.219.5.137])
	([10.219.5.137])
	by orsmga004.jf.intel.com with ESMTP; 05 Dec 2016 06:07:41 -0800
To: Patrick Ohly <patrick.ohly@intel.com>
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
	<1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
	<2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
	<1480926638.17535.28.camel@intel.com>
From: Jose Lamego <jose.a.lamego@linux.intel.com>
Message-ID: <12c23229-9aaf-2368-4d5c-7e545725930b@linux.intel.com>
Date: Mon, 5 Dec 2016 08:07:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <1480926638.17535.28.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [patchwork][PATCH v4] patchwork.models: Include first patch's name in series name
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
X-List-Received-Date: Mon, 05 Dec 2016 14:07:45 -0000
X-Groupsio-MsgNum: 33283
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="0E4Bpq5USHxqxT88mILhnT8MMwP6URVVE"

--0E4Bpq5USHxqxT88mILhnT8MMwP6URVVE
Content-Type: multipart/mixed; boundary="IJuE5glKr3BrIBRnVXmXkUjbvopnGEqOn";
 protected-headers="v1"
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: yocto@yoctoproject.org
Message-ID: <12c23229-9aaf-2368-4d5c-7e545725930b@linux.intel.com>
Subject: Re: [yocto] [patchwork][PATCH v4] patchwork.models: Include first
 patch's name in series name
References: <1480028409-13127-1-git-send-email-jose.a.lamego@linux.intel.com>
 <1480542033-15238-1-git-send-email-jose.a.lamego@linux.intel.com>
 <2b837406-908e-91c4-313b-21132c52ed2d@linux.intel.com>
 <1480926638.17535.28.camel@intel.com>
In-Reply-To: <1480926638.17535.28.camel@intel.com>

--IJuE5glKr3BrIBRnVXmXkUjbvopnGEqOn
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 12/05/2016 02:30 AM, Patrick Ohly wrote:
> On Fri, 2016-12-02 at 14:29 -0600, Jose Lamego wrote:
>> Patch Series created without a cover letter are named using a
>> non-descriptive generic string.
>>
>> This change names the series using either the first 30 characters in
>> patch #1 plus the remaining patches number, or the patch name for
>> one-patch (1/1) series.
>>
>> [YOCTO #10625]
>>
>> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
>> ---
>>  patchwork/models.py | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>=20
> When you send different versions of your patches, can you include a
> revision history? Otherwise, it's hard to see what changes between the
> different iterations.
>=20
> git notes can be used for that for single-commit changes. See "git
> format-patch --notes" and "git notes".

Got it, thanks for the tip.

>=20
>> diff --git a/patchwork/models.py b/patchwork/models.py
>> index 3f531e6..1521641 100644
>> --- a/patchwork/models.py
>> +++ b/patchwork/models.py
>> @@ -1042,6 +1042,19 @@ def _series_supersede_previous_patches(series):=

>>  def _on_revision_complete(sender, revision, **kwargs):
>>      series =3D revision.series
>>
>> +    # Now we know how many patches are in the revision,
>> +    # so we can update the name for series without a cover letter
>> +    if series.name =3D=3D SERIES_DEFAULT_NAME:
>> +        name =3D series.latest_revision().ordered_patches()[0].name
>> +        n =3D re.compile(r'(\[\d+\/\d+\]\s?)')
>> +        name =3D n.sub('', name)
>> +        c =3D len(series.latest_revision().ordered_patches())
>> +        # For one-patch series (1/1) without cover letter
>> +        if c =3D=3D 1:
>> +            series.name =3D name
>> +        elif c > 1:
>> +            series.name =3D "\"%s...\" and %s more" % (name[:30], c-1=
)
>> +
>>      # update series.last_revision
>>      series.last_revision =3D series.latest_revision()
>>      series.save()
>=20
> Looks reasonable to me, but I don't really know the code. Were you
> testing this and noticed cases with c =3D=3D 0, i.e. cases where the la=
st
> series,name change didn't make sense?
>=20
Correct. There are cases where only a cover letter is sent (for example,
consolidated pull requests) so the patches number is 0.


--=20
Jose Lamego | OTC Embedded Platforms & Tools | GDC


--IJuE5glKr3BrIBRnVXmXkUjbvopnGEqOn--

--0E4Bpq5USHxqxT88mILhnT8MMwP6URVVE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJYRXStAAoJEFJAtowlSEbnwowH/1Un53uLpfHp++QqWhOmKPgC
BMS8OBBTNcOXBcGP8uCT0EWMMnAasDOGMOaPKwhP634zinaTxXcCL8jIu3LPjqh2
YRKcG+diwr2OZd2XkTJPPwhy9Bmliq9EIv67KRrsHFqLQxQacPCaqOdyNe4iiHor
rDxefe/BjN5udBoC44WDbeABOnfEtJc+alKywcvXwKb2qc5zQCfUpWO3Emrr3KvI
Dl4IlbCq2EuzAAl2o1ItG1+aLEX5MaruINIvfRuq1mzurHKHlCue31chC5cXtUAx
TSx6tRXqLEED3TDyvEOM27eQpQLjw0BKHYwre9LylUzINl/aFZZuIGdPUch1cDI=
=IjrI
-----END PGP SIGNATURE-----

--0E4Bpq5USHxqxT88mILhnT8MMwP6URVVE--
