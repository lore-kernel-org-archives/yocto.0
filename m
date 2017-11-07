Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B62CE00D24; Tue,  7 Nov 2017 01:37:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D07EE00D20
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 01:37:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vA79bSPf006444
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 7 Nov 2017 01:37:28 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 7 Nov 2017 01:37:28 -0800
From: <kai.kang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 7 Nov 2017 17:20:39 +0800
Message-ID: <20171107092039.3090-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20171107092039.3090-1-kai.kang@windriver.com>
References: <20171107092039.3090-1-kai.kang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 1/1] pacemaker: disable autostart
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
X-List-Received-Date: Tue, 07 Nov 2017 09:37:29 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

pacemaker requires corosync starts before it. But corosync could not start
without configuration and autostart is disabled. So disable autostart of
pacemaker too.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 3a4a848..37c3b53 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -88,6 +88,8 @@ FILES_${PN} += " ${datadir}/snmp                             \
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
 RDEPENDS_${PN} = "bash python libqb"
 
+SYSTEMD_AUTO_ENABLE = "disable"
+
 SYSTEMD_PACKAGES += "${PN}-remote"
 SYSTEMD_SERVICE_${PN} += "pacemaker.service crm_mon.service"
 SYSTEMD_SERVICE_${PN}-remote += "pacemaker_remote.service"
-- 
2.14.1


