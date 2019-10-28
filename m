Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C253E00E0E; Mon, 28 Oct 2019 15:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
Received: from tulikuusama2.dnainternet.net (tulikuusama3.dnainternet.net
	[83.102.40.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F40DE00EB8
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 15:08:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id 3192E291C5;
	Mon, 28 Oct 2019 23:59:46 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
Received: from tulikuusama2.dnainternet.net ([83.102.40.155])
	by localhost (tulikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet,
	port 10041)
	with ESMTP id oAfF12iyXMwh; Mon, 28 Oct 2019 23:59:45 +0200 (EET)
Received: from omenapuu2.dnainternet.net (omenapuu2.dnainternet.net
	[83.102.40.54])
	by tulikuusama2.dnainternet.net (Postfix) with ESMTP id BC0EA29602;
	Mon, 28 Oct 2019 23:59:45 +0200 (EET)
Received: from localhost.localdomain (178-75-137-78.bb.dnainternet.fi
	[178.75.137.78])
	by omenapuu2.dnainternet.net (Postfix) with ESMTP id 4146D2A8;
	Mon, 28 Oct 2019 23:59:42 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
To: yocto@yoctoproject.org
Date: Mon, 28 Oct 2019 23:59:24 +0200
Message-Id: <20191028215927.25625-1-Anders.Montonen@iki.fi>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][thud][PATCH 0/3] AppArmor fixes for Thud
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
X-List-Received-Date: Mon, 28 Oct 2019 22:09:01 -0000

This series backports two patches from master, and fixes one xargs
incompatibility. Together, this allows AppArmor run on an Arm target
under systemd.

Anders Montonen (1):
  apparmor: Fix xargs error

Armin Kuster (2):
  apparmor: ptest fail to build on arm
  apparmor: fix systemd support so it works

 recipes-security/AppArmor/apparmor_2.12.bb | 38 ++++++++++++++++++----
 1 file changed, 31 insertions(+), 7 deletions(-)

-- 
2.17.1


