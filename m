Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18BF2E00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 10:39:30 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so1549995qcs.35
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2012 10:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Rss64DSRCdC8gN5iwhHVRY+yMqfREWd8XxJn126s+Ww=;
	b=EEXFIIV6SNeUnlh9k4FhRdBkm751n0FWeeB1Kd3lYS96drWr6zAoBrbCIMwIuQNmPo
	3OPfn5Am8JUMuIndz39lmQaTg9S/gZO8OYlIVICETJ2ev1EFvXkJJNl1hyX7C8olMf6a
	GT2EHc+iVSAAz74D9Jsg740O97IRbWtEuP5cwxbF6KcfFbL3dWSvByegy1eFQdDJeAHx
	wk/jGoqfWpCxrOKR4PmSw0wQsI6yZvoUbZt6DN+pCiCXfDLJZDo5RGfSld253hXsNret
	tratCEDihgjQFLOZ8bO/ZZsRcY/j+vbAtNJ4UVwGl5RdkxKt/sFHCIvSivpAt952vI3h
	4GpA==
Received: by 10.224.97.193 with SMTP id m1mr5248295qan.28.1338572369354;
	Fri, 01 Jun 2012 10:39:29 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id eg8sm4652162qab.6.2012.06.01.10.39.28
	(version=SSLv3 cipher=OTHER); Fri, 01 Jun 2012 10:39:28 -0700 (PDT)
Message-ID: <4FC8FE53.4030508@gmail.com>
Date: Fri, 01 Jun 2012 13:39:31 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
	<4FC8E39D.3010702@gmail.com> <4FC8F564.90704@linux.intel.com>
In-Reply-To: <4FC8F564.90704@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Fri, 01 Jun 2012 17:39:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2012 01:01 PM, Darren Hart wrote:
>
> On 06/01/2012 08:45 AM, jfabernathy wrote:
>> On 05/31/2012 03:41 PM, Darren Hart wrote:
>>> On 05/31/2012 11:54 AM, jfabernathy wrote:
>>>> On 05/31/2012 02:13 PM, Darren Hart wrote:
>>>>> On 05/31/2012 09:11 AM, jfabernathy wrote:
>>>>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>>>>> meta-cedartrail using edison branch and noticed an issues with the
>>>>>> serial console.
>>>>>>
>>>>>> The cedartrail.conf in the machine directory has the following statements:
>>>>>>
>>>>>> SYSLINUX_OPTS = "serial 0 115200"
>>>>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>>>> APPEND += "console=ttyS0,115200 console=tty0"
>>>>>>
>>>>>> However, when the image booted, I had no serial console on ttyS0.  I
>>>>>> checked /etc/inittab and noticed that the following line existed:
>>>>>>
>>>>>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>>>>>
>>>>>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>>>>>> next reboot.  So it appears the override in the .conf file is not
>>>>>> working.  Also I only have the console from getty, and not the kernel
>>>>>> logging console.
>>>>>>
>>>>>> Anyone have a solution??
>>>>>>
>>>>>> If this is considered a bug I can put it on bugzilla.
>>>>> Lets make sure your environment is what we expect. Please provide the
>>>>> output of:
>>>>>
>>>>> $ bitbake core-image-minimal -e | grep SERIAL_CONSOLE=
>>>>>
>>>>> If it is not "115200 ttyS0" then it is getting overwritten somewhere
>>>>> either in your config, or possibly by an inappropriate selection of an
>>>>> assignment operator (=, ?=, etc.) in edison.
>>>> okay now I'm confused.  while the cedartrail.conf file has the following:
>>>> SYSLINUX_OPTS = "serial 3 115200"
>>>> SERIAL_CONSOLE = "115200 ttyS3"
>>>> APPEND += "console=ttyS3,115200 console=tty3"
>>>>
>>>>
>>>> The output of the bitbake command you suggested above gives:
>>>> jim@ubuntu-x64:~/poky/build$ bitbake core-image-minimal -e | grep
>>>> SERIAL_CONSOLE=
>>>>
>>>> # SERIAL_CONSOLE=115200 ttyS0
>>>> SERIAL_CONSOLE="115200 ttyS0"
>>>> jim@ubuntu-x64:~/poky/build$
>>>>
>>>> So is the bitbake command showing the results before the cedartrail.conf
>>>> options take affect??
>>> variable assignments can be tricky, and are not the easiest things to
>>> track down. I suggest looking through your configured layers and looking
>>> for all the SERIAL_CONSOLE assignments using ttyS3 and ttyS0 and see if
>>> you can determine what is overriding your cedartrail.conf setting.
>>>
>> What I found out is the only variable that matters for login console in
>> my situation is SERIAL_CONSOLE because I have to use grub and the boot
>> from hard drive method because my image can't be put on a USB Flash for
>> some reason.  So I manually have to edit the grub.cfg file as documented
>> on the wiki "How Do I" section of putting Yocto on a hard drive.  Adding
>> console=ttyS0,115200 on the linux statement takes care of the boot console.
> I believe this is a manual process currently. Please open an enhancement
> in bugzilla for your specific situation and I'll incporporate into the
> larger boot process and image revamp we're doing for 1.3.
>
I'll make the entry.
>> So the question is has there been any thought about automating the
>> choice of boot loader and the parameters that are needed or optional?
>> In the case of meta-cedartrail, the cedartrail.conf assumes syslinux is
>> the boot loader. When I could use a USB Flash key, creating a boot
>> device was a trivial dd statement.  Because I have to use a hard drive
>> now, I have to do a number of manual steps.  Or is there a way to create
>> a boot-able hard drive with syslinux so the cedartrail.conf parameters
>> are all that is needed to adjust?
> This is all good feedback to consider as we work through making more
> universally bootable images. This is becoming a hot topic as people are
> using Yocto in more and more situations and as things like EFI become
> more commonplace.
>
> There is no reason you can't just dd (have a look at
> scripts/contrib/ddimage) the image to a hard disk instead of a usb
> stick. You may need a USB to SATA adapter for your host (this is what I
> use). If you have a USB port, you could just use the install option.
This script does not eliminate the boot error I get with syslinux on USB 
flash keys.  I noticed the script is not in edison but is in denzil, so 
I got it there and tried to run it against an image created with 
edison.  I still get the same boot error I get with dd, which is 
understandable since that's what the script uses.  Not sure if this is a 
size issue because my image is over a 1GB.  I'm guessing this this will 
still fail on a hard drive with the dd'ing of the .hddimg, but I'll test 
it anyway.
> The integration between the boot loader options is something that needs
> work. At some point I hope to replace GRUB with syslinux in all possible
> situations in order simplify the option handling and present a
> consistent boot interface between live images, iso limages, and disk images.
>


