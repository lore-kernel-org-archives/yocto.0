Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.6716.1576084348543309105
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 09:12:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
IronPort-SDR: 37QwHIsoli7xcF/K6Yvm1sNVs9rnPEdpB7/3LvWg3ozcB8WVVHTkEh5qO1Pheud3TENH0bg+la
 fl8psIWL98q6s8iL8j7jBG4j3qiwAIpD4cfQW3LuuMggJ8Bnc6m/qZhP4aOxnvCtPnTuVl6xSh
 dSqRVUmCQ6ZJu6XrLEGqHJKDzbUnep7YGDrWn9ucHjMOXbQZGw4qdT47uljwCXPD4H6DcnJsRu
 Bjdm25Mb7frdK+OjnVBz8d0xirdLe6VN051KPVZJkbjy3pM3w+tnTblMiNhMcbL688Tf0gVEvq
 PNM=
X-IronPort-AV: E=Sophos;i="5.69,302,1571695200"; 
   d="scan'208";a="3391174"
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: yocto@lists.yoctoproject.org
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 2/2] ref-manual: Update the documentation for USERADD_ERROR_DYNAMIC
Date: Wed, 11 Dec 2019 18:12:17 +0100
Message-Id: <20191211171217.408-2-pkj@axis.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191211171217.408-1-pkj@axis.com>
References: <20191211171217.408-1-pkj@axis.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Content-Transfer-Encoding: 8bit

* Update USERADD_ERROR_DYNAMIC[doc] and the first paragraph to match
  the definition in meta/conf/documentation.conf.
* Add a note explaining the differences in behavior when setting
  USERADD_ERROR_DYNAMIC to "warn" and "error" respectively.

[YOCTO #12932]

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 documentation/ref-manual/ref-variables.xml | 33 ++++++++++++++++------
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index e6009926be..c8ece0c579 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -16770,18 +16770,21 @@
 
         <glossentry id='var-USERADD_ERROR_DYNAMIC'><glossterm>USERADD_ERROR_DYNAMIC</glossterm>
             <info>
-               USERADD_ERROR_DYNAMIC[doc] = "If set to 'error', forces the OpenEmbedded build system to produce an error if the user identification (uid) and group identification (gid) values are not defined in files/passwd and files/group files. If set to 'warn', a warning will be issued instead."
+               USERADD_ERROR_DYNAMIC[doc] = "If set to 'error', forces the OpenEmbedded build system to produce an error if the user identification (uid) and group identification (gid) values are not defined in any of the files listed in USERADD_UID_TABLES and USERADD_GID_TABLES. If set to 'warn', a warning will be issued instead."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
 <!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
-                    If set to "error", forces the OpenEmbedded build system to
-                    produce an error if the user identification
-                    (<filename>uid</filename>) and group identification
-                    (<filename>gid</filename>) values are not defined
-                    in <filename>files/passwd</filename>
-                    and <filename>files/group</filename> files.
-                    If set to "warn", a warning will be issued instead.
+
+                    If set to <filename>error</filename>, forces the
+                    OpenEmbedded build system to produce an error if the user
+                    identification (<filename>uid</filename>) and group
+                    identification (<filename>gid</filename>) values are not
+                    defined in any of the files listed
+                    in <link linkend='var-USERADD_UID_TABLES'><filename>USERADD_UID_TABLES</filename></link>
+                    and <link linkend='var-USERADD_GID_TABLES'><filename>USERADD_GID_TABLES</filename></link>. If
+                    set to <filename>warn</filename>, a warning will be issued
+                    instead.
                 </para>
 
                 <para>
@@ -16808,6 +16811,20 @@
                     <link linkend='var-USERADD_GID_TABLES'><filename>USERADD_GID_TABLES</filename></link>
                     variables.
                 </para>
+
+                <note>
+                    There is a difference in behavior between
+                    setting <filename>USERADD_ERROR_DYNAMIC</filename>
+                    to <filename>error</filename> and setting it
+                    to <filename>warn</filename>. When it is set
+                    to <filename>warn</filename>, the build system will report a
+                    warning for every undefined <filename>uid</filename> and
+                    <filename>gid</filename> in any recipe. But when it is set
+                    to <filename>error</filename>, it will only report errors
+                    for recipes that are actually built. This saves you from
+                    having to add static IDs for recipes that you know will
+                    never be built.
+                </note>
             </glossdef>
         </glossentry>
 
-- 
2.21.0

