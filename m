Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00BABE009EB; Tue, 23 Jun 2015 07:00:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,
	MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MSGID_FROM_MTA_HEADER Message-Id was added by a relay
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 24E12E009C8
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 07:00:11 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 23 Jun 2015 16:00:08 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4470)	id 7D4ED28BA1D;
	Tue, 23 Jun 2015 16:00:08 +0200 (CEST)
From: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>
To: <yocto@yoctoproject.org>, <Adrian.Dudau@enea.com>,
	<Alexandru.Vaduva@enea.com>
Date: Tue, 23 Jun 2015 16:00:03 +0200
Message-ID: <1434640961-16848-2-git-send-email-siva.borra@enea.com>
X-Mailer: git-send-email 1.9.1
Received: from zsibo-HP-EliteBook-2170p (172.16.141.163) by mx-3.enea.com
	(172.21.1.204) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 18 Jun 2015 17:22:44 +0200
Received: by zsibo-HP-EliteBook-2170p (Postfix, from userid 1000)	id
	C4620441526; Thu, 18 Jun 2015 17:22:44 +0200 (CEST)
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1434640961-16848-1-git-send-email-siva.borra@enea.com>
References: <1434640961-16848-1-git-send-email-siva.borra@enea.com>
Received-SPF: None (SESTOEX03.enea.se: Alexandru.Vaduva@enea.com does not
	designate permitted sender hosts)
Received-SPF: None (SESTOEX03.enea.se: siva.borra@enea.com does not
	designate permitted sender hosts)
MIME-Version: 1.0
Cc: Siva Borra <siva.borra@enea.com>, linux@list.enea.se, issues@enea.com
Subject: [PATCHv2 1/1] Disable parallel build for umip.
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
X-List-Received-Date: Tue, 23 Jun 2015 14:00:16 -0000
Content-Type: text/plain

From: Siva Borra <siva.borra@enea.com>

umip build fails due to parallel build order issue,
hence disabling the same.

[LXCR-4977]

Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 meta-cgl-common/recipes-extended/umip/umip%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-cgl-common/recipes-extended/umip/umip%.bbappend

diff --git a/meta-cgl-common/recipes-extended/umip/umip%.bbappend b/meta-cgl-common/recipes-extended/umip/umip%.bbappend
new file mode 100644
index 0000000..2858472
--- /dev/null
+++ b/meta-cgl-common/recipes-extended/umip/umip%.bbappend
@@ -0,0 +1 @@
+PARALLEL_MAKE = ""
-- 
1.9.1


