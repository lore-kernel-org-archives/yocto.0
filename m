Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD3C8E00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:07 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3054677pbb.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:21:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=fQRbciRKMSlPv2GxcstiKQXqQ6qO0WWW7/Ln47SB0Go=;
	b=SFlQi3XLcxxif4Byv+fJNyuOL6a3NDa0hF0a39efZ45GANkZVAPM1YFJKGQXwzNpoZ
	eeHbNVZrSmeOVCoAnBCdlJ/nLCnSGa8RMEzd0w+vjRmOivy/TspLxv0bqcrrQ7SoF3qC
	Jx/qsJ5EiomVgtkMI1cZHPf0KWxctEKEYDUv8iY5SJYcsN8+Ps5FieeRW4LQampQ4dkE
	6vMTPODVPOUyRvHCTLQY5i115hCvSCzn+QGs2J3RSZq7BDmwVhQOQRxeJan+sP/Zi2nu
	dK9PrAtQQMuKMd/d9QMsGJv83+zZbP+Pyq3js4dQTQnqmR7sjhOETVcyz8OjDqBp9MGN
	zoQQ==
Received: by 10.68.190.137 with SMTP id gq9mr1724846pbc.34.1337984467713;
	Fri, 25 May 2012 15:21:07 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id tt5sm6191546pbc.12.2012.05.25.15.21.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:21:07 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>,
	Tom Zanussi <tom.zanussi@intel.com>
Date: Fri, 25 May 2012 15:20:51 -0700
Message-Id: <cover.1337984389.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
X-Gm-Message-State: ALoCoQkpDUkBWCsypgc7xqegguc13Ilk+Ct032NgqUw7bQAM1BVV0iEDRa2zcYOTokOCtmxzvW3Y
Subject: [PATCH 0/6][linux-yocto-3.2] fri2: update BSP configuration
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 May 2012 22:21:08 -0000

The following changes since commit 49f931bc294d5b6be60502bbd448cff5aa766235:

  meta/fishriver: remove redundant features and options (2012-05-14 17:10:36 -0500)

are available in the git repository at:
  git://git.yoctoproject.org/linux-yocto-2.6.37-contrib dvhart/meta/fri2
  http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=dvhart/meta/fri2

Darren Hart (6):
  fri2: Configuration update (usb, wifi, i2c)
  iwlwifi: Add a feature for iwlwifi
  iwlagn: Correct a comment typo
  fri2 update: drop NETDEVICE, e1xxx, usb-mass-storage, add iwlwifi
    feature
  fri2: add usb-mass-storage to standard and preempt-rt
  fri2: update base config

 meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   21 +++++++++----------
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    7 ++---
 meta/cfg/kernel-cache/features/iwlagn/iwlagn.scc   |    2 +-
 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg |    6 +++++
 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc |    6 +++++
 7 files changed, 28 insertions(+), 16 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.cfg
 create mode 100644 meta/cfg/kernel-cache/features/iwlwifi/iwlwifi.scc

-- 
1.7.5.4


