Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7C89E0080C; Fri,  9 Jan 2015 09:00:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9019EE0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:00:48 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uz6so13988340obc.5
	for <yocto@yoctoproject.org>; Fri, 09 Jan 2015 09:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=4Ntj3rx8Ss6Dk3mYF25oa7EY+pxJnNjwRihxlFD3FXM=;
	b=tbjV1EDneXjVM+2kWckqlt8YlYCDYFO3fk60ZxtJfmHOxt2dTmtYlrCWiUtAMkQyKx
	/5dk09dXAaOejAfXT475VhVE2hqlGORxaaurhHPflNEL6EkXoRKkPN/yXRQ+D+9l4C1/
	AZ7Nu9v1MS7UABFUwCCmPeOOEasoHFW9e0c1ukcByIzaKrQXo3BVAlCRgeojGRLY0Whc
	lPHx4TBbs0VRKDMZYPR3NzrgL6FNQr2VqggbQ7U4XrFd3GvtbPVt4ZB2hf8pDv2RvQkp
	lDvuILOyVo1oCRMs3LSk4zr0KgW3reWYzPgE82ys+DmbEeR9uICTbOLLo5eeTrZcptAs
	mWFA==
X-Received: by 10.202.78.198 with SMTP id c189mr5774699oib.16.1420822847530;
	Fri, 09 Jan 2015 09:00:47 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id wc6sm4663771obc.8.2015.01.09.09.00.45
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Jan 2015 09:00:46 -0800 (PST)
Message-ID: <54B0093C.2060307@gmail.com>
Date: Fri, 09 Jan 2015 12:00:44 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Simon Bolek <simon.bolek@googlemail.com>
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
	<54ADD758.90302@gmail.com>
	<CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
	<54AEC351.5050905@gmail.com>
	<CAEfap_A7J95hb=idh6JhzYfx5pY4tWzmDHCMV1f4UexG+LQrDQ@mail.gmail.com>
	<54AF3A37.5070800@gmail.com>
	<CAEfap_B4G7yvW-yrLFxVp__Ov7=XQn3ZuxLTJBq-QyHnrML2Ow@mail.gmail.com>
In-Reply-To: <CAEfap_B4G7yvW-yrLFxVp__Ov7=XQn3ZuxLTJBq-QyHnrML2Ow@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Booting .hddimg from USB failed -> ramdisk not found /dev/ram0 - HELP!
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
X-List-Received-Date: Fri, 09 Jan 2015 17:00:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Simon,
Your right is this probably an issue with your boot partition  config.
Regards Nick 

