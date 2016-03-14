Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13ABFE00D5F; Mon, 14 Mar 2016 08:12:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CE8C3E00D59
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:12:32 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1;
	Mon, 14 Mar 2016 16:12:25 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 3A67E28BA28;
	Mon, 14 Mar 2016 16:12:26 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Mar 2016 16:12:25 +0100
Message-ID: <1457968346-54855-5-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
References: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH 5/6] cgl_common_security_flags.inc: Add linker override for audit
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
X-List-Received-Date: Mon, 14 Mar 2016 15:12:36 -0000
Content-Type: text/plain

Building audit with -fstack-protector-strong throws link errors on the
native compiler. Add exception to avoid that.
---
 meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
index 358ce58..563a6e4 100644
--- a/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
+++ b/meta-cgl-common/conf/distro/include/cgl_common_security_flags.inc
@@ -1 +1,2 @@
 SECURITY_CFLAGS_pn-openhpi = "${SECURITY_NO_PIE_CFLAGS}"
+SECURITY_LDFLAGS_remove_pn-audit = "-fstack-protector-strong"
-- 
1.9.1


