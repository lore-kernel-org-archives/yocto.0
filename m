Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34A82E00C9B; Sun, 20 Nov 2016 11:30:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90090E00BAF
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:30:39 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id x186so22420994vkd.2
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=p9ORbFijulMVLiuk0Ay5Vh+nMGV4ZHajFdoaUpyRQ9E=;
	b=pyThTW3DhP9qyJqyGKd8NIcG1BYqZ9RjesCTnks2k1UtlomaCZ4XyM1RqCgiTO9A3N
	Z81+lnx/vSnXQglUfrmw6w/UVS2RRDdilKg6oc5zOkMob1z14jdXoP+TrjLZVi0xq//k
	IARVYygtUvo5v4hHXv/0YfLxR+TlSLDctQI8bueelnyAxeLCiMLYTK+k9SNAEIiL0ncw
	OcKbRXof2mVHk/+pEJwFnUUav/j3fANLysE7tSP2jXtUEmiFJ33Sakft1CDsjXXY+5vY
	k5J+YXEDWRnbe6I8+YHuNFRNHg8qxEhnOgJvmJ8sQDfP0QGo2Ue/k7RdL/+SQJvSuvHf
	fQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=p9ORbFijulMVLiuk0Ay5Vh+nMGV4ZHajFdoaUpyRQ9E=;
	b=Jn4O6HmQFZAohQHajqspXQZ05NGpuYGP5DUa3llMiD/cUgJhxv++Bm6bkIpSnNOb9m
	WBDnxbD1e5Mi0ckF8EOZ4lp+3O0oGJrvRr0Vmyi4B0jsxacu4ZVHCw5K+6kWxwfgaE6h
	lAj4NKYTAz6ne2DxqE66YfFXnDCBcKAKSZIODgYZYwrpRietsDlXBfW2UwhNifTWlEyS
	11VXm0OBc+xHiBLaL4jtzd3OQvtOuirpfDbS7Gky7RnMZKw9ZBgcyca7Ko2QQMaFtwOS
	Sga89bf6FtMbPfMgj97LvzuY50Td9kayap21MnlTuERmHwkFrErzAZVBnfszNYqp3hDi
	mv+g==
X-Gm-Message-State: AKaTC03DdlHVf4gEvlYh35K6vdwnzxBRNtO/QZEJoj94JoDLCizSYRoJU5EOjpDDVQfxOrsBEAA3TSVgVRJzQw==
X-Received: by 10.31.108.144 with SMTP id j16mr3852990vki.93.1479670238525;
	Sun, 20 Nov 2016 11:30:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sun, 20 Nov 2016 11:30:08 -0800 (PST)
In-Reply-To: <003b01d24326$8ae5cd20$a0b16760$@neuf.fr>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<1479560619-33367-2-git-send-email-herve.jourdain@neuf.fr>
	<f7d407c8-aa02-4c75-fef0-3d6afeaf4a95@gmail.com>
	<003b01d24326$8ae5cd20$a0b16760$@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Nov 2016 11:30:08 -0800
Message-ID: <CAMKF1sqR6E=UnU2hOhoPBUBk8-tHhBJrG=LYFG4Eo9t=6W7uKA@mail.gmail.com>
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
X-List-Received-Date: Sun, 20 Nov 2016 19:30:40 -0000
Content-Type: text/plain; charset=UTF-8

Herve,

There is no need to create so many variants for a53 32 bit mode. We
can keep using whatever we have
its only 64bit that needs to be added as a new machine.

On Sun, Nov 20, 2016 at 4:06 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Khem,
>
> FYI, I am sending a slightly modified version (cortexa53hf-32 instead of
> cortexa53-32 for raspberrypi3.conf).
> They still depend on modifications in oe-core (heavier this time than
> before), also posted to the list.
>
> Herve
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: samedi 19 novembre 2016 19:19
> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] Modify raspberrypi3.conf
> and add raspberrypi3-64.conf
>
> Nevermind, I managed to apply it, there are some CR changes I guess which
> was freaking git
>
> On 11/19/16 5:03 AM, Herve Jourdain wrote:
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>>  conf/machine/raspberrypi3-64.conf | 19 +++++++++++++++++++
>>  conf/machine/raspberrypi3.conf    |  8 ++++++--
>>  2 files changed, 25 insertions(+), 2 deletions(-)  create mode 100644
>> conf/machine/raspberrypi3-64.conf
>>
>> diff --git a/conf/machine/raspberrypi3-64.conf
>> b/conf/machine/raspberrypi3-64.conf
>> new file mode 100644
>> index 0000000..a5ceddb
>> --- /dev/null
>> +++ b/conf/machine/raspberrypi3-64.conf
>> @@ -0,0 +1,19 @@
>> +#@TYPE: Machine
>> +#@NAME: RaspberryPi 3 Development Board
>> +#@DESCRIPTION: Machine configuration for the RaspberryPi 3 in 64 bits
>> +mode
>> +
>> +DEFAULTTUNE ?= "cortexa53-64"
>> +
>> +MACHINEOVERRIDES = "raspberrypi3:raspberrypi:${MACHINE}"
>> +
>> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>> +
>> +PREFERRED_VERSION_linux-raspberrypi_raspberrypi3-64 ?= "4.7.%"
>> +
>> +require conf/machine/include/tune-cortexa53.inc
>> +include conf/machine/include/rpi-base.inc
>> +
>> +SERIAL_CONSOLE = "115200 ttyS0"
>> +VC4_CMA_SIZE ?= "cma-256"
>> +
>> +UBOOT_MACHINE = "rpi_3_config"
>> diff --git a/conf/machine/raspberrypi3.conf
>> b/conf/machine/raspberrypi3.conf index 9820209..f142323 100644
>> --- a/conf/machine/raspberrypi3.conf
>> +++ b/conf/machine/raspberrypi3.conf
>> @@ -2,12 +2,16 @@
>>  #@NAME: RaspberryPi 3 Development Board
>>  #@DESCRIPTION: Machine configuration for the RaspberryPi 3
>>
>> -MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
>> +DEFAULTTUNE ?= "cortexa53-32"
>> +
>> +MACHINEOVERRIDES = "raspberrypi2:raspberrypi:${MACHINE}"
>>
>>  MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
>>
>> -include conf/machine/raspberrypi2.conf
>> +require conf/machine/include/tune-cortexa53.inc
>> +include conf/machine/include/rpi-base.inc
>>
>>  SERIAL_CONSOLE = "115200 ttyS0"
>>  VC4_CMA_SIZE ?= "cma-256"
>>
>> +UBOOT_MACHINE = "rpi_3_config"
>>
>
>

