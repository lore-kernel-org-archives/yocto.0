Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1139EE00777; Mon,  9 Mar 2015 20:47:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87101E00754
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 20:47:16 -0700 (PDT)
Received: by labgf13 with SMTP id gf13so50814030lab.10
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 20:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LDKxk0oiWlfBFYtgy8f5ser+DPhb10aRnPbTRCTP3bE=;
	b=msoY2x6LWzLjBxXpAqZ1/E9x8237T05E66Fcl5fdV0uX4FHkdV2Nc6KL9uoSuHU11q
	G6rc1ihvajOLRyXC8gMKrs18kDDeACC1XoqGe3VF6Ry8saDOmdEpfe9f9tXd5w6notVz
	0PHkZSk1DRWl+LIEW9XrGXoCM0+kHJbKkMM26bsi2t8r6ipA+V3RuSh/wdOm3Zd/dyyQ
	lE7ek2RLKXxe57c24q3H5e7zUjzpSPFwHMaG2WSLo+XpKoEUPQem2v5h4RVCFkhAbNq/
	QMLVAZsPj8IlbMMZbfrgICH26c0Zssxac+f3VHe0NYpuhvXAiUA8HWecR5dFurCRdlUc
	9sbg==
MIME-Version: 1.0
X-Received: by 10.152.170.164 with SMTP id an4mr13718614lac.9.1425959234724;
	Mon, 09 Mar 2015 20:47:14 -0700 (PDT)
Received: by 10.112.170.70 with HTTP; Mon, 9 Mar 2015 20:47:14 -0700 (PDT)
In-Reply-To: <CANBg2hJ09N3wm85ikScboqJAbp8a_0=r9We1z3epZrtDSMyf6Q@mail.gmail.com>
References: <CANBg2hKqzN6kR4=7rpA3O+Ar=Y0rEOMWYgEYXsu78hfq1ZwbdQ@mail.gmail.com>
	<54FD99D7.4090708@windriver.com>
	<CANBg2hJ09N3wm85ikScboqJAbp8a_0=r9We1z3epZrtDSMyf6Q@mail.gmail.com>
Date: Mon, 9 Mar 2015 23:47:14 -0400
Message-ID: <CADkTA4N9d6eKW8CBB6i8U=haFhmPzJ9VeXX3iMG8PVBqNm1V5Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chung-Yeh Wang <chungyehwang@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Question: Yocto 1.7.1 kernel config defconfig will not be used?
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
X-List-Received-Date: Tue, 10 Mar 2015 03:47:23 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 10:02 PM, Chung-Yeh Wang <chungyehwang@gmail.com> wrote:
> Thanks for the information, Bruce.
>
> I removed all kernel configuration fragments from the bb file but difference
> between defconfig and .config is huge. I may do something wrong and will
> study more.

There's no guarantee that the defconfig passed will end up being a perfect
match to the .config. It depends on how up to date the defconfig is, how it
was generated, etc. The kernel configuration subsystem still processes
that default config and will select, enable and disable many options that are
not part of the input defconfig.

Cheers,

Bruce

>
> Chungyeh
>
> 2015-03-09 21:02 GMT+08:00 Bruce Ashfield <bruce.ashfield@windriver.com>:
>>
>> On 15-03-09 04:36 AM, Chung-Yeh Wang wrote:
>>>
>>> Hi List,
>>>
>>> I am using Yocto 1.7.1 to build linux-mainline. I found defconfig will
>>> not be used when using linux-yocto-custom.bb
>>> <http://linux-yocto-custom.bb/> (maybe also happens on linux-yocto).
>>>
>>> I think below is the reason,
>>>
>>> 1. kernel_do_configure is run after do_kernel_configme.The last line of
>>> do_kernel_configme is echo
>>> "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
>>>
>>> 2. Following are the code to use defconfig,
>>
>>
>> The linux-yocto kernel_configme task takes the defconfig into account,
>> and uses it along with kernel configuration fragment processing.
>>
>> The skipping of the blind defconfig copy is completely intentional.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>> # Copy defconfig to .config if .config does not exist. This allows
>>> # recipes to manage the .config themselves in do_configure_prepend().
>>> if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
>>> cp "${WORKDIR}/defconfig" "${B}/.config"
>>>
>>> The condition '[ ! -f "${B}/.config"]' will not be true, so
>>> recepe-kernel/linux/linux-yocto-custom/defconfig will nerver be used.
>>>
>>>
>>> To use defconfig is one of the method suggested in Kernel developer
>>> manual.
>>>
>>> Thanks and Regards,
>>> Chungyeh
>>>
>>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

