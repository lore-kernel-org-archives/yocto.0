Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AA94E00AAB; Mon, 21 Nov 2016 22:32:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7D8E00A49
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 22:32:10 -0800 (PST)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])
	by msfrf2628.sfr.fr (SMTP Server) with ESMTP id E12081C000C4B;
	Tue, 22 Nov 2016 07:32:09 +0100 (CET)
Received: from nbhjo (1-160-241-187.dynamic.hinet.net [1.160.241.187])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2628.sfr.fr (SMTP Server) with ESMTPSA;
	Tue, 22 Nov 2016 07:32:08 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Khem Raj' <raj.khem@gmail.com>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
	<f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
	<003b01d24326$8ae5cd20$a0b16760$@neuf.fr>
	<CAMKF1sqR6E=UnU2hOhoPBUBk8-tHhBJrG=LYFG4Eo9t=6W7uKA@mail.gmail.com>
	<000701d243b7$2989f970$7c9dec50$@neuf.fr>
	<CAMKF1spCoMCzmwNk9LuGWirobcqqTRDBpk1iSUXudK-X0gBE8Q@mail.gmail.com>
In-Reply-To: <CAMKF1spCoMCzmwNk9LuGWirobcqqTRDBpk1iSUXudK-X0gBE8Q@mail.gmail.com>
Date: Tue, 22 Nov 2016 07:32:04 +0100
Message-ID: <002c01d2448a$26c75920$74560b60$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
thread-index: AQFf1IQYxDJY5eNUZl6goLQmP6eODgOzOf0rAkG3uUkBnNIXGAKgN76/AwgJcxsA8EC4DKFYFL1Q
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 22 Nov 2016 06:32:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Khem,

I believe it would be more appropriate to have it "system-wide", because =
at some point it should not be something the apps need to worry about.
Plus, it's really a SoC thing, some armv8 SoCs do implement those =
options, some don't (when I say "option" there, I mean it's a HW block =
that may or may not be implemented in the SoC, it's not just a =
compilation switch that would work for all revisions of armv8).
So I believe those HW options should indeed be defined in =
arch-armv8.inc, and each soc-specific file should select the options =
that are possible for it.
For instance, cortex-a53 has "by definition" the crc HW included, but =
the crypto HW block may or may not be implemented. For Raspberrypi3, =
BCM2837 does not have it. Most other Cortex-A53 I know of have it, =
though.
Therefore, the definition of the "crypto" variant for cortexa53-32, in =
addition with the sf/hf variants for aarch32.
For aarch64, the floating point abi is hf, so that's less variants, but =
I should also add cortexa53crypto-64, to be exhaustive... It's not going =
to be useful for RPI3, but it might be for all future =
armv8/cortex-a53/cortex-a57/cortex-a72/cortex-a73 based SoCs that will =
have to be supported in the future.
So we could add it all now, or we could add it in the future as needs =
emerge.

Herve

-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]=20
Sent: lundi 21 novembre 2016 17:35
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify =
raspberrypi3.conf and add raspberrypi3-64.conf

On Sun, Nov 20, 2016 at 9:21 PM, Herve Jourdain <herve.jourdain@neuf.fr> =
wrote:
> Hi Khem,
>
> For cortexa53 in aarch32, the problem is to figure out if we want to =
cover all cases or not.
> Raspberrypi3 is one case of CortexA53 that has crc support, but no =
crypto support. So I could define a cortexa53-32 as being just that.
> But then, there are other CortexA53-based SoCs that do have the crypto =
extension, and I thought that, since I was going to modify it, I'd =
rather cover all possible cases/options...
>
> The one thing that could be scrapped is the hf option, if we decide =
that all cortexa53 aarch32 will be hf only.
> Then that would avoid the hf duplication of the aarch32 tunes, leaving =
only 2 tunes for cortexa53 aarch32 + 1 tune for cortexa53 aarch64.
>
> Please advise what you would prefer me to do.

is there an advantage of having crc and crypto as systemwide tune =
options or is it more beneficial to apply them surgically to needed apps =
via MACHINE_FEATURES
>
> Herve
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: dimanche 20 novembre 2016 20:30
> To: Herve Jourdain <herve.jourdain@neuf.fr>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify=20
> raspberrypi3.conf and add raspberrypi3-64.conf
>
> Herve,
>
> There is no need to create so many variants for a53 32 bit mode. We =
can keep using whatever we have its only 64bit that needs to be added as =
a new machine.
>
> On Sun, Nov 20, 2016 at 4:06 AM, Herve Jourdain =
<herve.jourdain@neuf.fr> wrote:
>> Hi Khem,
>>
>> FYI, I am sending a slightly modified version (cortexa53hf-32 instead =

>> of
>> cortexa53-32 for raspberrypi3.conf).
>> They still depend on modifications in oe-core (heavier this time than =

>> before), also posted to the list.
>>
>> Herve
>>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: samedi 19 novembre 2016 19:19
>> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
>> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify=20
>> raspberrypi3.conf and add raspberrypi3-64.conf
>>
>> Nevermind, I managed to apply it, there are some CR changes I guess=20
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
>>> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64=20
>>> +bits mode
>>> +
>>> +DEFAULTTUNE ?=3D "cortexa53-64"
>>> +
>>> +MACHINEOVERRIDES =3D "raspberrypi3:raspberrypi:${MACHINE}"
>>> +
>>> +MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm43430"
>>> +
>>> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?=3D "4.7.%"
>>> +
>>> +require conf/machine/include/tune-cortexa53.inc
>>> +include conf/machine/include/rpi-base.inc
>>> +
>>> +SERIAL_CONSOLE =3D "115200 ttyS0"
>>> +VC4_CMA_SIZE ?=3D "cma-256"
>>> +
>>> +UBOOT_MACHINE =3D "rpi_3_config"
>>> diff --git a/conf/machine/raspberrypi3.conf=20
>>> b/conf/machine/raspberrypi3.conf index 9820209..f142323 100644
>>> --- a/conf/machine/raspberrypi3.conf
>>> +++ b/conf/machine/raspberrypi3.conf
>>> @@ -2,12 +2,16 @@
>>>  #@NAME: RaspberryPi 3 Development Board
>>>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
>>>
>>> -MACHINEOVERRIDES =3D "raspberrypi2:${MACHINE}"
>>> +DEFAULTTUNE ?=3D "cortexa53-32"
>>> +
>>> +MACHINEOVERRIDES =3D "raspberrypi2:raspberrypi:${MACHINE}"
>>>
>>>  MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-bcm43430"
>>>
>>> -include conf/machine/raspberrypi2.conf
>>> +require conf/machine/include/tune-cortexa53.inc
>>> +include conf/machine/include/rpi-base.inc
>>>
>>>  SERIAL_CONSOLE =3D "115200 ttyS0"
>>>  VC4_CMA_SIZE ?=3D "cma-256"
>>>
>>> +UBOOT_MACHINE =3D "rpi_3_config"
>>>
>>
>>
>


