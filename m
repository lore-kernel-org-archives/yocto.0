Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA408E014F5
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 03:44:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 14 May 2013 03:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,670,1363158000"; d="scan'208";a="241299647"
Received: from unknown (HELO helios.localnet) ([10.255.12.153])
	by AZSMGA002.ch.intel.com with ESMTP; 14 May 2013 03:44:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
Date: Tue, 14 May 2013 11:44 +0100
Message-ID: <7913150.opP2ggRnDV@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
References: <CAFMfyzKYd7JWyzrKLBigCuZLtQeioyjhs2DAM8GvnXq9xGBanA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: lmsensors
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
X-List-Received-Date: Tue, 14 May 2013 10:44:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 14 May 2013 11:21:49 Satya Swaroop Damarla wrote:
> It has been a month I have been fighting with installing the package
> "lmsensors" and had no success till today.... I would really appreciate
> much help....
> 
> The background goes like this..
> 
> *bitbake lmsensors * works perfectly but when I add the package into the
> rootfs I get the following error
> 
> * Package lmsensors-config is not available, but is referred to by another
> package.*
> *| This may mean that the package is missing, has been obsoleted, or*
> *| is only available from another source*
> *| *
> *| Package lmsensors is not available, but is referred to by another
> package.*
> *| This may mean that the package is missing, has been obsoleted, or*
> *| is only available from another source*
> *| *
> *| E: Package 'lmsensors-config' has no installation candidate*
> *| E: Package 'lmsensors' has no installation candidate*
> *| ERROR: Function failed: do_rootfs (see
> /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-l
> inux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_rootfs.29976 for further
> information)*
> *ERROR: Task 7 (/home/damarla/yocto/poky/meta/recipes-graphics/images/
> core-image-skidata.bb, do_rootfs) failed with exit code '1'*
> *NOTE: Tasks Summary: Attempted 5210 tasks of which 4529 didn't need to be
> rerun and 1 failed.*
> *No currently running tasks (5210 of 5211)*
> *
> *
> *Summary: 1 task failed:*
> *  /home/damarla/yocto/poky/meta/recipes-graphics/images/
> core-image-skidata.bb, do_rootfs*
> *Summary: There was 1 WARNING message shown.*
> *Summary: There was 1 ERROR message shown, returning a non-zero exit code.*

Looking at the output of building the current lmsensors recipe in meta-oe 
master, the main "lmsensors" package is actually empty and thus is not 
produced; this is a bit annoying and should probably be fixed. However what I 
think you're supposed to do is instead install the components of lmsensors 
that you actually need. If you look at packages-split in the lmsensors work 
directory (or the lmsensors* packages in tmp/deploy/ipk) you'll see it 
produces the following, ignoring dbg/dev/doc/staticdev packages:

lmsensors-fancontrol
lmsensors-libsensors
lmsensors-pwmconfig
lmsensors-sensord
lmsensors-sensors
lmsensors-sensorsconfconvert
lmsensors-sensorsdetect

So I would suggest adding those of the above list that you need to your image 
instead of "lmsensors".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

