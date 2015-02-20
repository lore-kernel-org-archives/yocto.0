Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16EC9E002F9; Fri, 20 Feb 2015 08:40:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155FAE002AC
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 08:40:35 -0800 (PST)
X-Halon-ID: 44627a27-b91f-11e4-a613-005056916f53
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 17:41:06 +0100 (CET)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri, 20 Feb 2015 17:40:21 +0100
Message-Id: <cover.1424450237.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 0/1] layer.conf: set high layer priority
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
X-List-Received-Date: Fri, 20 Feb 2015 16:40:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The following changes since commit d8bf60ce6c4a6c6371527c6df2e3243d2771c0cc:

  README: Github repo changed (2015-02-14 02:00:57 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib petmab/rpi_layer_prio
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/rpi_layer_prio

Petter Mabäcker (1):
  layer.conf: set high layer priority

 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.9.1


