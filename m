Return-Path: <prvs=67396d1221=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F99E01069; Fri, 20 Jul 2018 05:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74EDCE00812
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 05:18:17 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w6KCFfrO010212; Fri, 20 Jul 2018 07:18:13 -0500
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2kafra5a8u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 20 Jul 2018 07:18:13 -0500
Received: from us-aus-exch1.ni.corp.natinst.com
	(us-aus-exch1.ni.corp.natinst.com [130.164.68.11])
	by us-aus-skprod3.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w6KCICTg010488
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 20 Jul 2018 07:18:12 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch1.ni.corp.natinst.com (130.164.68.11) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 20 Jul 2018 07:18:12 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Fri, 20 Jul 2018 07:18:11 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: <yocto@yoctoproject.org>
Date: Fri, 20 Jul 2018 15:19:52 +0300
Message-ID: <20180720121952.25239-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-07-20_03:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: [meta-selinux][PATCH v2] busybox: fix usrmerge install
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
X-List-Received-Date: Fri, 20 Jul 2018 12:18:18 -0000
Content-Type: text/plain

If DISTRO_FEATURES contains usrmerge then busybox binaries are
installed under /usr/bin not /bin so use ${base_bindir} to support
both paths and avoid QA errors.

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-core/busybox/busybox_selinux.inc | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index 3f20815..df7c117 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -8,6 +8,7 @@ python create_sh_wrapper_reset_alternative_vars () {
 
     dvar = d.getVar('D', True)
     pn = d.getVar('PN', True)
+    base_bindir = d.getVar('base_bindir', True)
 
     def create_sh_alternative_vars(links, target, mode):
         import shutil
@@ -46,10 +47,10 @@ python create_sh_wrapper_reset_alternative_vars () {
         return
 
     if os.path.exists('%s/etc/busybox.links' % (dvar)):
-        create_sh_alternative_vars("/etc/busybox.links", "/bin/busybox", 0o0755)
+        create_sh_alternative_vars("/etc/busybox.links", "%s/busybox" % base_bindir, 0o0755)
     else:
-        create_sh_alternative_vars("/etc/busybox.links.nosuid", "/bin/busybox.nosuid", 0o0755)
-        create_sh_alternative_vars("/etc/busybox.links.suid", "/bin/busybox.suid", 0o4755)
+        create_sh_alternative_vars("/etc/busybox.links.nosuid", "%s/busybox.nosuid" % base_bindir, 0o0755)
+        create_sh_alternative_vars("/etc/busybox.links.suid", "%s/busybox.suid" % base_bindir, 0o4755)
 }
 
 # Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
-- 
2.18.0


