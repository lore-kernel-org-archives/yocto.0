Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C40D6E009FA; Mon, 10 Oct 2016 07:50:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C404E00546
	for <yocto@yoctoproject.org>; Mon, 10 Oct 2016 07:50:13 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP; 10 Oct 2016 07:50:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,324,1473145200"; 
	d="asc'?scan'208";a="18041062"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.33]) ([10.219.5.33])
	by fmsmga006.fm.intel.com with ESMTP; 10 Oct 2016 07:50:12 -0700
To: Bill Randle <bill.randle@gmail.com>
References: <1475873438-24691-1-git-send-email-anibal.limon@linux.intel.com>
	<CA+n--H_8Bc6ogKjxUDHUy+ec4=0_XvgUS1M-C6LDGAa-h-aD7g@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57FBAAE3.5020609@linux.intel.com>
Date: Mon, 10 Oct 2016 09:51:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+n--H_8Bc6ogKjxUDHUy+ec4=0_XvgUS1M-C6LDGAa-h-aD7g@mail.gmail.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[yocto-autobuilder][PATCHv4]] ] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Mon, 10 Oct 2016 14:50:16 -0000
X-Groupsio-MsgNum: 32315
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="6ChtVmUWOKGEAp6wj3uRSOwv1XoF5tdfP"

--6ChtVmUWOKGEAp6wj3uRSOwv1XoF5tdfP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 10/07/2016 07:04 PM, Bill Randle wrote:
> This version appears to ignore Beth's comments from yesterday where
> she said buildset-config.autobuilder-qa wasn't really the appropriate
> directory and suggested a different name, plus she said all buildable
> configs should be present or links to them. If the later is true, then
> not only should the patch use a different directory, but it should
> also populate that new directory with links to the other build config
> files referenced in this file.

Yes Bill, sorry i forget to move the buildset to buildset-config.controll=
er.

I'll send another patch.

	alimon


>=20
>     -Bill
>=20
> On Fri, Oct 7, 2016 at 1:50 PM, An=C3=ADbal Lim=C3=B3n
> <anibal.limon@linux.intel.com> wrote:
>> From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>>
>> As part of the process to set new OS distribution as supported on Yoct=
oc Project
>> a new patch was created with the list of build sets that should be exe=
cuted.
>>
>> Detailed information:
>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_S=
ets
>>
>> Fixes [YOCTO #9905]
>>
>> Note:In order to add a new distro as supported all the build sets shou=
ld be PASS
>>
>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  .../nightly-qa-distro.conf                         | 55 +++++++++++++=
+++++++++
>>  1 file changed, 55 insertions(+)
>>  create mode 100644 buildset-config.autobuilder-qa/nightly-qa-distro.c=
onf
>>
>> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/b=
uildset-config.autobuilder-qa/nightly-qa-distro.conf
>> new file mode 100644
>> index 0000000..def4118
>> --- /dev/null
>> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>> @@ -0,0 +1,55 @@
>> +[nightly-qa-distro]
>> +builders: 'example-worker'
>> +repos: [{'poky':
>> +            {'repourl':'git://git.yoctoproject.org/poky',
>> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bs=
p', 'yocto':'meta-yocto', 'poky':'meta-poky'},
>> +             'branch':'master'}},
>> +        {'oecore':
>> +            {'repourl':'git://git.openembedded.org/openembedded-core'=
,
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
>> +        {'TriggerBuilds': {'schedulerName': 'dist-build',
>> +             'waitForFinish': 'True',
>> +             'schedulerNames': {
>> +                 'nightly-oe-selftest': {},
>> +                 'nightly-oecore': {},
>> +                 'nightly-deb': {},
>> +                 'nightly-ipk': {},
>> +                 'nightly-world': {},
>> +                 'nightly-arm': {},
>> +                 'nightly-multilib': {},
>> +                 'nightly-x86-64-lsb': {},
>> +                 'nightly-x86': {},
>> +                 'nightly-x32': {},
>> +                 'poky-tiny': {},
>> +                 'nightly-qa-systemd': {},
>> +                 'nightly-qa-extras': {},
>> +                 'nightly-qa-targetbuilds': {},
>> +                 'nightly-qa-skeleton': {},
>> +                 'nightly-qa-logrotate': {},
>> +                 'nightly-qa-pam': {},
>> +                 'buildtools': {}},
>> +                 'eclipse-plugin-neon': {},
>> +             'schedulerNames_nowait': {}}},]
>> --
>> 2.1.4
>>


--6ChtVmUWOKGEAp6wj3uRSOwv1XoF5tdfP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX+6rlAAoJEGJqcE9h3glgEjIP/2EEgFX5LpDlvpe0Qg5SzR7k
nuUf+JK+owL88h3U/sx2tJcUUhzBPlfXxcZXFaU+AvvVKczZz3qmQY38lJ2wt7Ab
Nfgd9o6fp9IxkVOzYM0lw5By8p4CJFyhVqoeEBFg0aCp3jvXWdqepYNUiO+LvwGx
rfxFxwDNfPS9ggqFj3FrKyRQZg4GZIpM9eGm8sydWwhMn4QYcrjI0MXDAswgRRMB
MFPjyU0SHnTZ6R8YO5iuBKZmm6Ad61+y4rJBP7qYuoS002QsTHHsmDu7oLgbfu79
hlhIaKDRFAGpBG4N1ZyqfNFRekrKiELsyYMxaD46YGpRR/NXTN1c1v0XmJWUNghX
mMjgYsYNKOy4Ds1vUrWfG9OJFVZBdSqxpXKpJbiOriZKWKHCxMvWcT9HfeNIqzQs
dffAR8elFSpDOECnMLcPphTtZwhlQqDd2w1rVukwOrxwxDJdPurrE1szGJL8NSc9
G5Rv71L6bGoIxZUhfDt8Qo+VJeKJ7S2iPtddF3ZQz9bJpGakXyQNTuVxs6oQKNNn
TxvdqvoAJqtRLYix26PExctCqR2uefLgJCHdmw8cjCJmUwDrF7EqJoceBnojppmP
7JeN2pZCk3dhLwnsx0I0c6duOGfnY62GYnoHUguw+zlePOpMPQBSWTWnvstioLaD
Q+qzs0hWaGspOahCgEa0
=ziXV
-----END PGP SIGNATURE-----

--6ChtVmUWOKGEAp6wj3uRSOwv1XoF5tdfP--
