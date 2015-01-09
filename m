Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9D46E0070B; Thu,  8 Jan 2015 18:17:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56555E0048B
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 18:17:30 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id uz6so11220705obc.2
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 18:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=AZsVw4+4QqEYBm+vQlKFawjcXyZxWXBZXKZY8c6L16Q=;
	b=whVj51F5VYS8uzgrH3giG6HbtJWy4/1iDZePQyrhXmPuHbmQ1HzW1KGt0SH038gPED
	arP7Le0ZGEBnrnb5vRu8L/vmmEKsb3GqXJqnnUvk/ZcI1rrIES3sTYJeX6HsSrQMuTgl
	aWsVzIskgQtqOfw600EudiW7Ul+yu8d9TozZrjnPZpEyEzCNCUISXxez9v5NsJHND/6p
	smDBAiTuyuj9lWDpZ91n8pwC0tdIb1P1Xojw5wV7OWpBJZK/E1C4cYyjEPIs77PJc9h5
	H8gja1GHfyzBiKf6RIxtISiAI+XzYWk9K8V3Q6MA3+SeqBoNlx/GRG0B7cZ2oGRwOxdX
	cSRQ==
X-Received: by 10.182.27.241 with SMTP id w17mr7650852obg.14.1420769849987;
	Thu, 08 Jan 2015 18:17:29 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id di8sm3814751obb.17.2015.01.08.18.17.28
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Jan 2015 18:17:28 -0800 (PST)
Message-ID: <54AF3A37.5070800@gmail.com>
Date: Thu, 08 Jan 2015 21:17:27 -0500
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
In-Reply-To: <CAEfap_A7J95hb=idh6JhzYfx5pY4tWzmDHCMV1f4UexG+LQrDQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 09 Jan 2015 02:17:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Simon,
Please send me your kernel bb recipes as there is probably an issue in
them.
Regards,
Nick

On 2015-01-08 03:58 PM, Simon Bolek wrote:
> NIck, thank you. what do you mean by that? I followed the instructions from
> here:
> http://www.yoctoproject.org/docs/1.7/kernel-dev/kernel-dev.html#changing-the-configuration
> is there something there I might be missing? Where is the part, 'linking
> your kernels to the core-image-sato build'  that you are talking about?
> 
> thank you and best regards
> simon:-)
> 
> On Thu, Jan 8, 2015 at 6:50 PM, nick <xerofoify@gmail.com> wrote:
> 
>> Simon,
>> Why are you not linking your kernels to the core-image-sato build.
>> This seems to be the issue.
>> Regards Nick
>>
>> On 2015-01-08 05:59 AM, Simon Bolek wrote:
>>> Thank you Nick. I will try that, but this is not the point. I am trying
>> to
>>> figure out why
>>> *bitbake core-image-sato *
>>> does not create /dev/ram nodes, although linux-yocto has them defiined in
>>> .config file.
>>>
>>> I also created:
>>> mylayer/recipes-kernel/linux/linux_yocto_3.4.bbapend
>>> mylayer/recipes-kernel/linux/linux_yocto_3.10.bbapend
>>> mylayer/recipes-kernel/linux/linux_yocto_3.14.bbapend
>>>
>>> with the following content:
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>> SRC_URI += "file://ramdisk.cfg"
>>>
>>> and
>>> mylayer/recipes-kernel/linux/files/ramdisk.cfg
>>>
>>> with content:
>>> CONFIG_BLK_DEV_RAM=y
>>> CONFIG_BLK_DEV_RAM_COUNT=16
>>> CONFIG_BLK_DEV_RAM_SIZE=4096
>>>
>>> and afterwards run the commands:
>>> bitbake linux-yocto -c cleansstate
>>> bitbake linux-yocto
>>> bitbake core-image-sato
>>>
>>> again. Same result, no /dev/ram nodes under rootfs.
>>>
>>> What am i doing wrong?
>>>
>>> thank you
>>> simon:-)
>>>
>>> On Thu, Jan 8, 2015 at 2:03 AM, nick <xerofoify@gmail.com> wrote:
>>>
>>>> Simon,
>>>> Can you boot this on standard computer with qemu.
>>>> Try that first and report back if that works.
>>>> Nick
>>>>
>>>> On 2015-01-07 04:59 PM, Simon Bolek wrote:
>>>>> Hello folks!
>>>>>
>>>>> I have the following problem/question.
>>>>> 1) I built a standard .hddimg core-image-sato genericx86 on ubuntu
>> 14.10
>>>>> 2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method)
>>>>> 3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not found
>>>>> ramdisk*
>>>>>
>>>>> so initrd is trying to find /dev/ram0 which does not exist in the
>> image.
>>>> I
>>>>> checked rootfs and there is nothing under
>>>>>
>>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev
>>>>>
>>>>> I googled this up and there is a thread telling to check the .config
>> file
>>>>> for *CONFIG_BLK_DEV_RAM *settings*.*
>>>>> I have the following entries in:
>>>>>
>>>>
>> ../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
>>>>> ...
>>>>> CONFIG_BLK_DEV_RAM=y
>>>>> CONFIG_BLK_DEV_RAM_COUNT=16
>>>>> CONFIG_BLK_DEV_RAM_SIZE=4096
>>>>> ...
>>>>>
>>>>> I also *bitbake core-image-sato -c cleansstate* twice already.
>>>>> I also* bitbake core-image-sato -c menuconfig *once more and
>>>>> afterwards *bitbake
>>>>> linux-yocto* again.
>>>>> I also tried IRC channels, but no answer so far...
>>>>>
>>>>> Can anyone help me? How can i force bitbake to create /dev/ram0 under
>>>>> rootfs?
>>>>> Or maybe there is another trick to boot the image from USB?
>>>>>
>>>>> best regards
>>>>> simon:-)
>>>>>
>>>>> Viele Grüsse
>>>>> Simon Bolek
>>>>>
>>>>> mit freundlichem Gruss / best regards / pozdrawiam / atentamente
>>>>> Simon P. Bolek
>>>>> ------------------------------------------------------
>>>>> Dipl. Inf. Simon P. Bolek
>>>>> SAP Consultant
>>>>> Business Mobile and IVI Solutions
>>>>> mailto: simon.bolek@arcom-ivi.de
>>>>> http://www.arcom-ivi.de/
>>>>> XING: https://www.xing.com/profile/SimonP_Bolek
>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
> 

