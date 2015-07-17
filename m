Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E7E4E009FD; Fri, 17 Jul 2015 02:07:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3618CE009E4
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:07:43 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 17 Jul 2015 11:07:38 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 45E5428E77C;
	Fri, 17 Jul 2015 11:07:39 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Jul 2015 11:07:33 +0200
Message-ID: <1437124057-34410-2-git-send-email-Alexandru.Vaduva@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
References: <1437124057-34410-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Subject: [PATCH] Fix for profile.d-tc LSB core test
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
X-List-Received-Date: Fri, 17 Jul 2015 09:07:45 -0000
Content-Type: text/plain

From: Alexandra Safta <alexandra.safta@enea.com>

Signed-off-by: Alexandra Safta <alexandra.safta@enea.com>
---
 meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend

diff --git a/meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend b/meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend
new file mode 100644
index 0000000..e13da3d
--- /dev/null
+++ b/meta-cgl-common/recipes-core/base-files/base-files_3.0.14.bbappend
@@ -0,0 +1 @@
+dirs755-lsb += "/etc/profile.d/"
-- 
1.9.1


