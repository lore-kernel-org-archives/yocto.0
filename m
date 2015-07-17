Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67A2AE009D9; Fri, 17 Jul 2015 03:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E6C33E009D2
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 03:06:02 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Jul 2015 12:06:00 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id C584628E77D;
	Fri, 17 Jul 2015 12:06:00 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 12:05:59 +0200
Message-ID: <1437127559-9853-1-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] Fix LSB core sysvinit issue.
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
X-List-Received-Date: Fri, 17 Jul 2015 10:06:08 -0000
Content-Type: text/plain

From: Alexandra Safta <alexandra.safta@enea.com>

[LXCR-3306]
Signed-off-by: Alexandra Safta <alexandra.safta@enea.com>
Signed-off-by: Tudor Florea <tudor.florea@enea.com>
Signed-off-by: Alexandra Safta <alexandra.safta@enea.com>
---
 recipes-core/sysvinit/sysvinit_2.88dsf.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 recipes-core/sysvinit/sysvinit_2.88dsf.bbappend

diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
new file mode 100644
index 0000000..4fd3c00
--- /dev/null
+++ b/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
@@ -0,0 +1,3 @@
+do_install_append(){
+        chmod o+x ${D}${base_sbindir}/shutdown
+}
-- 
1.9.1


