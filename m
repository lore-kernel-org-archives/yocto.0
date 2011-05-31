Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0D8E84C80334
	for <yocto@yoctoproject.org>; Tue, 31 May 2011 03:44:45 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 May 2011 01:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,296,1304319600"; d="scan'208";a="11216274"
Received: from unknown (HELO helios.localnet) ([10.255.13.73])
	by fmsmga001.fm.intel.com with ESMTP; 31 May 2011 01:44:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 May 2011 09:44:42 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
References: <87C8C51E47F55D47ABF9BB39687792ED41FA2C@POCITMSEXMB01.LntUniverse.com>
	<4ED62A07621E9C41B8CB2F608655EF45F5C1@POCITMSEXMB01.LntUniverse.com>
In-Reply-To: <4ED62A07621E9C41B8CB2F608655EF45F5C1@POCITMSEXMB01.LntUniverse.com>
MIME-Version: 1.0
Message-Id: <201105310944.42555.paul.eggleton@linux.intel.com>
Subject: Re: FW: Problem to generate u-boot image
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
X-List-Received-Date: Tue, 31 May 2011 08:44:45 -0000
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit

On Friday 27 May 2011 09:17:45 Nikhil Kamath wrote:
> $ bitbake u-boot_git

When specifying a target for bitbake you can't include the version (the 
underscore _ and everything after it). Poky will take care of selecting the 
version for you; in this case there is only one. So you should run the 
following instead:

$ bitbake u-boot

FYI for future reference if you do have multiple version choices and want to 
force one of them to be selected that is not the default, you need to add this 
somewhere (initially local.conf, but it may become part of your custom distro 
if you later create one):

PREFERRED_VERSION_packagename = "1.0"

(Assuming packagename is the name of the package and 1.0 is the version you 
want to select.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

