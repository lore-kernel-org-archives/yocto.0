Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EC1DE00BF5; Tue,  2 Feb 2016 06:39:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA7CE00BFE
	for <yocto@yoctoproject.org>; Tue,  2 Feb 2016 06:39:48 -0800 (PST)
Received: from comp_016_pc_buildenv.localdomain (unknown [31.182.60.238])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id C0A9A239D9A;
	Tue,  2 Feb 2016 15:31:53 +0100 (CET)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Tue,  2 Feb 2016 15:31:44 +0100
Message-Id: <1454423507-25187-1-git-send-email-maciej.borzecki@open-rnd.pl>
X-Mailer: git-send-email 2.5.0
Cc: Maciek Borzecki <maciek.borzecki@gmail.com>
Subject: [meta-raspberrypi][PATCH 0/3] libexecdir fixes
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
X-List-Received-Date: Tue, 02 Feb 2016 14:39:49 -0000

A couple of fixes that resolve issues with recent change of libexecdir
in OE-core.

The first patch cleans up the recipe to install rpi-mkimage tools into
${libexecdir}/rpi-mkimage. This preserves the original nesting of
rpi-mkimage under ${libdir}.

The 2nd and 3rd patch use ${STAGING_LIBEXECDIR_NATIVE} rather than a mix
of ${STAGING_DIR_NATIVE}${libexecdir} to keep things clean.

Maciej Borzecki (3):
  rpi-mkimage: install tools under {libexecdir}/rpi-mkimage
  u-boot-rpi: use STAGING_LIBEXECDIR_NATIVE for rpi-mkimage tools
  linux-raspberrypi: use STAGING_LIBEXECDIR_NATIVE for rpi-mkimage tools

 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 4 ++--
 recipes-bsp/u-boot/u-boot-rpi_git.bb       | 2 +-
 recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

--
2.5.0


