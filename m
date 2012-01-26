Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11263E00592
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 14:59:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2012 14:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116743940"
Received: from unknown (HELO [10.255.14.96]) ([10.255.14.96])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2012 14:59:08 -0800
Message-ID: <4F21DABC.3000007@linux.intel.com>
Date: Thu, 26 Jan 2012 14:59:08 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>
Subject: opkg-utils to move to git.yoctoproject.org
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
X-List-Received-Date: Thu, 26 Jan 2012 22:59:11 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

Currently opkg-utils is hosted on svn.openmoko.org, that host seems to 
be failing and is not a reliable upstream.  We have a copy of opkg-utils 
under git.yoctoproject.org (captured the last time svn.openmoko.org was 
up).  This move would also allow us to apply some pending patches.

We will make this change next week barring any major objections.


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


