Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AACBE0146C
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 16:25:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Apr 2013 16:25:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,512,1363158000"; d="scan'208";a="321139699"
Received: from wrk.jf.intel.com (HELO localhost) ([10.7.202.81])
	by orsmga002.jf.intel.com with ESMTP; 19 Apr 2013 16:25:13 -0700
Date: Fri, 19 Apr 2013 16:22:26 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
Message-ID: <20130419232226.GB941@wrk>
References: <20130419230440.DCDE7E0146E@yocto-www.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <20130419230440.DCDE7E0146E@yocto-www.yoctoproject.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble patching a package
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
X-List-Received-Date: Fri, 19 Apr 2013 23:25:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 19, 2013 at 11:04:20PM +0000, Saridakis, Dean   (US SSA) wrote:
> Seems like this ought to be pretty easy based on the docs - Not sure what I've got wrong. I've added an append to my layer w/
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> SRC_URI += "0001-yada-yada.patch"
> 
> # Comment out while debugging
> #PRINC := "${@int(PRINC) + 1}"
> 
> The append file is in BBFILES. The patch file is in the same dir as the append file (using a files sub-dir didn't help). Been doing "bitbake -c patch -f pkg" to test/debug. (pkg is canutils, which is autconf based)

Based on the path you're using, the patch needs to be in a subdir
relative to your append file. Specifically, the subdir needs to have
the same name as the package.

-Kevin
> 
> Ran into a couple thing I didn't understand trying to debug. I tried adding
> 
> do_patch_append() {
>     bbnote "Got here "
> }
> 
> to log my append file was getting picked up, but the parse failed.
> 
> Didn't get errors if the patch file name was wrong. The log only has a git ls-remote (which seems a little odd).
> 
> Any help would be appreciated.
> 
> Dean
> 

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


