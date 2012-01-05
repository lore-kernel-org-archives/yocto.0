Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 154F8E0030D
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:10:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2012 08:10:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="92733178"
Received: from unknown (HELO helios.localnet) ([10.252.122.73])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2012 08:10:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Thu, 05 Jan 2012 16:10:29 +0000
Message-ID: <4172817.IXZKKJPEWx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.4; i686; ; )
In-Reply-To: <4F05C8C6.2010603@gmail.com>
References: <4F05C8C6.2010603@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: building Yocto on Fedora 14 vs. Ubuntu 11.10
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
X-List-Received-Date: Thu, 05 Jan 2012 16:10:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 05 January 2012 10:59:02 Jim Abernathy wrote:
> I'm finding differences between the number of task for building
> meta-cedartrail on ubuntu 11.10 vs. doing the same thing on Fedora 14
> and wondered if this is a problem.
> 
> On a clean build of core-image-sato, the first section has 63 tasks on
> Ubuntu 11.10, but 126 tasks on Fedora 14.  126 is the number I remember
> seeing for the first section of the build on other Sato builds.
> 
> Is this an issue? is this caused by the different development O/S's?

This is almost certainly due to the version of tar in Fedora 14 being "too 
old" such that it contains a bug in symlink handling - if it is then we just 
build tar-replacement-native and use that instead.

Nothing to worry about :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

