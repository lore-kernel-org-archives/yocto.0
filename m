Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web11.3386.1576294660876661873
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 19:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: anuj.mittal@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Dec 2019 19:37:39 -0800
X-IronPort-AV: E=Sophos;i="5.69,312,1571727600"; 
   d="scan'208";a="204516586"
Received: from anmitta2-mobl1.gar.corp.intel.com ([10.249.64.187])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Dec 2019 19:37:38 -0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@lists.yoctoproject.org
Subject: [PATCH][yocto-autobuilder-helper] config.json: point to new mailing list addresses
Date: Sat, 14 Dec 2019 11:37:26 +0800
Message-Id: <20191214033726.17363-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 config.json | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 3268fda..5730f85 100644
--- a/config.json
+++ b/config.json
@@ -11,7 +11,7 @@
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
 
-    "QAMAIL_TO" : "yocto@yoctoproject.org",
+    "QAMAIL_TO" : "yocto@lists.yoctoproject.org",
     "QAMAIL_CC" : "otavio@ossystems.com.br, yi.zhao@windriver.com, apoorv.sangal@intel.com, ee.peng.yeoh@intel.com, aaron.chun.yew.chan@intel.com, richard.purdie@linuxfoundation.org, akuster808@gmail.com, sjolley.yp.pm@gmail.com, sangeeta.jain@intel.com",
     "WEBPUBLISH_DIR" : "${BASE_SHAREDDIR}/",
     "WEBPUBLISH_URL" : "https://autobuilder.yocto.io/",
@@ -142,7 +142,7 @@
             "SSTATEDIR_RELEASE" : ["SSTATE_DIR ?= '${HELPERBUILDDIR}/sstate'"],
             "PACKAGE_CLASSES" : "package_rpm",
             "EXTRAPLAINCMDS" : [
-                "${SCRIPTSDIR}/build-perf-test-wrapper -r ${BUILDPERF_RESULTSDIR} -E yocto-perf@yoctoproject.org -d ${BUILDPERF_STATEDIR}/downloads -w ${BASE_HOMEDIR}/build-perf-test -p ${HELPERRESULTSDIR}/${HELPERTARGET} -R ${HELPERREPONAME} -b ${HELPERBRANCHNAME} --push git@push.yoctoproject.org:yocto-buildstats"
+                "${SCRIPTSDIR}/build-perf-test-wrapper -r ${BUILDPERF_RESULTSDIR} -E yocto-perf@lists.yoctoproject.org -d ${BUILDPERF_STATEDIR}/downloads -w ${BASE_HOMEDIR}/build-perf-test -p ${HELPERRESULTSDIR}/${HELPERTARGET} -R ${HELPERREPONAME} -b ${HELPERBRANCHNAME} --push git@push.yoctoproject.org:yocto-buildstats"
             ],
             "extravars" : [
                 "BB_NUMBER_THREADS = '24'",
-- 
2.21.0

