Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48848E003C7
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 13:21:44 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Apr 2014 13:16:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,874,1389772800"; d="scan'208";a="494368792"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2014 13:21:44 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 16 Apr 2014 13:21:43 -0700
Received: from orsmsx113.amr.corp.intel.com ([169.254.7.58]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.172]) with mapi id
	14.03.0123.003; Wed, 16 Apr 2014 13:21:43 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Jeff Osier-Mixon <jefro@jefro.net>, "akuster@mvista" <akuster@mvista.com>
Thread-Topic: [yocto] Yocto life cycle statement
Thread-Index: AQHPWaS6hp3OhamsBEqBuFDcP36JgpsVGk4A//+VXQA=
Date: Wed, 16 Apr 2014 20:21:43 +0000
Message-ID: <CF7433D3.8A888%david.c.stewart@intel.com>
References: <534ED0A3.3040209@mvista.com>
	<CA+YB3rbxPWJFa80LjcBn0H7r3PQuWf80-ooamVsYtVJWRph12w@mail.gmail.com>
In-Reply-To: <CA+YB3rbxPWJFa80LjcBn0H7r3PQuWf80-ooamVsYtVJWRph12w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.9.131030
x-originating-ip: [10.24.107.134]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto life cycle statement
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
X-List-Received-Date: Wed, 16 Apr 2014 20:21:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2A728FB337C8544BA758329A41F0D8F1@intel.com>
Content-Transfer-Encoding: quoted-printable

I found the following comments at
https://wiki.yoctoproject.org/wiki/FAQ#What_is_the_release_cycle_of_the_Yoc
to_Project.3F=20
(It does seem like we have been supplying maintenance releases for two
releases back, not just one. So maybe this wiki needs to be updated)



What is the release cycle of the Yocto Project?

Each release of the Yocto Project is subject to its own release schedule
according to the community-maintained Project Planning Guide
<https://wiki.yoctoproject.org/wiki/Planning#Yocto>. It is generally
expected that a new version of the Yocto Project will be released every
six months.

What is the overall support plan for the Yocto Project?

Security patches and critical bug fixes are supplied one release back. No
toolchain or kernel changes are allowed for these updates. Support for
longer periods of time can be supplied by commercial OSVs.



On 4/16/14, 12:43 PM, "Jeff Osier-Mixon" <jefro@jefro.net> wrote:

>Hi Armin - let me do some research on this, just wanted to let you
>know that I had seen it. I'm not sure we have a formal statement
>published.
>
>On Wed, Apr 16, 2014 at 11:49 AM, akuster@mvista <akuster@mvista.com>
>wrote:
>> Hello,
>>
>> Can someone point to a 'life cycle statement' for Yocto versions, one
>>that
>> discusses limited bug fixing peroid and ultimate EOL of a version. I am
>> having trouble find it.
>>
>> Regards,
>> Armin
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>--=20
>Jeff Osier-Mixon @Intel
>Yocto Project Community Manager http://yoctoproject.org
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


