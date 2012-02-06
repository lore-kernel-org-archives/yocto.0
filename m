Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B7B4E004D2
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 13:59:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q16Lx7mW005883
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 6 Feb 2012 13:59:07 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 6 Feb 2012 13:59:06 -0800
Message-ID: <4F304D1C.6090802@windriver.com>
Date: Mon, 6 Feb 2012 16:58:52 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: autif khan <autif.mlist@gmail.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
	<CADkTA4NuLPg3+vA-6QkxkVqkthc_bXcN1Cye5Yzhz65tOmUzHw@mail.gmail.com>
	<CADzUK1LO0gUd36X-N1hXQ49Bx7Lu+xW5u8VQT-waAtn1jM=6CQ@mail.gmail.com>
	<4F303708.1080501@windriver.com>
	<CADzUK1JdxZKK9XW86Lq_4K3p8ya+_jf07NK7VwDp2uMWh_6=hg@mail.gmail.com>
In-Reply-To: <CADzUK1JdxZKK9XW86Lq_4K3p8ya+_jf07NK7VwDp2uMWh_6=hg@mail.gmail.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Mon, 06 Feb 2012 21:59:20 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-02-06 04:43 PM, autif khan wrote:
>>>>>>>> I could not find a way to patch the kernel source before its is
>>>>>>>> built.
>>>>>>>>
>>>>>>>> I promise to update the Yocto wiki's How do I section when I have a
>>>>>>>> working solution for the following :-)
>>>>>>>
>>>>>>>
>>>>>>> This should be covered in the existing documentation and also the
>>>>>>> more general bitbake/oe-core docs.
>>>>>>>
>>>>>>>>
>>>>>>>> Here is what I am trying to do:
>>>>>>>>
>>>>>>>> 1) Patch the kernel (add VID/PID to hid_ignore_list in
>>>>>>>> drivers/hid/hid-core.c and also to add the VID/PID to .h file)
>>>>>>>> 2) Build the kernel - no change here - standard kernel build
>>>>>>>> 3) Build a kernel module
>>>>>>>>
>>>>>>>> I have a meta layer where I am keeping my changes. I am guessing that
>>>>>>>> I need to:
>>>>>>>>
>>>>>>>> a) write a bbappend file to accomplish #1
>>>>>>>> b) write a recipe to accomplish #3
>>>>>>>>
>>>>>>>> I have written recipes before, but just for libraries and autotools
>>>>>>>> based applications. Not for a kernel module. If there is a recipe out
>>>>>>>> there for some other module, I would be happy to steal from it.
>>>>>>>>
>>>>>>>> Please advise how I can go about patching the kernel and if there is
>>>>>>>> a
>>>>>>>
>>>>>>>
>>>>>>> It's just like any other package. If your changes are simple, then
>>>>>>> generating patches and putting them on the SRC_URI via a bbappend in
>>>>>>> your layer is all you need. If you have complex changes, there are
>>>>>>> options
>>>>>>> to manage them via git or via feature descriptions.
>>>>>
>>>>>
>>>>> I tried this - attached at the end of this email are my bbappend file
>>>>> and my patches, when the recipe is bitbaked, it does not actually
>>>>> apply the patch.
>>>>>
>>>>> On a similar note - there seems to be a file in
>>>>> meta/recipes-kernel/linux/linux-yocto called
>>>>> tools-perf-no-scripting.patch
>>>>>
>>>>> However, it does not seem to be used anywhere - is this just crud or I
>>>>> am missing something? I was hoping to cheat off of the recipe that
>>>>> uses it.
>>>>>
>>>>>>>> recipe for a kernel module - please point me to it.
>>>>>>>
>>>>>>>
>>>>>>> Darren validated and updated the kernel module example, so he'd
>>>>>>> probably
>>>>>>> got this closer at hand than I do.
>>>>>>
>>>>>>
>>>>>> See the hello-mod example under meta/recipes-kernel/hello-mod
>>>>>
>>>>>
>>>>> Thank you for this recipe - it seems like this is exactly what I was
>>>>> looking for. I will cheat off of this as soon as I can patch my
>>>>> kernel.
>>>>>
>>>>>
>>>>> R E C I P E
>>>>>
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$ cat
>>>>> linux-yocto_3.0.bbappend
>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}:"
>>>>> SRC_URI += " file://linux/drivers/hid/hid-core.c.diff \
>>>>>              file://linux/drivers/hid/hid-ids.h.diff "
>>>>> PR = "r3"
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$
>>>>>
>>>>> P A T C H
>>>>>
>>>>>
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/drivers/hid$
>>>>
>>>>
>>>> Taking a look at this (while I was cutting and pasting), this should
>>>> be in in the
>>>> a 'linux-yocto' subdirectory if you want bitbake to pickup the patch and
>>>> make it
>>>> available to the linux-yocto recipe.
>>>>
>>>> i.e.
>>>> ~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux-yocto/drivers/hid
>>>>
>>>> And don't use 'linux-yocto' in your file:// reference on the SRC_URI,
>>>> that part is
>>>> automatic.
>>>
>>>
>>> I tried this just now - here is what happens:
>>>
>>> Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
>>> file://drivers/hid/file.diff
>>> Result: Fetcher failure for URL: 'file://drivers/hid/hid-core.c.diff
>>
>>
>> If you get a fetcher failire, you have it in the wrong place.
>>
>> Note: this has nothing to do with the kernel and is a general
>> bitbake/oe-core question.
>>
>>
>>>
>>> Case - patch is in linux/linux-yocto/drivers/hid, SRC_URI ref is
>>> file://linux-yocto/drivers/hid/file.diff
>>
>>
>> Interesting. I've never had to specify linux-yocto in my SRC_URIs,
>> so something strange it going on here.
>>
>> Does anyone else have ideas here ?
>>
>>
>>
>>> Result - my diff files are copied in a directory called linux-yocto in
>>>
>>> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3
>>>
>>> These patches are not applied in
>>>
>>> tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3/linux
>>>
>>> Here is what the work directory looks like
>>>
>>>
>>> autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3$
>>> ls
>>> git  license-destdir  linux  linux-crownbay-standard-build  linux-yocto
>>>   temp
>>>
>>> autif@fpbm:~/ssd/minimal/tmp/work/crownbay-poky-linux/linux-yocto-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+2247da9131ea7e46ed4766a69bb1353dba22f873-r3$
>>>
>>>
>>> I have attached the original set of files as a tar gzip.
>>
>>
>> I'll take them for a spin.
>>
>>
>>>
>>>> (and yes, I see 'edison' was the branch now)
>>>
>>>
>>> Yes, I am using Yocto 1.0 - very soon I will migrate to M2 - pending
>>> tasks at hand :-)
>>
>>
>> I'll have to dig up a 1.0 tree, since I don't have anything of that
>> vintage available to me.
>>
>> But I know that patched worked then, and am absolutely sure that it
>> works in 1.1 and master.
>
> OK, I switched to M2 release and now, I have a different error:
>
> Case - diff files are in recipes/linux/linux-yocto, SRC_URI is
> file://drivers/hid/hid-core.c.diff
> Result - ERROR: Function 'Fetcher failure for URL:
> 'file://drivers/hid/hid-core.c.diff'. Unable to fetch URL
> file://drivers/hid/hid-core.c.diff from any source.' failed
>
>
> Did, I misunderstood you when you said that I should rename the files
> dir to linux-yocto - the name of the recipe and remove it from the
> SRC_URI?

