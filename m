Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CF32E00546; Wed,  2 Dec 2015 03:37:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BD7E00406
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 03:37:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 02 Dec 2015 03:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,373,1444719600"; d="scan'208";a="852194337"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2015 03:35:31 -0800
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.163]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.23]) with mapi id
	14.03.0248.002; Wed, 2 Dec 2015 11:35:29 +0000
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Eggleton, Paul" <paul.eggleton@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv2] [layerindex-web] recipe blacklisted information
Thread-Index: AQHRLPWLfWidJJ6DRUOMsaKGjH5uzQ==
Date: Wed, 2 Dec 2015 11:35:29 +0000
Message-ID: <D28487D8.6BFF7%belen.barros.pena@intel.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<565DDB89.1030005@intel.com> <565DE64A.60805@linux.intel.com>
	<2124896.i64Oee0N8V@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2124896.i64Oee0N8V@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 02 Dec 2015 11:37:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <17E31F0DE10CF1409D4BD6600575EA4B@intel.com>
Content-Transfer-Encoding: quoted-printable



On 01/12/2015 19:11, "Eggleton, Paul" <paul.eggleton@intel.com> wrote:

>On Tue, 01 Dec 2015 12:26:18 Alex Franco wrote:
>> @Martin, I think this information about blacklisting would indeed be
>> very useful, thanks for your input as always.
>>=20
>> @Belen, yes indeed I noticed the label also hovers even when no tooltip
>> is present, this bugged me a little too to be honest! No worries though,
>> I can fix the hover situation and also add in the link to the
>> documentation.
>> @All: I suppose the link should go to:
>>=20
>>=20
>>http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var->
>> PNBLACKLIST
>
>Yes, that's really the only place we could link to; unfortunately though
>I=20
>just noticed there is an obvious mistake in there about inheriting the
>class=20
>globally within the recipe (a contradiction); it also doesn't mention the
>class is inherited globally by default.

Could we ask Scott to correct the mistake and the omission?

Bel=E9n
=20
>
>Cheers,
>Paul
>
>--=20
>Paul Eggleton
>Intel Open Source Technology Centre


