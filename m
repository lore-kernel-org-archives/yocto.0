Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2019E00961; Mon, 27 Apr 2015 23:59:33 -0700 (PDT)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Apr 2015 23:59:31 PDT
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF04CE0086D
	for <yocto@yoctoproject.org>; Mon, 27 Apr 2015 23:59:31 -0700 (PDT)
X-Halon-ID: f60234ae-ed73-11e4-9f47-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2015 08:58:23 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Tue, 28 Apr 2015 08:58:17 +0200
Message-Id: <cover.1430204060.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] linux-raspberrypi: Update 3.18 branch to 3.18.11
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
X-List-Received-Date: Tue, 28 Apr 2015 06:59:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit b896a7da70dd7a16ba7ffd664f7747cb37e1d142:

  .gitignore: Ignore some stuff (2015-03-12 22:20:51 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_bump_318
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_bump_318

Petter Mabäcker (1):
  linux-raspberrypi: Update 3.18 branch to 3.18.11

 recipes-kernel/linux/linux-raspberrypi_3.18.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

-- 
1.9.1


