Return-Path: <belen.barros.pena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3680CE0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 08:56:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jun 2012 08:56:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="158110817"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 15 Jun 2012 08:56:53 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.70]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.36]) with mapi id
	14.01.0355.002; Fri, 15 Jun 2012 16:56:53 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] live image types and qemu machines
Thread-Index: AQHNSw9657Boc8qmFUu91F44Z5Ue6A==
Date: Fri, 15 Jun 2012 15:56:52 +0000
Message-ID: <CC010BF7.11340%belen.barros.pena@intel.com>
In-Reply-To: <4FDB4AD5.6080301@linux.intel.com>
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
X-List-Received-Date: Fri, 15 Jun 2012 15:56:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9ECBF290616A9E4293BCC70DFFBB495A@intel.com>
Content-Transfer-Encoding: quoted-printable

I'll try to explain:

Your answer to my question was that we should allow outputting live images
when building qemu machines because it could be useful to run those live
images in the emulator, but the emulator is not currently capable of
running live images (although it probably will in the future).

If I have understood correctly (and this is a big if), it probably makes
no sense to allow people to select live image types when building qemu
images because right now they can do nothing with them: I guess they
cannot deploy them to hardware, and they cannot run them in the emulator
either. I wouldn't allow them to combine qemu and live images on the basis
that this might change in the future.

The fact that the emulator cannot run live images also impacts the next
steps we provide once the image has been built. If we allowed Hob users to
build for a qemu machine selecting ext2 and iso as the image types:

- if the emulator could run the iso image we would need to ask those users
which image they would like to run (iso or ext2)
- if the emulator could not run the iso image, we could run the emulator
without asking them questions because the only file we could run is the
ext2

Sorry for the longwinded answer: I hope it makes sense.

Having said all this, I am still very much struggling to understand the
relationship between machines, base images and image types. This
relationship should inform the way we design the Hob interface. In the
existing settings dialog, you select image types independently of the
machine and base image you are building. Your selections will apply to any
machine-base image combinations you can create within Hob. I am still
trying to work out if this design is appropriate.

On one side, I hear there are file types that make no sense for certain
machines. The main example I could think of was live images and qemu
machines (hence my question). On the other side, Richard spoke about using
the IMAGE_FSTYPES values as default values for each base image, which
tells me there must also be a relationship between base images and image
types.

If anybody would like to volunteer to help me understand how machines,
base images and image types relate to each other, please let me know. Any
help would be much appreciated :)

Thanks!

Belen

On 15/06/2012 15:46, "Darren Hart" <dvhart@linux.intel.com> wrote:

>On 06/15/2012 07:39 AM, Barros Pena, Belen wrote:
>> Thanks for clarifying this, Darren. I think right now we need to design
>> for what the current emulator can do. When things change, we should
>> remember to update Hob.
>
>You suggested that this had a significant impact on the dialog for
>selecting images. I thought knowing that qemu+live should/will be a
>support situation would prevent you having to redesign the dialog later,
>as well as other design decisions that might stem from the assumption
>that live images were not supported under emulation.
>
>--
>Darren
>
>>=20
>> Belen
>>=20
>> On 15/06/2012 15:31, "Darren Hart" <dvhart@linux.intel.com> wrote:
>>=20
>>>
>>>
>>> On 06/15/2012 06:04 AM, Barros Pena, Belen wrote:
>>>> Sorry, Darren and Liming: I have one more question about this. Liming,
>>>> correct me if I am wrong, but you mentioned that the only files that
>>>>can
>>>> be run on the qemu emulator are ext2 and ext3. But Darren's answer
>>>>seems
>>>> to suggest that you can also run hddimg and iso files in the qemu
>>>> emulator.
>>>>
>>>> Is this correct, or am I getting totally confused?
>>>
>>>
>>> With the current implementation of the runqemu command and the current
>>> configuration of the qemu hardware, this is true. However, this will
>>> change in the future as people have run into this and asked for
>>> enhancements to allow it.
>>>
>>> --
>>> Darren
>>>
>>>>
>>>> Thanks!!
>>>>
>>>> Belen
>>>>
>>>> On 15/06/2012 10:33, "Barros Pena, Belen"
>>>><belen.barros.pena@intel.com>
>>>> wrote:
>>>>
>>>>> Thanks Darren and Liming.
>>>>>
>>>>> It sounds like we should keep things as they are, and that we'll
>>>>>need a
>>>>> screen that gives you options to both run and deploy an image when
>>>>>you
>>>>> have built for qemu selecting image types ext2 or ext3 and live.
>>>>>
>>>>> Belen
>>>>>
>>>>>
>>>>>
>>>>> On 14/06/2012 22:13, "Darren Hart" <dvhart@linux.intel.com> wrote:
>>>>>
>>>>>>
>>>>>>
>>>>>> On 06/14/2012 08:09 AM, Barros Pena, Belen wrote:
>>>>>>> Hi all,
>>>>>>>
>>>>>>> The current Hob allows you to build images for a qemu machine
>>>>>>> selecting
>>>>>>> 'live' as your image type. To me (with my pitiful knowledge) this
>>>>>>> doesn't
>>>>>>> make much sense: would I want to deploy an image built for a
>>>>>>> virtualisation environment in a real piece of hardware?
>>>>>>>
>>>>>>> So here goes a question: should we allow Hob users, who are mainly
>>>>>>> people
>>>>>>> new to the Yocto project, to select the 'live' image type when
>>>>>>> building
>>>>>>> images for qemu machines?
>>>>>>>
>>>>>>
>>>>>> In my opinion: YES. The reason is that this allows you to test the
>>>>>> live
>>>>>> image format and the boot mechanism on virtualized hardware. This
>>>>>>is a
>>>>>> valuable development tool.
>>>>>>
>>>>>> --
>>>>>> Darren
>>>>>>
>>>>>>> This might sound like a silly question, but it has a pretty big
>>>>>>> impact
>>>>>>> on
>>>>>>> the Settings dialog and on the number of variations we need to
>>>>>>>create
>>>>>>> for
>>>>>>> our 'Image details' screen, which appears after the build finishes
>>>>>>> and
>>>>>>> displays logical next steps (like run the image or deploy your
>>>>>>>image
>>>>>>> to
>>>>>>> external storage).
>>>>>>>
>>>>>>> Any help with this would be much appreciated.
>>>>>>>
>>>>>>> Thanks!
>>>>>>>
>>>>>>> Belen
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>=20
>>>>>>>--------------------------------------------------------------------
>>>>>>>-
>>>>>>> Intel Corporation (UK) Limited
>>>>>>> Registered No. 1134945 (England)
>>>>>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>>>>>> VAT No: 860 2173 47
>>>>>>>
>>>>>>> This e-mail and any attachments may contain confidential material
>>>>>>>for
>>>>>>> the sole use of the intended recipient(s). Any review or
>>>>>>>distribution
>>>>>>> by others is strictly prohibited. If you are not the intended
>>>>>>> recipient, please contact the sender and delete all copies.
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>
>>>>>> --=20
>>>>>> Darren Hart
>>>>>> Intel Open Source Technology Center
>>>>>> Yocto Project - Linux Kernel
>>>>>>
>>>>>>
>>>>>>
>>>>>>
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
>>>>
>>>
>>> --=20
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>>>
>>>
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


