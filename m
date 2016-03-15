Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF99E00D87; Tue, 15 Mar 2016 05:17:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 76F54E00C9B
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 05:17:14 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1;
	Tue, 15 Mar 2016 13:17:12 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 41CD428BA23;
	Tue, 15 Mar 2016 13:17:13 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Mar 2016 13:17:13 +0100
Message-ID: <1458044233-48383-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH] cgl-init-build-env: Add meta-cloud-services to bblayers
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
X-List-Received-Date: Tue, 15 Mar 2016 12:17:16 -0000
Content-Type: text/plain

Recipes in meta-openstack depend on the ruby class defined in it.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 cgl-init-build-env | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/cgl-init-build-env b/cgl-init-build-env
index bb046b6..29dfb38 100755
--- a/cgl-init-build-env
+++ b/cgl-init-build-env
@@ -124,7 +124,7 @@ while getopts ":hb:c:d:f:g:j:k:l:m:ts:" OPTION; do
     esac
 done
 
-METALAYERS="$METALAYERS,meta-cloud-services/meta-openstack,meta-openembedded/meta-filesystems,meta-openembedded/meta-networking,meta-openembedded/meta-oe,meta-openembedded/meta-perl,meta-openembedded/meta-python"
+METALAYERS="$METALAYERS,meta-cloud-services,meta-cloud-services/meta-openstack,meta-openembedded/meta-filesystems,meta-openembedded/meta-networking,meta-openembedded/meta-oe,meta-openembedded/meta-perl,meta-openembedded/meta-python"
 CGLROOT="$(pwd)"
 CGLROOT=$(readlink -f "$CGLROOT")
 DISTRO="poky-cgl"
-- 
1.9.1