On 2015-01-09 04:20 AM, Simon Bolek wrote:
> Hi Nick, attached is my kernel .bbappend and .cfg files of linux kernel
> recipe of my own layer. In original meta layer nothing was changed.
> 
> However, I spent last night trying to resolve the problem and found out
> that standard core-sato-image was missing
> meta/recipes-core/initrdscripts
> I added that to the local.conf file and also added grub to it.
> I wonder how 'install' was possible without those scripts, well, never mind.
> After building .hddimg again i was able to boot and install the image from
> USB device to atom-pc. Installation seemed to work without problems BUT
> after removing the usb device, boot FAILED: *not bootable device* - I was
> crying out loud, belive me!, gave up and went directly to bed...
> 
> The same(built and generated at the same bitbake run) iso image is working
> in virtual box like a charm.
> There must be a difference/bug somewhere.
> Vbox is creating partitions on hda, atom-pc has sda. Should not be a
> problem, but still a difference.
> Could you help me on that? There are 3 Partitions on /dev/sda:
> /dev/sda1 - boot partition (no asterix in partition table visible, but no
> asterix on Vbox partition table as well)
> /dev/sda2 - rootfs
> /dev/sda3 - swap
> 
> However, I will open another thread for this.
> 
> thank you and best regards
> simon:-)
> 
> On Fri, Jan 9, 2015 at 3:17 AM, nick <xerofoify@gmail.com> wrote:
> 
>> Simon,
>> Please send me your kernel bb recipes as there is probably an issue in
>> them.
>> Regards,
>> Nick
>>
>> On 2015-01-08 03:58 PM, Simon Bolek wrote:
>>> NIck, thank you. what do you mean by that? I followed the instructions
>> from
>>> here:
>>>
>> http://www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.html#changing-the-configuration
>>> is there something there I might be missing? Where is the part, 'linking
>>> your kernels to the core-image-sato build'  that you are talking about?
>>>
>>> thank you and best regards
>>> simon:-)
>>>
>>> On Thu, Jan 8, 2015 at 6:50 PM, nick <xerofoify@gmail.com> wrote:
>>>
>>>> Simon,
>>>> Why are you not linking your kernels to the core-image-sato build.
>>>> This seems to be the issue.
>>>> Regards Nick
>>>>
>>>> On 2015-01-08 05:59 AM, Simon Bolek wrote:
>>>>> Thank you Nick. I will try that, but this is not the point. I am trying
>>>> to
>>>>> figure out why
>>>>> *bitbake core-image-sato *
>>>>> does not create /dev/ram nodes, although linux-yocto has them defiined
>> in
>>>>> .config file.
>>>>>
>>>>> I also created:
>>>>> mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
>>>>> mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
>>>>> mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend
>>>>>
>>>>> with the following content:
>>>>>
>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>>>> SRC_URI += "file://ramdisk.cfg"
>>>>>
>>>>> and
>>>>> mylayer/recipes-kernel/linux/files/ramdisk.cfg
>>>>>
>>>>> with content:
>>>>> CONFIG_BLK_DEV_RAM=y
>>>>> CONFIG_BLK_DEV_RAM_COUNT=16
>>>>> CONFIG_BLK_DEV_RAM_SIZE=4096
>>>>>
>>>>> and afterwards run the commands:
>>>>> bitbake linux-yocto -c cleansstate
>>>>> bitbake linux-yocto
>>>>> bitbake core-image-sato
>>>>>
>>>>> again. Same result, no /dev/ram nodes under rootfs.
>>>>>
>>>>> What am i doing wrong?
>>>>>
>>>>> thank you
>>>>> simon:-)
>>>>>
>>>>> On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:
>>>>>
>>>>>> Simon,
>>>>>> Can you boot this on standard computer with qemu.
>>>>>> Try that first and report back if that works.
>>>>>> Nick
>>>>>>
>>>>>> On 2015-01-07 04:59 PM, Simon Bolek wrote:
>>>>>>> Hello folks!
>>>>>>>
>>>>>>> I have the following problem/question.
>>>>>>> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu
>>>> 14.10
>>>>>>> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP
>> method)
>>>>>>> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not
>> found
>>>>>>> ramdisk*
>>>>>>>
>>>>>>> so initrd is trying to find /dev/ram0 which does not exist in the
>>>> image.
>>>>>> I
>>>>>>> checked rootfs and there is nothing under
>>>>>>>
>>>>>>
>>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev
>>>>>>>
>>>>>>> I googled this up and there is a thread telling to check the .config
>>>> file
>>>>>>> for *CONFIG_BLK_DEV_RAM *settings*.*
>>>>>>> I have the following entries in:
>>>>>>>
>>>>>>
>>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
>>>>>>> ...
>>>>>>> CONFIG_BLK_DEV_RAM=y
>>>>>>> CONFIG_BLK_DEV_RAM_COUNT=16
>>>>>>> CONFIG_BLK_DEV_RAM_SIZE=4096
>>>>>>> ...
>>>>>>>
>>>>>>> I also *bitbake core-image-sato -c cleansstate* twice already.
>>>>>>> I also* bitbake core-image-sato -c menuconfig *once more and
>>>>>>> afterwards *bitbake
>>>>>>> linux-yocto* again.
>>>>>>> I also tried IRC channels, but no answer so far...
>>>>>>>
>>>>>>> Can anyone help me? How can i force bitbake to create /dev/ram0 under
>>>>>>> rootfs?
>>>>>>> Or maybe there is another trick to boot the image from USB?
>>>>>>>
>>>>>>> best regards
>>>>>>> simon:-)
>>>>>>>
>>>>>>> Viele Grüsse
>>>>>>> Simon Bolek
>>>>>>>
>>>>>>> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
>>>>>>> Simon P. Bolek
>>>>>>> ------------------------------------------------------
>>>>>>> Dipl. Inf. Simon P. Bolek
>>>>>>> SAP Consultant
>>>>>>> Business Mobile and IVI Solutions
>>>>>>> mailto: simon.bolek@arcom-ivi.de
>>>>>>> http://www.arcom-ivi.de/
>>>>>>> XING: https://www.xing.com/profile/SimonP_Bolek
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
> 

