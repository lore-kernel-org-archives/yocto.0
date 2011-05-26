Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B97A94C80228
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 22:03:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2011 20:03:49 -0700
X-ExtLoop1: 1
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by orsmga002.jf.intel.com with ESMTP; 25 May 2011 20:03:48 -0700
From: Ke Liping <liping.ke@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 26 May 2011 10:51:59 +0800
Message-Id: <cover.1306376361.git.liping.ke@intel.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 0/4][Image Creator]Add mulitple extra cache fields request support
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
X-List-Received-Date: Thu, 26 May 2011 03:03:50 -0000

From: Liping Ke <liping.ke@intel.com>

The series of patch are for mplementing multiple extra cache fields
request support.If user needs to request extra cache fields besides
CoreRecipeInfo fields, just add a new XXXRecipeInfo class definition
as Image Creator UI Hob Does.
For implementing this new feature, we refactory current cache code,
remove namedtuple and define corresponding class for dynamical cache
fields support per different cache usage request.

Liping Ke (4):
  Refactory Current Cache implementation
  Introduce extra cache class for image creator
  Introduce new param caches_array into Cache impl.
  Implement multiple extra cache fields request support

 bitbake/lib/bb/cache.py       |  532 ++++++++++++++++++++++-------------------
 bitbake/lib/bb/cache_extra.py |   54 ++++
 bitbake/lib/bb/cooker.py      |   70 ++++--
 bitbake/lib/bb/shell.py       |    2 +-
 bitbake/lib/bb/ui/hob.py      |    2 +
 5 files changed, 396 insertions(+), 264 deletions(-)
 create mode 100644 bitbake/lib/bb/cache_extra.py


