Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1378BE01410
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 14:15:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Apr 2013 14:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,458,1363158000"; d="scan'208";a="293697399"
Received: from wrk.jf.intel.com (HELO localhost) ([10.7.202.72])
	by orsmga001.jf.intel.com with ESMTP; 11 Apr 2013 14:15:27 -0700
Date: Thu, 11 Apr 2013 14:12:50 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
Message-ID: <20130411211247.GA15702@wrk>
References: <20130411210547.7F1C9E01496@yocto-www.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <20130411210547.7F1C9E01496@yocto-www.yoctoproject.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Thu, 11 Apr 2013 21:15:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 11, 2013 at 09:05:37PM +0000, Saridakis, Dean   (US SSA) wrote:
> Think I've followed the example in the manual correctly. My append file is pretty simple:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"

It looks like you forgot the colon at the end of the path.
Try this:
  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

-Kevin

> SRC_URI += "file://can.cfg"
> 
> I'm doing this in a layer on top of a yocto-based SDK.  Don't think it should matter, but the underlying kernel recipe has:
> 
> do_configure_prepend() {
>                 # copy desired defconfig so we pick it up for the real kernel_do_configure
>                 cp ${KERNEL_DEFCONFIG} ${B}/.config
> }
> 
> Wasn't able to make much sense of the log: lots of "DEBUG: Removing manifest ..." and then some kcfonig output?
> Any advice/suggestions?
> 
> Thanks,
> 
> Dean
> 

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


