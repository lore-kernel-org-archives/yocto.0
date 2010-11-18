Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3F894C80A74
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:44:11 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 21:44:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="574990500"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 21:44:10 -0800
Date: Thu, 18 Nov 2010 13:13:02 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20101118051302.GA17596@kyu3-hedt>
References: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
	<4CE4B536.7020802@linux.intel.com> <4CE4B9DC.9050003@intel.com>
	<4CE4BB39.1060709@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4CE4BB39.1060709@linux.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
Subject: Re: BKM on add SRC_URI MD5 and SHA256 checksum
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
X-List-Received-Date: Thu, 18 Nov 2010 05:44:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Nov 17, 21:35, Saul Wold wrote:
> On 11/17/2010 09:30 PM, Scott Garman wrote:
> >On 11/17/2010 09:10 PM, Saul Wold wrote:
> >>On 11/17/2010 06:32 PM, Yu, Ke wrote:
> >>>Hi Distro folks:
> >>>
> >>>As Saul suggest to add SRC_URI MD5 and SHA256 checksum when we
> >>>upgrade the recipes, here is a simple how-to:
> >>>
> >>>Two entry is needed for checksum, take
> >>>meta/recipes-extended/tar/tar_1.23.bb as example:
> >>>SRC_URI[md5sum] = "41e2ca4b924ec7860e51b43ad06cdb7e"
> >>>SRC_URI[sha256sum] =
> >>>"c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36"
> >>>
> >>Also, a clarification, these values should go at the END of the file,
> >>which I believe is the OE Style on this.
> >
> >The reason you see many OE files with the checksums at the end of the
> >file is that at one point a member of the OE community wrote a script to
> >append the values to a ton of recipes and then checked it in.
> >
> Can we borrow that script?  That's what I would be doing also!
> 
> If you know where it is, it would save some of the work I need to do.

Yes, in this case, distro people would better not to add checksum info during the recipes upgradtion. This will save upgrade effort, and also simplify the script, in that the script don't need to check if the checksum already add or not.

Regards
Ke

> 
> Sau!
> 
> >I would think that keeping the SRC_URI fields relatively close to each
> >other makes more logical sense. But I'm not going to get religious about
> >it.
> >
> >Scott
> >
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

