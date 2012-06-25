Return-Path: <belen.barros.pena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F58E01452
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 02:39:41 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jun 2012 02:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="162209214"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2012 02:39:40 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Mon, 25 Jun 2012 10:38:58 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, Saul Wold
	<sgw@linux.intel.com>
Thread-Topic: [yocto] self-hosted image vs. build appliance
Thread-Index: AQHNUrZY6fFjPPjafEm3wuZHEQjaZg==
Date: Mon, 25 Jun 2012 09:38:57 +0000
Message-ID: <CC0DF028.11E51%belen.barros.pena@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A12453@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.37.32]
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
X-List-Received-Date: Mon, 25 Jun 2012 09:39:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E5A86B210BA2F6479CE8E2E54FB56BA0@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Scott,

I'll file a separate bug for the documentation.

Cheers

Belen

On 22/06/2012 14:44, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
wrote:

>The term "self-hosted image" will need to be expunged from the docs.
>This should be mentioned in the bug as well.
>
>Scott
>
>-----Original Message-----
>From: yocto-bounces@yoctoproject.org
>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>Sent: Friday, June 22, 2012 1:44 AM
>To: Saul Wold
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] self-hosted image vs. build appliance
>
>Dave Stewart has suggested to use Build Appliance everywhere unless
>someone comes up with something better. I think build-appliance-image is
>definitely better than self-hosted-image, so I'll ask that to be changed
>in Hob as part of bug 2636.
>
>About the description, this is what Scott has suggested:
>
>'An image you can run using the Yocto Project Build Appliance. It boots
>from VMware Player or VMware Workstation. For more details, visit the
>Yocto Project Website.'
>
>'visit the Yocto Project Website' would be a link to
>http://www.yoctoproject.org/documentation/build-appliance
>
>
>Any thoughts?
>
>Thanks!
>
>Belen
>
>On 21/06/2012 16:22, "Saul Wold" <sgw@linux.intel.com> wrote:
>
>>On 06/21/2012 03:30 AM, Barros Pena, Belen wrote:
>>> Hi Saul,
>>>
>>> Thanks for explaining. But I must say: to an outsider, the existing
>>>naming
>>> does not explain how these 2 things relate to each other.
>>>
>>> We are adding a description of the 'self-hosted-image' to Hob,
>>>including a
>>> link to the Build Appliance page in the Yocto Project website. But I am
>>> not sure it will be enough to fully explain the relationship between
>>>both.
>>> Is there any reason why the recipe and the ovf file need to have
>>>different
>>> names?
>>>
>>How about build-appliance-image and building a Build Appliance ovf
>>
>>Sau!
>>
>>
>>> Cheers
>>>
>>> Belen
>>>
>>>
>>>
>>> On 20/06/2012 17:44, "Saul Wold"<sgw@linux.intel.com>  wrote:
>>>
>>>> On 06/20/2012 09:23 AM, Barros Pena, Belen wrote:
>>>>> Does anybody know why are we calling it 'self-hosted-image' in Hob
>>>>>and
>>>>> 'build-appliance' in the Yocto Project website? Wouldn't it be easier
>>>>>if
>>>>> we used the same name everywhere? Which one should be used?
>>>>>
>>>> They are slightly different.  The self-hosted-image is the recipe name
>>>> that generates the image.  The build-appliance is the VMware OVF file
>>>> and bits needed to use VMPlayer or VMWorkstation.  The
>>>>self-hosted-image
>>>> is the underlying disk image used in the Build Appliance
>>>>
>>>> Sau!
>>>>
>>>>> Thanks!
>>>>>
>>>>> Belen
>>>>>
>>>>> ---------------------------------------------------------------------
>>>>> Intel Corporation (UK) Limited
>>>>> Registered No. 1134945 (England)
>>>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>>>> VAT No: 860 2173 47
>>>>>
>>>>> This e-mail and any attachments may contain confidential material for
>>>>> the sole use of the intended recipient(s). Any review or distribution
>>>>> by others is strictly prohibited. If you are not the intended
>>>>> recipient, please contact the sender and delete all copies.
>>>>>
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>
>>>
>>>
>
>---------------------------------------------------------------------
>Intel Corporation (UK) Limited
>Registered No. 1134945 (England)
>Registered Office: Pipers Way, Swindon SN3 1RJ
>VAT No: 860 2173 47
>
>This e-mail and any attachments may contain confidential material for
>the sole use of the intended recipient(s). Any review or distribution
>by others is strictly prohibited. If you are not the intended
>recipient, please contact the sender and delete all copies.
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


