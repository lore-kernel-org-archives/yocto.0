Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by mx.groups.io with SMTP id smtpd.web12.8600.1619071459580949832
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:04:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.120, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: C7q4tGco7y/PTEBXzas+6xA8jtLrGPArT/O6OBYFPhJtKg9noHY5tc1QvyHAayYxRvrzxeB15p
 30oRLDR6am0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="193713232"
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="scan'208";a="193713232"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 23:04:19 -0700
IronPort-SDR: sm3b2dEoJth54vkfiy6UVYuqxA/3jqqbvIfR0MaLGby+O3wIvfQMonk8zFlKDpqZEzpFSfQYDG
 pBw16al/YQpg==
X-IronPort-AV: E=Sophos;i="5.82,241,1613462400"; 
   d="scan'208";a="617570007"
Received: from fkong1-mobl2.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.249.69.141])
  by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 23:04:16 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: yocto@lists.yoctoproject.org,
	richard.purdie@linuxfoundation.org
Cc: ross.burton@arm.com
Subject: [yocto-autobuilder2][PATCH] schedulers.py: add hardknott to release selector
Date: Thu, 22 Apr 2021 14:04:08 +0800
Message-Id: <20210422060408.8552-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Keep meta-arm at master since there's no hardknott there yet.

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 schedulers.py | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 8479290..920daab 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -169,7 +169,7 @@ def parent_scheduler(target):
             name="branchselector",
             default="master",
             label="Release Shortcut Selector",
-            choices=["master", "master-next", "mut", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
+            choices=["master", "master-next", "mut", "hardknott", "gatesgarth", "dunfell", "zeus", "warrior", "thud", "sumo", "rocko", "pyro", "morty"],
             selectors={
               'master': {
                 'branch': 'master',
@@ -202,6 +202,16 @@ def parent_scheduler(target):
                 'branch_meta-mingw': 'master',
                 'branch_oecore': 'master',
               },
+              'hardknott': {
+                'branch': 'hardknott',
+                'branch_poky': 'hardknott',
+                'branch_bitbake': '1.50',
+                'branch_meta-arm': 'master',
+                'branch_meta-gplv2': 'hardknott',
+                'branch_meta-intel': 'hardknott',
+                'branch_meta-mingw': 'hardknott',
+                'branch_oecore': 'hardknott',
+              },
               'gatesgarth': {
                 'branch': 'gatesgarth',
                 'branch_poky': 'gatesgarth',
-- 
2.30.2

