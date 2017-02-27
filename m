Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBF0BE00970; Sun, 26 Feb 2017 19:12:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FB8AE00935
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 19:12:39 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v1R3CaM7006133
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 26 Feb 2017 19:12:36 -0800
Received: from yow-dellw-nn.wrs.com (128.224.56.14) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Sun, 26 Feb 2017 19:12:36 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 26 Feb 2017 22:12:33 -0500
Message-ID: <cover.1488165049.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/2] poky/yocto-bsps: kernel version updates
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
X-List-Received-Date: Mon, 27 Feb 2017 03:12:40 -0000
Content-Type: text/plain

Hi all,

These patches depend on the series sent to oe-core on Sunday February 26th.

That series introduces 4.10 as the latest kernel, and includes built/boot
testing for the qemu machines. As such, we can jump over 4.9 and make
4.10 the default version.

Also, since 4.4 is dropped in that series, we drop the 4.4 bbappend.

Bruce

The following changes since commit ebd2ca05bb2fff117f0467bb02762757c469ec6e:

  linux-yocto: drop 4.4 recipes (2017-02-26 21:52:40 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  poky: make 4.10 the qemu* default
  yocto-bsp: remove 4.4 bbappend

 meta-poky/conf/distro/poky.conf                    | 14 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.4.bbappend  | 26 ----------------------
 2 files changed, 7 insertions(+), 33 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend

-- 
2.5.0


