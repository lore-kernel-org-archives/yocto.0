Return-Path: <adrian.ratiu@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1712E00CA7; Thu,  4 Feb 2016 06:34:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
X-Greylist: delayed 1184 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Feb 2016 06:34:48 PST
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9702E00B8C
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 06:34:48 -0800 (PST)
Received: from us-aus-mgwout2.amer.corp.natinst.com (nb-chan1-1338.natinst.com
	[130.164.19.134])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u14EF3Vq017301
	for <yocto@yoctoproject.org>; Thu, 4 Feb 2016 08:15:03 -0600
Received: from adi-pc-linux.emea.corp.natinst.com ([130.164.14.198])
	by us-aus-mgwout2.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016020408150329-649247 ;
	Thu, 4 Feb 2016 08:15:03 -0600 
From: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
To: yocto@yoctoproject.org
Date: Thu, 4 Feb 2016 16:14:39 +0200
Message-Id: <dfb75dd53c8799e92ee5c0aff534c4798dd02a9a.1454594277.git.adrian.ratiu@ni.com>
X-Mailer: git-send-email 2.7.0
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut2/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 02/04/2016 08:15:03 AM,
	Serialize by Router on US-AUS-MGWOut2/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 02/04/2016 08:15:03 AM,
	Serialize complete at 02/04/2016 08:15:03 AM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-04_02:, , signatures=0
Subject: [meta-selinux 1/2] audit: create audit-go package
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
X-List-Received-Date: Thu, 04 Feb 2016 14:34:52 -0000

This version of audit installs go bindings which are not shipped and
trigger QA warnings. Put them in their own package just like python.

Signed-off-by: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
---
 recipes-security/audit/audit_2.4.4.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/audit/audit_2.4.4.bb b/recipes-security/audit/audit_2.4.4.bb
index 55a5b12..f512cbc 100644
--- a/recipes-security/audit/audit_2.4.4.bb
+++ b/recipes-security/audit/audit_2.4.4.bb
@@ -55,7 +55,7 @@ like relay events to remote machines or analyze events for suspicious \
 behavior."
 
 PACKAGES =+ "audispd-plugins"
-PACKAGES += "auditd ${PN}-python"
+PACKAGES += "auditd ${PN}-python ${PN}-go"
 
 FILES_${PN} = "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1* ${base_libdir}/libauparse.so.*"
 FILES_auditd += "${bindir}/* ${base_sbindir}/* ${sysconfdir}/*"
@@ -65,6 +65,7 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
 	"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
+FILES_${PN}-go = "${libdir}/golang"
 FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
 
 CONFFILES_auditd += "${sysconfdir}/audit/audit.rules"
-- 
2.7.0


