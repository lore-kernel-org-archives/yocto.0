Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1443AE013DB
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 13:22:17 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Aug 2012 13:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="178470807"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by azsmga001.ch.intel.com with ESMTP; 08 Aug 2012 13:22:15 -0700
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	yocto@yoctoproject.org
Date: Wed,  8 Aug 2012 15:21:44 -0500
Message-Id: <8100bbd93eebdc0204c3ef21811733c8c2e3ef53.1344456875.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
References: <c6411c0bc1db4ef705f918f80efc139042d46d55.1344456875.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344456875.git.tom.zanussi@intel.com>
References: <cover.1344456875.git.tom.zanussi@intel.com>
Subject: [PATCH 13/13] yocto-bsp: generate default properties even if json specified
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
X-List-Received-Date: Wed, 08 Aug 2012 20:22:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Users seem to want to specify incomplete property sets when using json
input.  Allow this by generating default properties before the
user-specified properties are applied; the user will then get the
defaults for any unspecified values, and avoid cryptic backtraces.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index af90e91..9d16b19 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1245,10 +1245,10 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
 
     gen_program_header_lines(program_lines)
 
+    gen_initial_property_vals(input_lines, program_lines)
+
     if properties:
         gen_supplied_property_vals(properties, program_lines)
-    else:
-        gen_initial_property_vals(input_lines, program_lines)
 
     gen_program_machine_lines(machine, program_lines)
 
-- 
1.7.4.1


