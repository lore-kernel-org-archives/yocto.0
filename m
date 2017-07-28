Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 758F5E00CEF; Thu, 27 Jul 2017 19:32:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8C3CE00CC1
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:41 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6S2WfQQ005956
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:32:41 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:32:40 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:32:14 +0800
Message-ID: <cover.1501209083.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 0/3] ocfs2-tools: several fixes
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
X-List-Received-Date: Fri, 28 Jul 2017 02:32:42 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

---
The following changes since commit 0d22147d06626923f5e7b1dd5f02cb21ea7a3bcb:

  pacemaker: update to 1.1.16 (2017-06-20 10:28:35 +0200)

are available in the git repository at:

  https://github.com/jackiehjm/meta-cgl.git jhuang0/up_ocfs2-tools_170728_0
  https://github.com//tree/jhuang0/up_ocfs2-tools_170728_0

Jackie Huang (3):
  ocfs2-tools: fix dependencies
  ocfs2-tools: fix the installation and systemd services
  ocfs2-tools: disable stack user support explicitly in init script

 .../ocfs2-tools/ocfs2-tools/cluster.conf.sample    | 10 ----
 .../disable-ocfs2-stack-user-support.patch         | 42 ++++++++++++++++
 .../ocfs2-tools/ocfs2-tools/o2cb.service           |  4 +-
 .../ocfs2-tools/ocfs2-tools/ocfs2.service          |  4 +-
 .../recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb   | 56 +++++++++++++---------
 5 files changed, 80 insertions(+), 36 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/cluster.conf.sample
 create mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/disable-ocfs2-stack-user-support.patch

-- 
2.11.0


