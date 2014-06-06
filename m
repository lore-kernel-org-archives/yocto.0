Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2672AE00B9F; Fri,  6 Jun 2014 08:37:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1ED4E00B88
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 08:37:16 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WswCg-0007Od-TZ
	for yocto@yoctoproject.org; Fri, 06 Jun 2014 17:37:14 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 17:37:14 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 06 Jun 2014 17:37:14 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 06 Jun 2014 17:36:57 +0200
Message-ID: <lmsn6p$dkl$1@ger.gmane.org>
References: <lms7v8$cp2$1@ger.gmane.org>
	<5391D2CB.20704@windriver.com>	<lmskqt$fee$1@ger.gmane.org>
	<5391DA71.90402@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <5391DA71.90402@mlbassoc.com>
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
X-List-Received-Date: Fri, 06 Jun 2014 15:37:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Gary, Hi Bruce

This is the directory layout:

Both recipes are extremely similar, only differ by a different git repo
and SRCREV. I might need to later have different patches for both
recipes, but currently everthing is identical. That's why I made an
include file.

.
├── linux-cubox-i-3.10.30
│   ├── brcmfmac4330-sdio.bin
│   ├── brcmfmac4330-sdio.txt
│   ├── defconfig
│   ├── dm-crypt.cfg
│   ├── leds.cfg
│   ├── mod-to-builtin.cfg
│   ├── networking.cfg
│   ├── no-caam.cfg
│   ├── touchscreen.cfg
│   ├── videoin.cfg
│   └── wlan.cfg
├── linux-cubox-i_3.10.30.bb
├── linux-cubox-i_3.10.30.inc
└── linux-cubox-i_3.10.30-linux4kix.bb






