Return-Path: <prvs=67396d1221=adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C44E0129B; Fri, 20 Jul 2018 01:53:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3619E010D7
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 01:53:57 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w6K8p60B026239; Fri, 20 Jul 2018 03:53:55 -0500
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by mx0a-00010702.pphosted.com with ESMTP id 2kafra4ts3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 20 Jul 2018 03:53:55 -0500
Received: from us-aus-exch1.ni.corp.natinst.com
	(us-aus-exch1.ni.corp.natinst.com [130.164.68.11])
	by us-aus-skprod2.natinst.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w6K8rs8Y013417
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 20 Jul 2018 03:53:54 -0500
Received: from us-aus-exch3.ni.corp.natinst.com (130.164.68.13) by
	us-aus-exch1.ni.corp.natinst.com (130.164.68.11) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 20 Jul 2018 03:53:54 -0500
Received: from us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) by
	us-aus-exch3.ni.corp.natinst.com (130.164.68.13) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Fri, 20 Jul 2018 03:53:54 -0500
Received: from ionel-work.natinst.com (130.164.49.7) by
	us-aus-exhub1.ni.corp.natinst.com (130.164.68.41) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Fri, 20 Jul 2018 03:53:53 -0500
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: <yocto@yoctoproject.org>
Date: Fri, 20 Jul 2018 11:55:34 +0300
Message-ID: <20180720085534.16690-1-adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-07-20_02:, , signatures=0
X-Proofpoint-Spam-Reason: safe
Subject: [meta-selinux][PATCH] busybox: fix usrmerge install
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
X-List-Received-Date: Fri, 20 Jul 2018 08:53:59 -0000
Content-Type: text/plain

If DISTRO_FEATURES contains usrmerge then busybox binaries are
installed under /usr/bin not /bin so use ${base_bindir} to support
both paths and avoid QA errors.

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-core/busybox/busybox_selinux.inc | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
index 3f20815..c38672b 100644
--- a/recipes-core/busybox/busybox_selinux.inc
+++ b/recipes-core/busybox/busybox_selinux.inc
@@ -46,10 +46,10 @@ python create_sh_wrapper_reset_alternative_vars () {
         return
 
     if os.path.exists('%s/etc/busybox.links' % (dvar)):
-        create_sh_alternative_vars("/etc/busybox.links", "/bin/busybox", 0o0755)
+        create_sh_alternative_vars("/etc/busybox.links", "${base_bindir}/busybox", 0o0755)
     else:
-        create_sh_alternative_vars("/etc/busybox.links.nosuid", "/bin/busybox.nosuid", 0o0755)
-        create_sh_alternative_vars("/etc/busybox.links.suid", "/bin/busybox.suid", 0o4755)
+        create_sh_alternative_vars("/etc/busybox.links.nosuid", "${base_bindir}/busybox.nosuid", 0o0755)
+        create_sh_alternative_vars("/etc/busybox.links.suid", "${base_bindir}/busybox.suid", 0o4755)
 }
 
 # Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
-- 
2.18.0


