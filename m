Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web10.5872.1621922821418538521
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 May 2021 23:07:01 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.43, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 4ZoWc2MSCctIbK4I4+uyYBVWG6QirqbZxFx7VY2kOOZ/1aKGpLzwDqdmvg+CEkjZ7PUVou730P
 OZ1O8h1mY2UQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="287685238"
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; 
   d="scan'208";a="287685238"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2021 23:06:52 -0700
IronPort-SDR: EvFb0NGNYs546zpskFStVqRxUMxRa+hEUVDfJcuXJt5g9IGzu1egJ7/ZplZRY5wj6VzqewjKaQ
 ZAWUvyDc9+SA==
X-IronPort-AV: E=Sophos;i="5.82,327,1613462400"; 
   d="scan'208";a="476254027"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 May 2021 23:06:49 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH] zephyrtargetcontrol.py: fix testimage 'testimage_dump_monitor' argument issue
Date: Tue, 25 May 2021 14:19:31 +0800
Message-Id: <20210525061931.1475-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

Error log:
Exception: TypeError: __init__() got an unexpected keyword argument 'testimage_dump_monitor'

Ref:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3acbec85b00d693d2d731bc2b09cc40be1cc68e9

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 lib/oeqa/controllers/zephyrtargetcontrol.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/oeqa/controllers/zephyrtargetcontrol.py b/lib/oeqa/controllers/zephyrtargetcontrol.py
index 1dd7fd2..d342314 100644
--- a/lib/oeqa/controllers/zephyrtargetcontrol.py
+++ b/lib/oeqa/controllers/zephyrtargetcontrol.py
@@ -15,7 +15,7 @@ class QemuTargetZephyr(OETarget):
             machine='', rootfs='', tmpdir ='',dir_image ='',display=None,
             kernel='',boottime=60,bootlog='',kvm=False,slirp=False,
             dump_dir='',serial_ports=0,ovmf=None,tmpfsdir='' ,target_modules_path='',powercontrol_cmd='',powercontrol_extra_args='',
-            serialcontrol_cmd=None,serialcontrol_extra_args='',testimage_dump_target=''):
+            serialcontrol_cmd=None,serialcontrol_extra_args='',testimage_dump_target='',testimage_dump_monitor=''):
 
         timeout =  300
         user = 'root'
-- 
2.17.1

