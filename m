Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4E9BE00596
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 10:08:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Apr 2012 10:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="152455918"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 11 Apr 2012 10:08:36 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 11 Apr 2012 10:08:33 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.176]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.141]) with mapi id
	14.01.0355.002; Wed, 11 Apr 2012 10:08:33 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] [PATCH 0/1] [KERNEL] Add igb driver to Romley Machine
Thread-Index: AQHNF3hi3EYFy3+YaUmFfKGVsTe8t5aWE1sA///ItLA=
Date: Wed, 11 Apr 2012 17:08:32 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2036180F7@ORSMSX105.amr.corp.intel.com>
References: <cover.1334103101.git.kishore.k.bodke@intel.com>
	<4F858624.8080708@windriver.com>
In-Reply-To: <4F858624.8080708@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [KERNEL] Add igb driver to Romley Machine
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
X-List-Received-Date: Wed, 11 Apr 2012 17:08:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>Sent: Wednesday, April 11, 2012 6:25 AM
>To: Bodke, Kishore K
>Cc: yocto@yoctoproject.org; Bruce Ashfield
>Subject: Re: [yocto] [PATCH 0/1] [KERNEL] Add igb driver to Romley
>Machine
>
>On 12-04-10 08:15 PM, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke<kishore.k.bodke@intel.com>
>>
>> Romley machine has builtin 82580 Giga bit Ethernet
>> Controller. Adding the relavent igb nic driver.
>
>Looks fine for the tree, no risk to other BSPs. Correct me
>if you'd rather this wait until after the 1.2 release.

Yeah, its Romley machine specific.
Please make it available for 1.2 release.

Thanks
Kishore.

>
>I'll have this pushed out later today.
>
>Cheers,
>
>Bruce
>
>>
>> Please pull into linux-yocto-3.2/meta
>>
>> Thanks
>> Kishore.
>>
>> The following changes since commit
>59f350ec3794e19fa806c1b73749d851f8ebf364:
>>
>>    meta: Add common-pc-tiny.scc (2012-03-31 23:43:34 -0400)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>kishore/romley/meta
>>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-
>contrib/log/?h=3Dkishore/romley/meta
>>
>> Kishore Bodke (1):
>>    meta: Add igb.scc to Romley
>>
>>   meta/cfg/kernel-cache/bsp/romley/romley.scc |    3 +--
>>   1 files changed, 1 insertions(+), 2 deletions(-)
>>


