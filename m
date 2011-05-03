Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 27F164C80A73
	for <yocto@yoctoproject.org>; Tue,  3 May 2011 11:00:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 May 2011 09:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,310,1301900400"; d="scan'208";a="741663031"
Received: from unknown (HELO helios.localnet) ([10.255.13.16])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2011 09:00:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Organization: Intel Corporation (UK)
To: yocto@yoctoproject.org
Date: Tue, 3 May 2011 17:00:42 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-8-generic-pae; KDE/4.6.2; i686; ; )
MIME-Version: 1.0
Message-Id: <201105031700.43005.paul.eggleton@linux.intel.com>
Subject: RFC: Package exclusion
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
X-List-Received-Date: Tue, 03 May 2011 16:00:45 -0000
Content-Type: Text/Plain;
  charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

As part of the 1.1 feature list I suggested a review of the 
INCOMPATIBLE_LICENSE and COMMERCIAL* package exclusion mechanisms we have 
within Poky. Below I've outlined my ideas and would appreciate any 
comments/additions/corrections.

==== Aims ==== 

 * Make error messages clear when user/dependencies have asked for something 
to be built that can't be due to restrictions

 * Ensure that exclusion system is reliable

====  Proposed implementation ==== 

 1) Ensure all documentation of LICENSE field value syntax is clear, concise 
and up-to-date (wiki and manual)

 2) Go through and audit all recipes LICENSE field values to ensure that they 
all conform to the specifications. This includes making sure that | (package 
may be used under one of a selection of licences) and & (recipe has mixed 
licences that apply to the code base, so conditions of all must be observed) 
are used correctly.

 3) bitbake/core changes:

 * LICENSE field checking must fully parse the field and understand the 
difference between | and &, and must not e.g. mark Qt as being GPLv3 only.

 * Make the LICENSE validity checking more strict (given recipes have been 
audited and rules are clear after above)

 * Don't exclude any recipes at parse time - simply record all excluded 
recipes and their runtime provides in a blacklist which also includes flags 
indicating the reason for blacklisting

 * Ensure all excluded licences in INCOMPATIBLE_LICENSE are valid (e.g. catch 
GPL3 as apposed to GPLv3) - if not, error out

 * Check when calculating dependencies if anything is scheduled to be built 
that is on the blacklist - if any are, gather all of them up and then stop and 
list them in an error message along with reason and depchain for each one

 * Check when constructing the rootfs if anything in the runtime provides 
blacklist is going to be included - if so, error out


Some further possible extensions:

 * Possibly apply similar logic to COMPATIBLE_MACHINE?

 * Replace COMMERCIAL* with some more generic exclusion mechanism that allows 
the reason to be defined as part of the exclusion list?

 * As a helper for non-en_US users, fail on parse if user defines any of the 
*LICENSE* variables as *LICENCE*? (we definitely don't want the build to 
continue and just ignore this as the user might not realise what has happened)


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