Every build that I do with my meta-kernel-dev has some out of tree
patches. It's a form of continual regression testing that I do out
of habit.

My bbappend looks like this:

SRC_URI = 
"git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta 
\
            file://make.patch \
            file://subdir/make2.patch \
            file://subdir/make3.patch"


 > pwd
/home/bruce/yocto/poky-extras/meta-kernel-dev/recipes-kernel/linux
 > tree linux-yocto
linux-yocto
├── make.patch
└── subdir
     ├── make2.patch
     └── make3.patch

These are always applied to my build.

Cheers,

Bruce


>
> Will keep investigating and experimenting.
>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> cat hid-core.c.diff
>>>>> --- linux.orig/drivers/hid/hid-core.c   2012-01-31 16:44:44.152001877
>>>>> -0500
>>>>> +++ linux/drivers/hid/hid-core.c        2012-01-31 16:46:34.608001870
>>>>> -0500
>>>>> @@ -1839,6 +1839,8 @@
>>>>>         { HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP,
>>>>> USB_DEVICE_ID_1_PHIDGETSERVO_20) },
>>>>>         { HID_USB_DEVICE(USB_VENDOR_ID_WISEGROUP,
>>>>> USB_DEVICE_ID_8_8_4_IF_KIT) },
>>>>>         { HID_USB_DEVICE(USB_VENDOR_ID_YEALINK,
>>>>> USB_DEVICE_ID_YEALINK_P1K_P4K_B2K) },
>>>>> +       { HID_USB_DEVICE(USB_VENDOR_ID_PIXCIR, USB_DEVICE_ID_PIXCIR) },
>>>>>         { }
>>>>>   };
>>>>>
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/drivers/hid$
>>>>>
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/drivers/hid$
>>>>> cat hid-ids.h.diff--- linux.orig/drivers/hid/hid-ids.h  2012-01-31
>>>>> 16:44:55.432001877 -0500
>>>>> +++ linux/drivers/hid/hid-ids.h 2012-01-31 16:47:36.624001858 -0500
>>>>> @@ -671,4 +671,7 @@
>>>>>   #define USB_VENDOR_ID_ZYDACRON 0x13EC
>>>>>   #define USB_DEVICE_ID_ZYDACRON_REMOTE_CONTROL  0x0006
>>>>>
>>>>> +#define USB_VENDOR_ID_PIXCIR   0x040b
>>>>> +#define USB_DEVICE_ID_PIXCIR   0x2000
>>>>> +
>>>>>   #endif
>>>>>
>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux/linux/drivers/hid$
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>>
>>>>
>>>> --
>>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>>> thee at its end"
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>


