Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65F394C80039
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 13:21:02 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 11:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,220,1291622400"; d="scan'208";a="639881477"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 23 Dec 2010 11:21:02 -0800
Received: from [10.255.14.97] (10.255.14.97) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 23 Dec 2010 12:21:01 -0700
Message-ID: <4D13A11C.2030004@intel.com>
Date: Thu, 23 Dec 2010 11:21:00 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <cover.1292951846.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1292951846.git.elizabeth.flanagan@intel.com>
Subject: Re: [PATCH 0/3] Consolidate Pull Requests for Autobuilder
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
X-List-Received-Date: Thu, 23 Dec 2010 19:21:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/21/2010 09:17 AM, Beth Flanagan wrote:
> Scott,
>
> This pull request updates the buildbot installer to support BuildBot 0.8.3, which was released yesterday, as well as updated build helper scripts and a new pokyABConfig.py which adds a swabber testing target,implements all current autobuilder build arches and lastly, implements sanity testing.
>
> The buildbot installer script has been re-written in python and an INSTALL file added to explain the new installation process. I've tested it on Ubuntu 10.10 and openSUSE 11.3, and would appreciate anyone who has a different system letting me know their experiences with it (good and bad).
>
> I've also incorporated a fix to poky-autobuild that sources the correct env script and added some missing build helper scripts, based off of what is actually on the autobuilder.
>
> -b
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: eflanagan/bb-0.8.3
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/bb-0.8.3
>
> Thanks,
>      Beth Flanagan<elizabeth.flanagan@intel.com>
> ---
>
>
> Beth Flanagan (3):
>    Upgrade to Buildbot 0.8.3: scripts/poky-setup-autobuilder
>    Adding new scripts to reflect a real autobuilder
>    Change to poky-autobuild to source correct file:
>
>   INSTALL                                          |   55 +++
>   README                                           |    6 +-
>   scripts/poky-autobuild                           |   39 ++-
>   scripts/poky-autobuild-cleanoutput               |    6 +-
>   scripts/poky-autobuild-copy-images               |  458 +++++++++++++++++++
>   scripts/poky-autobuild-generate-release-external |  220 +++++++++
>   scripts/poky-autobuild-generate-release-internal |  232 ++++++++++
>   scripts/poky-autobuild-generate-sources-tarball  |   54 +++
>   scripts/poky-autobuild-postprocess               |    6 +-
>   scripts/poky-autobuild-preamble                  |   58 +++
>   scripts/poky-autobuild-rename-release-images     |  128 ++++++
>   scripts/poky-autobuild-sanitytest                |   58 +++
>   scripts/poky-output-sort                         |  117 +++++
>   scripts/poky-preserve-work-dir                   |   26 +-
>   scripts/poky-setup-autobuilder                   |  514 +++++++++++++++-------
>   scripts/pokyABConfig.py                          |  469 +++++++++++++++-----
>   scripts/run-on-buildset-success                  |   11 +
>   17 files changed, 2154 insertions(+), 303 deletions(-)
>   create mode 100644 INSTALL
>   create mode 100755 scripts/poky-autobuild-copy-images
>   create mode 100755 scripts/poky-autobuild-generate-release-external
>   create mode 100755 scripts/poky-autobuild-generate-release-internal
>   create mode 100755 scripts/poky-autobuild-generate-sources-tarball
>   create mode 100755 scripts/poky-autobuild-preamble
>   create mode 100755 scripts/poky-autobuild-rename-release-images
>   create mode 100755 scripts/poky-autobuild-sanitytest
>   create mode 100755 scripts/poky-output-sort
>   create mode 100755 scripts/run-on-buildset-success

After a few iterations with Beth, I have now pulled this into 
poky-autobuilder master.

Thanks Beth!

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

