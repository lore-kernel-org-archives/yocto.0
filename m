Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30839E011B7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 22:58:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p755wHux024319
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 4 Aug 2011 22:58:17 -0700 (PDT)
Received: from localhost (128.224.162.159) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 4 Aug 2011 22:58:16 -0700
From: <jingdong.lu@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Fri, 5 Aug 2011 13:58:12 +0800
Message-ID: <cover.1312523399.git.jingdong.lu@windriver.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.159]
Cc: yocto@yoctoproject.org
Subject: [PATCH 0/1] meta/pandaboard: add pandaboard bsp
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
X-List-Received-Date: Fri, 05 Aug 2011 05:58:09 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Add pandaboard bsp

Jingdong Lu (1):
  pandaboard: add pandaboard bsp

 .../bsp/pandaboard/pandaboard-non_hardware.cfg     |   30 ++
 .../bsp/pandaboard/pandaboard-standard.scc         |    7 +
 .../cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg |  346 ++++++++++++++++++++
 .../cfg/kernel-cache/bsp/pandaboard/pandaboard.scc |    5 +
 4 files changed, 388 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-non_hardware.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard-standard.scc
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.cfg
 create mode 100644 meta/cfg/kernel-cache/bsp/pandaboard/pandaboard.scc


