Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA4FFE008CC; Thu,  8 Jan 2015 09:50:15 -0800 (PST)
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
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CD32E004D6
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 09:50:12 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id i138so8467773oig.2
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 09:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=j25BsE5DtzrJooAzlx4G3wxEFvxizdiQ9GxO6P00Eqo=;
	b=npfwH12iim4sxYQmcWwFSVvCluQ4yh6TAcTrhuj5iwXmcq1mYk7OrwQjj2+tgvKThc
	9gVzefjyE2QsQGifeT9UhGMOROFL9MGOYxWVC8xTlF1k2KKaBSVNhxWx8OT5c2JTBgAH
	A2prJ+HwDs3NxJ+20q5NeJHHSF/sJJu86+2OYhe5FoX7aLMwfn1HEU+9CEJa5RGiTbKn
	VTYGSrUGnJ/wcs9Q83wwJglH9d7GTeYxtyfkMm/5RLR23cLFNIG4CrluD+AXBUzwnA42
	guoHWAIy3DVm5kKJfurJXGAUCgLtmNjQF1AE3en1zj88nMZO8y3b+eOjMJiA2oGr4EMX
	91kA==
X-Received: by 10.182.86.100 with SMTP id o4mr6199669obz.51.1420739412095;
	Thu, 08 Jan 2015 09:50:12 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7]) by mx.google.com with ESMTPSA id
	f125sm3110400oic.29.2015.01.08.09.50.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Jan 2015 09:50:11 -0800 (PST)
Message-ID: <54AEC351.5050905@gmail.com>
Date: Thu, 08 Jan 2015 12:50:09 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Simon Bolek <simon.bolek@googlemail.com>, yocto@yoctoproject.org
References: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
	<54ADD758.90302@gmail.com>
	<CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
In-Reply-To: <CAEfap_D+Okcb20V7Sv+kCEJm8trVx1bWGRemT7AGWGyYy8_T_Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 08 Jan 2015 17:50:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Simon,
Why are you not linking your kernels to the core-image-sato build.
This seems to be the issue.
Regards Nick

On 2015-01-08 05:59 AM, Simon Bolek wrote:
> Thank you Nick. I will try that, but this is not the point. I am trying to
> figure out why
> *bitbake core-image-sato *
> does not create /dev/ram nodes, although linux-yocto has them defiined in
> .config file.
> 
> I also created:
> mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
> mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
> mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend
> 
> with the following content:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI += "file://ramdisk.cfg"
> 
> and
> mylayer/recipes-kernel/linux/files/ramdisk.cfg
> 
> with content:
> CONFIG_BLK_DEV_RAM=y
> CONFIG_BLK_DEV_RAM_COUNT=16
> CONFIG_BLK_DEV_RAM_SIZE=4096
> 
> and afterwards run the commands:
> bitbake linux-yocto -c cleansstate
> bitbake linux-yocto
> bitbake core-image-sato
> 
> again. Same result, no /dev/ram nodes under rootfs.
> 
> What am i doing wrong?
> 
> thank you
> simon:-)
> 
> On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:
> 
>> Simon,
>> Can you boot this on standard computer with qemu.
>> Try that first and report back if that works.
>> Nick
>>
>> On 2015-01-07 04:59 PM, Simon Bolek wrote:
>>> Hello folks!
>>>
>>> I have the following problem/question.
>>> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu 14.10
>>> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method)
>>> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not found
>>> ramdisk*
>>>
>>> so initrd is trying to find /dev/ram0 which does not exist in the image.
>> I
>>> checked rootfs and there is nothing under
>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev
>>>
>>> I googled this up and there is a thread telling to check the .config file
>>> for *CONFIG_BLK_DEV_RAM *settings*.*
>>> I have the following entries in:
>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
>>> ...
>>> CONFIG_BLK_DEV_RAM=y
>>> CONFIG_BLK_DEV_RAM_COUNT=16
>>> CONFIG_BLK_DEV_RAM_SIZE=4096
>>> ...
>>>
>>> I also *bitbake core-image-sato -c cleansstate* twice already.
>>> I also* bitbake core-image-sato -c menuconfig *once more and
>>> afterwards *bitbake
>>> linux-yocto* again.
>>> I also tried IRC channels, but no answer so far...
>>>
>>> Can anyone help me? How can i force bitbake to create /dev/ram0 under
>>> rootfs?
>>> Or maybe there is another trick to boot the image from USB?
>>>
>>> best regards
>>> simon:-)
>>>
>>> Viele Grüsse
>>> Simon Bolek
>>>
>>> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
>>> Simon P. Bolek
>>> ------------------------------------------------------
>>> Dipl. Inf. Simon P. Bolek
>>> SAP Consultant
>>> Business Mobile and IVI Solutions
>>> mailto: simon.bolek@arcom-ivi.de
>>> http://www.arcom-ivi.de/
>>> XING: https://www.xing.com/profile/SimonP_Bolek
>>>
>>>
>>>
>>
> 

