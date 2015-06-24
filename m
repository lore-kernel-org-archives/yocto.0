Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C2ABE00A1E; Wed, 24 Jun 2015 10:51:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,
	MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 7C7A7E009AE
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 10:51:02 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 24 Jun 2015 19:50:58 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id DC3C128BA1D;
	Wed, 24 Jun 2015 19:50:58 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<Alexandru.Vaduva@enea.com>
Date: Wed, 24 Jun 2015 19:50:57 +0200
Message-ID: <1435135605-4021-2-git-send-email-siva.borra@enea.com>
X-Mailer: git-send-email 1.9.1
Received: from zsibo-HP-EliteBook-2170p (172.16.141.151) by mx-3.enea.com
	(172.21.1.204) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 24 Jun 2015 10:46:51 +0200
Received: by zsibo-HP-EliteBook-2170p (Postfix, from userid 1000)	id
	1C1E0442480; Wed, 24 Jun 2015 10:46:51 +0200 (CEST)
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1435135605-4021-1-git-send-email-siva.borra@enea.com>
References: <1435135605-4021-1-git-send-email-siva.borra@enea.com>
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Received-SPF: None (SESTOEX03.enea.se: siva.borra@enea.com does not
	designate permitted sender hosts)
MIME-Version: 1.0
Cc: Siva Borra <siva.borra@enea.com>, linux@list.enea.se, issues@enea.com
Subject: [PATCHv2 1/1] Add packages umip, makedumpfile, openl2tp
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
X-List-Received-Date: Wed, 24 Jun 2015 17:51:09 -0000
Content-Type: text/plain

From: Siva Borra <siva.borra@enea.com>

Add packages umip, makedumpfile and open2tp
to the image.


Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb | 2 ++
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb   | 1 +
 2 files changed, 3 insertions(+)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
index 2f2d55f..f921c1c 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-applications.bb
@@ -50,6 +50,8 @@ RDEPENDS_packagegroup-cgl-applications = " \
     pam-passwdqc \
     libpam \
     rsyslog \
+    openl2tp \
+    umip \
     "
 
 LTTNG ?= "\
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index effdb81..ea7377b 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -58,6 +58,7 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     cluster-resource-agents \
     ifenslave \
     drbd \
+    makedumpfile \
     "
 
 DISTRO_FEATURES_append = " ptest argp ext2 xattr nfs pci ipv4 ipv6"
-- 
1.9.1


