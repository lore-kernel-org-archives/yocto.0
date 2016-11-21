Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F8B0E00519; Mon, 21 Nov 2016 08:35:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CE1E0049F
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:35:52 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id 20so26038761uak.0
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ed/E4D48WmcGXmtMDwRoRK5+ssIcd2U3tY5cHy25Wp4=;
	b=tLKLbhYGVWtoawN7Jl3d2N6wBxewXpX08F6DsUlAAVfjH6HCUa82FSnxf7IuVmMU7J
	Ev8caiO5elSXaUgTBiDWnDdHOvQ+Rks7dWGPkzzDsalg9QhO8URVnhGm+zFudI+4Jd0X
	qfi20iJIUa6SXJYSH3MlZClTL9txs6LmNjKyw9DBISXlOI5hTwixPNFunjLEH92VMsV9
	7VlEvfBO0ernNUqmyyCz+PAqSvMLgd3FzVrJ6w6bfcynW4XS6J7vXfqLhVad03iMxHyg
	0bpR9ByDm1ireOKFKgAtdYn95H5PTh3RztoIS3B9fgS/E742ypEKE89VGpmmJgjtwTt/
	nkxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ed/E4D48WmcGXmtMDwRoRK5+ssIcd2U3tY5cHy25Wp4=;
	b=mTlKhBeTYBq2SuQOifYvQRUoGro+lBGIDbnBr1japgeBsQ8FhqgA9GGUsGmxVhcrIc
	CqKntkBIsCwZ6O9iAOquu+xZwXsoACzB2sNvBxLMoBNXAAbWnkHbwRwUkMB9S8arAA1q
	h4cUzxLKYR3pqXDLD1cjWO/kH2JuLnyh0DqBYj+2lwgbatdnDCZpGLg1GBK1L74+/GUu
	oANqG7LlK3TEL/WH/niab8KwMeWyhtBo2mLDN0SM65Y8fZeU50kc/lhYLrgmMY3lUUq5
	C5xaNuN9WWlrZ/UJPrseKaI2wW/VNEZQWI+NHbuwE+/zWSoYnIVA4z8DXi58KyKlurBX
	z+Ww==
X-Gm-Message-State: AKaTC03QTMc5M3gH8HF3HD1sMEPo/vPEcNWKQwd5crtgMpuK39dIkst2khhduuXxXLSDuH4654nR9QvoQpIRfw==
X-Received: by 10.176.1.17 with SMTP id 17mr6077008uak.143.1479746152181; Mon,
	21 Nov 2016 08:35:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Mon, 21 Nov 2016 08:35:21 -0800 (PST)
In-Reply-To: <000701d243b7$2989f970$7c9dec50$@neuf.fr>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
	<f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
	<003b01d24326$8ae5cd20$a0b16760$@neuf.fr>
	<CAMKF1sqR6E=UnU2hOhoPBUBk8-tHhBJrG=LYFG4Eo9t=6W7uKA@mail.gmail.com>
	<000701d243b7$2989f970$7c9dec50$@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 21 Nov 2016 08:35:21 -0800
Message-ID: <CAMKF1spCoMCzmwNk9LuGWirobcqqTRDBpk1iSUXudK-X0gBE8Q@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Mon, 21 Nov 2016 16:35:54 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 20, 2016 at 9:21 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Khem,
>
> For cortexa53 in aarch32, the problem is to figure out if we want to cover all cases or not.
> Raspberrypi3 is one case of CortexA53 that has crc support, but no crypto support. So I could define a cortexa53-32 as being just that.
> But then, there are other CortexA53-based SoCs that do have the crypto extension, and I thought that, since I was going to modify it, I'd rather cover all possible cases/options...
>
> The one thing that could be scrapped is the hf option, if we decide that all cortexa53 aarch32 will be hf only.
> Then that would avoid the hf duplication of the aarch32 tunes, leaving only 2 tunes for cortexa53 aarch32 + 1 tune for cortexa53 aarch64.
>
> Please advise what you would prefer me to do.

is there an advantage of having crc and crypto as systemwide tune
options or is it more beneficial to apply them surgically to needed
apps
via MACHINE_FEATURES
>
> Herve
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: dimanche 20 novembre 2016 20:30
> To: Herve Jourdain <herve.jourdain@neuf.fr>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
>
> Herve,
>
> There is no need to create so many variants for a53 32 bit mode. We can keep using whatever we have its only 64bit that needs to be added as a new machine.
>
> On Sun, Nov 20, 2016 at 4:06 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
>> Hi Khem,
>>
>> FYI, I am sending a slightly modified version (cortexa53hf-32 instead
>> of
>> cortexa53-32 for raspberrypi3.conf).
>> They still depend on modifications in oe-core (heavier this time than
>> before), also posted to the list.
>>
>> Herve
>>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: samedi 19 novembre 2016 19:19
>> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
>> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify
>> raspberrypi3.conf and add raspberrypi3-64.conf
>>
>> Nevermind, I managed to apply it, there are some CR changes I guess
>> which was freaking git
>>
>> On 11/19/16 5:03 AM, Herve Jourdain wrote:
>>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>>> ---
>>>  conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
>>>  conf/machine/raspberrypi3.conf    |  8 ++++++--
>>>  2 files changed, 25 insertions(+), 2 deletions(-)  create mode
>>> 100644 conf/machine/raspberrypi3-64.conf
>>>
>>> diff --git a/conf/machine/raspberrypi3-64.conf
>>> b/conf/machine/raspberrypi3-64.conf
>>> new file mode 100644
>>> index 0000000..a5ceddb
>>> --- /dev/null
>>> +++ b/conf/machine/raspberrypi3-64.conf
>>> @@ -0,0 +1,19 @@
>>> +#@TYPE: Machine
>>> +#@NAME: RaspberryPi 3 Development Board
>>> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64
>>> +bits mode
>>> +
>>> +DEFAULTTUNE ?= "cortexa53-64"
>>> +
>>> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
>>> +
>>> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>>> +
>>> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?= "4.7.%"
>>> +
>>> +require conf/machine/include/tune-cortexa53.inc
>>> +include conf/machine/include/rpi-base.inc
>>> +
>>> +SERIAL_CONSOLE = "115200 ttyS0"
>>> +VC4_CMA_SIZE ?= "cma-256"
>>> +
>>> +UBOOT_MACHINE = "rpi_3_config"
>>> diff --git a/conf/machine/raspberrypi3.conf
>>> b/conf/machine/raspberrypi3.conf index 9820209..f142323 100644
>>> --- a/conf/machine/raspberrypi3.conf
>>> +++ b/conf/machine/raspberrypi3.conf
>>> @@ -2,12 +2,16 @@
>>>  #@NAME: RaspberryPi 3 Development Board
>>>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
>>>
>>> -MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
>>> +DEFAULTTUNE ?= "cortexa53-32"
>>> +
>>> +MACHINEOVERRIDES = "raspberrypi2:raspberrypi:${MACHINE}"
>>>
>>>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>>>
>>> -include conf/machine/raspberrypi2.conf
>>> +require conf/machine/include/tune-cortexa53.inc
>>> +include conf/machine/include/rpi-base.inc
>>>
>>>  SERIAL_CONSOLE = "115200 ttyS0"
>>>  VC4_CMA_SIZE ?= "cma-256"
>>>
>>> +UBOOT_MACHINE = "rpi_3_config"
>>>
>>
>>
>

