Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC3F7E00509; Tue,  1 Nov 2016 13:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D046CE004F1
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 13:00:26 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP; 01 Nov 2016 13:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,433,1473145200"; d="scan'208";a="896570618"
Received: from kgonza2-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.158.24])
	by orsmga003.jf.intel.com with ESMTP; 01 Nov 2016 13:00:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Swapna.Gurumani@microchip.com
Date: Wed, 02 Nov 2016 09:00:21 +1300
Message-ID: <3107903.gd2QQnlAGG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<7991994.E07zp5lJ5X@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE761C@CHN-SV-EXMX05.mchp-main.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 20:00:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 01 Nov 2016 18:45:02 Swapna.Gurumani@microchip.com wrote:
> Every step I take close, I take 2 back :(
> My bb now looks like the one attached. I had to add each folder for
> FILES_${PN} contrary to your advice otherwise I got the following error:
> ERROR: crank-1.0-r2 do_package: QA Issue: crank: Files/directories were
> installed but not shipped in any package: /opt
>   /opt/crank
> Please set FILES such that these items are packaged. Alternatively if they
> are unneeded, avoid installing them or delete them within do_install.
> crank: 2 installed and not shipped files. [installed-vs-shipped]
> 
> 
> 
> I am now getting the following error:
> ERROR: crank-1.0-r2 do_install: Function failed: do_install (log file is
> located at
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon
> -poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457) ERROR: Logfile
> of failure stored in:
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon
> -poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457
> Log data follows:
> | DEBUG: Executing shell function do_install
> | cp: cannot stat
> | '/home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-n
> | eon-poky-linux-gnueabi/crank/1.0-r2/crank': No such file or directory
> | WARNING:
> | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-ne
> | on-poky-linux-gnueabi/crank/1.0-r2/temp/run.do_install.26457:1 exit 1 from
> | 'cp -a --no-preserve=ownership
> | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-ne
> | on-poky-linux-gnueabi/crank/1.0-r2/crank
> | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-ne
> | on-poky-linux-gnueabi/crank/1.0-r2/image/opt/' ERROR: Function failed:
> | do_install (log file is located at
> | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-ne
> | on-poky-linux-gnueabi/crank/1.0-r2/temp/log.do_install.26457)
> ERROR: Task 1082
> (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/recipes-qt/apps/cra
> nk_1.0.bb, do_install) failed with exit code '1' NOTE: Tasks Summary:
> Attempted 3806 tasks of which 3805 didn't need to be rerun and 1 failed. No
> currently running tasks (3034 of 4662)
> 
> Summary: 1 task failed:
>  
> /home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/recipes-qt/apps/cran
> k_1.0.bb, do_install Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> 
> 
> 
> Also if I look into the
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon-
> poky-linux-gnueabi/crank/1.0-r2 It is empty.

There's something strange going on here, because the path you have just given 
is ${WORKDIR} - and that shouldn't be able to be empty at this point. If 
nothing else there should be a "temp" directory under it containing logs if 
*any* tasks have run. Surely you have skipped out some steps between when it 
was working and now? I notice the tarball name changed - did you regenerate it 
or just rename it?

In any case, when debugging situations like this it helps to make a fresh 
start - run "bitbake -c clean crank" (you don't need -c cleansstate because 
being stuck at do_install you haven't got to any real sstate tasks yet). Then 
methodically run through each task - when do_unpack ran what got unpacked into 
${WORKDIR}? If that's as expected, what got put into ${D} (which is the 
"image" subdirectory under ${WORKDIR})? Does what's in ${D} match up with the 
layout you expect to be on the target? At any time you can use 
"bitbake -e crank | less" to inspect the value of variables. You can also see 
exactly what commands got run within the task by looking at the run.do_* files 
under "temp" in the workdir.

Also:

* That third line "install -m ..." you now have in do_install won't work and 
in any case isn't necessary since you are already copying that with the cp 
command.

* Based on what you've said earlier, your S value cannot be correct - it may 
not matter, but it might as well be fixed anyway. If the tarball unpacks a 
"crank" subdirectory then it should be set to "${WORKDIR}/crank".

* There's no need to set the PR value, in fact doing so only serves to keep 
changing ${WORKDIR} which will potentially get in the way of debugging, so I'd 
suggest not doing that.

* Setting DEPENDS isn't really doing you any good - DEPENDS is for build-time 
dependencies. You're only unpacking a tarball, you don't need any build-time 
dependencies to speak of. If you have runtime dependencies then set them in 
RDEPENDS_${PN} since that's where runtime dependencies need to be set.

* As another responder pointed out, the inherit of pkgconfig isn't needed - 
you don't need pkg-config for anything being done here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

