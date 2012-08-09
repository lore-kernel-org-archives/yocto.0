Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95590E01449
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 14:01:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Aug 2012 14:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,742,1336374000"; d="scan'208";a="205686753"
Received: from unknown (HELO localhost) ([10.255.12.213])
	by fmsmga002.fm.intel.com with ESMTP; 09 Aug 2012 14:01:36 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	scott.a.garman@intel.com
Date: Thu,  9 Aug 2012 16:01:03 -0500
Message-Id: <072649009da73d11f03dd2affae063ad5acc39a7.1344545782.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
References: <24bc7bda6a0a13a71fe9e638db5a9c3052574ca2.1344545782.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1344545782.git.tom.zanussi@intel.com>
References: <cover.1344545782.git.tom.zanussi@intel.com>
Subject: [PATCH 13/14] yocto-bsp: generate default properties even if json specified
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
X-List-Received-Date: Thu, 09 Aug 2012 21:01:43 -0000

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


