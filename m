Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3599E007CD; Sat, 10 Jan 2015 07:45:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 72 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Jan 2015 07:45:08 PST
Received: from bin-vsp-out-02.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7448EE006AF
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 07:45:08 -0800 (PST)
X-Halon-ID: 7aec047f-98df-11e4-8a31-005056917f90
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 16:43:53 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Sat, 10 Jan 2015 16:43:46 +0100
Message-Id: <cover.1420901279.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-yocto] [PATCH 0/1] tiny-init: set proper S value
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
X-List-Received-Date: Sat, 10 Jan 2015 15:45:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Peter Mabacker <petter@technux.se>

The following changes since commit 876370419a50264a28feb4278f8c465b0019e709:

  bitbake: toaster: implementation of project page (2015-01-08 22:34:38 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/bug5627_m-y
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/bug5627_m-y

Petter Mabäcker (1):
  tiny-init: set proper S value

 meta-yocto/recipes-core/tiny-init/tiny-init.bb | 2 ++
 1 file changed, 2 insertions(+)

-- 
1.9.1


