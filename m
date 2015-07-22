Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FADCE00A4D; Wed, 22 Jul 2015 14:29:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC3CE00A28
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 14:29:53 -0700 (PDT)
X-Halon-ID: c80d0c09-30b8-11e5-b1e4-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.localdomain (unknown [95.197.14.162])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 22 Jul 2015 23:29:48 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Wed, 22 Jul 2015 23:29:51 +0200
Message-Id: <cover.1437600372.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] packagegroup-rpi-test: Add pi-blaster
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
X-List-Received-Date: Wed, 22 Jul 2015 21:29:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit 7457bf182c8fd550ec877ecd786a3edd16e65495:

  wiringpi: Bump SRCREV (2015-07-19 14:53:27 +0200)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_minor_fix
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_minor_fix

Petter Mabäcker (1):
  packagegroup-rpi-test: Add pi-blaster

 recipes-core/packagegroups/packagegroup-rpi-test.bb | 1 +
 1 file changed, 1 insertion(+)

-- 
1.9.1


