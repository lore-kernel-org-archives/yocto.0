Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83257E00B66; Fri,  9 May 2014 02:50:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B22E00B60
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 02:50:22 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s499oL4P025104
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 May 2014 02:50:22 -0700 (PDT)
Received: from pek-hostel-vm11.wrs.com (128.224.153.181) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Fri, 9 May 2014 02:50:20 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 May 2014 05:50:18 -0400
Message-ID: <1399629018-9192-1-git-send-email-jackie.huang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] initscripts/checkroot.sh: restore file contexts for /run
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
X-List-Received-Date: Fri, 09 May 2014 09:50:27 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

The file contexts for /run is incorrect while running checkroot.sh
in boot time which causes mount fail to create new dir and file
in /run, so restore the security contexts in it.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-core/initscripts/initscripts_1.0.bbappend |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-core/initscripts/initscripts_1.0.bbappend b/recipes-core/initscripts/initscripts_1.0.bbappend
index 7ec66ea..367cd6b 100644
--- a/recipes-core/initscripts/initscripts_1.0.bbappend
+++ b/recipes-core/initscripts/initscripts_1.0.bbappend
@@ -5,4 +5,6 @@ do_install_append () {
 touch /var/log/lastlog
 test ! -x /sbin/restorecon || /sbin/restorecon -RF /var/volatile/ /var/lib /run
 EOF
+	sed -i '/mount -n -o remount,$rootmode/i\test ! -x /sbin/restorecon || /sbin/restorecon -RF /run' \
+	    ${D}${sysconfdir}/init.d/checkroot.sh
 }
-- 
1.7.9.5


