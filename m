Return-Path: <belen.barros.pena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5342BE01454
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 07:39:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jun 2012 07:39:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166128431"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jun 2012 07:39:44 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.231]) with mapi id
	14.01.0355.002; Fri, 15 Jun 2012 15:39:42 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "An, LimingX L"
	<limingx.l.an@intel.com>
Thread-Topic: [yocto] live image types and qemu machines
Thread-Index: AQHNSwSz57Boc8qmFUu91F44Z5Ue6A==
Date: Fri, 15 Jun 2012 14:39:42 +0000
Message-ID: <CC0106EF.1131E%belen.barros.pena@intel.com>
In-Reply-To: <4FDB472F.9040802@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.35.171]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: live image types and qemu machines
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
X-List-Received-Date: Fri, 15 Jun 2012 14:39:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9705B7409612EE47AB6DC79C4797CD06@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks for clarifying this, Darren. I think right now we need to design
for what the current emulator can do. When things change, we should
remember to update Hob.

Belen

On 15/06/2012 15:31, "Darren Hart" <dvhart@linux.intel.com> wrote:

>
>
>On 06/15/2012 06:04 AM, Barros Pena, Belen wrote:
>> Sorry, Darren and Liming: I have one more question about this. Liming,
>> correct me if I am wrong, but you mentioned that the only files that can
>> be run on the qemu emulator are ext2 and ext3. But Darren's answer seems
>> to suggest that you can also run hddimg and iso files in the qemu
>>emulator.
>>=20
>> Is this correct, or am I getting totally confused?
>
>
>With the current implementation of the runqemu command and the current
>configuration of the qemu hardware, this is true. However, this will
>change in the future as people have run into this and asked for
>enhancements to allow it.
>
>--
>Darren
>
>>=20
>> Thanks!!
>>=20
>> Belen
>>=20
>> On 15/06/2012 10:33, "Barros Pena, Belen" <belen.barros.pena@intel.com>
>> wrote:
>>=20
>>> Thanks Darren and Liming.
>>>
>>> It sounds like we should keep things as they are, and that we'll need a
>>> screen that gives you options to both run and deploy an image when you
>>> have built for qemu selecting image types ext2 or ext3 and live.
>>>
>>> Belen
>>>
>>>
>>>
>>> On 14/06/2012 22:13, "Darren Hart" <dvhart@linux.intel.com> wrote:
>>>
>>>>
>>>>
>>>> On 06/14/2012 08:09 AM, Barros Pena, Belen wrote:
>>>>> Hi all,
>>>>>
>>>>> The current Hob allows you to build images for a qemu machine
>>>>>selecting
>>>>> 'live' as your image type. To me (with my pitiful knowledge) this
>>>>> doesn't
>>>>> make much sense: would I want to deploy an image built for a
>>>>> virtualisation environment in a real piece of hardware?
>>>>>
>>>>> So here goes a question: should we allow Hob users, who are mainly
>>>>> people
>>>>> new to the Yocto project, to select the 'live' image type when
>>>>>building
>>>>> images for qemu machines?
>>>>>
>>>>
>>>> In my opinion: YES. The reason is that this allows you to test the
>>>>live
>>>> image format and the boot mechanism on virtualized hardware. This is a
>>>> valuable development tool.
>>>>
>>>> --
>>>> Darren
>>>>
>>>>> This might sound like a silly question, but it has a pretty big
>>>>>impact
>>>>> on
>>>>> the Settings dialog and on the number of variations we need to create
>>>>> for
>>>>> our 'Image details' screen, which appears after the build finishes
>>>>>and
>>>>> displays logical next steps (like run the image or deploy your image
>>>>>to
>>>>> external storage).
>>>>>
>>>>> Any help with this would be much appreciated.
>>>>>
>>>>> Thanks!
>>>>>
>>>>> Belen
>>>>>
>>>>>
>>>>>
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
>>>>
>>>> --=20
>>>> Darren Hart
>>>> Intel Open Source Technology Center
>>>> Yocto Project - Linux Kernel
>>>>
>>>>
>>>>
>>>>
>>>
>>> ---------------------------------------------------------------------
>>> Intel Corporation (UK) Limited
>>> Registered No. 1134945 (England)
>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>> VAT No: 860 2173 47
>>>
>>> This e-mail and any attachments may contain confidential material for
>>> the sole use of the intended recipient(s). Any review or distribution
>>> by others is strictly prohibited. If you are not the intended
>>> recipient, please contact the sender and delete all copies.
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>
>--=20
>Darren Hart
>Intel Open Source Technology Center
>Yocto Project - Linux Kernel
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


