Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EB3EE0071D
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 07:31:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0BFVFhQ025000
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 Jan 2012 07:31:15 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 Jan 2012 07:31:15 -0800
Message-ID: <4F0DAB3B.601@windriver.com>
Date: Wed, 11 Jan 2012 10:31:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DA377.9090903@windriver.com>
	<CAFZh4h_0R_vt94Twh_Pm=7ED7XRpQ_ddo_+FN30TnDBC8wae_A@mail.gmail.com>
	<4F0DA9A5.7080907@communistcode.co.uk>
In-Reply-To: <4F0DA9A5.7080907@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jan 2012 15:31:18 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-11 10:24 AM, Jack Mitchell wrote:
> On 11/01/12 15:20, Brian Hutchinson wrote:
>> On Wed, Jan 11, 2012 at 9:57 AM, Bruce Ashfield
>> <bruce.ashfield@windriver.com>  wrote:
>>> It will. I sent patches recently to make that the preferred version
>>> in the master branch. Cherry picking that change would probably
>>> be all you would need.
>>>
>>>
>>>> 2.  Is the example for setting up for kernel modification in the
>>>> development manual still valid for Edison?
>>>
>>> Should be.
>>>
>> Would I get that change if I just did a git pull or do I have to do
>> something else?  I did a git pull to update my Edison checkout last
>> night realizing that I hadn't done one in a while and then ran a new
>> clean build and still ran into the same problem.  After triple
>> checking my work I figured it was time to post.
>>
>> Regards,
>>
>> Brian
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> I can chime in here. I am currently trying to get my Beagleboard running
> on the master branch, and it is pulling in kernel 3.0.12. However I
> cannot get it to boot, I get as far as here:
>
> *Texas Instruments X-Loader 1.5.0 (Jan 11 2012 - 14:06:12)
> Beagle xM
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> U-Boot 2011.06 (Jan 11 2012 - 14:15:11)
>
> OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C: ready
> DRAM: 512 MiB
> NAND: 0 MiB
> MMC: OMAP SD/MMC: 0
> *** Warning - readenv() failed, using default environment
>
> In: serial
> Out: serial
> Err: serial
> Beagle unknown 0x02
> No EEPROM on expansion board
> Die ID #0ed800229ff800000163810c15007017
> Hit any key to stop autoboot: 0
> SD/MMC found on device 0
> reading uEnv.txt
>
> ** Unable to read "uEnv.txt" from mmc 0:1 **
> reading uImage
>
> 3106580 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.0.12-yocto-standard+
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3106516 Bytes = 3 MiB
> Load Address: 80008000
> Entry Point: 80008000
> Verifying Checksum ... OK
> Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
>
> *Where it hangs and won't go any further. I am watching it over serial
> using a baud rate of 115200. It's a bit worrying that uBoot doesn't pick
> up the Beagle revision... I'm sure it used to when I was doing testing a
> few months ago.

Interesting. You can open a bug on this, boot and sanity/peripheral tests
were performed before I made the switch. So if this is broken, that's
a bug and we can look into it.

As you hinted, including the uboot build/information would be useful,
since perhaps that has gotten out of sync.

Cheers,

Bruce

>
> Cheers,
> Jack.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


