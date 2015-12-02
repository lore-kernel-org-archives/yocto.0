Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3F28E00546; Wed,  2 Dec 2015 03:38:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA0AE00406
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 03:38:56 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 02 Dec 2015 03:38:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,373,1444719600"; d="scan'208";a="698691046"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by orsmga003.jf.intel.com with ESMTP; 02 Dec 2015 03:38:55 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.163]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.203]) with mapi id
	14.03.0248.002; Wed, 2 Dec 2015 11:38:54 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Alex Franco <alejandro.franco@linux.intel.com>, "Eggleton, Paul"
	<paul.eggleton@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv2] [layerindex-web] recipe blacklisted information
Thread-Index: AQHRLPYFxOUWwmwvMUOVzzC54X2Trg==
Date: Wed, 2 Dec 2015 11:38:53 +0000
Message-ID: <D28488AF.6BFFB%belen.barros.pena@intel.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<565DDB89.1030005@intel.com> <565DE64A.60805@linux.intel.com>
	<2124896.i64Oee0N8V@peggleto-mobl.ger.corp.intel.com>
	<565E3F9F.7070609@linux.intel.com>
In-Reply-To: <565E3F9F.7070609@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.5.8.151023
x-originating-ip: [10.237.224.34]
MIME-Version: 1.0
Subject: Re: [PATCHv2] [layerindex-web] recipe blacklisted information
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
X-List-Received-Date: Wed, 02 Dec 2015 11:38:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <15842F4DFB5FFA4480CDB50FE3C3B893@intel.com>
Content-Transfer-Encoding: quoted-printable



On 02/12/2015 00:47, "Alex Franco" <alejandro.franco@linux.intel.com>
wrote:

>
>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Hmm I swear reading that, the message I get is that one should inherit
>the blacklist class in local.conf (if not on there already) and also set
>the (varflag) value of that variable for your recipe there.
>
>Perhaps the part that reads "the blacklist class, which the recipe must
>inherit globally" suffers from a wording issue, saying "must inherit"
>rather than "by default inherits".
>
>I guess next step here's creating a documentation bug report/ticket.
>
>Meanwhile, the changes are ready and showcased here [1]
>
>I'll let you review this before I sent v3 of the patch ;)
>
>@Belen, I did something possibly hacky with the css in order to
>accomplish this, the warn blockquote is set to take 100% of the
>horizontal space available within the alert div. If that runs counter to
>some design philosophy (perhaps specifically since we're using
>bootstrap) let me know please :b
>
>The hovering now only works within a TD...

This works for me :)

Thanks!

Bel=E9n

>
>Alex Franco
>
>[1] http://yctb03.ostc.intel.com:9999/
>
>On 12/01/2015 01:11 PM, Paul Eggleton wrote:
>> On Tue, 01 Dec 2015 12:26:18 Alex Franco wrote:
>>> @Martin, I think this information about blacklisting would indeed be
>>> very useful, thanks for your input as always.
>>>
>>> @Belen, yes indeed I noticed the label also hovers even when no tooltip
>>> is present, this bugged me a little too to be honest! No worries
>>>though,
>>> I can fix the hover situation and also add in the link to the
>>> documentation.
>>> @All: I suppose the link should go to:
>>>
>>>
>http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var->
>PNBLACKLIST
>>
>> Yes, that's really the only place we could link to; unfortunately
>though I
>> just noticed there is an obvious mistake in there about inheriting the
>class
>> globally within the recipe (a contradiction); it also doesn't mention
>>the
>> class is inherited globally by default.
>>
>> Cheers,
>> Paul
>>
>
>-----BEGIN PGP SIGNATURE-----
>Version: GnuPG v2
>
>iQEcBAEBAgAGBQJWXj+bAAoJEPR9uwMY2lTLYT4H/1CUZHoE9nSCRhB9zRmbe/gq
>fYxLRCHt34DZvTjA5N+KNJd80z9NOo1q6jWKu0Rh6XHQgExTuruzi1nkyJ4BIoRD
>ziexugIXyYFJIymT6m38sZfwBV+KA+FSoTKplj+ZjLdC3HzSpKoVmFHO/wx/coC+
>s90uyagoFYtAb/cmaLJmZW+q9J9v/UtAop4CD7nuLVhJvVxYIe2/Cub2MGrZy5P/
>EcciqfI8Cn/cWoGfptoRmBOA2yjAR1SqZtwWCOLze68eiRkV/P/3uMgMOy9i2feM
>l13puV0OVnoxsfTFDuZHzXt/5LHmCdI/URzPK3OAL83QlJtwKck1cLU6Ufywlhc=3D
>=3DLBgn
>-----END PGP SIGNATURE-----
>
>


