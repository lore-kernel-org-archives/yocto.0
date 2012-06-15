Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526F0E0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 09:17:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Jun 2012 09:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="153812577"
Received: from unknown (HELO envy.home) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 15 Jun 2012 09:17:40 -0700
Message-ID: <4FDB5FD8.20403@linux.intel.com>
Date: Fri, 15 Jun 2012 09:16:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CC010BF7.11340%belen.barros.pena@intel.com>
In-Reply-To: <CC010BF7.11340%belen.barros.pena@intel.com>
X-Enigmail-Version: 1.4.2
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
X-List-Received-Date: Fri, 15 Jun 2012 16:17:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/15/2012 08:56 AM, Barros Pena, Belen wrote:
> I'll try to explain:
> 
> Your answer to my question was that we should allow outputting live images
> when building qemu machines because it could be useful to run those live
> images in the emulator, but the emulator is not currently capable of
> running live images (although it probably will in the future).
> 
> If I have understood correctly (and this is a big if), it probably makes
> no sense to allow people to select live image types when building qemu
> images because right now they can do nothing with them: I guess they
> cannot deploy them to hardware, and they cannot run them in the emulator
> either. I wouldn't allow them to combine qemu and live images on the basis
> that this might change in the future.
> 
> The fact that the emulator cannot run live images also impacts the next
> steps we provide once the image has been built. If we allowed Hob users to
> build for a qemu machine selecting ext2 and iso as the image types:
> 
> - if the emulator could run the iso image we would need to ask those users
> which image they would like to run (iso or ext2)
> - if the emulator could not run the iso image, we could run the emulator
> without asking them questions because the only file we could run is the
> ext2
> 
> Sorry for the longwinded answer: I hope it makes sense.
> 
> Having said all this, I am still very much struggling to understand the
> relationship between machines, base images and image types. This
> relationship should inform the way we design the Hob interface. In the
> existing settings dialog, you select image types independently of the
> machine and base image you are building. Your selections will apply to any
> machine-base image combinations you can create within Hob. I am still
> trying to work out if this design is appropriate.
> 
> On one side, I hear there are file types that make no sense for certain
> machines. The main example I could think of was live images and qemu
> machines (hence my question). On the other side, Richard spoke about using
> the IMAGE_FSTYPES values as default values for each base image, which
> tells me there must also be a relationship between base images and image
> types.
> 
> If anybody would like to volunteer to help me understand how machines,
> base images and image types relate to each other, please let me know. Any
> help would be much appreciated :)

OK, let me take a stab at this.

base image: The image recipe to build, this defines the content of the
image such as which packages are installed. For example:
  core-image-minimal
  core-image-base
  core-image-sato

image type: The format of the resulting image. All of the base images
can be built as any of the image types, but the distro and machine
definitions define which are allowed for the specific machine.
  ext2
  ext3
  tar.gz
  cpio.gz
  hddimg
  vmdk

machine: The definition of the hardware (or emulator) we are building
the image for. This defines things like architecture, compiler options,
as well as adding dependencies on packages which are required or
recommended, this extends the list of packages defined in the image
recipe. For example, core-image-sato will provide the EMGD graphics
drivers for the crownbay machine and the i915 drivers for the n450. The
machine definition also modifies the IMAGE_FSTYPES list as appropriate
for the hardware.

distro: The distro definition, such as poky, poky-tiny, angstrom, etc.
sets various policies about how things are built. This can include
package format (rpm, deb. etc), image fstypes, and preferred packages
for various configurable features like the kernel, C library, init
system, etc. This also impacts the contents and format of the resulting
image.

Richard's suggestion to build the dialog from the IMAGE_FSTYPES makes
sense as it will allow you to list ONLY the image types that are
buildable for the selected distro and machine.

Does that help?

--
Darren


