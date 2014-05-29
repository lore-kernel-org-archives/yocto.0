Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADB5DE00B68; Thu, 29 May 2014 10:08:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D176FE00A2F
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 10:08:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 May 2014 10:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,935,1392192000"; d="scan'208";a="546851633"
Received: from unknown (HELO [10.255.12.174]) ([10.255.12.174])
	by fmsmga002.fm.intel.com with ESMTP; 29 May 2014 10:08:09 -0700
Message-ID: <53876979.1020100@linux.intel.com>
Date: Thu, 29 May 2014 10:08:09 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: 'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: HEADS-UP: Master now has GCC 4.9 as default
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
X-List-Received-Date: Thu, 29 May 2014 17:08:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

We have been testing with GCC 4.9 in master_under_test for sometime now 
and it's been passing local testing and sanity testing on the 
autobuilder.  Since we have the final fix for a PPC ICE issue in place 
now, we are moving to GCC 4.9 as the default in master for the 1.7 release.

Please be aware if this if you find some package failing unexpectedly.

Thanks to Khem and other for this effort!

-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


