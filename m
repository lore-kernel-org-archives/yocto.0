Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD943E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:28:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Aug 2012 11:28:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="205107498"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2012 11:28:42 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 8 Aug 2012 11:28:41 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.180]) with mapi id
	14.01.0355.002; Wed, 8 Aug 2012 11:28:41 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
Thread-Index: AQHNdY7J29ouw+S+OkC2IE3vapoe7pdQrVAA//+ONKA=
Date: Wed, 8 Aug 2012 18:28:40 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD45DC1@ORSMSX105.amr.corp.intel.com>
References: <cover.1344448245.git.kishore.k.bodke@intel.com>
	<5022AC56.7080109@linux.intel.com>
In-Reply-To: <5022AC56.7080109@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Wed, 08 Aug 2012 18:28:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Darren Hart [mailto:dvhart@linux.intel.com]
>Sent: Wednesday, August 08, 2012 11:14 AM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
>
>n 08/08/2012 10:56 AM, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>> Hi,
>>
>> This is a revised patch set is for creating the new Crystal Forest Machi=
ne.
>> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>>
>> This machine is based on standard/default/common-pc-64.
>>
>> Please create a new branch called standard/default/common-pc-
>64/crystalforest
>> for linux-yocto-3.4 kernel and pull this new meta branch.
>>
>> Thanks
>> Kishore.
>
>Hi Kishore, please note that as these patches are for the linux-yocto
>sources, they should be sent to the linux-yocto mailing list:
>
>https://lists.yoctoproject.org/listinfo/linux-yocto
>
>This is a relatively new list, please keep it in mind for the future.

Hi Darren,

Thanks for letting me know this.
A quick question.
Do we need to send all the kernel related patches only to Linux-yocto maili=
ng list or to both Linux-yocto and Yocto mailing list too?

Thanks
Kishore.

