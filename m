Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C11FE00D87; Tue, 15 Mar 2016 05:07:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CBAACE00C9B
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 05:07:36 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.266.1;
	Tue, 15 Mar 2016 13:07:35 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 23EE228BA23;
	Tue, 15 Mar 2016 13:07:35 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Mar 2016 13:07:35 +0100
Message-ID: <1458043655-2394-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX08.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] cgl-init-build-env: Update the poky distro layer
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
X-List-Received-Date: Tue, 15 Mar 2016 12:07:41 -0000
Content-Type: text/plain

meta-yocto layer has been replace by meta-poky upstream.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 cgl-init-build-env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/cgl-init-build-env b/cgl-init-build-env
index 137f007..bb046b6 100755
--- a/cgl-init-build-env
+++ b/cgl-init-build-env
@@ -236,7 +236,7 @@ else
                     echo "*** Error: There is no meta-layer called: $layer"
                 else
                     egrep "$layer " conf/bblayers.conf >/dev/null ||
-                    sed -i -e '/.*meta-yocto .*/i\'"  $layer \\\\" conf/bblayers.conf
+                    sed -i -e '/.*meta-poky .*/i\'"  $layer \\\\" conf/bblayers.conf
                     echo "*** Info: Adding $layer to bblayers.conf"
                 fi
             done
-- 
1.9.1