Am 06.06.2014 17:12, schrieb Gary Thomas:
> On 2014-06-06 08:56, Neuer User wrote:
>> Hi Bruce
>>
>> Thanks for the hint. I changed it, but the result is the same.
>>
>> Strange is really that it shows the directory as being searched through
>> but does not find the file that's contained?!
>>
>> Also, there are two "main" recipes, which both include the inc file.
>> This one throws warnings, but works:
>>
>> linux-cubox-i_3.10.30.bb
>>
>> This one throws warnings and then the error shown:
>>
>> linux-cubox-i_3.10.30-linux4kix.bb
> 
> It's a bit hard to see what files you have where.  Perhaps you
> could send a listing, e.g. for the standard Yocto kernel:
>   $ tree meta/recipes-kernel/linux
>   meta/recipes-kernel/linux
>   ├── linux-dtb.inc
>   ├── linux-dummy
>   │   └── COPYING.GPL
>   ├── linux-dummy.bb
>   ├── linux-yocto_3.10.bb
>   ├── linux-yocto_3.14.bb
>   ├── linux-yocto_3.4.bb
>   ├── linux-yocto-dev.bb
>   ├── linux-yocto.inc
>   ├── linux-yocto-rt_3.10.bb
>   ├── linux-yocto-rt_3.14.bb
>   ├── linux-yocto-rt_3.4.bb
>   ├── linux-yocto-tiny_3.10.bb
>   ├── linux-yocto-tiny_3.14.bb
>   └── linux-yocto-tiny_3.4.bb
> 
> Do this for each of the kernel recipes you are trying to use.
> 
>>
>> Am I doing it right (now with the :=), or is there something
>> fundamentally wrong with the two recipes and the include file?
>>
>> Michael
>>
>> Am 06.06.2014 16:40, schrieb Bruce Ashfield:
>>> On 14-06-06 07:16 AM, Neuer User wrote:
>>>> I get the following error:
>>>>
>>>> WARNING: Failed to fetch URL file://defconfig, attempting MIRRORS if
>>>> available
>>>> ERROR: Fetcher failure: Unable to find file file://defconfig anywhere.
>>>> The paths that were searched were:
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/poky
>>>>
>>>>
>>>> ...
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/arm
>>>>
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/
>>>>
>>>>
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30-linux4kix/
>>>>
>>>>
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i/
>>>>
>>>>
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/files/
>>>>       /home/ubuntu/yocto/downloads/
>>>> ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'.
>>>> Unable to fetch URL from any source.
>>>>
>>>>
>>>> Now, the directory:
>>>>
>>>>
>>>> /home/ubuntu/yocto/sources/meta-omnisonix/recipes-kernel/linux/linux-cubox-i-3.10.30/
>>>>
>>>>
>>>>
>>>> which is listed above, contains the "missing" file ("defconfig").
>>>>
>>>> Hmm, strange...
>>>>
>>>>
>>>>
>>>> Here are my recipes:
>>>>
>>>> linux-cubox-i_3.10.30.inc:
>>>> ------------------------------------
>>>> inherit kernel
>>>> require recipes-kernel/linux/linux-yocto.inc
>>>>
>>>> SUMMARY = "Linaro Kernel 3.10.30 with additional machine specific
>>>> patches"
>>>>
>>>> SRCBRANCH ?= "linux-linaro-lsk-mx6"
>>>>
>>>> FILESEXTRAPATHS_prepend += "${THISDIR}/${PN}-3.10.30:"
>>>
>>> Have you tried this variant ?
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.10.30:"
>>>
>>> You need the := in the assignment to have it evaluate immediately and
>>> pick up the directory of your bbappend (who's subdir is the one that
>>> contains the defconfig).
>>>
>>> Bruce
>>>
>>>
>>>>
>>>> SRC_URI = "file://defconfig \
>>>>              file://videoin.cfg \
>>>>              file://networking.cfg \
>>>>              file://wlan.cfg \
>>>>              file://dm-crypt.cfg \
>>>>              file://no-caam.cfg \
>>>>              file://leds.cfg \
>>>>              file://mod-to-builtin.cfg \
>>>>              file://brcmfmac4330-sdio.bin \
>>>>              file://brcmfmac4330-sdio.txt \
>>>> "
>>>>
>>>> do_configure_append () {
>>>>       cd ${S}
>>>>       mkdir firmware/brcm
>>>>       cp ../brcmfmac4330-sdio.bin ./firmware/brcm/
>>>>       cp ../brcmfmac4330-sdio.txt ./firmware/brcm/
>>>> }
>>>>
>>>> COMPATIBLE_MACHINE = "(cubox-i)"
>>>>
>>>> KERNEL_IMAGETYPE_cubox-i = "zImage"
>>>> KERNEL_DEVICETREE_cubox-i = "imx6dl-cubox-i.dtb imx6q-cubox-i.dtb"
>>>>
>>>> SRCREV_machine = "${SRCREV}"
>>>> ------------------------------------
>>>>
>>>>
>>>> linux-cubox-i_3.10.30.bb:
>>>> ------------------------------------
>>>> include linux-cubox-i_3.10.30.inc
>>>>
>>>> SRCREV = "592b2d941dc3ecb6335d6820757340ffb5a192c8"
>>>> #SRCREV = "860304ab6e749777523f3714d18c4c7d39b728fa"
>>>> LOCALVERSION = "-cubox-i+SolidRun+${SRCPV}"
>>>>
>>>> SRC_URI +=
>>>> "git://github.com/SolidRun/linux-linaro-stable-mx6;branch=${SRCBRANCH}"
>>>> -------------------------------
>>>>
>>>>
>>>> linux-cubox-i_3.10.30-linux4kix.bb:
>>>> ------------------------------------
>>>> include linux-cubox-i_3.10.30.inc
>>>>
>>>> SRCREV = "a4ed70040f9dfdcdd6546a85c0477ecd1030e065"
>>>> LOCALVERSION = "-cubox-i+linux4kix+${SRCPV}"
>>>>
>>>> SRC_URI +=
>>>> "git://github.com/linux4kix/linux-linaro-stable-mx6.git;branch=${SRCBRANCH}"
>>>>
>>>>
>>>> ------------------------------------
>>>>
>>>>
>>>
>>
>>
> 



