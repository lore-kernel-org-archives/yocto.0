Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D45514C80039
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 11:36:20 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Dec 2010 09:36:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="689377185"
Received: from eflanlinux.jf.intel.com (HELO [10.7.201.149]) ([10.7.201.149])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 09:36:13 -0800
Message-ID: <4D10E599.90301@intel.com>
Date: Tue, 21 Dec 2010 09:36:25 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20101125 SUSE/3.0.11 Lightning/1.0b1
	Thunderbird/3.0.11 ThunderBrowse/3.3.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Autobuilder Backup Cron <elizabeth.flanagan@intel.com>
Subject: [PATCH 3/3] Change to poky-autobuild to source correct file:
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
X-List-Received-Date: Tue, 21 Dec 2010 17:36:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

A change to poky-init-build-env in poky master broke the autobuilder.
Switching this to source poky-init-build-env instead of
poky-env-internal.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/poky-autobuild |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-autobuild b/scripts/poky-autobuild
index 5ea61bb..882df97 100755
--- a/scripts/poky-autobuild
+++ b/scripts/poky-autobuild
@@ -32,7 +32,7 @@ cd $CURRDIR
 echo "Changed to $CURRDIR"

 BDIR="build"
-. ./scripts/poky-env-internal
+. ./scripts/poky-init-build-env
 POSTPROCESS=`which poky-autobuild-postprocess`

 if [ "xcomplete" = "x$1" ]; then
-- 1.7.1

