Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87073E00AEC
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 13:34:54 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id pa12so1716170veb.15
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 13:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=F2/23PWX8iubgqrd7oK76O3AQhKZTDlscxgG2zS5WPs=;
	b=w2bkRiXDt2IEvrsGKMmj/HY6r3bKfraLUfEqCpgDftGKRdzgcniL1n0N/M+53ucpYV
	FvVH6jyigbsb04K5QunEBqXlehLnV6rwOtqkuioqHwiYSwqOETIc4iTquc72oSCTIBbo
	zygFOXCrl4CfzjgGGjxa923mW60BjwwD7uv2uwWa7EBFlHgP0yAOidAS1LzfjbKTJ2w5
	JlZW4oD9mqnl8vvr8UrW9cWDvHFOQeteAl/Fxfz6orm0QbJ4CJoFsaHuGSBGW3mZKb05
	W6ZNSB5WU7qlWO82D5CmvioaYzAnxEIpjfJQ0VHxH8o7771bSqFYYpuq91ZG0kQNJ4Gn
	znNg==
X-Received: by 10.221.40.10 with SMTP id to10mr3006930vcb.22.1394742894176;
	Thu, 13 Mar 2014 13:34:54 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 13 Mar 2014 13:34:13 -0700 (PDT)
In-Reply-To: <CANyK_8fyV-rokqVYWx7b=oskL-A3NXi1JDE6yH+oeta63xMtBw@mail.gmail.com>
References: <CA+rwqNQgcrQ_Ee_3ABmLhRHh5ySk3izbOWf9Txa82=LVXnRCLg@mail.gmail.com>
	<CANyK_8fyV-rokqVYWx7b=oskL-A3NXi1JDE6yH+oeta63xMtBw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 13 Mar 2014 20:34:13 +0000
X-Google-Sender-Auth: cYhVSGS5VE6hbp8k2-gv_Zvhk6I
Message-ID: <CANyK_8dvQ3kAPMG+_wZfNrnD2iQGJ_=PTJ9eegcbhk9tJYg7hg@mail.gmail.com>
To: Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Beagleboard booting kernel in qemu, halts
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
X-List-Received-Date: Thu, 13 Mar 2014 20:34:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 March 2014 20:32, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 13 March 2014 18:59, Mateusz Kaczanowski
> <kaczanowski.mateusz@gmail.com> wrote:
>> Hello everyone,
>> I'm trying to run beagleboard image in qemu. So I've built the kernel and
>> rootfs via yocto.
>>
>> But! Yocto generates zImage so I did:
>> MACHINE=beagleboard bitbake virtual/kernel
>> mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n
>> "Linux kernel" -d ./zImage uImage
>>
>> and then I'm  running the sdcard with
>> qemu-system-arm -M beaglexm -drive if=sd,cache=writeback,file=/dev/sdb
>> -clock unix -serial stdio

I should have read this line before I replied, maybe my advice is wrong...

>>
>> Booting halts and nothing happends, no login prompt.
>> I would appreciate ANY help, I'm really lame in that subject:/
>>
>> That is my output:
>>
>
>> Kernel command line: console=ttyO2,115200n8 mpurate=auto buddy=none
>> camera=none vram=12M omapfb.mode=dvi:640x480MR-16@60 omapdss.def_disp=dvi
>> root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
>
> Ignoring how gmail has wrapped it, this is the kernel command line.
> It's putting the console on ttyO2 which is a serial port on the
> Beagleboard xM. You need to somehow change it so the console is on
> tty1 if you want it to appear on the screen in qemu.
>
> Hope this helps,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk



-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

