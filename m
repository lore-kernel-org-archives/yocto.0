Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD1A14C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 03:49:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2010 01:49:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,221,1288594800"; d="scan'208";a="859333000"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 19 Nov 2010 01:49:09 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 19 Nov 2010 17:47:53 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 19 Nov 2010 17:47:51 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 19 Nov 2010 17:47:49 +0800
Thread-Topic: [yocto] inc files in recipes
Thread-Index: AcuHzhd9Xklizp0bT2e72FSg4KRuXQAAG10w
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3667EC1C@shsmsx502.ccr.corp.intel.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
	<AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
In-Reply-To: <AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: inc files in recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Nov 2010 09:49:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Frans Meulenbroeks [mailto:fransmeulenbroeks@gmail.com]
>Sent: Friday, November 19, 2010 5:43 PM
>
>>
>>>
>>>Here the inc file could be merged into the bb file.
>>>This has the advantage of having only a single file, so it is slightly
>>>easier if you want to read or maintain the recipe.
>>
>> One advantage of not doing so is to retrieve change history in git easil=
y.
>> Version change on .bb is a rename which in git is simply a remove and
>> create, while with .inc you can easily track history. This also reduces =
the
>> commit size.
>
>If I am correct git mv does preserve history although the name change
>makes it a little bit more difficult to track them.

I'm not sure how that works consistently. Sometimes the rename is kept
while most times it doesn't happen to me. :-(

>
>Wrt commit size: I agree that the commit size is bigger.
>If you want to minimize this you should maximize what goes into the inc.
>Personally when it comes to choosing between readability, cleanness
>etc and commit size, I go for the former.

I'm neutral here actually. :-) But I agree with you that we should document
such guideline on the wiki after it's finalized.

>>
>>>
>>>For recipes with multiple versions (e.g. tar) it might be useful to
>>>have inc files. It is really a tradeoff between easy access/reading
>>>and maintainability here.
>>
>> There's one case we actually suggest not using .inc for multiple version=
s:
>> both GPLv2 and GPLv3 exist for one package. That way we can avoid potent=
ial
>> contamination as much as possible.
>
>If you want to avoid contamination as much as possible I would suggest
>creating two different folders. They are two different beasts that you
>want to maintain separately.
>
>The same also holds if you want to keep two versions because they are
>e.g. functionwise very different.
>Sometimes this is already done (at least in OE, there we have e.g
>libsigc++-1.2 and libsigc++-2.0 and apache and apache2 directories,
>also sometimes there are differently named recipes (different PN) in
>the same folder, e.g. bluez and bluez4)
>

Perhaps that's the better approach.

Thanks
Kevin

