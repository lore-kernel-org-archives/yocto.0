Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7804FE00D0E; Wed, 12 Oct 2016 12:45:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4660BE00C38
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 12:45:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 12 Oct 2016 12:45:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,336,1473145200"; 
	d="asc'?scan'208";a="1043849951"
Received: from cjmahone-mobl7.amr.corp.intel.com (HELO [10.254.126.14])
	([10.254.126.14])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2016 12:45:09 -0700
To: pidge@toganlabs.com, yocto@yoctoproject.org
References: <1476111284-908-1-git-send-email-anibal.limon@linux.intel.com>
	<1476269488.7502.5.camel@toganlabs.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57FE9302.1080600@linux.intel.com>
Date: Wed, 12 Oct 2016 14:46:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1476269488.7502.5.camel@toganlabs.com>
Cc: joshua.g.lock@intel.com,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[PATCHv5][yocto-autobuilder]] buildset.controller: Add build set to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 12 Oct 2016 19:45:18 -0000
X-Groupsio-MsgNum: 32353
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="4vntOgWboMAq4oXKmdiJPR0JUSHkMFmBK"

--4vntOgWboMAq4oXKmdiJPR0JUSHkMFmBK
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 10/12/2016 05:51 AM, Beth 'pidge' Flanagan wrote:
> On Mon, 2016-10-10 at 09:54 -0500, An=C3=ADbal Lim=C3=B3n wrote:
>> From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>>
>> As part of the process to set new OS distribution as supported on
>> Yoctoc Project
>> a new patch was created with the list of build sets that should be
>> executed.
>>
>> Detailed information:
>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_
>> Sets
>>
>> Fixes [YOCTO #9905]
>>
>=20
> Is this something that should be on the production servers? If so, I'll=

> pull it later.

This patch is for the QA team for be able to test a new distribution to
be supported.

So isn't a common use to trigger this buildset in production servers,
that's the reason for the previous commit adding the buildset into
buildset-config.autobuilder-qa, i don't want to make hard copy of the
dependent buildsets because there implies more work for keep updated the
buildsets.

I understand the idea of make symlinks, if only buildsets aim to run in
production are in buildset-config.controller what will be the best
folder for put this nigthly-qa trigger buildset?.

Cheers,
	alimon

>=20
> If not, please re-read my prior email. If this is going to be on it's
> own ab with a specific purpose then it should exist in it's own
> directory and have full access to all the buildsets it needs.
>=20
> Which means symlinks to those buildsets in buildset.controller.
>=20
> If it's the former, I'll pull tonight. If it's the latter, please
> resubmit this patch.
>=20
> -b
>=20
>=20
>> Note:In order to add a new distro as supported all the build sets
>> should be PASS
>>
>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  buildset-config.controller/nightly-qa-distro.conf | 55
>> +++++++++++++++++++++++
>>  1 file changed, 55 insertions(+)
>>  create mode 100644 buildset-config.controller/nightly-qa-distro.conf
>>
>> diff --git a/buildset-config.controller/nightly-qa-distro.conf
>> b/buildset-config.controller/nightly-qa-distro.conf
>> new file mode 100644
>> index 0000000..def4118
>> --- /dev/null
>> +++ b/buildset-config.controller/nightly-qa-distro.conf
>> @@ -0,0 +1,55 @@
>> +[nightly-qa-distro]
>> +builders: 'example-worker'
>> +repos: [{'poky':
>> +            {'repourl':'git://git.yoctoproject.org/poky',
>> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-
>> bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
>> +             'branch':'master'}},
>> +        {'oecore':
>> +            {'repourl':'git://git.openembedded.org/openembedded-
>> core',
>> +             'layerversion':'core',
>> +             'checkout':False,
>> +             'branch':'master'}},
>> +        {'bitbake':
>> +            {'repourl':'git://git.openembedded.org/bitbake',
>> +             'checkout':False,
>> +             'branch':'master'}},
>> +        {'eclipse-poky-neon':
>> +            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>> +             'checkout':False,
>> +             'branch':'neon-master'}},
>> +        {'meta-qt4':
>> +            {'repourl':'git://git.yoctoproject.org/meta-qt4',
>> +             'branch':'master'}},
>> +        {'meta-qt3':
>> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
>> +             'branch':'master'}}]
>> +props: [{'fp_date':{'prop_type':'StringParameter',
>> +                       'size': 20,
>> +                       'name': 'fp_date',
>> +                       'label':'Full Pass date:'}}]
>> +steps: [{'SetDest':{}},
>> +        {'CheckOutLayers': {}},
>> +        {'RunPreamble': {}},
>> +        {'TriggerBuilds': {'schedulerName': 'dist-build',=20
>> +             'waitForFinish': 'True',
>> +             'schedulerNames': {
>> +                 'nightly-oe-selftest': {},
>> +                 'nightly-oecore': {},
>> +                 'nightly-deb': {},
>> +                 'nightly-ipk': {},
>> +                 'nightly-world': {},=20
>> +                 'nightly-arm': {},=20
>> +                 'nightly-multilib': {},=20
>> +                 'nightly-x86-64-lsb': {},
>> +                 'nightly-x86': {},
>> +                 'nightly-x32': {},
>> +                 'poky-tiny': {},=20
>> +                 'nightly-qa-systemd': {},
>> +                 'nightly-qa-extras': {},=20
>> +                 'nightly-qa-targetbuilds': {},
>> +                 'nightly-qa-skeleton': {},
>> +                 'nightly-qa-logrotate': {},=20
>> +                 'nightly-qa-pam': {},
>> +                 'buildtools': {}},
>> +                 'eclipse-plugin-neon': {},
>> +             'schedulerNames_nowait': {}}},]


--4vntOgWboMAq4oXKmdiJPR0JUSHkMFmBK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX/pMJAAoJEGJqcE9h3glgzTMP/24bVS6AB2pJzzQMVrZV7/CK
auSsqY5e1q2M8YhY91wGCnfU1yvRo1K9O/gSW56/wM2z1OIuQaooeaSWhFbq3n65
zuZPJ9/pnk6botcL9WEHj0reibv/sCKBNXsZu8XQhiL2YEFwPnl04LGdqNlbnOKS
UPxxDZL8Fp8LYppaxoyNS3fXAuImL9t9bC45VxMk1XGkcEPeFXJ9BfvbfO7j4TIj
b3Ra7lPcOXjNILfoKfogzvDZdWv/1m+A9meAlDxmHy/YbZZ/zmvPQn2bzqSsID8G
MAK+5D/YPHiNyG4B6YJnif85ZcEeoifLvB6zZtshh+MkRoi5epS24Ho7vuKU4vWF
eupL2g4djxkTiz6ArjkqD3uRFoHbx7GztrL93VhtoE2r4JtdblTTzJgVDgsSxpeC
nNoXVnWfsBe+3S9SKDvhgaS1Rj8v/cmp/Fxcg9q1gmV7dOR/qwhEKl5ocvdrigMP
GeyfnKjK4nkVDQc5k5Yu7+Ue+ABzrIW3Bs4WQHk/5BdCAspwHNRFLyFjiq72xpeC
Q2kz9APjls9ZC49cZZp/DS9iPN9wA7aN/2REoDTjBYQUDeQ8FH+UpKLyvDfce2BR
v7N6maACsGR5+9dQNvSrxsq5a/IaMtJkgDciWUHZdWOOSmx3NCcHBG6BV2aLdAtj
6Az3/bSljDtYlMt5BB9b
=TAS5
-----END PGP SIGNATURE-----

--4vntOgWboMAq4oXKmdiJPR0JUSHkMFmBK--
