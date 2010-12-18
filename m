Return-Path: <saul.wold@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A48C4C80039
	for <yocto@yoctoproject.org>; Sat, 18 Dec 2010 17:58:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Dec 2010 15:58:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,195,1291622400"; d="scan'208";a="363623872"
Received: from unknown (HELO [10.255.13.86]) ([10.255.13.86])
	by azsmga001.ch.intel.com with ESMTP; 18 Dec 2010 15:58:10 -0800
Message-ID: <4D0D4A91.30001@intel.com>
Date: Sat, 18 Dec 2010 15:58:09 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E2@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6E2@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder changes and Milestone2
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
X-List-Received-Date: Sat, 18 Dec 2010 23:58:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/18/2010 10:14 AM, Flanagan, Elizabeth wrote:
> All,
>
> This morning I stopped the autobuilder and fixed a few scripts that caused our first milestone build to not generate a source release tarball. I also removed a few unneeded sdk targets from milestone-internal and fixed the CURRENT linking issue. I'll have these all packaged up and ready to pull into the poky-autobuilder repo next week but I wanted to go through the changes before I left for the weekend (so I don't forget what I did :) )
>
> The first change was with poky-autobuild-generate-sources-tarball. The tarball generation failed due to git trying to archive a hardcoded branch (master). This script now takes an optional third arg of $BRANCH. If the third arg isn't set, it defaults to 'master'. This should fix the source tarball generation.
>
> The second change was to poky-autobuild-generate-release. This script now takes an optional third arg of 'current', which causes it to just create a CURRENT symlink to the latest release directory. I want to remove this functionality from this script as issuing a 'current' doesn't actually generate a release and the functionality should be extracted and put in it's own script. It was just a convenient place to put it for now.
>
> I also removed all the non-IA arch  sdk builds from milestone-internal. Building these happens on milestone-external and is not needed.
>
> M2 build 2 is now running and judging from the last build, milestone-external should be done around 12 noon PST tomorrow and milestone-internal finished around 8am PST.
>
> If you have any questions or concerns, I'll be checking email intermittently this weekend.
>
> -b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
Beth,

Thanks for getting this kicked off over the weekend.

Sau!


