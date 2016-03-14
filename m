Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAE66E00D5D; Mon, 14 Mar 2016 08:12:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 13995E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:12:29 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.266.1;
	Mon, 14 Mar 2016 16:12:26 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 33BB928BA27;
	Mon, 14 Mar 2016 16:12:26 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Mar 2016 16:12:24 +0100
Message-ID: <1457968346-54855-4-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
References: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH 4/6] makedumpfile: compile with shared libraries
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
X-List-Received-Date: Mon, 14 Mar 2016 15:12:33 -0000
Content-Type: text/plain

poky distro doesn't include static libraries by defaule anymore, so we
should use shared libraries. If at a later point it proves that we must
compile with static library we can override the no-static-libs include
in our distro definition.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
index 6c32306..21e0954 100644
--- a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
@@ -12,7 +12,7 @@ SRC_URI[makedumpfile.sha256sum] = "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734f576d8ec
 
 DEPENDS = "zlib elfutils bzip2"
 
-EXTRA_OEMAKE = "TARGET=${TARGET_ARCH}"
+EXTRA_OEMAKE = "TARGET=${TARGET_ARCH} LINKTYPE=dynamic"
 
 do_install() {
 	install -d ${D}${bindir}/
-- 
1.9.1


