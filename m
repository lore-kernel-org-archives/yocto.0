Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A8C1E00CB4; Wed, 11 Oct 2017 19:13:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7200DE00CA2
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 19:13:48 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v9C2DlNC002845
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 19:13:47 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 11 Oct 2017 19:13:46 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 12 Oct 2017 10:12:28 +0800
Message-ID: <cover.1507774123.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 0/2 v2] poky-cgl: avoid the linux bbappend adding cfgs for other distro
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
X-List-Received-Date: Thu, 12 Oct 2017 02:13:49 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

v2 changes:
add the missing leading space for _append.


--
The following changes since commit 73d32950c45cc8d8d468e584be68c54c6e6574b9:

  kernel: Fix config warning for CONFIG_I2C_ALGOBIT (2017-10-03 10:15:47 +0200)

are available in the git repository at:

  https://github.com/jackiehjm/meta-cgl.git jhuang0/d_poky-cgl-kernel_171012_0
  https://github.com//tree/jhuang0/d_poky-cgl-kernel_171012_0

Jackie Huang (2):
  poky-cgl.conf: add poky-cgl into DISTROOVERRIDES
  cgl-common.inc: append SRC_URI for poky-cgl only

 meta-cgl-common/conf/distro/poky-cgl.conf           | 1 +
 meta-cgl-common/recipes-kernel/linux/cgl-common.inc | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

-- 
2.11.0


