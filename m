Return-Path: <martiert@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB939E0144E
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2013 23:22:00 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id d49so1393214eek.34
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2013 23:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=NPjxepshLUrgFZLG0XshLxCRKQTCN5VTBy+6FgFdtP8=;
	b=Ur991QWBvNd7kWOdwkEZlrv8nRRXjqxhz/u00hwNAWN1G/eEopDDzTXHy2FBQMP+dI
	hyhe3C2QVADv8+kXecg1gFl9HI/zU3+uoj5MFxT4odnS7ZisuTw/coBoCWmKy+lJzEG7
	S5pUG9butxkTI5uytJ2denMusElQtdPhy2wPrjVIitngsX7SX54fVfjfd/nMVB09YZGu
	YrByxXBIqAsgdpTUmgDpYBEMuxJCZ9zVz/Q+wxd2lh6O9rUW2h02OeKxp/XJ6BaogBzl
	wfVsM4gZuTT1blt2VBlZkwyL79JC1GFBnvP5C3yIWNZp1tX80U00pKtPC9u1qG5CsU7K
	pAXQ==
X-Received: by 10.14.210.129 with SMTP id u1mr4200484eeo.68.1375683718849;
	Sun, 04 Aug 2013 23:21:58 -0700 (PDT)
Received: from ?IPv6:2001:420:44ff:fd0e:52e5:49ff:fe32:d20b?
	([2001:420:44ff:fd0e:52e5:49ff:fe32:d20b])
	by mx.google.com with ESMTPSA id a4sm30868240eez.0.2013.08.04.23.21.56
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 04 Aug 2013 23:21:57 -0700 (PDT)
Message-ID: <51FF4548.9010502@gmail.com>
Date: Mon, 05 Aug 2013 08:25:12 +0200
From: Martin Ertsaas <martiert@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130705 Thunderbird/17.0.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
In-Reply-To: <51FF1602.8040805@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Mon, 05 Aug 2013 06:22:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Sure. The BSP layer in question can be cloned from:
git@github.com:martiert/meta-omap.git


On 08/05/13 05:03, Bruce Ashfield wrote:
> On 13-08-04 5:23 PM, martiert@gmail.com wrote:
>>
>>
>> On 31. juli 2013, at 14:42, Bruce Ashfield <bruce.ashfield@gmail.com>
>> wrote:
>>
>>> On Wed, Jul 31, 2013 at 6:57 AM, Martin Ertsaas <martiert@gmail.com>
>>> wrote:
>>>> On 07/31/13 10:57, Andrea Adami wrote:
>>>>> On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas
>>>>> <martiert@gmail.com> wrote:
>>>>>> Hi.
>>>>>>
>>>>>> I'm creating my own bsp layer for omap4 chips (Yes, I know of
>>>>>> meta-ti,
>>>>>> but I want to learn how to do this myself :)). I'm trying to use the
>>>>>> linux-yocto 3.4 kernel,
>>>>>> and have gotten it to work locally. I then made a
>>>>>> linux-yocto_3.4.bbappend which contains the following:
>>>>>>
>>>>>> COMPATIBLE_MACHINE_pandaboard = "pandaboard"
>>>>>>
>>>>>> SRCREV_machine_pandaboard ?=
>>>>>> "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"
>>>>>>
>>>>>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"
>>>>
>>>> The defconfig is found. I can see a defconfig in ${WORKDIR} with zero
>>>> diff to my defconfig. It is, however, not copied from there into
>>>> ${WORKDIR}/linux.
>>>
>>> If you are looking in ${WORKDIR}/linux, you'll never see the
>>> defconfig. Even
>>> in the base kernel class it is copied to the build directory, which is
>>> linux-$MACHINE-build.
>>>
>>> Even after the copy, it is pulled into a secondary set of
>>> configuration steps that
>>> allow configuration fragments to be processed and layered on top of
>>> that baseline
>>> configuration.
>>>
>>> Are you determining that it isn't being used by the existence or non
>>> existence of a
>>> file, or are you seeing other issues with the resulting .config ?
>>
>> What I see is that I have a ${WORKDIR}/defconfig. The .config in
>> linux-${MACHINE}-build is for a different architecture (x86) than my
>> defconfig, the same holds for the .config.old in the same place.
>> Tried adding B=${WORKDIR}/linux-${MACHINE}-build to my append, but no
>> difference.
> Can you make your BSP layer available to me ? I need to see this
> happening on my machines, since all my tests worked here :(
>
> B=${WORKDIR}/linux-${MACHINE}-build would already be set by the
> base classes, so I wouldn't have expected it to make much of a
> difference.
>
> Bruce
>
>>>
>>> Technically you don't even need a defconfig, you can just use a .cfg
>>> with h/w options
>>> for the board, but that's a different topic.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> I changed it so it uses the colon though, and removed THISDIR as
>>>> suggested by Paul, but didn't help. I still don't get the config
>>>> copied
>>>> in, and if I add the do_configure_prepend myself to do this, I get a
>>>> message from the kernel building saying my folder is unclean.
>>>>
>>>> - Martin
>>>>
>>>>> Martin,
>>>>>
>>>>> the code in kernel.bbclass does already copy defonfig to .config, see
>>>>> http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.bbclass#n216
>>>>>
>>>>>
>>>>> I think your problem is the deconfig is not found,  you miss a
>>>>> colon at the end.
>>>>> Use something like
>>>>>
>>>>> FILESEXTRAPATHS_prepend :=
>>>>> "${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"
>>>>>
>>>>> Cheers
>>>>>
>>>>> Andrea
>>>>>
>>>>>
>>>>>> SRC_URI += "file://defconfig"
>>>>>>
>>>>>> do_configure_prepend() {
>>>>>>         cp ${WORKDIR}/defconfig ${S}/.config
>>>>>> }
>>>>>>
>>>>>> Problem I get is, without this configure_prepend, my defconfig is
>>>>>> not
>>>>>> copied into .config the kernel folder. With this however, I get a
>>>>>> complaint from the kernel that the kernel directory is not clean
>>>>>> and I
>>>>>> have to run make mrproper.
>>>>>>
>>>>>> I would greatly appreciate any pointer/help/explanations as to
>>>>>> what I
>>>>>> have done wrong here, and how to fix it. Have been struggling for
>>>>>> this
>>>>>> for a while now, and have no idea what I have done wrong.
>>>>>>
>>>>>> Best regards
>>>>>> Martin Ertsaas
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>> -- 
>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>> thee at its end"
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>


