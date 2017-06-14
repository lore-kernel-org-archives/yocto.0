Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C62B1E00B53; Wed, 14 Jun 2017 01:23:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99379E00B18
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 01:23:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 14 Jun 2017 01:23:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,340,1493708400"; d="scan'208";a="1182281006"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2017 01:23:09 -0700
Date: Wed, 14 Jun 2017 11:22:59 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20170614082258.GA36175@mbabyjoh-desk.ger.corp.intel.com>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
MIME-Version: 1.0
In-Reply-To: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 08:23:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Paul,

On Tue, Jun 13, 2017 at 04:24:38PM -0700, Paul D. DeRocco wrote:
> I have a working system image for my 32-bit Atom-based hardware, based on
> Morty. My application is a C++ program that runs as a systemd service.
> I've always built the application outside Yocto, using the Eclipse CDT and
> whatever GCC was on my Ubuntu system. It gets installed into my hardware
> on a separate partition, but runs fine because my build host and target
> are both x86 machines.
> 
> In order to try out the much more recent compiler in the Yocto SDK (and to
> prepare for converting to a different architecture in the future), I built
> a standard SDK by using do_populate_sdk on my image. I managed to modify
> my project to use the toolchain and libraries in the sysroot in the SDK,
> and it successfully produces an executable. But when I copy this into my
> system, it barfs because there is no libstdc++.o (and perhaps other
> libraries) on my system. And there is no libstdc++.a in the SDK.

Had a similar experience with respect to the availability of static libraries
in the SDK.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5347

One way to fix this will be to include required static libraries in the image
before building SDK - eg: for glibc static development libraries:

IMAGE_INSTALL_append = " glibc-staticdev"

http://www.yoctoproject.org/docs/2.3/mega-manual/mega-manual.html#sdk-building-an-sdk-installer

> Why would the SDK, built against a particular image, not include the same
> shared libraries as that image? I noticed that when I built an SDK under
> core-image-minimal, it didn't include libasound, but that was included
> when I built it under my own image which includes ALSA. So it's obviously
> paying attention to what's in the image. So is there some package I need
> to include in my image to complete the set of libraries to match what's in
> the SDK?
> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com

Best Regards,
Maxin

