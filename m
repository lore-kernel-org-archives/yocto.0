Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA017E00D50; Mon,  9 Oct 2017 20:32:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F369E00D23
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 20:32:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v9A3W0OF025872
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Mon, 9 Oct 2017 20:32:00 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Mon, 9 Oct 2017 20:31:59 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Oct 2017 11:30:43 +0800
Message-ID: <cover.1507606063.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 0/2] poky-cgl: avoid the linux bbappend adding cfgs for other distro
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
X-List-Received-Date: Tue, 10 Oct 2017 03:32:02 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

--
The following changes since commit 73d32950c45cc8d8d468e584be68c54c6e6574b9:

  kernel: Fix config warning for CONFIG_I2C_ALGOBIT (2017-10-03 10:15:47 +0200)

are available in the git repository at:

  https://github.com/jackiehjm/meta-cgl.git jhuang0/d_poky-cgl-kernel_171010_0
  https://github.com//tree/jhuang0/d_poky-cgl-kernel_171010_0

Jackie Huang (2):
  poky-cgl.conf: add poky-cgl into DISTROOVERRIDES
  cgl-common.inc: append SRC_URI for poky-cgl only

 meta-cgl-common/conf/distro/poky-cgl.conf           | 1 +
 meta-cgl-common/recipes-kernel/linux/cgl-common.inc | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.11.0


