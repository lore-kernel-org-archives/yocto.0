Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2070EE009F4; Wed, 18 Jan 2017 10:18:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DE7FE009F0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 10:18:01 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 18 Jan 2017 10:18:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,250,1477983600"; 
	d="asc'?scan'208";a="54532428"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.143])
	([10.219.5.143])
	by orsmga005.jf.intel.com with ESMTP; 18 Jan 2017 10:17:59 -0800
To: Joshua Lock <joshua.g.lock@linux.intel.com>, yocto@yoctoproject.org
References: <1484583955-23541-1-git-send-email-anibal.limon@linux.intel.com>
	<1484763187.3137.1.camel@linux.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <587FB204.80200@linux.intel.com>
Date: Wed, 18 Jan 2017 12:20:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1484763187.3137.1.camel@linux.intel.com>
Cc: richard.purdie@intel.com
Subject: Re: [[PATCH][yocto-autobuilder] 1/2] buildsteps/CreateAutoConf.py: Add support for specify MACHINE by build prop
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
X-List-Received-Date: Wed, 18 Jan 2017 18:18:03 -0000
X-Groupsio-MsgNum: 33921
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="Q6MVtCJu6ipmvQVX6eFIMGHdOpQXQWVlH"

--Q6MVtCJu6ipmvQVX6eFIMGHdOpQXQWVlH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 01/18/2017 12:13 PM, Joshua Lock wrote:
> On Mon, 2017-01-16 at 10:25 -0600, An=C3=ADbal Lim=C3=B3n wrote:
>> Sometimes is a good idea to could specify a machine to build via a
>> build
>> property.
>=20
> Why's that? I can guess but the commit log should really tell me what
> the motivation for the change is.

In the performance buildset patch [1] there is a build property to
specify the machine via the web interface, without this change the
machine is overwrite to predefined in the buildset.

Cheers,
	alimon

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/tree/buildset=
-config.yocto-qa/nightly-oe-build-perf-test.conf?h=3Dcontrib/alimon/devel=
&id=3D6c25a37cd801f2cdecc21c76499625a117e08ff7#n7

>=20
>>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  .../site-
>> packages/autobuilder/buildsteps/CreateAutoConf.py          | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/CreateAutoConf.py
>> b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/CreateAutoConf.py
>> index 021f542..7915dd5 100644
>> --- a/lib/python2.7/site-
>> packages/autobuilder/buildsteps/CreateAutoConf.py
>> +++ b/lib/python2.7/site-
>> packages/autobuilder/buildsteps/CreateAutoConf.py
>> @@ -174,7 +174,11 @@ class CreateAutoConf(ShellCommand):
>>                      fout =3D fout + 'baselib =3D \\042${@d.getVar(\\0=
47B
>> ASE_LIB_tune-\\047 + (d.getVar(\\047DEFAULTTUNE\\047, True) or
>> \\047INVALID\\047), True) or \\047lib\\047}\\042 \n'
>>              if self.distro =3D=3D "poky-rt":
>>                  fout =3D fout +
>> 'PREFERRED_PROVIDER_virtual/kernel=3D"linux-yocto-rt" \n'
>> -            machine=3Dself.machine
>> +            machine=3Dself.getProperty('custom_machine')
>> +            if machine:
>> +                self.machine =3D machine
>> +            else:
>> +                machine =3D self.machine
>>              if layerversion is not None and int(layerversion) > 1:
>>                  if self.machine =3D=3D "atom-pc":
>>                      machine =3D self.machine.replace("atom-pc",
>> "genericx86")


--Q6MVtCJu6ipmvQVX6eFIMGHdOpQXQWVlH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJYf7IGAAoJEGJqcE9h3glgwVkP/2ebuK73kzvhIc4l/lmK1QGi
frztn85aJrkyvSnK4jKK7fUaqthCFwYOVLB13K3si3tdaFip2uPemcx7XWBrZrBn
lrO8U1BoV5D9zBXF5ElsiqJwUeinfa2EiMn1oE8zNKm2W3DIaN1Gfy3117cSd+Ic
D/rPUmQYUC6KHc+aMVSloyfkww4ohylY2XcX7wg/6S3Q/1+fa6fBcpbmRdlXVVrU
imnSTCSfYZ2rU6tlpVqmTjwnmcle9RLdtGTZgFH8tdoy6nPNnQGdsoTeirc4I+x8
jZ8hRGcKVQhSi65edLBC0ACGzNnTFAvdGeAiNCMWyz3I4VgpLdn660DWSni5FGhr
I/VvZkY1/0wLNtO57bZZqr4jvzT/6fEU4vKYhn/GwH05hRr0+6Ob8O2hQZRzdb1I
yaQlNvJ66stfYiyjFvgUs2LLr3xrlt4MFLdI1uSCw+9PYolMNlVISa/GRf/3QF3W
ovlugUbXyubltXId+rFIO3i1I5sOV7TUawaHvqy8Jv64gtMkk8m4ZDDlT9WdcbMU
mUAXOukmF+musGSC5QwPVNZbfauarVSmy7IsjVRUGxqWJ9NuUMnTZVuVM9UXQxGv
ncRY9q8VfpjitdmKZcEREmIQkkC3MBvV0AI5SMYV06qo1B4WGrLL7hgYbbS4/iMP
aq4+wYuwU/2Mx7QriUzo
=ShoH
-----END PGP SIGNATURE-----

--Q6MVtCJu6ipmvQVX6eFIMGHdOpQXQWVlH--
