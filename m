Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB370E0073F
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 05:34:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7UCYlVc026771
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Aug 2013 05:34:47 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 30 Aug 2013 05:34:45 -0700
Message-ID: <52209159.8070705@windriver.com>
Date: Fri, 30 Aug 2013 08:34:33 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: arun kumar <arunkr.linux@gmail.com>
References: <CABG0-3wCYaJ2Xxt3djtpBrgAW3BBAwU3BcpqewDBQ8GHoM=4vw@mail.gmail.com>
In-Reply-To: <CABG0-3wCYaJ2Xxt3djtpBrgAW3BBAwU3BcpqewDBQ8GHoM=4vw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: build stuck at cloning GIT Repo.
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
X-List-Received-Date: Fri, 30 Aug 2013 12:34:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-30 02:42 AM, arun kumar wrote:
> My YOcto Project build, The first build is stuck here
> --------------------------------------------------------------------------------------------------
> Loading cache: 100%
> |#################################################################################################################|
> ETA: 00:00:00
> Loaded 1181 entries from dependency cache.
>
> Build Configuration:
> BB_VERSION = "1.19.1"
> BUILD_SYS = "x86_64-linux"
> NATIVELSBSTRING = "openSUSE-project-12.3"
> TARGET_SYS = "arm-poky-linux-gnueabi"
> MACHINE = "qemuarm"
> DISTRO = "poky"
> DISTRO_VERSION = "1.4+snapshot-20130827"
> TUNE_FEATURES = "armv5 thumb dsp"
> TARGET_FPU = "soft"
> meta
> meta-yocto
> meta-yocto-bsp = "master:b2ff1add530b1fec2fb7f385227a03db47015c37"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: multiple providers are available for runtime
> libasound-module-bluez (bluez4, bluez5)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match
> libasound-module-bluez
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> Currently 1 running tasks (1587 of 5917):
> *0: linux-yocto-3.8.13+gitAUTOINC+e7f42a416a_aa76cc2840-r4.2 do_fetch
> (pid 2006)*
> *--------------------------------------------------------------------------------------------------------------*
> **
> and has been so for the past 4-5 Tries, The size of the GIT2 Directory
> seems to increase for sometine,
> The maximum it has gone is 681 MB after which it stopped growing in
> size, i checked wether my Internet was down, but it was all fine as i
> started an OpenWRT build along with it and it was downloading its
> packages smoothly.
> Is there some problem with the GIT server on the Project Side or my ISP ?
> How can i know?

Have you tried cloning the repository manually ? It'll be easier to
pick up on unexpected exits, with the error message from local or
remote being clear.

Cheers,

Bruce

>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