> 
> Thanks!
> 
> Belen
> 
> On 15/06/2012 15:46, "Darren Hart" <dvhart@linux.intel.com> wrote:
> 
>> On 06/15/2012 07:39 AM, Barros Pena, Belen wrote:
>>> Thanks for clarifying this, Darren. I think right now we need to design
>>> for what the current emulator can do. When things change, we should
>>> remember to update Hob.
>>
>> You suggested that this had a significant impact on the dialog for
>> selecting images. I thought knowing that qemu+live should/will be a
>> support situation would prevent you having to redesign the dialog later,
>> as well as other design decisions that might stem from the assumption
>> that live images were not supported under emulation.
>>
>> --
>> Darren
>>
>>>
>>> Belen
>>>
>>> On 15/06/2012 15:31, "Darren Hart" <dvhart@linux.intel.com> wrote:
>>>
>>>>
>>>>
>>>> On 06/15/2012 06:04 AM, Barros Pena, Belen wrote:
>>>>> Sorry, Darren and Liming: I have one more question about this. Liming,
>>>>> correct me if I am wrong, but you mentioned that the only files that
>>>>> can
>>>>> be run on the qemu emulator are ext2 and ext3. But Darren's answer
>>>>> seems
>>>>> to suggest that you can also run hddimg and iso files in the qemu
>>>>> emulator.
>>>>>
>>>>> Is this correct, or am I getting totally confused?
>>>>
>>>>
>>>> With the current implementation of the runqemu command and the current
>>>> configuration of the qemu hardware, this is true. However, this will
>>>> change in the future as people have run into this and asked for
>>>> enhancements to allow it.
>>>>
>>>> --
>>>> Darren
>>>>
>>>>>
>>>>> Thanks!!
>>>>>
>>>>> Belen
>>>>>
>>>>> On 15/06/2012 10:33, "Barros Pena, Belen"
>>>>> <belen.barros.pena@intel.com>
>>>>> wrote:
>>>>>
>>>>>> Thanks Darren and Liming.
>>>>>>
>>>>>> It sounds like we should keep things as they are, and that we'll
>>>>>> need a
>>>>>> screen that gives you options to both run and deploy an image when
>>>>>> you
>>>>>> have built for qemu selecting image types ext2 or ext3 and live.
>>>>>>
>>>>>> Belen
>>>>>>
>>>>>>
>>>>>>
>>>>>> On 14/06/2012 22:13, "Darren Hart" <dvhart@linux.intel.com> wrote:
>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On 06/14/2012 08:09 AM, Barros Pena, Belen wrote:
>>>>>>>> Hi all,
>>>>>>>>
>>>>>>>> The current Hob allows you to build images for a qemu machine
>>>>>>>> selecting
>>>>>>>> 'live' as your image type. To me (with my pitiful knowledge) this
>>>>>>>> doesn't
>>>>>>>> make much sense: would I want to deploy an image built for a
>>>>>>>> virtualisation environment in a real piece of hardware?
>>>>>>>>
>>>>>>>> So here goes a question: should we allow Hob users, who are mainly
>>>>>>>> people
>>>>>>>> new to the Yocto project, to select the 'live' image type when
>>>>>>>> building
>>>>>>>> images for qemu machines?
>>>>>>>>
>>>>>>>
>>>>>>> In my opinion: YES. The reason is that this allows you to test the
>>>>>>> live
>>>>>>> image format and the boot mechanism on virtualized hardware. This
>>>>>>> is a
>>>>>>> valuable development tool.
>>>>>>>
>>>>>>> --
>>>>>>> Darren
>>>>>>>
>>>>>>>> This might sound like a silly question, but it has a pretty big
>>>>>>>> impact
>>>>>>>> on
>>>>>>>> the Settings dialog and on the number of variations we need to
>>>>>>>> create
>>>>>>>> for
>>>>>>>> our 'Image details' screen, which appears after the build finishes
>>>>>>>> and
>>>>>>>> displays logical next steps (like run the image or deploy your
>>>>>>>> image
>>>>>>>> to
>>>>>>>> external storage).
>>>>>>>>
>>>>>>>> Any help with this would be much appreciated.
>>>>>>>>
>>>>>>>> Thanks!
>>>>>>>>
>>>>>>>> Belen
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> --------------------------------------------------------------------
>>>>>>>> -
>>>>>>>> Intel Corporation (UK) Limited
>>>>>>>> Registered No. 1134945 (England)
>>>>>>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>>>>>>> VAT No: 860 2173 47
>>>>>>>>
>>>>>>>> This e-mail and any attachments may contain confidential material
>>>>>>>> for
>>>>>>>> the sole use of the intended recipient(s). Any review or
>>>>>>>> distribution
>>>>>>>> by others is strictly prohibited. If you are not the intended
>>>>>>>> recipient, please contact the sender and delete all copies.
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>
>>>>>>>
>>>>>>> -- 
>>>>>>> Darren Hart
>>>>>>> Intel Open Source Technology Center
>>>>>>> Yocto Project - Linux Kernel
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>> ---------------------------------------------------------------------
>>>>>> Intel Corporation (UK) Limited
>>>>>> Registered No. 1134945 (England)
>>>>>> Registered Office: Pipers Way, Swindon SN3 1RJ
>>>>>> VAT No: 860 2173 47
>>>>>>
>>>>>> This e-mail and any attachments may contain confidential material for
>>>>>> the sole use of the intended recipient(s). Any review or distribution
>>>>>> by others is strictly prohibited. If you are not the intended
>>>>>> recipient, please contact the sender and delete all copies.
>>>>>>
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>> -- 
>>>> Darren Hart
>>>> Intel Open Source Technology Center
>>>> Yocto Project - Linux Kernel
>>>>
>>>>
>>>
>>
>> -- 
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
>>
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



