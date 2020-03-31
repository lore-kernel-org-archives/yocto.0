Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.6500.1585651694403689486
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 03:48:18 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: wmFREfbL3Dx3acSBg4TmUMU9uCzgcbPtFLJAlvoFDLFC4OKmJgBJLtE/7mmA1keOb6VPUV2i6B
 AbCkw2K373PQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 03:48:14 -0700
IronPort-SDR: dWAZxXsGCnek6I859eAWX5THC6Z+nRu+K3mHx7OxgdsQHvST3Sl6d4JnUF6YzXpDZJ01xtR5rM
 UhYL48qeEkgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="252195523"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga006.jf.intel.com with ESMTP; 31 Mar 2020 03:48:14 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 2/5] qemu: update recipe version
Date: Tue, 31 Mar 2020 18:53:58 +0800
Message-Id: <20200331105401.23726-2-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331105401.23726-1-naveen.kumar.saini@intel.com>
References: <20200331105401.23726-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../qemu/{qemu_4.1.%.bbappend => qemu_4.2.%.bbappend}             | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/qemu/{qemu_4.1.%.bbappend => qemu_4.2.%.bbappend} (100%)

diff --git a/recipes-devtools/qemu/qemu_4.1.%.bbappend b/recipes-devtools/qemu/qemu_4.2.%.bbappend
similarity index 100%
rename from recipes-devtools/qemu/qemu_4.1.%.bbappend
rename to recipes-devtools/qemu/qemu_4.2.%.bbappend
-- 
2.17.1

