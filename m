Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 552014C810D8
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 21:01:38 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 19:01:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1613373"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 19:01:37 -0700
Message-Id: <8b4476e51e73f3f54d989fa2750fb80469b0c0f6.1305250702.git.liping.ke@intel.com>
In-Reply-To: <cover.1305250702.git.liping.ke@intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
Old-Date: Thu, 12 May 2011 22:38:22 +0800
Date: Fri, 13 May 2011  9:50:29 +0800
To: yocto@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 2/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Fri, 13 May 2011 02:01:38 -0000

From: Liping Ke <liping.ke@intel.com>

Data Retrive methods will be reused by Extra Cache Data fields.
It is independent Class methods for data retrieving.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 bitbake/lib/bb/cache.py |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/cache.py b/bitbake/lib/bb/cache.py
index f9d2e5f..82712ec 100644
--- a/bitbake/lib/bb/cache.py
+++ b/bitbake/lib/bb/cache.py
@@ -83,7 +83,7 @@ recipe_fields = (
 )
 
 
-class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
+class RecipeRetrieve():
     __slots__ = ()
 
     @classmethod
@@ -117,6 +117,7 @@ class RecipeInfo(namedtuple('RecipeInfo', recipe_fields)):
     def getvar(cls, var, metadata):
         return metadata.getVar(var, True) or ''
 
+class RecipeInfo(namedtuple('RecipeInfo', recipe_fields), RecipeRetrieve):
     @classmethod
     def make_optional(cls, default=None, **kwargs):
         """Construct the namedtuple from the specified keyword arguments,
-- 
1.7.0.4


