Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B27E7E00BD5; Tue,  6 Jun 2017 08:50:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4ED0E00BD5
	for <yocto@yoctoproject.org>; Tue,  6 Jun 2017 08:50:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jun 2017 08:50:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,306,1493708400"; d="scan'208";a="96202089"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga002.jf.intel.com with ESMTP; 06 Jun 2017 08:50:47 -0700
Message-ID: <1496764773.26945.125.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Zhuoqun Cheng <czq@bu.edu>
Date: Tue, 06 Jun 2017 10:59:33 -0500
In-Reply-To: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
References: <CACHUKC+vL6KRQq0r24T8px1SteB4o76gFtVG-CccY2vYDm6ytA@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The best way to change target architecture
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
X-List-Received-Date: Tue, 06 Jun 2017 15:50:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2017-06-06 at 08:42 -0400, Zhuoqun Cheng wrote:
> Hi Yocto Experts,
> 
> 
> I'm fairly new to Yocto and I've already tried my best to search for
> answers, but not happy with what I found.
> 
> 
> So here's the situation I've got: 
> 
> 
> I'm using yocto to build the intel aero board image, following this
> link:
> https://github.com/intel-aero/meta-intel-aero/wiki/Quickstart-Guide#yocto-for-intel-aero
> 
> 
> 
> Everything worked fine, until I wanted to change the target
> architecture from the default 64-bit x86 to 32-bit x86. What I did is
> three steps:
> 1. do a clean: bitbake -c clean intel-aero-image
> 2. change configuration, from "require
> conf/machine/intel-corei7-64.conf" to "require
> conf/machine/intel-core2-32.conf" in the file
> "meta-intel-aero/conf/machine/intel-aero.conf"
> 3. do a build: bitbake intel-aero-image
> 
Did you change the MACHINE var?



> 
> Unfortunately, I got loads of errors, like "ERROR: linux-yocto-4.4.60
> +gitAUTOINC+2cc78e92f4-r0 do_package_qa: QA Issue: Architecture did
> not match (3 to 62) on
> work/core2-32-intel-common-poky-linux/linux-yocto/4.4.60+gitAUTOINC
> +2cc78e92f4-r0/packages-split/kernel-module-gspca-kinect/lib/modules/4.4.60-yocto-standard/kernel/drivers/media/usb/gspca/gspca_kinect.ko [arch]
> "
> 
> 
> Then I tried deleting all the files in the packages-split directory
> and rebuilding. It passed building the kernel (even though failed
> because some other package's arch mismatch), but those file I deleted
> never got generated again! Now I'm a bit worried.
> 
> 
> So I guess my question is:
> What is the correct procedures to follow to reuse a poky folder
> (already built once) for a different target architecture? I'm happy to
> accept any links and suggested readings.
> 
> 
> Thanks a lot!
> Tom.
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



