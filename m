Return-Path: <belen.barros.pena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A182E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 04:04:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jul 2012 04:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="187909102"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2012 04:04:29 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 12:04:27 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "Wang, Shane" <shane.wang@intel.com>, "Xu, 
	Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: [yocto] Hob question: meta-yocto layer and 'defaultsetup'
	distro option
Thread-Index: AQHNWPh9rRL+Ex0QPkeQ1fUV6C9vuJcXZUYA
Date: Tue, 3 Jul 2012 11:04:27 +0000
Message-ID: <CC18726D.12703%belen.barros.pena@intel.com>
In-Reply-To: <CAMKF1spFRf6C3YmFGq8GRmFvPxCn1UQEL8s7dNNCeDzHwR6Z+g@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Jul 2012 11:04:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <DD873683A94C6B4FABBC53FBB1019ABC@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Khem.

Just to make sure I understand this correctly: if I don't use the
meta-yocto layer, OE-Core should provide reference distro policies that
allow me to build an image. So I guess the 'defaultsetup' option in Hob is
referring to those OE-Core policies. Shane, Dongxiao: could you confirm if
this is the case?

Thanks!

Belen

On 02/07/2012 17:53, "Khem Raj" <raj.khem@gmail.com> wrote:

>On Mon, Jul 2, 2012 at 9:05 AM, Barros Pena, Belen
><belen.barros.pena@intel.com> wrote:
>>
>> If I delete the meta-yocto layer, am I supposed to provide the distro to
>> be used via a layer or some other means?
>
>OE-Core has reference distro policies which are enough to generate
>images by just using OE-Core and that is what happens when you drop
>meta-yocto its testing the reference distro setup from OE-Core
>
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


