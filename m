Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 801D1E00BA0; Fri,  6 Jun 2014 08:12:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D43CEE00B95
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 08:12:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3DD25F811EF; Fri,  6 Jun 2014 09:12:43 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9BBA3F811EE;
	Fri,  6 Jun 2014 09:12:41 -0600 (MDT)
Message-ID: <5391DA71.90402@mlbassoc.com>
Date: Fri, 06 Jun 2014 09:12:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <lms7v8$cp2$1@ger.gmane.org> <5391D2CB.20704@windriver.com>
	<lmskqt$fee$1@ger.gmane.org>
In-Reply-To: <lmskqt$fee$1@ger.gmane.org>
Subject: Re: Hmm, possible bug in poky?
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
X-List-Received-Date: Fri, 06 Jun 2014 15:12:58 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-06-06 08:56, Neuer User wrote:
> Hi Bruce
>
> Thanks for the hint. I changed it, but the result is the same.
>
> Strange is really that it shows the directory as being searched through
> but does not find the file that's contained?!
>
> Also, there are two "main" recipes, which both include the inc file.
> This one throws warnings, but works:
>
> linux-cubox-i_3.10.30.bb
>
> This one throws warnings and then the error shown:
>
> linux-cubox-i_3.10.30-linux4kix.bb

It's a bit hard to see what files you have where.  Perhaps you
could send a listing, e.g. for the standard Yocto kernel:
   $ tree meta/recipes-kernel/linux
   meta/recipes-kernel/linux
   ├── linux-dtb.inc
   ├── linux-dummy
   │   └── COPYING.GPL
   ├── linux-dummy.bb
   ├── linux-yocto_3.10.bb
   ├── linux-yocto_3.14.bb
   ├── linux-yocto_3.4.bb
   ├── linux-yocto-dev.bb
   ├── linux-yocto.inc
   ├── linux-yocto-rt_3.10.bb
   ├── linux-yocto-rt_3.14.bb
   ├── linux-yocto-rt_3.4.bb
   ├── linux-yocto-tiny_3.10.bb
   ├── linux-yocto-tiny_3.14.bb
   └── linux-yocto-tiny_3.4.bb

Do this for each of the kernel recipes you are trying to use.

>
> Am I doing it right (now with the :=), or is there something
> fundamentally wrong with the two recipes and the include file?
>
> Michael
>
> Am 06.06.2014 16:40, schrieb Bruce Ashfield:
>> On 14-06-06 07:16 AM, Neuer User wrote:
>>> I get the following error:
>>>
>>> WARNING: Failed to fetch URL file://defconfig, attempting MIRRORS if
>>> available
>>> ERROR: Fetcher failure: Unable to find file file://defconfig anywhere.
>>> The paths that were searched were:
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/poky
>>>
>>> ...
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/arm
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/
>>>
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30-linux4kix/
>>>
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i/
>>>
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/
>>>       /home/ubuntu/yocto/downloads/
>>> ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'.
>>> Unable to fetch URL from any source.
>>>
>>>
>>> Now, the directory:
>>>
>>>
>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/
>>>
>>>
>>> which is listed above, contains the "missing" file ("defconfig").
>>>
>>> Hmm, strange...
>>>
>>>
>>>
>>> Here are my recipes:
>>>
>>> linux-cubox-i_3.10.30.inc:
>>> ------------------------------------
>>> inherit kernel
>>> require recipes-kernel/linux/linux-yocto.inc
>>>
>>> SUMMARY = "Linaro Kernel 3.10.30 with additional machine specific
>>> patches"
>>>
>>> SRCBRANCH ?= "linux-linaro-lsk-mx6"
>>>
>>> FILESEXTRAPATHS_prepend += "${THISDIR}/${PN}-3.10.30:"
>>
>> Have you tried this variant ?
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.10.30:"
>>
>> You need the := in the assignment to have it evaluate immediately and
>> pick up the directory of your bbappend (who's subdir is the one that
>> contains the defconfig).
>>
>> Bruce
>>
>>
>>>
>>> SRC_URI = "file://defconfig \
>>>              file://videoin.cfg \
>>>              file://networking.cfg \
>>>              file://wlan.cfg \
>>>              file://dm-crypt.cfg \
>>>              file://no-caam.cfg \
>>>              file://leds.cfg \
>>>              file://mod-to-builtin.cfg \
>>>              file://brcmfmac4330-sdio.bin \
>>>              file://brcmfmac4330-sdio.txt \
>>> "
>>>
>>> do_configure_append () {
>>>       cd ${S}
>>>       mkdir firmware/brcm
>>>       cp ../brcmfmac4330-sdio.bin ./firmware/brcm/
>>>       cp ../brcmfmac4330-sdio.txt ./firmware/brcm/
>>> }
>>>
>>> COMPATIBLE_MACHINE = "(cubox-i)"
>>>
>>> KERNEL_IMAGETYPE_cubox-i = "zImage"
>>> KERNEL_DEVICETREE_cubox-i = "imx6dl-cubox-i.dtb imx6q-cubox-i.dtb"
>>>
>>> SRCREV_machine = "${SRCREV}"
>>> ------------------------------------
>>>
>>>
>>> linux-cubox-i_3.10.30.bb:
>>> ------------------------------------
>>> include linux-cubox-i_3.10.30.inc
>>>
>>> SRCREV = "592b2d941dc3ecb6335d6820757340ffb5a192c8"
>>> #SRCREV = "860304ab6e749777523f3714d18c4c7d39b728fa"
>>> LOCALVERSION = "-cubox-i+SolidRun+${SRCPV}"
>>>
>>> SRC_URI +=
>>> "git://github.com/SolidRun/linux-linaro-stable-mx6;branch=${SRCBRANCH}"
>>> -------------------------------
>>>
>>>
>>> linux-cubox-i_3.10.30-linux4kix.bb:
>>> ------------------------------------
>>> include linux-cubox-i_3.10.30.inc
>>>
>>> SRCREV = "a4ed70040f9dfdcdd6546a85c0477ecd1030e065"
>>> LOCALVERSION = "-cubox-i+linux4kix+${SRCPV}"
>>>
>>> SRC_URI +=
>>> "git://github.com/linux4kix/linux-linaro-stable-mx6.git;branch=${SRCBRANCH}"
>>>
>>> ------------------------------------
>>>
>>>
>>
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

