Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8F3DE00CA3; Wed,  5 Oct 2016 13:46:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15694E00C5D
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 13:46:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 05 Oct 2016 13:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,302,1473145200"; 
	d="asc'?scan'208";a="1060961325"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.33]) ([10.219.5.33])
	by orsmga002.jf.intel.com with ESMTP; 05 Oct 2016 13:46:37 -0700
To: Bill Randle <bill.randle@gmail.com>
References: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
	<57F5156A.6050900@linux.intel.com> <57F55BED.1060204@linux.intel.com>
	<CA+n--H_-o_igyoDq0WtNgfvXENToJMR2zKREb22yjXTjEnj+Yw@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <57F566E7.8000902@linux.intel.com>
Date: Wed, 5 Oct 2016 15:47:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+n--H_-o_igyoDq0WtNgfvXENToJMR2zKREb22yjXTjEnj+Yw@mail.gmail.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 20:46:40 -0000
X-Groupsio-MsgNum: 32227
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="MHQpG7rpag48v5aO667EgDqmXQ52pj7Mr"

--MHQpG7rpag48v5aO667EgDqmXQ52pj7Mr
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 10/05/2016 03:41 PM, Bill Randle wrote:
> I also wonder if this actually belongs in
> buildset-config.autobuilder-qa (which doesn't have any other configs),
> or in buildset-config.controller where all the others reside.

I don't know what was the original target for the autobuilder-qa
buildset but the new distro-qa buildset won't run in  regular basis and
also is part of the QA process. Make sense to me to put inside that folde=
r.

	alimon

>=20
>     -Bill
>=20
> On Wed, Oct 5, 2016 at 1:00 PM, An=C3=ADbal Lim=C3=B3n
> <anibal.limon@linux.intel.com> wrote:
>> Oh, I didn't notice that this patch isn't applied to ab master branch.=

>>
>> Monse, could you send a new patch over master?
>>
>> Cheers,
>>         alimon
>>
>> On 10/05/2016 09:59 AM, An=C3=ADbal Lim=C3=B3n wrote:
>>>
>>>
>>> On 09/30/2016 03:29 PM, Monserrat Sedeno wrote:
>>>> As part of the process to set new OS distribution as supported on Yo=
ctoc Project
>>>> a new patch was created with the list of build sets that should be e=
xecuted.
>>>>
>>>> Detailed information:
>>>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build=
_Sets
>>>>
>>>> Fixes [YOCTO #9905]
>>>>
>>>> Note:In order to add a new distro as supported all the build sets sh=
ould be PASS
>>>>
>>>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>=

>>> Acked-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>>>> ---
>>>>  buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b=
/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>> index 0fcdbef..6c02a91 100644
>>>> --- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>>> @@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
>>>>                              'nightly-deb': {},
>>>>                              'nightly-ipk': {},
>>>>                              'nightly-world': {},
>>>> -                            'buildtools': {},
>>>>                              'nightly-arm': {},
>>>>                              'nightly-mips': {},
>>>>                              'nightly-wic':{},
>>>> @@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
>>>>                              'nightly-qa-systemd': {},
>>>>                              'nightly-qa-extras': {},
>>>>                              'nightly-qa-targetbuilds': {},
>>>> -                            'nightly-qa-skeleton': {}},
>>>> +                            'nightly-qa-skeleton': {},
>>>>                              'nightly-qa-logrotate': {},
>>>>                              'nightly-qa-pam': {},
>>>> +                            'buildtools': {}},
>>>>                             'schedulerNames_nowait': {}}},]
>>>>
>>>>
>>>
>>>
>>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>


--MHQpG7rpag48v5aO667EgDqmXQ52pj7Mr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJX9WbpAAoJEGJqcE9h3glgKq8QAINbsv0icm2GKwSg5HqLbkXN
RAM/EMcD7i7L++O0EZT84bxMBiZ0qr4aniEa9kj7TFtiRvGgYwgJLUdE9qFext7G
7ohTyHD9ECSFF94W6/3PKbHp2yF7qlTzTp8nFydwU3HWpvbKUwXVwCn9UDlI4ikk
bvpkzyG/a7+qT6ttEWac2NDUmgZhEKiP7ZJVxpl/bAKPT5yjE4E5RgcaDBVbTBFq
ENVTaQU95ZHu9qGlaEujKPeFdSmGCVA8eMCQeefwK3OlTqBKv3bDbf2zApQwVfAE
eeMG9M1f+v9gFdKbbyNSh3/Hr18Emlt1K6AOftHiw/N1MrOmEbJ6e/MtfmABA5JJ
VlnjvRBAB12LDehmRoc8HkBJCDm9JU6qKtzaQenE10WRzsU6PJrp8BuL5a0x1Os6
mMNxfXVNJtYtOILd46zyITVcMlxe28qSg1CxWg4d5zRRZ1O6eI70bqhJWzEOidvR
WFsxD1H52GrmpMbfIEKfbNpAv4ehhaGaV/iGZvhy7Br0TyGsFIFA6wryTbIwpLmk
feN6vSwtDjb+Zo/q0HNx+srwNzh5d6z2eoOpfsJIKOI3EPGb6dz0HwvS5426MdvD
dHWs4fard78OB3bcGFq9O0sJkTB0uKumgLkGz9qnEj7YfdyuUrkPFc+sWa+skw2B
s+rAaHlDfLwDFz1qu5sS
=lGpx
-----END PGP SIGNATURE-----

--MHQpG7rpag48v5aO667EgDqmXQ52pj7Mr--
