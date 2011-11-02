Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDAD0E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 09:38:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 02 Nov 2011 09:37:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,444,1315206000"; d="scan'208";a="32597637"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Nov 2011 09:37:42 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 02 Nov 2011 11:37:54 -0500
Message-ID: <1320251874.32216.4.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: meta-intel candidate branch for 1.1 edison point release
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
X-List-Received-Date: Wed, 02 Nov 2011 16:38:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

I've created a new meta-intel/edison-next branch to hold commits
intended for the upcoming 1.1 point release.

I'll be collecting candidate commits for a 1.1 point release there until
it's time to cut the 1.1 point release, and will pull those into edison
proper at that point, assuming we have agreement on the set of patches
in the branch.

Please let me know if you have any comments on this set or if you know
of any missing patches that should be added.

Thanks,

Tom

Here's the current set of commit descriptions for the commits in that
branch:

commit 59292a744ad1ea7875c0f2b7564c4ad74af2d68e
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Fri Oct 28 11:26:22 2011 -0500

    meta-crownbay: allow linux-yocto-rt to be used for crownbay
    
    The crownbay linux-yocto-rt .bbappend is missing settings needed for use
    with crownbay - this adds them.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit 3d78b56773943803f46c09f69e908506fff95b04
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Thu Oct 27 23:48:15 2011 -0500

    meta-fri2: allow linux-yocto-rt to be used for fri2-noemgd
    
    The fri2 linux-yocto-rt .bbappend is missing settings needed for use
    with fri2-noemgd - this adds them.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit 9b901b4df24c88795e2a188e070249ef5273a8e9
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Thu Oct 27 17:37:27 2011 -0500

    meta-crownbay: add linux-yocto-rt_3.0.bbappend
    
    commit 061f3187e8cbec70d5970928b6e8252cb0958f4a (meta-intel: move
    emgd-driver-bin_1.8 to common) somehow mistakenly removed the
    unrelated linux-yocto-rt_3.0.bbappend from meta-crownbay.  This adds
    it back.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit cc0a4df25eb1db45698574d781c13fd7ee2ddaa7
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Thu Oct 20 17:03:13 2011 -0500

    meta-fri2: README correction
    
    In the instructions for manually extracting the binaries from the EMGD
    Linux tarball, an additional step for removing the emgd_drv_video
    shared library is necessary; this adds it for fri2.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

commit b8f9910a39196bdbce37dea25f82538b144d72dd
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Thu Oct 20 17:01:39 2011 -0500

    meta-crownbay: README correction
    
    In the instructions for manually extracting the binaries from the EMGD
    Linux tarball, an additional step for removing the emgd_drv_video
    shared library is necessary; this adds it for crownbay.
    
    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>


The following changes since commit c3e12aa981e97261093abee05bb0301c35f54c23:
  Tom Zanussi (1):
        meta-emenlow: switch edison back to linux-yocto-2.6.37 kernel

are available in the git repository at:

  git://git.yoctoproject.org/meta-intel.git tzanussi/edison-next
  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=tzanussi/edison-next

Tom Zanussi (5):
  meta-crownbay: README correction
  meta-fri2: README correction
  meta-crownbay: add linux-yocto-rt_3.0.bbappend
  meta-fri2: allow linux-yocto-rt to be used for fri2-noemgd
  meta-crownbay: allow linux-yocto-rt to be used for crownbay

 meta-crownbay/README                               |    5 +++++
 .../linux/linux-yocto-rt_3.0.bbappend              |   20 ++++++++++++++++++++
 meta-fri2/README                                   |    9 +++++++++
 .../linux/linux-yocto-rt_3.0.bbappend              |    2 ++
 4 files changed, 36 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend




