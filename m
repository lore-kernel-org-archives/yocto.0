Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAC53E00724; Wed,  7 May 2014 12:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66CDE006EF
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 12:37:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s47Jb5vd005529
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 May 2014 12:37:05 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 7 May 2014 12:37:05 -0700
Message-ID: <536A8B5E.2080409@windriver.com>
Date: Wed, 7 May 2014 15:37:02 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andreas Galauner <andreas@galauner.de>, <yocto@yoctoproject.org>
References: <536A5249.9030907@galauner.de>
In-Reply-To: <536A5249.9030907@galauner.de>
Subject: Re: linux-yocto custom device tree in overlay
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
X-List-Received-Date: Wed, 07 May 2014 19:37:11 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-05-07 11:33 AM, Andreas Galauner wrote:
> Hi Yocto Community,
>
> I'm currently trying to build a custom image for a beaglebone black for
> which I need to enable the can-controllers on the SoC. I managed to
> create an overlay which already deals with building a few tools for CAN
> communication, I created a kernel config snippet for linux-yocto to
> enable CAN-support in the kernel and it already works with a USB
> transceiver.
>
> Now I need to modify the device tree for the board to enable the SoC
> controllers. How do I put the device tree into my overlay? I tried
> several ways, but the kernel buildsystem doesn't seem to find the dts
> file to be compiled.
>
> That definitely doesn't work:
>> SRC_URI += "file://can.cfg \
>>              file://am335x-boneblack-cansniff.dts"
>> KERNEL_DEVICETREE = "am335x-boneblack-cansniff.dtb"
>
> Any ideas? Google wasn't too fruitful either.
> With non-yocto kernels I always put the device tree into the whole path
> like 'git/arch/arm/boot/dts/mydevicetree.dts'  but that also doesn't
> seem to work on linux-yocto because it uses another layout in its
> working directory.

I use device trees all the time with linux-yocto based kernels, and
what you have above is fundamentally correct, except (as you noted)
the dts is going only be in ${WORKDIR} and not somewhere the kernel
build can find it.

So you can either patch it into the kernel, or do a bbappend with
that copies it into the source tree 
(linux/arch/arm/boot/dts/mydevicetree.dts).

Cheers,

Bruce

>
> I'd rather not want to create my own git repo for linux-yocto like I did
> for another project where I needed the same.
>
> Thanks for your help,
> - Andy
>


