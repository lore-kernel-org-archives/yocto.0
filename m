Received: from heian.cn.fujitsu.com (heian.cn.fujitsu.com [183.91.158.132])
 by mx.groups.io with SMTP id smtpd.web12.44376.1585546999907578454
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Mar 2020 22:43:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 183.91.158.132, mailfrom: lixm.fnst@cn.fujitsu.com)
X-IronPort-AV: E=Sophos;i="5.72,323,1580745600"; 
   d="scan'208";a="87871698"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 30 Mar 2020 13:43:06 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id EA94450A999E
	for <yocto@lists.yoctoproject.org>; Mon, 30 Mar 2020 13:32:50 +0800 (CST)
Received: from G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 30 Mar 2020 13:43:05 +0800
Received: from g08.fujitsu.local (10.167.218.89) by
 G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.209) with Microsoft SMTP Server
 id 15.0.1497.2 via Frontend Transport; Mon, 30 Mar 2020 13:43:07 +0800
From: "Li, Xiaoming" <lixm.fnst@cn.fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: <leimaohui@cn.fujitsu.com>
Subject: [PATCH] Add localhost to noproxy list.
Date: Mon, 30 Mar 2020 06:37:19 -0700
Message-ID: <20200330133719.63516-1-lixm.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-yoursite-MailScanner-ID: EA94450A999E.ACFA7
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixm.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Type: text/plain

Signed-off-by: Li Xiaoming <lixm.fnst@cn.fujitsu.com>
---
 classes/fossology-rest.bbclass | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 48e16f3..000eefe 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -25,6 +25,8 @@ HOSTTOOLS_NONFATAL += "curl"
 
 CREATOR_TOOL = "fossology-rest.bbclass in meta-spdxscanner"
 
+NO_PROXY = "localhost, 127.0.0.1"
+
 # If ${S} isn't actually the top-level source directory, set SPDX_S to point at
 # the real top-level directory.
 SPDX_S ?= "${S}"
@@ -159,7 +161,7 @@ def get_folder_id_by_name(d, folder_name):
 
     rest_api_cmd = "curl -k -s -S -X GET " + server_url + "/api/v1/folders" \
                    + " -H \"Authorization: Bearer " + token + "\"" \
-                   + " --noproxy 127.0.0.1"
+                   + " --noproxy " + NO_PROXY
     bb.note("Invoke rest_api_cmd = " + rest_api_cmd )
     try:
         all_folder = subprocess.check_output(rest_api_cmd, stderr=subprocess.STDOUT, shell=True)
@@ -200,7 +202,7 @@ def create_folder(d, folder_name):
                    + " -H \'parentFolder: 1\'" \
                    + " -H \'folderName: " + folder_name + "\'" \
                    + " -H \"Authorization: Bearer " + token + "\"" \
-                   + " --noproxy 127.0.0.1"
+                   + " --noproxy " + NO_PROXY
     bb.note("Invoke rest_api_cmd = " + rest_api_cmd)
     try:
         add_folder = subprocess.check_output(rest_api_cmd, stderr=subprocess.STDOUT, shell=True)
@@ -251,7 +253,7 @@ def has_upload(d, tar_file, folder_id):
 
     rest_api_cmd = "curl -k -s -S -X GET " + server_url + "/api/v1/uploads" \
                    + " -H \"Authorization: Bearer " + token + "\"" \
-                   + " --noproxy 127.0.0.1"
+                   + " --noproxy " + NO_PROXY
     bb.note("Invoke rest_api_cmd = " + rest_api_cmd )
         
     try:
@@ -302,7 +304,7 @@ def upload(d, tar_file, folder):
                     + " -H \'public: public\'"  \
                     + " -H \'Content-Type: multipart/form-data\'"  \
                     + " -F \'fileInput=@\"" + tar_file + "\";type=application/octet-stream\'" \
-                    + " --noproxy 127.0.0.1"
+                    + " --noproxy " + NO_PROXY
     bb.note("Upload : Invoke rest_api_cmd = " + rest_api_cmd )
     while i < 10:
         time.sleep(delaytime)
@@ -343,7 +345,7 @@ def analysis(d, folder_id, upload_id):
                     + " -H \"Authorization: Bearer " + token + "\"" \
                     + " -H \'Content-Type: application/json\'" \
                     + " --data \'{\"analysis\": {\"bucket\": true,\"copyright_email_author\": true,\"ecc\": true, \"keyword\": true,\"mime\": true,\"monk\": true,\"nomos\": true,\"package\": true},\"decider\": {\"nomos_monk\": true,\"bulk_reused\": true,\"new_scanner\": true}}\'" \
-                    + " --noproxy 127.0.0.1"
+                    + " --noproxy " + NO_PROXY
     bb.note("Analysis : Invoke rest_api_cmd = " + rest_api_cmd )
     while i < 10:
         try:
@@ -389,7 +391,7 @@ def trigger(d, folder_id, upload_id):
                     + " -H \"Authorization: Bearer " + token + "\"" \
                     + " -H \"uploadId: " + str(upload_id) + "\"" \
                     + " -H \'reportFormat: spdx2tv\'" \
-                    + " --noproxy 127.0.0.1"
+                    + " --noproxy " + NO_PROXY
     bb.note("trigger : Invoke rest_api_cmd = " + rest_api_cmd )
     while i < 10:
         time.sleep(delaytime)
@@ -431,7 +433,7 @@ def get_spdx(d, report_id, spdx_file):
     rest_api_cmd = "curl -k -s -S -X GET " + server_url + "/api/v1/report/" + report_id \
                     + " -H \'accept: text/plain\'" \
                     + " -H \"Authorization: Bearer " + token + "\"" \
-                    + " --noproxy 127.0.0.1"
+                    + " --noproxy " + NO_PROXY
     bb.note("get_spdx : Invoke rest_api_cmd = " + rest_api_cmd )
     while i < 10:
         time.sleep(delaytime)
-- 
2.17.1



