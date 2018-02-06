Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7DE6E00E00; Tue,  6 Feb 2018 08:34:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E6CAE005A2
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 08:34:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w16GYU6a005440
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Feb 2018 08:34:30 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 6 Feb 2018 08:34:26 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 6 Feb 2018 11:34:26 -0500
Message-ID: <cover.1517934700.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/3] meta-poky: update default kernel versions to match oe-core
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
X-List-Received-Date: Tue, 06 Feb 2018 16:34:32 -0000
Content-Type: text/plain

Hi all,

This series applies on top of one that I just sent for oe-core, it updates
the default kernels to match what is available in master.

Cheers,

Bruce

The following changes since commit c656a3351640da84c77588f1474fe3b43117f2c2:

  machines: bump default linux-yocto to v4.15 (2018-02-06 10:26:49 -0500)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (3):
  poky-lsb: update default kernel to v4.14
  poky: update default kernel to v4.15
  poky-tiny: bump to v4.14

 meta-poky/conf/distro/poky-lsb.conf  | 2 +-
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.5.0


