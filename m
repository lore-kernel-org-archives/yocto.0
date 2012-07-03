Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BB02E006AD
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 08:49:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 08:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="166387157"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2012 08:49:50 -0700
Received: from irsmsx102.ger.corp.intel.com (163.33.3.155) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 3 Jul 2012 16:49:48 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.176]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 16:49:47 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Khem Raj <raj.khem@gmail.com>,
	"Wang, Shane" <shane.wang@intel.com>
Thread-Topic: [yocto] Hob question: meta-yocto layer and 'defaultsetup'
	distro option
Thread-Index: AQHNWTN4rRL+Ex0QPkeQ1fUV6C9vuA==
Date: Tue, 3 Jul 2012 15:49:46 +0000
Message-ID: <CC18D2A8.1287D%belen.barros.pena@intel.com>
In-Reply-To: <40776A41FC278F40B59438AD47D147A90FDC7F66@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.48.244]
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Hob question: meta-yocto layer and 'defaultsetup' distro option
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
X-List-Received-Date: Tue, 03 Jul 2012 15:53:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4F1E7FE643BC074CB8BB98AF33817873@intel.com>
Content-Transfer-Encoding: quoted-printable

Great. Thanks, Dongxiao.

I think it is a question of changing the label to make it a bit more
self-explanatory, then. I'll try to come up with something.

Cheers

Belen

On 03/07/2012 13:00, "Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:

>> -----Original Message-----
>> From: Barros Pena, Belen
>> Sent: Tuesday, July 03, 2012 7:04 PM
>> To: Khem Raj; Wang, Shane; Xu, Dongxiao
>> Cc: yocto
>> Subject: Re: [yocto] Hob question: meta-yocto layer and 'defaultsetup'
>>distro
>> option
>>=20
>> Thanks, Khem.
>>=20
>> Just to make sure I understand this correctly: if I don't use the
>>meta-yocto layer,
>> OE-Core should provide reference distro policies that allow me to build
>>an
>> image. So I guess the 'defaultsetup' option in Hob is referring to
>>those OE-Core
>> policies. Shane, Dongxiao: could you confirm if this is the case?
>
>Yes, actually "defaultsetup" will be applied in default for any kind of
>layer settings, including the default OE-Core. The difference is, OE-Core
>only applies "defaultsetup", while for meta-yocto layer, we can add
>additional distro policies (poky, poky-bleeding, etc) to override some of
>the "defaultsetup" settings.
>
>Thanks,
>Dongxiao
>
>>=20
>> Thanks!
>>=20
>> Belen
>>=20
>> On 02/07/2012 17:53, "Khem Raj" <raj.khem@gmail.com> wrote:
>>=20
>> >On Mon, Jul 2, 2012 at 9:05 AM, Barros Pena, Belen
>> ><belen.barros.pena@intel.com> wrote:
>> >>
>> >> If I delete the meta-yocto layer, am I supposed to provide the distro
>> >> to be used via a layer or some other means?
>> >
>> >OE-Core has reference distro policies which are enough to generate
>> >images by just using OE-Core and that is what happens when you drop
>> >meta-yocto its testing the reference distro setup from OE-Core
>> >
>> >
>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


