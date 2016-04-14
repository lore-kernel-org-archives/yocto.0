Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5E2EE00DAF; Thu, 14 Apr 2016 03:58:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08008E00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:58:25 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CpBACbdg9X/0oKEKxehAt9BrgahA4ahXSCAgEBAQEBAYENhUEogRYOymkBAQgghiGJVoUKBZgLgVSEI4gYgU9khxyFP48phEtqiHx+AQEB
X-IPAS-Result: A2CpBACbdg9X/0oKEKxehAt9BrgahA4ahXSCAgEBAQEBAYENhUEogRYOymkBAQgghiGJVoUKBZgLgVSEI4gYgU9khxyFP48phEtqiHx+AQEB
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:58:32 +0200
Message-ID: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 0/5] fix -Wextra GCC warnings
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
X-List-Received-Date: Thu, 14 Apr 2016 10:58:29 -0000
Content-Type: text/plain

This series adds the -Wextra GCC flag and fixes the found warnings.

Richard Leitner (5):
  configure: add -Wextra GCC flag
  psplash-fb: fix sign-compare warning
  psplash-fb: remove unused parameter from psplash_fb_text_size
  psplash: remove unused parameter length from parse_command
  psplash: fix remaining unused-parameter warnings

 configure.ac      |  2 +-
 psplash-console.c |  2 +-
 psplash-fb.c      |  5 ++---
 psplash-fb.h      |  3 +--
 psplash.c         | 10 +++++-----
 psplash.h         |  6 ++++++
 6 files changed, 16 insertions(+), 12 deletions(-)

-- 
2.1.4


