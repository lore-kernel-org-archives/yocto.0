Return-Path: <ian.ray@ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45520E00DF1; Fri, 18 Sep 2015 07:56:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [67.231.157.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4176 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Sep 2015 07:56:34 PDT
Received: from mx0b-00176a03.pphosted.com (mx0b-00176a03.pphosted.com
	[67.231.157.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05F11E00BF8
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 07:56:34 -0700 (PDT)
Received: from pps.filterd (m0048205.ppops.net [127.0.0.1])
	by m0048205.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
	t8IDhUCL021714
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:47:02 -0400
Received: from cinmlip12.e2k.ad.ge.com (n165-156-000-000.static.ge.com
	[165.156.4.1] (may be forged))
	by m0048205.ppops.net-00176a03. with ESMTP id 1wvfa55y1m-7
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Sep 2015 09:47:01 -0400
Received: from cinmlip01.e2k.ad.ge.com ([3.159.213.48])
	by cinmlip12.e2k.ad.ge.com with ESMTP/TLS/RC4-SHA;
	18 Sep 2015 09:46:57 -0400
Received: from unknown (HELO clipsmtp.clients.em.health.ge.com) ([3.187.7.87])
	by CINMLIP01.e2k.ad.ge.com with ESMTP; 18 Sep 2015 09:46:52 -0400
Received: from macaroni.clients.em.health.ge.com
	(macaroni.clients.em.health.ge.com [3.187.18.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by clipsmtp.clients.em.health.ge.com (Postfix) with ESMTPSA id
	06B0F10BC303; Fri, 18 Sep 2015 16:42:21 +0300 (EEST)
From: Ian Ray <ian.ray@ge.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Sep 2015 16:42:18 +0300
Message-Id: <1442583738-21852-2-git-send-email-ian.ray@ge.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1442583738-21852-1-git-send-email-ian.ray@ge.com>
References: <1442583738-21852-1-git-send-email-ian.ray@ge.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2015-09-18_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=1
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1507310000
	definitions=main-1509180182
Subject: [yocto-docs][PATCH 1/1] ref-manual, dev-manual: Updates to support PTEST_RUN_SCRIPT_PATH.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Sep 2015 14:56:38 -0000

In the ref-manual, I added a new variable description for the
PTEST_RUN_SCRIPT_PATH variable.

In the dev-manual, I added a note to the "Getting Your Package
Ready" section to mention that PTEST_RUN_SCRIPT_PATH can be used
to locate the run-ptest script.

Signed-off-by: Ian Ray <ian.ray@ge.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml |  5 ++++-
 documentation/ref-manual/ref-variables.xml           | 15 +++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 7a28176..cd5bf51 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -7357,7 +7357,10 @@
                             This script starts your test.
                             Locate the script where you will refer to it
                             using
-                            <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink>.
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-SRC_URI'><filename>SRC_URI</filename></ulink> or
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-PTEST_RUN_SCRIPT_PATH'><filename>PTEST_RUN_SCRIPT_PATH</filename></ulink>
+                            if the ptest-run script is included with the recipe sources and unpacked to
+                            <ulink url='&YOCTO_DOCS_REF_URL;#var-S'><filename>S</filename></ulink>.
                             Here is an example that starts a test for
                             <filename>dbus</filename>:
                             <literallayout class='monospaced'>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index ecac2b6..7cc30c1 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -9188,6 +9188,21 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-PTEST_RUN_SCRIPT_PATH'><glossterm>PTEST_RUN_SCRIPT_PATH</glossterm>
+            <info>
+                PTEST_RUN_SCRIPT_PATH[doc] = "Points to a directory where the run-ptest script is located."
+            </info>
+            <glossdef>
+                <para role="glossdeffirst">
+<!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
+                    Points to a directory where the run-ptest script is located.
+                    This location defaults to the work directory
+                    (<filename><link linkend='var-WORKDIR'>WORKDIR</link></filename>),
+                    but may be overridden within a recipe if a package ships its own run-ptest script.
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-PV'><glossterm>PV</glossterm>
             <info>
                 PV[doc] = "The version of the recipe. The version is normally extracted from the recipe filename."
-- 
1.8.3.1


