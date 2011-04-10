Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C02FE4C80050
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2011 22:45:59 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2011 20:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,331,1299484800"; d="scan'208";a="731312269"
Received: from unknown (HELO [10.255.12.211]) ([10.255.12.211])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2011 20:45:59 -0700
Message-ID: <4DA127F6.3010006@intel.com>
Date: Sat, 09 Apr 2011 20:45:58 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <inpi0q$617$1@dough.gmane.org>
In-Reply-To: <inpi0q$617$1@dough.gmane.org>
Subject: Re: Poky release is 5.0 "Bernard" confusion
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
X-List-Received-Date: Sun, 10 Apr 2011 03:46:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2011 05:04 AM, Robert Berger wrote:
> Hi,
>
> Can someone please tell me if there is a tag in
> git://git.pokylinux.org/poky.git which corresponds to the official
> release tarball and what it is?
>
> What puzzles me is that if you check out bernard-5.0 from the git
> repository it does not correspond to
> http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
>
> OK, it does not seem to be anything seriously different between the two:
>
> #       modified:   README.hardware
> #       modified:   documentation/adt-manual/adt-prepare.xml
> #       modified:   documentation/yocto-project-qs/yocto-project-qs.xml
> #       modified:   meta/conf/distro/poky.conf
>
> ... but you might want to synchronize since some people prefer to work
> from git and others from the tarball.
>
> As an example the README.hardware found in the tarball suggests to build
> and update u-boot for the Freescale MPC8315E-RDB, which does not exist
> in the git repo.

This suggests to me that your local git repository isn't up to date. The 
tag has been moved at least once since it was created, and it sounds 
like your repository is behind the most recent move of the tag.

Note: if you use git fetch --all, that will fetch new tags but doesn't 
update old ones that have moved - you need to explicitly run git fetch 
--tags.

HTH,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

