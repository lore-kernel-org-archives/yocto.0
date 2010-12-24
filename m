Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 022804C80050
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 23:28:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2010 21:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,222,1291622400"; d="scan'208";a="690395918"
Received: from unknown (HELO [10.255.14.41]) ([10.255.14.41])
	by orsmga001.jf.intel.com with ESMTP; 23 Dec 2010 21:28:33 -0800
Message-ID: <4D142F80.3090308@intel.com>
Date: Thu, 23 Dec 2010 21:28:32 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6E7@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder upgrade to Buildbot 0.8.3
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
X-List-Received-Date: Fri, 24 Dec 2010 05:28:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/23/2010 11:45 AM, Flanagan, Elizabeth wrote:
> All,
>
> I've now finished the upgrade of the autobuilder repo to include buildbot 0.8.3. I've rewritten the installer and updated a bunch of build helper files. I wanted to take a few moments to explain some of the changes regarding installation.
>
> The big change is the upgrade to buildbot 0.8.3. Buildbot now keeps the master and slave code in different tarballs, so I've split up the installer to allow people to install either a master, a slave or both.
>
> I've also added some command line args to help people in configuration of a local BB. To see the long form of usage:
>
> git clone git://git.pokylinux.org/poky-autobuilder
> cd poky-autobuilder
> ./scripts/poky-setup-autobuilder --help
>
> The quickest way to set up the autobuilder for developer use, is to do:
>
> ./scripts/poky-setup-autobuilder both
> cd ~/poky-master
> make start
> cd ~/poky-slave
> make start
> open a browser to http://localhost:8010
>
Ok, so what is the User and Password for?  I don't really see any 
explanation for them.

I am trying different options for setting locations and seem to have run 
into trouble.  It would be nice to have a general option to just sent 
bbHome to something other than home directory to move everything to a 
different drive.

Sau!


> If for some reason the bb uses too many cpu cycles, you *should* be able to do:
>
> nice -n 20 make start
>
> I haven't tested this though so YMMV.
>
> This creates a minimal pokyABConfig.py within ~/poky-master. There is a longer more complex pokyABConfig.py within scripts called pokyABConfig.py.example but for most developers, the default should suffice. If you need to turn off some buildsets in pokyABConfig.py, just edit it and comment out the build steps you don't need and issue a
>
> make reconfig
>
> If something went funny (ie you don't see your changes) tail out the twistd.log file for debug info.
>
> I've tested this on opensuse and ubuntu, but would appreciate any feedback, especially for folks doing more complicated installs (multiple slave builders, etc)
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


