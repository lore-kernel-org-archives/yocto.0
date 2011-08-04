Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CF2C4C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 19:40:35 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Aug 2011 17:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,313,1309762800"; d="scan'208";a="34913120"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by azsmga001.ch.intel.com with ESMTP; 03 Aug 2011 17:40:34 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 03 Aug 2011 17:40:29 -0700
In-Reply-To: <4E39E30B.3080206@am.sony.com>
References: <4E39E30B.3080206@am.sony.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1312418434.31410.8.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 00:40:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-03 at 17:08 -0700, Tim Bird wrote:
> Hi all,
> 
> I'm not sure where to report this, but I tried again to build
> Yocto, without success.
> 
> I downloaded poky-bernard-4.0.tar.bz2, and followed instructions
> for installing it.
> 
> I am using 'MACHINE ?= qemuarm' and doing 'bitbake poky-image-sato'
> 
> bitbake error messages follow below.
> 
> The first error is a failure to fetch the kernel, and a follow-on
> failure to do a git-clone on the kernel.  I'm behind a firewall and
> this is a perennial problem for me.  Is there another way to get this
> code?  If I do a git-clone on a remote machine and copy it over to
> my development host, where do I put it?  (Why did the first http-based
> fetch fail, anyway?)  Any help would be appreciated.

We seem to be missing the kernel tarball on our sources mirror... Let me
try and chase that.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


