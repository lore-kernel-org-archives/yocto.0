Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BDAE00B95; Fri,  6 Jun 2014 08:16:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A56E009E7
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 08:16:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s56FGiY6029953
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 Jun 2014 08:16:44 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 6 Jun 2014 08:16:43 -0700
Message-ID: <5391DB4A.2040201@windriver.com>
Date: Fri, 6 Jun 2014 11:16:26 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 06 Jun 2014 15:16:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-06 10:56 AM, Neuer User wrote:
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

${PN} is going to change between those two recipes, so the defconfig
will need to be in a different directory for each recipe.

But as Gary just suggested, getting a full directory listing in
tree format would help clarify they layout you are using.

Bruce

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


