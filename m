Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AFDE00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 13:03:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Jun 2012 13:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="159669248"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by fmsmga001.fm.intel.com with ESMTP; 01 Jun 2012 13:03:42 -0700
Message-ID: <4FC91FE0.9040909@linux.intel.com>
Date: Fri, 01 Jun 2012 13:02:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
	<4FC8E39D.3010702@gmail.com> <4FC8F564.90704@linux.intel.com>
	<4FC8FE53.4030508@gmail.com> <4FC8FF90.20403@linux.intel.com>
	<4FC90183.2080107@gmail.com> <4FC9021D.1050706@linux.intel.com>
	<4FC91488.9080106@gmail.com>
In-Reply-To: <4FC91488.9080106@gmail.com>
X-Enigmail-Version: 1.4.1
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
X-List-Received-Date: Fri, 01 Jun 2012 20:03:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/01/2012 12:14 PM, jfabernathy wrote:
> On 06/01/2012 01:55 PM, Darren Hart wrote:
>>
>> On 06/01/2012 10:53 AM, jfabernathy wrote:
>>> On 06/01/2012 01:44 PM, Darren Hart wrote:
>>>> On 06/01/2012 10:39 AM, jfabernathy wrote:
>>>>> On 06/01/2012 01:01 PM, Darren Hart wrote:
>>>>>> On 06/01/2012 08:45 AM, jfabernathy wrote:
>>>>>>> On 05/31/2012 03:41 PM, Darren Hart wrote:
>>>>>>>> On 05/31/2012 11:54 AM, jfabernathy wrote:
>>>>>>>>> On 05/31/2012 02:13 PM, Darren Hart wrote:
>>>>>>>>>> On 05/31/2012 09:11 AM, jfabernathy wrote:
>>>>>>>>>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>>>>>>>>>> meta-cedartrail using edison branch and noticed an issues with the
>>>>>>>>>>> serial console.
>>>>>>>>>>>
>>>>>>>>>>> The cedartrail.conf in the machine directory has the following statements:
>>>>>>>>>>>
>>>>>>>>>>> SYSLINUX_OPTS = "serial 0 115200"
>>>>>>>>>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>>>>>>>>> APPEND += "console=ttyS0,115200 console=tty0"
>>>>>>>>>>>
>>>>>>>>>>> However, when the image booted, I had no serial console on ttyS0.  I
>>>>>>>>>>> checked /etc/inittab and noticed that the following line existed:
>>>>>>>>>>>
>>>>>>>>>>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>>>>>>>>>>
>>>>>>>>>>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>>>>>>>>>>> next reboot.  So it appears the override in the .conf file is not
>>>>>>>>>>> working.  Also I only have the console from getty, and not the kernel
>>>>>>>>>>> logging console.
>>>>>>>>>>>
>>>>>>>>>>> Anyone have a solution??
>>>>>>>>>>>
>>>>>>>>>>> If this is considered a bug I can put it on bugzilla.
>>>>>>>>>> Lets make sure your environment is what we expect. Please provide the
>>>>>>>>>> output of:
>>>>>>>>>>
>>>>>>>>>> $ bitbake core-image-minimal -e | grep SERIAL_CONSOLE=
>>>>>>>>>>
>>>>>>>>>> If it is not "115200 ttyS0" then it is getting overwritten somewhere
>>>>>>>>>> either in your config, or possibly by an inappropriate selection of an
>>>>>>>>>> assignment operator (=, ?=, etc.) in edison.
>>>>>>>>> okay now I'm confused.  while the cedartrail.conf file has the following:
>>>>>>>>> SYSLINUX_OPTS = "serial 3 115200"
>>>>>>>>> SERIAL_CONSOLE = "115200 ttyS3"
>>>>>>>>> APPEND += "console=ttyS3,115200 console=tty3"
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> The output of the bitbake command you suggested above gives:
>>>>>>>>> jim@ubuntu-x64:~/poky/build$ bitbake core-image-minimal -e | grep
>>>>>>>>> SERIAL_CONSOLE=
>>>>>>>>>
>>>>>>>>> # SERIAL_CONSOLE=115200 ttyS0
>>>>>>>>> SERIAL_CONSOLE="115200 ttyS0"
>>>>>>>>> jim@ubuntu-x64:~/poky/build$
>>>>>>>>>
>>>>>>>>> So is the bitbake command showing the results before the cedartrail.conf
>>>>>>>>> options take affect??
>>>>>>>> variable assignments can be tricky, and are not the easiest things to
>>>>>>>> track down. I suggest looking through your configured layers and looking
>>>>>>>> for all the SERIAL_CONSOLE assignments using ttyS3 and ttyS0 and see if
>>>>>>>> you can determine what is overriding your cedartrail.conf setting.
>>>>>>>>
>>>>>>> What I found out is the only variable that matters for login console in
>>>>>>> my situation is SERIAL_CONSOLE because I have to use grub and the boot
>>>>>>> from hard drive method because my image can't be put on a USB Flash for
>>>>>>> some reason.  So I manually have to edit the grub.cfg file as documented
>>>>>>> on the wiki "How Do I" section of putting Yocto on a hard drive.  Adding
>>>>>>> console=ttyS0,115200 on the linux statement takes care of the boot console.
>>>>>> I believe this is a manual process currently. Please open an enhancement
>>>>>> in bugzilla for your specific situation and I'll incporporate into the
>>>>>> larger boot process and image revamp we're doing for 1.3.
>>>>>>
>>>>> I'll make the entry.
>>>>>>> So the question is has there been any thought about automating the
>>>>>>> choice of boot loader and the parameters that are needed or optional?
>>>>>>> In the case of meta-cedartrail, the cedartrail.conf assumes syslinux is
>>>>>>> the boot loader. When I could use a USB Flash key, creating a boot
>>>>>>> device was a trivial dd statement.  Because I have to use a hard drive
>>>>>>> now, I have to do a number of manual steps.  Or is there a way to create
>>>>>>> a boot-able hard drive with syslinux so the cedartrail.conf parameters
>>>>>>> are all that is needed to adjust?
>>>>>> This is all good feedback to consider as we work through making more
>>>>>> universally bootable images. This is becoming a hot topic as people are
>>>>>> using Yocto in more and more situations and as things like EFI become
>>>>>> more commonplace.
>>>>>>
>>>>>> There is no reason you can't just dd (have a look at
>>>>>> scripts/contrib/ddimage) the image to a hard disk instead of a usb
>>>>>> stick. You may need a USB to SATA adapter for your host (this is what I
>>>>>> use). If you have a USB port, you could just use the install option.
>>>>> This script does not eliminate the boot error I get with syslinux on USB
>>>>> flash keys.  I noticed the script is not in edison but is in denzil, so
>>>>> I got it there and tried to run it against an image created with
>>>>> edison.  I still get the same boot error I get with dd, which is
>>>>> understandable since that's what the script uses.  Not sure if this is a
>>>>> size issue because my image is over a 1GB.  I'm guessing this this will
>>>>> still fail on a hard drive with the dd'ing of the .hddimg, but I'll test
>>>>> it anyway.
>>>> Sorry, ddimage wasn't meant to fix the issue, just as a slightly more
>>>> convenient/safe wrapper around dd.
>>>>
>>>> I'm not familiar with the error you are seeing with the live image. Can
>>>> you point me to the thread or the bug?
>>> Well this boot error issue seems to be USB Key related because I just
>>> did the ddimage script on a edison core-image-sato image using the
>>> .hddimg file and it worked correctly on a hard drive.  This was a 1.2GB
>>> image.  Now I'll have to add in the parameters that give you more free
>>> disk space now that I'm testing with a real hard drive.
>>>
>>> The readme in most of the x86 BSP directory in meta-intel talk about if
>>> you get boot errors to:
>>>
>>> dd if=/dev/zero of=/dev/sdf bs=1M count=512
>>>
>>> I have not found this to work.  Maybe it's a count size issue.  I always
>>> use 512, but maybe it should be 4096 for a 4GB USB key.
>>>
>> What is the boot error?
>>
> SYSLINUX 4.03 2010-10-22 CHS Load error- Boot error
> 
> Jim A

OK, I suggest following the instructions for creating a USBZIP format in
README.hardware. If that fails, this merits a bug. Regardless, as rework
the images for 1.3, we should be able to avoid the many many boot errors
like this that people have been reporting and we've been working around.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

