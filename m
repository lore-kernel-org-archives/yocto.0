Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A87E004B2
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 09:20:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 Aug 2011 09:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,317,1309762800"; 
   d="scan'208";a="4165203"
Received: from unknown (HELO [10.255.14.155]) ([10.255.14.155])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Aug 2011 09:17:38 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 04 Aug 2011 09:17:32 -0700
In-Reply-To: <4E3A1039.2080108@am.sony.com>
References: <4E39E30B.3080206@am.sony.com> <1312418434.31410.8.camel@scimitar>
	<1312419051.31410.10.camel@scimitar> <4E3A1039.2080108@am.sony.com>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1312474658.2069.3.camel@scimitar>
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
X-List-Received-Date: Thu, 04 Aug 2011 16:20:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-03 at 20:21 -0700, Tim Bird wrote:
> On 8/3/2011 5:50 PM, Joshua Lock wrote:
> > On Wed, 2011-08-03 at 17:40 -0700, Joshua Lock wrote:
> >> On Wed, 2011-08-03 at 17:08 -0700, Tim Bird wrote:
> >>> Hi all,
> >>>
> >>> I'm not sure where to report this, but I tried again to build
> >>> Yocto, without success.
> >>>
> >>> I downloaded poky-bernard-4.0.tar.bz2, and followed instructions
> >>> for installing it.
> >>>
> >>> I am using 'MACHINE ?= qemuarm' and doing 'bitbake poky-image-sato'
> >>>
> >>> bitbake error messages follow below.
> >>>
> >>> The first error is a failure to fetch the kernel, and a follow-on
> >>> failure to do a git-clone on the kernel.  I'm behind a firewall and
> >>> this is a perennial problem for me.  Is there another way to get this
> >>> code?  If I do a git-clone on a remote machine and copy it over to
> >>> my development host, where do I put it?  (Why did the first http-based
> >>> fetch fail, anyway?)  Any help would be appreciated.
> >> We seem to be missing the kernel tarball on our sources mirror... Let me
> >> try and chase that.
> > Chased and caught:
> >
> > joshual@scimitar:~/mess/31
> > $ wget
> > http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> > --2011-08-03 17:50:18--
> > http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
> > Resolving autobuilder.yoctoproject.org... 140.211.169.118
> > Connecting to autobuilder.yoctoproject.org|140.211.169.118|:80...
> > connected.
> > HTTP request sent, awaiting response... 200 OK
> > Length: 449232265 (428M) [application/x-gzip]
> > Saving to: `git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz.1'
> Thanks very much.  I'll give it another try.
> 
> I've visited the "behind a proxy" help page before.  I guess I should 
> have checked that for an update before asking.
>   -- Tim

We don't mind people asking :-)

Let us know how you get on!

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


