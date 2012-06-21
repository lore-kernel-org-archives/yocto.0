Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6D1DE0070B
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 03:32:49 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jun 2012 03:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="183154802"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2012 03:32:38 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 21 Jun 2012 11:30:58 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.240]) with mapi id
	14.01.0355.002; Thu, 21 Jun 2012 11:30:58 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Thread-Topic: [yocto] self-hosted image vs. build appliance
Thread-Index: AQHNT5jyIvwbfzBDr0SDTeZtKitk/Q==
Date: Thu, 21 Jun 2012 10:30:58 +0000
Message-ID: <CC08AFF0.11AC2%belen.barros.pena@intel.com>
In-Reply-To: <4FE1FDFF.5040401@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.51.241]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: self-hosted image vs. build appliance
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
X-List-Received-Date: Thu, 21 Jun 2012 10:32:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <095EE7A348439348B6F76BF0C928075F@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Saul,

Thanks for explaining. But I must say: to an outsider, the existing naming
does not explain how these 2 things relate to each other.

We are adding a description of the 'self-hosted-image' to Hob, including a
link to the Build Appliance page in the Yocto Project website. But I am
not sure it will be enough to fully explain the relationship between both.
Is there any reason why the recipe and the ovf file need to have different
names?

Cheers

Belen



On 20/06/2012 17:44, "Saul Wold" <sgw@linux.intel.com> wrote:

>On 06/20/2012 09:23 AM, Barros Pena, Belen wrote:
>> Does anybody know why are we calling it 'self-hosted-image' in Hob and
>> 'build-appliance' in the Yocto Project website? Wouldn't it be easier if
>> we used the same name everywhere? Which one should be used?
>>
>They are slightly different.  The self-hosted-image is the recipe name
>that generates the image.  The build-appliance is the VMware OVF file
>and bits needed to use VMPlayer or VMWorkstation.  The self-hosted-image
>is the underlying disk image used in the Build Appliance
>
>Sau!
>
>> Thanks!
>>
>> Belen
>>
>> ---------------------------------------------------------------------
>> Intel Corporation (UK) Limited
>> Registered No. 1134945 (England)
>> Registered Office: Pipers Way, Swindon SN3 1RJ
>> VAT No: 860 2173 47
>>
>> This e-mail and any attachments may contain confidential material for
>> the sole use of the intended recipient(s). Any review or distribution
>> by others is strictly prohibited. If you are not the intended
>> recipient, please contact the sender and delete all copies.
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


