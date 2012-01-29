Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77F38E00599
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 17:57:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0T1veGf000488
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 17:57:40 -0800 (PST)
Received: from localhost (128.224.162.192) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 28 Jan 2012 17:57:40 -0800
From: Jingdong.Lu@windriver.com
To: <yocto@yoctoproject.org>
Date: Sun, 29 Jan 2012 09:57:35 +0800
Message-ID: <cover.1326792067.git.jingdong.lu@windriver.com>
X-Mailer: git-send-email 1.7.0.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.192]
Subject: [PATCH 0/1]meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y
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
X-List-Received-Date: Sun, 29 Jan 2012 01:57:41 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Fix bug [YOCTO #1898]

meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y instead of CONFIG_PANEL_GENERIC=y

Jingdong Lu (1):
  meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y

 .../kernel-cache/bsp/beagleboard/beagleboard.cfg   |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)


