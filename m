Return-Path: <alfonso.ros-dos-santos@evosoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF870E00DF0; Thu, 13 Oct 2016 00:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from DENBGMASH1SRV.evosoft.com (DENBGMASH1SRV.evosoft.com
	[193.158.17.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2713FE00C81
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 00:59:34 -0700 (PDT)
X-TM-IMSS-Message-ID: <a03efb5800003c12@evosoft.com>
Received: from EVO01682.evosoft.com ([139.22.164.248]) by evosoft.com
	([193.158.17.58]) with ESMTP (TREND IMSS SMTP Service 7.5) id
	a03efb5800003c12 ; Thu, 13 Oct 2016 09:59:32 +0200
Received: from [139.25.9.155] (139.25.9.155) by evo01682.evosoft.com
	(139.22.164.248) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Thu, 13 Oct 2016 09:59:32 +0200
To: <mark.asselstine@windriver.com>, <yocto@yoctoproject.org>
References: <d47350d4-c126-48ae-7286-2a602ad8c9d2@evosoft.com>
	<1742113.CE0FQBtZUY@super-penguin>
From: alfonso <alfonso.ros-dos-santos@evosoft.com>
Message-ID: <e32ebab7-3e61-53c7-6912-3534dbe9657c@evosoft.com>
Date: Thu, 13 Oct 2016 09:59:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1742113.CE0FQBtZUY@super-penguin>
X-Originating-IP: [139.25.9.155]
Subject: Re: yocto - linaro's lava integration
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
X-List-Received-Date: Thu, 13 Oct 2016 07:59:39 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

thanks a lot for replying to my message. On the last few days I managed 
to find the missing key of the puzzle on some lava slides on the 
internet. In fact you can boot and test an image having the kernel and 
fs separately.

here is the job description:

device_type: qemu
job_name: qemu-x86-test

timeouts:
   job:
     minutes: 6
   action:
     minutes: 2
priority: medium
visibility: public

context:
   arch: i386

actions:
- deploy:
     timeout:
       minutes: 3
     to: tmpfs
     images:
         kernel:
           image_arg: -kernel {kernel} -append "console=ttyS0 
root=/dev/vda rw"
           url: file:///opt/image/kernel.bin
         rootfs:
           image_arg: -drive format=raw,file={rootfs},if=virtio
           url: file:///opt/image/fs.ext4
     os: debian
     root_partition: 1

- boot:
     method: qemu
     timeout:
       minutes: 2
     media: tmpfs
     prompts:
     - "root@debian:"
     auto_login:
       login_prompt: "login:"
       username: root

it is as you say, quite intuitive but i had some trouble finding the 
proper description of this job definition. Now I am focus on how to set 
up the integration process, how to submit the job after the building 
process have been triggered in the git repo and so on.

Its actually easy once you find the pieces of information that you need.

Thanks again and let's see how it goes :P

Best,

Alfonso

On 12.10.2016 17:03, Mark Asselstine wrote:
> On Monday, October 10, 2016 12:23:07 PM EDT alfonso wrote:
>> Hello everyone,
>>
>> I'm trying to integrate the testing of the resulting yocto images using
>> Linaro's LAVA project.
>>
>> For now I am only using qemux86 images.
>>
>> Now, I am quite a newbie in both projects and maybe in general on the
>> subject of images so I might be asking the wrong questions.
>>
>> So far, to test a qemu image using LAVA it is required a .img file. That
>> would be the simplest configuration. On the other hand, my yocto project
>> produces a .bin kernel file + .ext4 filesystem file. I don't seem to
>> find a proper configuration in LAVA for .bin + .ext4 file testing. I
>> presume there is a way to configure yocto to produce a .img file out of
>> these two guys but I don't seem to find how.
>>
>> Would anyone have a recommendation?
> We have been using LAVA to test our Yocto based product for about 1 1/2years
> now using the produced .ext[34] and bzImage produced from a typical Yocto
> build. We have been using LAVA 1 however and I am only now starting to move to
> the latest LAVA 2. We have also been using hardware targets and not qemu but
> that is overall inconsequential.
>
> Since our move to LAVA 2 is in progress I can't currently give you a step by
> step guide to accomplishing this. Let me look quickly today to see if the
> existing definition of the qemu device type will allow for specifying a disk
> image and kernel. If not then it either needs to be added or a new device type
> created with allows it. On the bright side the LAVA folks have done a good job
> about the layout of their code so jumping in to do this may seem to be a big
> hurdle but once you jump in you will find most things where you would expect
> them to be.
>
> Alternatively you could use either a chroot or VM to update the .ext4 image
> with a kernel and grub.
>
> Anyways, sorry for sparse information. Again if you give me some time I can
> provide you with more details. But definitely go ahead and dig in, you will
> find that what you want to do is possible.
>
> Mark Asselstine
>
>
>
>
>
>
>> Thanks in advance for your help :)
>>
>> Best,
>> Alfonso
>


