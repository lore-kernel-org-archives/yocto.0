Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69EC14C80FE5
	for <yocto@yoctoproject.org>; Wed, 18 May 2011 11:34:07 -0500 (CDT)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4IGX8HI015331;
	Wed, 18 May 2011 09:33:09 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 18 May 2011 12:32:59 -0400
Message-Id: <cover.1305736112.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org,
	saul.wold@intel.com
Subject: [PATCH 0/2] linux-yocto: fix gcc 4.6.0 compilation failures
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
X-List-Received-Date: Wed, 18 May 2011 16:34:07 -0000

Repeating the patch contents here, since that's the
whole story:
    
Fixes bug: [YOCTO #1035]
Fixes bug: [YOCTO #1036]

Fixes gcc 4.6.0 compliation issues by importing the upstream change:

Author: Michal Marek <mmarek@suse.cz>
Date:   Mon May 2 12:13:01 2011 +0000

    kbuild: Fix passing -Wno-* options to gcc 4.4+

    Starting with 4.4, gcc will happily accept -Wno-<anything> in the
    cc-option test and complain later when compiling a file that has some
    other warning. This rather unexpected behavior is intentional as per
    http://gcc.gnu.org/PR28322, so work around it by testing for support of
    the opposite option (without the no-). Introduce a new Makefile function
    cc-disable-warning that does this and update two uses of cc-option in
    the toplevel Makefile.

    Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
    Signed-off-by: Michal Marek <mmarek@suse.cz>
    Tested-by: Stephen Rothwell <sfr@canb.auug.org.au>
    Integrated-by: Bruce Ashfield <bruce.ashfield@windriver.com>

:100644 100644 0ef00bd... 1d8e7e9... M  Documentation/kbuild/makefiles.txt
:100644 100644 7bd863e0.. 74bac80... M  Makefile
:100644 100644 ed2773e... ba25c44... M  scripts/Kbuild.include


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/460
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/460

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (2):
  linux-yocto: fix gcc 4.6.0 compilation failures
  linux-yocto/meta-yocto: fix gcc 4.6.0 compilation failures

 .../recipes-kernel/linux/linux-yocto_git.bbappend  |   10 +++++-----
 meta/recipes-kernel/linux/linux-yocto_git.bb       |   12 ++++++------
 2 files changed, 11 insertions(+), 11 deletions(-)


