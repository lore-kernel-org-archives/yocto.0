Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A02B3E01466
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 07:26:02 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Mar 2013 07:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,911,1355126400"; d="scan'208";a="276145476"
Received: from unknown (HELO helios.localnet) ([10.255.13.191])
	by azsmga001.ch.intel.com with ESMTP; 26 Mar 2013 07:25:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vanveerdeghem, Simon" <Simon.Vanveerdeghem@barco.com>
Date: Tue, 26 Mar 2013 14:25:58 +0000
Message-ID: <1755052.MPJKo0IPHY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <8D433CD511BE4646B47F8B31C900818E0CB1C53C@kndmex01.barco.com>
References: <8D433CD511BE4646B47F8B31C900818E0CB1C53C@kndmex01.barco.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Shared DL_DIR with other users
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
X-List-Received-Date: Tue, 26 Mar 2013 14:26:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Simon,

On Tuesday 26 March 2013 14:37:36 Vanveerdeghem, Simon wrote:
> We are using Yocto with a couple of users, to prevent that our build
> server has duplicates of downloads, we share the DL_DIR.
> 
> But we have problems with permissions. When a user run yocto, it will
> checkout sources, or download tar files with permissions 644 with the
> username of the user who is running yocto.
> 
> When another user will do a cleanall of a bitbake recipe, yocto will
> remove the tarball and the svn workingcopy, but because the permissions
> aren't 777 It cannot remove all the files (yocto doesn't throw an error
> here).
> 
> When that other user will do a fetch of thqt recipe, yocto will checkout
> the svn directory, it will leave as good as clean because it says
> internally "Skipped ." (yocto doesn't throw an error here) then it wil
> take a tarball of it, again the tarball has only a directory named of
> the checked out module, but have no sources. (yocto doesn't throw an
> error here)
> 
> When yocto will building the sources it will fail because the tar was
> clean, and there is nothing to build.
> 
> The rootcause of this problem is that the shared download directory only
> use 644. (We can workaround this with the .profile (we can set in the
> .profile a standard permission mask, but then you always use that mask,
> something we don't want)

It's likely that sharing DL_DIR directly between multiple users is not a
heavily tested scenario. One way around it which is fairly widely used 
though is to set up a local mirror shared by all of the build machines
and keep DL_DIR separate on each machine. There is some information on
how to do that here:

https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_create_my_own_source_download_mirror_.3F

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

