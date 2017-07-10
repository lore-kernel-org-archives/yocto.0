Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 701A6E00C2E; Mon, 10 Jul 2017 03:43:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8DF5E00C2A
	for <yocto@lists.yoctoproject.org>;
	Mon, 10 Jul 2017 03:43:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6AAhPEV026361
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 10 Jul 2017 03:43:26 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 10 Jul 2017 03:43:25 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <ross.burton@intel.com>
Date: Mon, 10 Jul 2017 03:43:24 -0700
Message-ID: <cover.1499683248.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.10.2
MIME-Version: 1.0
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/1 V2] rxvt-unicode: move it to BBFILES
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
X-List-Received-Date: Mon, 10 Jul 2017 10:43:33 -0000
Content-Type: text/plain

* V2
  - Shuld not modify LICENSE, only move the location

* V1
  - Wrongly modified LICENSE

// Robert

The following changes since commit d96ec8f6895d34cc9b05d9a0101ac496db324b18:

  gnutls: make it independent on gnutls.inc from oe-core (2017-06-23 14:29:08 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/rxvt-unicode
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/rxvt-unicode

Robert Yang (1):
  rxvt-unicode: move it to BBFILES

 recipes-sato/{ => rxvt-unicode}/rxvt-unicode.inc          |   0
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.desktop |   0
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.png     | Bin
 recipes-sato/rxvt-unicode/{ => rxvt-unicode}/xwc.patch    |   0
 recipes-sato/{ => rxvt-unicode}/rxvt-unicode_9.20.bb      |   0
 5 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-sato/{ => rxvt-unicode}/rxvt-unicode.inc (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.desktop (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/rxvt.png (100%)
 rename recipes-sato/rxvt-unicode/{ => rxvt-unicode}/xwc.patch (100%)
 rename recipes-sato/{ => rxvt-unicode}/rxvt-unicode_9.20.bb (100%)

-- 
2.10.2


