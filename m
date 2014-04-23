Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8512FE006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 04:41:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Apr 2014 04:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,911,1389772800"; d="scan'208";a="526069665"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.45])
	by orsmga002.jf.intel.com with ESMTP; 23 Apr 2014 04:41:38 -0700
Date: Wed, 23 Apr 2014 14:41:37 +0300
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20140423114137.GD20375@lpalcu-linux>
References: <534C0316.4070409@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <534C0316.4070409@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: PR server doesn't always work?
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
X-List-Received-Date: Wed, 23 Apr 2014 11:41:44 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gary,

Sorry for the late reply. It could be possible that the packages index
files are not re-generated when you run 'bitbake package-index'.
Depending on the PM you use, can you please try to remove the index
files in all the directories in tmp/deploy/(ipk|deb|rpm)? So, before
"Rebuild package database (bitbake package-index)" step, remove the
index files.

Does it work after that?

laurentiu

On Mon, Apr 14, 2014 at 09:47:34AM -0600, Gary Thomas wrote:
> I'm using a local PR server and for the most part, it works great!
> No more messing about with PR and PRINC and ...
> 
> However, I have a situation where it doesn't do what I expect.
> Here's my scenario:
>   * Build some package X
>   * Rebuild package database (bitbake package-index)
>   * Update package database on target
>   * Install package X on target
>   * Update the RRECOMMENDS_${PN} in the recipe and rebuild.
>     I can see that the package is updated - everything from
>     do_package onwards is updated.
>   * Rebuild package database (bitbake package-index)
>   * Update package database on target
>   * Try to install/update package X.  I'm told that it is up
>     to date.
> 
> I can see that the package _was_ updated on the build host even
> if the PR value was not changed because if I remove package X
> and reinstall it, the new RRECOMMENDS_${PN} packages are also
> being installed.
> 
> Am I missing something?  Shouldn't this work and the PR value
> be bumped by the PR server, even if all that happened was the
> list of recommendations was changed?
> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

