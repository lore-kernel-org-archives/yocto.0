Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F47CE00559
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 12:55:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Nov 2011 12:55:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,439,1315206000"; d="scan'208";a="69411315"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by azsmga001.ch.intel.com with ESMTP; 01 Nov 2011 12:55:34 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
Date: Tue, 01 Nov 2011 14:55:41 -0500
Message-ID: <1320177341.2400.65.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Tue, 01 Nov 2011 19:55:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-01 at 12:48 -0700, James Abernathy wrote:
> Just to clear up the basics, Prior to following Appendix A verbatim, I
> did the following
> 1. install prerequisites from GS guide
> 2. git clone git://git.yoctoproject.org/poky
> 3. cd poky
> 4. git clone git://git.yoctoproject.org/meta-intel.git
>  
> I did not install the poky-extras. I assumed it only had to be
> installed if you installed the kernel source for modification like in
> Appendix b
>  

Yeah, normally, assuming you're using an existing kernel branch.  But
you didn't get a build error for the kernel, so I'm assuming that's the
case.

Tom

> Jim a
> 
> 
> 
>  
> On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com>
> wrote:
>         Hi,
>         
>         On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:
>         > I tried to duplicate the Yocto Project Decelopment Manual
>         Appendix A
>         > build of a Crownbay NOEMGD image,  no changes just dulicate
>         the
>         > instructions.  This is using the latest Yocto 1.1.  I did
>         get a long
>         > way down the line, but had a fatal error in the last 2
>         steps.
>         >
>         > The only change I had to make was related to A.5.2.4.  The
>         commit
>         > string for the SRCREV_meta_pn was different on the
>         > git.yoctoproject.org/cgit/cgi for the Meta commit so I used
>         what I
>         > found online.  The first section of 126 task completed
>         without error.
>         > The next section of 4394 tasks failed on 4393.  Not sure if
>         the error
>         > is obvious, but I wanted to run it by someone. Console error
>         log
>         > below:
>         >
>         
>         
>         Hmm, not sure what's going on here - I'm sure this example was
>         verified
>         several times, but just to make sure, what you're doing is
>         going through
>         'Appendix A. BSP Development Example' verbatim and getting
>         this?
>         
>         The SRCREVs in either case look ok for this, so that shouldn't
>         be the
>         problem...
>         
>         But let me go over the steps myself and see what I come up
>         with - will
>         let you know either way...
>         
>         Tom
>         
>         
>         >  NOTE: package core-image-sato-1.0-r0: task do_bootimg:
>         Started
>         > ERROR: Function 'build_boot_bin' failed
>         >
>         (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418 for further information)
>         > ERROR: Logfile of failure stored
>         >
>         in: /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
>         > Log data follows:
>         > | install: cannot stat
>         >
>         `/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage': No
>         > such file or directory
>         > | ERROR: Function 'build_boot_bin' failed
>         >
>         (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418 for further information)
>         > NOTE: package core-image-sato-1.0-r0: task do_bootimg:
>         Failed
>         > ERROR: Task 9
>         > (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
>         > do_bootimg) failed with exit code '1'
>         > ERROR:
>         '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
>         > failed
>         > jim@jim-ubuntu-10:~/poky/yocto-build$
>         >
>         
>         
>         
> 



