Received: from mga14.intel.com (mga14.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2357.1575284695016860916
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 03:04:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Dec 2019 03:04:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; 
   d="scan'208";a="411723486"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga006.fm.intel.com with ESMTP; 02 Dec 2019 03:04:54 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 02/13] qemu: updated version to bbappend latest bb
Date: Mon,  2 Dec 2019 19:08:38 +0800
Message-Id: <20191202110849.31494-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202110849.31494-1-naveen.kumar.saini@intel.com>
References: <20191202110849.31494-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../qemu/{qemu_2.8.%.bbappend => qemu_4.1.%.bbappend}             | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/qemu/{qemu_2.8.%.bbappend => qemu_4.1.%.bbappend} (100%)

diff --git a/recipes-devtools/qemu/qemu_2.8.%.bbappend b/recipes-devtools/qemu/qemu_4.1.%.bbappend
similarity index 100%
rename from recipes-devtools/qemu/qemu_2.8.%.bbappend
rename to recipes-devtools/qemu/qemu_4.1.%.bbappend
-- 
2.17.1

