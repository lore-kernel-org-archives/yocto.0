Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E73BBE00CC4; Mon, 31 Oct 2016 19:00:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4049E00C9B
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 19:00:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 31 Oct 2016 19:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,577,1473145200"; d="scan'208";a="1078757557"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by fmsmga002.fm.intel.com with ESMTP; 31 Oct 2016 19:00:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Swapna.Gurumani@microchip.com
Date: Tue, 01 Nov 2016 15:00:42 +1300
Message-ID: <4177938.GHPXVAbNun@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
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
X-List-Received-Date: Tue, 01 Nov 2016 02:00:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Swapna,

On Tue, 01 Nov 2016 01:17:18 Swapna.Gurumani@microchip.com wrote:
> Hi, I have a tar file on my local drive and I want to untar this and copy it
> to my rootfilesystem image. Please find attached the .bb recipe I am using.
> When I run bitbake for this recipe, my build breaks with the following
> error: ERROR: crank-1.0-r0 do_install: Function failed: do_install (log
> file is locate at
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neon
> poky-linux-gnueabi/crank/1.0-r0/temp/log.do_install.16738) ERROR: Logfile of
> failure stored in:
> /home/swapna/workspace/work/yocto/poky/buid-atmel/tmp/work/cortexa5hf-neon-
> poky-linux-gnueabi/crank/1.0-r0/temp/log.do_intall.16738
> Log data follows:
> | DEBUG: Executing shell function do_install
> | make: *** No rule to make target 'install'.  Stop.
> | WARNING:
> | /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5f-neo
> | n-poky-linux-gnueabi/crank/1.0-r0/temp/run.do_install.16738:1 exit 2 from
> | make
> | INSTALL_ROOT=/home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/
> | crtexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/image install' ERROR:
> | Function failed: do_install (log file is located at
> | /home/swapna/worksace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf-neo
> | n-poky-linux-gnueabi/crak/1.0-r0/temp/log.do_install.16738)
> ERROR: Task 1095
> (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/recipe-qt/apps/cran
> k_1.0.bb, do_install) failed with exit code '1' NOTE: Tasks Summary:
> Attempted 3563 tasks of which 3562 didn't need to be rerunand 1 failed. No
> currently running tasks (3056 of 4701)

You say that this is a tarball that you want to untar into the image, but 
inheriting qmake5 and setting DEPENDS suggests that there's more to it than 
that.

As for the failure, it's hard to say without seeing what's been unpacked, but 
perhaps the .pro file in this project doesn't actually have any install 
directives needed to create an install target in the Makefile? If that's the 
case you'll need to install the files "manually" within do_install using 
install and/or cp commands.

A couple of other notes:

* You can simply set FILES_${PN} to "/opt/crank" here, no need to list each 
file unless you have more than one package and you want to split the files 
among them.

* Is this really MIT licensed, or should the LICENSE in fact be "CLOSED"? Then 
you wouldn't need to set LIC_FILES_CHKSUM either. (I'm assuming this is closed 
source software you're packaging).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

