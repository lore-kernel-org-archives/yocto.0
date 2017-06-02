Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BDA0E00B76; Fri,  2 Jun 2017 01:21:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A811E00B63
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 01:21:40 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v528LeaA021331
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 2 Jun 2017 01:21:40 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Fri, 2 Jun 2017 01:21:39 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 2 Jun 2017 16:21:34 +0800
Message-ID: <cover.1496391537.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 0/4] resource-agents: update to 4.0.1 and several fixes
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
X-List-Received-Date: Fri, 02 Jun 2017 08:21:43 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

--
The following changes since commit c0afa706e9cdb650c0e8bb79f503743632350b00:

  core-image-cgl: Remove ROOTFS_PKGMANAGE_BOOTSTRAP (2017-05-24 14:19:13 +0200)

are available in the git repository at:

  https://github.com/jackiehjm/meta-cgl.git jhuang0/up_resource-agents_170602_0
  https://github.com//tree/jhuang0/up_resource-agents_170602_0

Jackie Huang (4):
  resource-agents: fix dependencies
  resource-agents: fix install-sh not found
  resource-agents: fix builds error when S != B
  resource-agents: update to version 4.0.1

 .../resource-agents/fix-install-sh-not-found.patch | 60 ++++++++++++++++++++++
 ...uilds-when-srcdir-and-builddir-are-sepera.patch | 39 ++++++++++++++
 ...ce-agents_3.9.7.bb => resource-agents_4.0.1.bb} | 20 ++++++--
 3 files changed, 115 insertions(+), 4 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fix-install-sh-not-found.patch
 create mode 100644 meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents/fs.sh-fix-builds-when-srcdir-and-builddir-are-sepera.patch
 rename meta-cgl-common/recipes-cgl/cluster-resource-agents/{resource-agents_3.9.7.bb => resource-agents_4.0.1.bb} (82%)

-- 
2.11.0


