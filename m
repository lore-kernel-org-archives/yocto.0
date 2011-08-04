Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9FBA4C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 19:50:51 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Aug 2011 17:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,313,1309762800"; d="scan'208";a="35577217"
Received: from unknown (HELO [10.255.14.173]) ([10.255.14.173])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2011 17:50:51 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 03 Aug 2011 17:50:45 -0700
In-Reply-To: <1312418434.31410.8.camel@scimitar>
References: <4E39E30B.3080206@am.sony.com> <1312418434.31410.8.camel@scimitar>
X-Mailer: Evolution 3.0.2 (3.0.2-3.fc15) 
Message-ID: <1312419051.31410.10.camel@scimitar>
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
X-List-Received-Date: Thu, 04 Aug 2011 00:50:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-03 at 17:40 -0700, Joshua Lock wrote:
> On Wed, 2011-08-03 at 17:08 -0700, Tim Bird wrote:
> > Hi all,
> > 
> > I'm not sure where to report this, but I tried again to build
> > Yocto, without success.
> > 
> > I downloaded poky-bernard-4.0.tar.bz2, and followed instructions
> > for installing it.
> > 
> > I am using 'MACHINE ?= qemuarm' and doing 'bitbake poky-image-sato'
> > 
> > bitbake error messages follow below.
> > 
> > The first error is a failure to fetch the kernel, and a follow-on
> > failure to do a git-clone on the kernel.  I'm behind a firewall and
> > this is a perennial problem for me.  Is there another way to get this
> > code?  If I do a git-clone on a remote machine and copy it over to
> > my development host, where do I put it?  (Why did the first http-based
> > fetch fail, anyway?)  Any help would be appreciated.
> 
> We seem to be missing the kernel tarball on our sources mirror... Let me
> try and chase that.

Chased and caught: 

joshual@scimitar:~/mess/31
$ wget
http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
--2011-08-03 17:50:18--
http://autobuilder.yoctoproject.org/sources/git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz
Resolving autobuilder.yoctoproject.org... 140.211.169.118
Connecting to autobuilder.yoctoproject.org|140.211.169.118|:80...
connected.
HTTP request sent, awaiting response... 200 OK
Length: 449232265 (428M) [application/x-gzip]
Saving to: `git2_git.pokylinux.org.linux-yocto-2.6.37.tar.gz.1'

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


