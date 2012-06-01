Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2120CE00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 08:46:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Jun 2012 08:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150445944"
Received: from unknown (HELO helios.localnet) ([10.255.12.84])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2012 08:46:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: openembedded-core@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
Date: Fri, 01 Jun 2012 16:45:59 +0100
Message-ID: <5190700.Ufj2u3sllZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
MIME-Version: 1.0
Subject: Buildhistory
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
X-List-Received-Date: Fri, 01 Jun 2012 15:46:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all

[Sorry for the cross-post but I thought this would be worth talking about in 
all three of the lists. By way of discussions and other threads some of you 
may already be aware of buildhistory - if so you can skip this message.]

With buildhistory.bbclass (which incorporates and extends functionality 
previously provided in OE-Classic via testlab.bbclass) we now have the ability 
to record some useful information about the output of a build, and commit this 
information into a git repository so that changes over time can be examined 
and highlighted. The information recorded includes the content and size of 
each package, content and size of images (at the package and file level), etc.

A side-benefit of buildhistory is that it can also be used just to get 
information about the content of your image including dependency graphs, so 
you can figure out exactly what pulled in some particular package.

Further information can be found here:

 https://wiki.yoctoproject.org/wiki/Buildhistory

If you are doing a recipe upgrade or making a change to the metadata that 
might have wide-ranging effects on the output, then you should consider using 
buildhistory to determine whether or not there are any issues.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

