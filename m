Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69E1F4C8090C
	for <yocto@yoctoproject.org>; Fri, 25 Feb 2011 17:44:41 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 15:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="891406241"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2011 15:44:40 -0800
Message-ID: <4D683EE6.6040009@intel.com>
Date: Fri, 25 Feb 2011 15:44:38 -0800
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7 ThunderBrowse/3.3.4
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 1/1] [BUG:650] Fix LICENSE parsing: license.bblcass
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
X-List-Received-Date: Fri, 25 Feb 2011 23:44:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


LICENSE parsing was missing some cases. Fixed

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 meta/classes/license.bbclass |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 97d4e4e..4e3cd1c 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -66,7 +66,8 @@ python do_populate_lic() {
     # I'm sure someone has written a logic parser for these fields, but if so, I don't know where it is.
     # So what I do is just link to every license mentioned in the license field.

-    for license_type in license_types.replace('&', '').replace('+', '').replace('&', '').replace('|', '').replace('(',
'').replace(')', '').split():
+    for license_type in (' '.join(license_types.replace('&', ' ').replace('+', ' ').replace('|', ' ')
+                         .replace('(', ' ').replace(')', ' ').replace(';', ' ').replace(',', ' ').split())):
         if os.path.isfile(os.path.join(generic_directory, license_type)):
             gen_lic_dest = os.path.join(bb.data.getVar('LICENSE_DIRECTORY', d, True), "common-licenses")
             try:
-- 
1.7.1

