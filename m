Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BADBE0106D; Wed, 27 Jun 2018 02:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78FA9E006B3
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 02:31:38 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id v83-v6so6450681itc.3
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 02:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nathanrossi.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oC14udP09GPtKJ4rXYI1E71lWlo3NjOEUGEnUl26xhc=;
	b=fOWOqkFWY7I/tdXlP/5ybWthR+7KcCMmnj+t1FAOBH+hbrOz2mT402s9O6FkWHXUAJ
	926o2HwfM0yuEv+vz6Fu938T4eP3Vh1xffPVwu/h+C3o+nsd9AYYDtzddb0INwkpSxyO
	3I6CN9w06dS2kn15lIGNzy2x+03kw7C6SgBDrkeOqObt1TRtIN/Rm4+Ygjc2GD13Ht2c
	Yao3/KY9FPMXj/y3CGfPCy01YYhwUV5IRd7dWr2u2lk68VVnvhQgW4szCDp/zBJQIB9G
	oN3aM0XpFWHR3JXm+W8qWVzauBp4i6KyggLzHVhhjZp8rhbs9GPZcraAAKWrGZlztsTF
	53cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oC14udP09GPtKJ4rXYI1E71lWlo3NjOEUGEnUl26xhc=;
	b=Jrfn/9RGNHtZi6dTgimz8/PyuaZg6A9CS5RU3xXKc5OlbnphjnPVHRsZV03wCbZFvM
	9r/pMM+iiXkZyg2XgBF0mtf73y3aClHlSyIy24vks+l4IcBwYOkyFKI0ufCOHUl75KJe
	VYyi0RUvHV9A0YDlj4N6+4A7C5HmEcfCCgpYjqUcffGgvwmmp5Q+nLRYjEnzlVPC6CL2
	zsByX6JN22EC4S0s4/L0dPv+BzSqun15g9+suFy2yFso5RCdtpbvYTqC2eeRK5YejP1A
	1vCbHiHToaacljivNxalcMgUlcJGJaYGIbp/Ah+S2Hpkx5BYQ52RoRMRmxepMXhy23AF
	0nIw==
X-Gm-Message-State: APt69E3eYrfWBNZb0JA/npfECfdUg9UWa3pKDafsaUxPv9Jq1s/CPP9Z
	Icqz9lW+FyR7jxNYicqN1Sjx3C9HOS6HnnZXS1lBTg==
X-Google-Smtp-Source: AAOMgpeV4gnFWWPRIhJNPLE9eUDWGHHz/z5/7YPuaEL2GotzcLjm4WC20Ic9/+1ck/W8yNUr4Baw8oMGE3cyofnppbg=
X-Received: by 2002:a24:1c09:: with SMTP id c9-v6mr244797itc.38.1530091897637; 
	Wed, 27 Jun 2018 02:31:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:7502:0:0:0:0:0 with HTTP; Wed, 27 Jun 2018 02:31:36
	-0700 (PDT)
In-Reply-To: <36cf88623c814f619c16c2f5061783b6@PLEXTEK-EXCH1.plextek.lan>
References: <36cf88623c814f619c16c2f5061783b6@PLEXTEK-EXCH1.plextek.lan>
From: Nathan Rossi <nathan@nathanrossi.com>
Date: Wed, 27 Jun 2018 19:31:36 +1000
Message-ID: <CA+aJhH3ACXrqhyayk7LQoaF5=cR92sDwvvVneQhkNBX_RDursA@mail.gmail.com>
To: Alan Levy <alan.levy@plextek.com>, Simon VII <simon.vii@outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: loading FPGA bitfile with u-boot spl on ZYBO
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
X-List-Received-Date: Wed, 27 Jun 2018 09:31:39 -0000
Content-Type: text/plain; charset="UTF-8"

On 27 June 2018 at 16:58, Alan Levy <alan.levy@plextek.com> wrote:
> This is really a question for the meta-xilinx list but I'll answer it here anyway.
>
> You need to add the following command (suitably edited) to uEnv.txt on the SD card:
>
>         fatload mmc 0 <memory addr> <bitfile> && fpga loadb 0 <memory addr> <bitstream size>
>
> <memory addr> is a location in RAM in which the bitstream is temporarily stored (e.g. 0x100000 but it depends on what else you have in memory)
> <bitfile> is the name of the bitstream file (e.g. fpga.bit)
> <bitstream size> is the size of the bitstream file.

The meta-xilinx layer has a recipe that will generate a uEnv.txt with
these commands. As long as there is a "bitstream", "*.bit" (U-Boot
fpga loadb command) or "*.bin" (U-Boot fpga load command) file in
IMAGE_BOOT_FILES.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/meta-xilinx-bsp/recipes-bsp/u-boot/u-boot-zynq-uenv.bb

The "zybo-linux-bd-zynq7" machine is an example of this as it provides
a bitstream that is loaded by U-Boot.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/tree/meta-xilinx-bsp/conf/machine/zybo-linux-bd-zynq7.conf#n36

Also do keep in mind that you can load your bitstream using the FPGA
manager framework in the kernel (or the xdevcfg interface in older
xilinx kernels).

Regards,
Nathan

>
> To get to the U-boot prompt just keep hitting return rapidly during the boot process. If that works then you can set the countdown to (e.g.) 3 seconds using the following command:
>
>         setenv bootdelay 3
>         saveenv
>
> This assumes that your version of U-Boot has the FGPA load and boot delay functionality built in. If not you'll need to rebuild it with the necessary options enabled.
>
>
> ALAN LEVY, Lead Consultant, Embedded Systems
>
> Plextek Consulting, The Plextek Building, London Road, Great Chesterford, Saffron Walden, CB10 1NY, UK
> T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com
>
>
>>-----Original Message-----
>>Date: Tue, 26 Jun 2018 09:05:43 +0000
>>From: Simon VII <simon.vii@outlook.com>
>>To: Yocto discussion list <yocto@yoctoproject.org>
>>Subject: [yocto] loading FPGA bitfile with u-boot spl on ZYBO
>>Message-ID:
>>       <DB5PR03MB1765165D1234BB2F642CDF21F2490@DB5PR03MB1765.eurprd03.prod.outlook.com>
>>
>>Content-Type: text/plain; charset="utf-8"
>>
>>Goodmorning,
>>
>>
>>I hope you can help me with the following matter.
>>
>>
>>I am currently using the poky reference distribution to build a minimal working example for the Zybo board (using the meta-xilinx layer), following >this<https://www.yoctoproject.org/docs/2.5/brief-yoctoprojectqs/brief-yoctoprojectqs.html> guide.
>>
>>
>>After bitbaking the minimal example and putting everything on a partitioned SD card, I can start u-boot and load the kernel.
>>
>>
>>Everything seems fine up until here. My problem now is that before loading the kernel, I would like to load a bitfile (xxx.bit) and program the FPGA. Unfortunatelly I >haven't managed to get this to work.
>>
>>
>>First of all, I am not getting an countdown to interrupt u-boot which I tried to identify but was unable to. I am attaching the log from the boot process in case it helps. I am >not sure if the u-boot spl is
>>
>>
>>loaded (and executed).
>>
>
> <example snipped>
>
>>
>>
>>I would appreciate any suggestion or help to the right direction.
>>
>>
>>Thanks
>>
>>Simon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

