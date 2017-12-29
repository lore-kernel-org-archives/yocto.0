Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A85EFE00DE3; Thu, 28 Dec 2017 22:24:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49D4E00D83
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vBT6OsBj021170
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Thu, 28 Dec 2017 22:24:54 -0800
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Thu, 28 Dec 2017 22:24:53 -0800
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Dec 2017 14:04:26 +0800
Message-ID: <20171229060428.8067-2-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20171229060428.8067-1-mingli.yu@windriver.com>
References: <20171229060428.8067-1-mingli.yu@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl-common][PATCH 1/3] pacemaker: add pacemaker-cli-utils to RDEPENDS
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
X-List-Received-Date: Fri, 29 Dec 2017 06:24:57 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

* Add pacemaker-cli-utils to RDEPENDS as
  many cluster resource agents manager
  commands such as crm_mon are packed into
  pacemaker-cli-utils.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index 37c3b53..6b0f453 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -86,7 +86,7 @@ FILES_${PN} += " ${datadir}/snmp                             \
                  ${libdir}/${PYTHON_DIR}/site-packages \
                "
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
-RDEPENDS_${PN} = "bash python libqb"
+RDEPENDS_${PN} = "bash python libqb ${PN}-cli-utils"
 
 SYSTEMD_AUTO_ENABLE = "disable"
 
-- 
2.13.3


