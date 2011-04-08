Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33B1C4C80044
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2011 12:06:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Apr 2011 10:06:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,324,1299484800"; d="scan'208";a="625632554"
Received: from unknown (HELO [10.255.13.36]) ([10.255.13.36])
	by orsmga002.jf.intel.com with ESMTP; 08 Apr 2011 10:06:48 -0700
Message-ID: <4D9F40A8.3070902@linux.intel.com>
Date: Fri, 08 Apr 2011 10:06:48 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Recipe maintainer-ship and distro_tracking_fields.inc
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
X-List-Received-Date: Fri, 08 Apr 2011 17:06:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



Yocto Project Contributors,

Please review and comment on this.

As we we move forward, we are trying to keep track of who is maintaining 
the recipes and what version tracking is, as not all upstream 
information can be tracked automatically, so we have been using a 
distro_tracking_fields.inc file located in meta/conf/distro/include.

This file is used not only for tracking version information, but also by 
the Package Database (http://packages.yoctoproject.org), so that people 
that use the Yocto Project they can see License and Version information 
via a web interface.

We will also use it to generate reminder emails as upstream packages are 
updated to update the recipes (if appropriate) or mark in the 
distro_track_fields.inc file that it should not be updated. By keeping 
the RECIPE_MAINTAINER information current, this will help to improve the 
quality and currentness of core recipe meta-data.

 From time to time recipe ownership changes, if you are interested in 
contributing to the Yocto Project recipes as part of core or other 
layers, then please take a look at the who the current maintainer is and 
let them know you would like to help.  When you do that and the current 
owner replies, please update the distro_tracking_fields.inc with your 
name as RECIPE_MAINTAINER.

As the Yocto Project wants to keep the to the most current stable 
release of the upstream projects, the maintainers will receive email 
during the development milestones reminding them to update their recipes 
as appropriate. This will also be tracked by the core maintainers, if a 
recipe is not updated in a timely manner, the core maintainers may 
update it directly. If the recipe maintainer is unable to continue 
updating their recipes beyond 1 release, the core maintainers may choose 
to re-assign the recipe, so the recipe does not become stale.

http://wiki.yoctoproject.org/wiki/Distro_Tracking

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


