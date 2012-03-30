Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FED5E004D2
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 10:20:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2UHKYPZ027074
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Mar 2012 10:20:34 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 30 Mar 2012 10:20:35 -0700
Message-ID: <4F75EB5C.3020909@windriver.com>
Date: Fri, 30 Mar 2012 13:20:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Andrea Galbusera <gizero@gmail.com>
References: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
In-Reply-To: <CAC+thW2bpSsoHOC2feOEowp1POB2zFG4eSDiiKs6xa7xP+qwDg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Suspicious warnings while beta testing yocto 1.2
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
X-List-Received-Date: Fri, 30 Mar 2012 17:20:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-30 01:18 PM, Andrea Galbusera wrote:
> While beta testing yocto 1.2 I'm building for beagleboard with:
>
> OE Build Configuration:
> BB_VERSION        = "1.15.1"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.1+snapshot-20120330"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "<unknown>:<unknown>"
>
> I see warnings complaining that some options set by the BSP are not
> valid for the kernel being built. This is the first time I noticed and
> it's confusing me. After some search I find a past conversation where
> it was suggested that warnings like this for a Yocto maintained BSP
> should be considered bugs. Can anyone explain this? Build is
> completing successfully. Not yet tested the kernel on actual hardware.
> Later I will see if something similar also happens in edison not.

There are a few outstanding items for 1.2 as part of M4 .. one of
them is squashing the remaining configuration values that are
causing warnings.

Cheers,

Bruce

>
> Here is the log:
>
> This BSP sets 15 invalid/obsolete kernel options.
> These config options are not offered anywhere within this kernel.
> The full list can be found in your workspace at:
> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b75141096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cfg/yocto/standard/beagleboard/invalid.cfg
>
> This BSP sets 50 kernel options that are possibly non-hardware related.
> The full list can be found in your workspace at:
> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b75141096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cfg/yocto/standard/beagleboard/specified_non_hdw.cfg
>
> WARNING: There were 12 hardware options requested that do not
>           have a corresponding value present in the final ".config" file.
>           This probably means you aren't getting the config you wanted.
> The full list can be found in your workspace at:
> /home/gizero/Documents/research/yocto-1.2-beta/yp-beta-build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-3.0.23+git1+e559129b4a6f39f68b75141096b2d516cf7a7f35_1+fccd4e4041454f16f1e7a25569ec530eaa1bf89e-r4/linux/meta/cfg/yocto/standard/beagleboard/mismatch.cfg
>
> Waiting a second to make sure you get a chance to see this...
>
> If useful I can provide the list of options as per given log files.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


