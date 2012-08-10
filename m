Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F439E01473
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 12:04:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Aug 2012 12:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,747,1336374000"; d="scan'208";a="184761177"
Received: from unknown (HELO localhost) ([10.255.12.203])
	by orsmga002.jf.intel.com with ESMTP; 10 Aug 2012 12:03:48 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 10 Aug 2012 14:03:02 -0500
Message-Id: <3f222a81c08d194b28edfa5a7262689a947a75d3.1344623733.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
References: <c157f1f265310327265af210da4e9af4b23c67d3.1344623733.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344623733.git.tom.zanussi@intel.com>
References: <cover.1344623733.git.tom.zanussi@intel.com>
Subject: [PATCH 13/19] yocto-bsp: generate default properties even if json specified
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
X-List-Received-Date: Fri, 10 Aug 2012 19:04:03 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Users seem to want to specify incomplete property sets when using json
input.  Allow this by generating default properties before the
user-specified properties are applied; the user will then get the
defaults for any unspecified values, and avoid cryptic backtraces.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

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
1.7.9.5


