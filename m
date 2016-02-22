Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9DA7E00C31; Mon, 22 Feb 2016 07:45:07 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA21E00838
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 07:45:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 22 Feb 2016 07:44:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,485,1449561600"; 
	d="asc'?scan'208";a="918524778"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.35]) ([10.219.5.35])
	by orsmga002.jf.intel.com with ESMTP; 22 Feb 2016 07:44:50 -0800
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <1456154103-13478-1-git-send-email-anibal.limon@linux.intel.com>
	<1456154103-13478-4-git-send-email-anibal.limon@linux.intel.com>
	<CAPhnLPA4+MpqnAOW67b9u+B+dxzG=kgV2-FqbydKw3vH63sMew@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <56CB2D79.1060202@linux.intel.com>
Date: Mon, 22 Feb 2016 09:47:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAPhnLPA4+MpqnAOW67b9u+B+dxzG=kgV2-FqbydKw3vH63sMew@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [[PATCHv2][autobuilder] 4/4] buildset-config.toaster: Remove unused template toaster-build.
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
X-List-Received-Date: Mon, 22 Feb 2016 15:45:07 -0000
X-Groupsio-MsgNum: 28558
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="NT62NrdDWfHQXmFfaleF8Vs6bjP6taGIJ"

--NT62NrdDWfHQXmFfaleF8Vs6bjP6taGIJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Agree.


On 02/22/2016 09:37 AM, Flanagan, Elizabeth wrote:
> I'm going to pull all but this patch (4/4), because I'll eventually
> need this configuration.
>=20
> -b
>=20
> On 22 February 2016 at 15:15, An=C3=ADbal Lim=C3=B3n <anibal.limon@linu=
x.intel.com> wrote:
>> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>> ---
>>  buildset-config.toaster/toaster-build.conf | 29 ---------------------=
--------
>>  1 file changed, 29 deletions(-)
>>  delete mode 100644 buildset-config.toaster/toaster-build.conf
>>
>> diff --git a/buildset-config.toaster/toaster-build.conf b/buildset-con=
fig.toaster/toaster-build.conf
>> deleted file mode 100644
>> index 09a03e2..0000000
>> --- a/buildset-config.toaster/toaster-build.conf
>> +++ /dev/null
>> @@ -1,29 +0,0 @@
>> -[toaster-build]
>> -builders: 'example-worker'
>> -props: [{'atext':{'prop_type':'StringParameter',
>> -                       'size': 15,
>> -                       'name': 'atext',
>> -                       'default': '',
>> -                       'label':'<hr><h3> auto.conf:</h3>'}},
>> -        {'bbtext':{'prop_type':'StringParameter',
>> -                       'size': 15,
>> -                       'name': 'bbtext',
>> -                       'default': '',
>> -                       'label':'<hr><h3> bblayers.conf:</h3>'}},
>> -        {'images':{'prop_type':'StringParameter',
>> -                       'size': 15,
>> -                       'name': 'images',
>> -                       'default': '',
>> -                       'label':'<hr><h3> images:</h3>'}},
>> -        {'layers':{'prop_type':'StringParameter',
>> -                       'size': 15,
>> -                       'name': 'layers',
>> -                       'default': '',
>> -                       'label':'<hr><h3> repo string (ast):</h3>'}}]
>> -steps: [{'SetDest':{}},
>> -        {'CheckOutToasterLayers': {}},
>> -        {'RunPreamble': {}},
>> -        {'GetDistroVersion' : {'distro': 'poky'}},
>> -        {'CreateAutoConf': {'atext' : '#TOASTER'}},
>> -        {'CreateBBLayersConf': {'bbtext' : '#TOASTER'}},
>> -        {'BuildImages': {'images': '#TOASTER'}}]
>> --
>> 2.1.4
>>
>=20
>=20
>=20


--NT62NrdDWfHQXmFfaleF8Vs6bjP6taGIJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJWyy17AAoJEGJqcE9h3glgzsEP/iDgcTC9lpU/uA40qVEiVB1B
bqq7Ro5iYQ0S2oBZnXYMNLzY+cmzxuGNX5OsnxgsvIfv9FxvwArF+JXaTrDZSI+Z
eIunY9AF+4PlX9wCY4dQqy4W+7W+DSrbsH1vV0gux5DAmjwTaT6SzsdVrIzmrBFf
i5Uk0TfFvbnL+z1rIo7PdxNgOiG70fhJ3T0QKv9QOr+WT7y8VTaU4lPaWfHNZ7j4
NBo0puIi6mHBNiq7HDkH72rm2E6CZfcsO+d4EXrCrvzPIy/fpQ9C7xlY/hgyY3wk
SwsO2sanKtoQHv7X/cJ4KfhoEfOfLtaWlO7bxuJOkTEAm2YaPYrKvCFI6Lwwj2PK
pcSeFba64QwPVC2ju/wQaXVnfmY0IqnlNs9ln/3U/+h9jEBgtwokL5AWpnpkR9nj
KsAAh2mqCk55W1DKNV8Ge47PmHiAcv+hzfQOVfR6dsOVf9MJFW1/WAvk9PFYz31U
YaXuaBrdFrLrRTh9scZy070sLUq0lpueBEVSst5JnZVJZXe8/Oy61WDaUPjpS4Nu
Zg78RFAET5DYnrYCqMNKs+POsvM9pVzLlUDhieEgeoB7itxUW3tZCiG73ynFU1/l
MhjriP6l8HFGrNNrlZPOhDu6d3lRsKpMEqxW+8WrsI/XsgTrhV7h/tHJwu/1E59L
nkK20AX9fnG0i1IiuGZa
=HcpM
-----END PGP SIGNATURE-----

--NT62NrdDWfHQXmFfaleF8Vs6bjP6taGIJ--
