Received: from heian.cn.fujitsu.com (heian.cn.fujitsu.com [183.91.158.132])
 by mx.groups.io with SMTP id smtpd.web11.1950.1585815176207822729
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2020 01:12:56 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 183.91.158.132, mailfrom: lixm.fnst@cn.fujitsu.com)
X-IronPort-AV: E=Sophos;i="5.72,334,1580745600"; 
   d="scan'208";a="88385393"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 02 Apr 2020 16:12:51 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 2C67F4BCC899
	for <yocto@lists.yoctoproject.org>; Thu,  2 Apr 2020 16:02:33 +0800 (CST)
Received: from G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 2 Apr 2020 16:12:51 +0800
Received: from g08.fujitsu.local (10.167.218.89) by
 G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.209) with Microsoft SMTP Server
 id 15.0.1497.2 via Frontend Transport; Thu, 2 Apr 2020 16:12:51 +0800
From: "Li, Xiaoming" <lixm.fnst@cn.fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: <leimaohui@cn.fujitsu.com>
Subject: [yocto][meta-spdxscanner][PATCH] Remove redundant code.
Date: Thu, 2 Apr 2020 09:07:04 -0700
Message-ID: <20200402160704.110955-1-lixm.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 2C67F4BCC899.ADCF5
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixm.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Type: text/plain

As folder_id can not be specified be in conf file, we do not need
getVar to read it.

Signed-off-by: Li Xiaoming <lixm.fnst@cn.fujitsu.com>
---
 classes/fossology-rest.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 5c5ef70..c8d29ff 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -230,7 +230,7 @@ def get_folder_id(d):
         folder_name = d.getVar('FOLDER_NAME')
         folder_id = create_folder(d, folder_name)
     else:
-        folder_id = (d.getVar('FOLDER_ID', True) or "1")
+        folder_id = FOLDER_ID
 
     bb.note("Folder Id =  " + str(folder_id))
     return str(folder_id)
-- 
2.17.1



