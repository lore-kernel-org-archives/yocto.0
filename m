Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB85E004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 03:18:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Sep 2012 03:17:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,379,1344236400"; d="scan'208";a="218509897"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2012 03:17:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>,
	Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Date: Thu, 06 Sep 2012 11:17:53 +0100
Message-ID: <4865264.UZoJkHz8Ho@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 10:18:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 16 August 2012 00:30:15 Elvis Dowson wrote:
> Hi,
>       I followed these steps to setup and configure icecc and yocto, for
> performing a distributed build between two Ubuntu 12.04 64-bit machines,
> with one machine configured as the scheduler and daemon, and the other with
> only the icecc daemon.
> 
> I run a bitbake core-image-minimal, but get no tasks running on the second
> machine. Processor and CPU utilization is nearly zero, and both machines
> iceccd.log and icecc_scheduler.log are zero bytes.
> 
> Nothing happens when I run the yocto build, and no compilation tasks get
> distributed to the second machine in the build cluster. I am able to ping
> them both, however.
> 
> Step 01.00: Install required packages for performing a distributed build.
> 
> Step 01.01: Install icecc on all the machines.
> 
> $ sudo apt-get install icecc
> 
> On the scheduler machine, type the following commands:
> 
> $ sudo gedit /etc/default/icecc
> 
> # Defaults for icecc initscript
> # sourced by /etc/init.d/icecc
> START_ICECC="true"
> START_ICECC_SCHEDULER="true"
> 
> Configure the build network name:
> 
> $ sudo /etc/init.d/icecc stop
> 
> $ sudo gedit /etc/init.d/icecc.conf
> 
> #
> # Identification for the network the scheduler and daemon run on.
> # You can have several distinct icecc networks in the same LAN
> # for whatever reason.
> #
> # ICECC_NETNAME=""
> ICECC_NETNAME="YoctoBuildNetwork"
> 
> #
> # If the daemon can't find the scheduler by broadcast (e.g. because
> # of a firewall) you can specify it.
> #
> # ICECC_SCHEDULER_HOST=""
> ICECC_SCHEDULER_HOST="eos"
> 
> 
> Start the scheduler with:
> 
> $ sudo /etc/init.d/icecc start
> 
> Make sure the service starts at boot time:
> 
> $ sudo update-rc.d icecc defaults
> 
> Step 02.00: Configure yocto for distributed compilation.
> 
> Step 02.01: Modify local.conf
> 
> #
> # Parallelism Options
> #
> # These two options control how much parallelism BitBake should use. The
> first # option determines how many tasks bitbake should run in parallel: #
> BB_NUMBER_THREADS = "8"
> #
> # The second option controls how many processes make should run in parallel
> when # running compile tasks:
> #
> PARALLEL_MAKE = "-j 14"
> 
> # Setup yocto to use icecc for distributed compilation.
> INHERIT += "icecc"
> ICECC_PATH = "/usr/bin/icecc"
> ICECC_ENV_EXEC =
> "/tool/yocto/poky/build/tmp/work/x86_64-linux/icecc-create-env-native-0.1-r
> 2/icecc-create-env" ICECC_USER_CLASS_BL = " native"
> 
> Copy the icecc-create-env script to the build output staging folder, by
> running the  icecc-create-env-native.bb recipe.
> 
> $ cd /tool/yocto/poky;source oe-init-build-env build
> $ bitbake icecc-create-env-native
> 
> The icecc-create-env script will automatically be copied to the build output
> staging folder.
> 
> Step 02.02: Start a bit bake build.
> 
> $ bitbake core-image-minimal
> 

Elvis, did you have any further luck with this?

Otherwise, Dmitry, any suggestions? I'm assuming you made use of icecc.bbclass 
since you made some changes to it a while ago...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

