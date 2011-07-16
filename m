Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D277A4C800C1
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 19:10:31 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2011 17:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,211,1309762800"; d="scan'208";a="28617273"
Received: from unknown (HELO [10.255.14.32]) ([10.255.14.32])
	by fmsmga002.fm.intel.com with ESMTP; 15 Jul 2011 17:10:31 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Jul 2011 17:10:26 -0700
In-Reply-To: <888DA70AE496A645A106B23AEC7F2A99B465F1B7@irsmsx505.ger.corp.intel.com>
References: <888DA70AE496A645A106B23AEC7F2A99B465F1B7@irsmsx505.ger.corp.intel.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1310775031.2309.16.camel@scimitar>
Mime-Version: 1.0
Cc: mark.d.gray@intel.com
Subject: Re: yocto build fails
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
X-List-Received-Date: Sat, 16 Jul 2011 00:10:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-15 at 11:44 +0100, Gray, Mark D wrote:
> I have been trying to build on Ubuntu 11.0.4. I think I have followed
> the online documentation correctly. I have also followed the wiki
> page, which is required for me, to set up the proxy servers. However,
> the build is still failing for me. This is for Bernard-5.0.1. I get
> the following message
<snip>
> | NOTE: fetch
> http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> 
> | Cloning into bare
> repository /home/green/mdgray/yocto/poky-5.0.1-build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37...
> 
> |  nc: read failed (0/3): Broken pipe

This would lead me to make a guess at your proxy settings not being
configured correctly for git with nc.


> On closer inspection, the file
> http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz is unavailable in the repo. I did a search and I could only find http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz.bad
> 

Looks like we have a bad mirrored tarball. :-/

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


