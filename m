Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACB74E008D9; Tue,  2 Dec 2014 00:06:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D644E00860
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 00:06:39 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44335875"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 02 Dec 2014 16:03:10 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sB28668R016938
	for <yocto@yoctoproject.org>; Tue, 2 Dec 2014 16:06:06 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 2 Dec 2014 16:06:27 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Dec 2014 16:03:21 +0800
Message-ID: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 08:06:44 -0000
Content-Type: text/plain

Bian Naimeng (2):
  [meta-cgl] device-mapper-multipath: add recipe
  [meta-cgl]drbd: add recipe

 .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
 .../device-mapper-multipath_0.5.0.bb               | 53 ++++++++++++++++++++
 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb     | 57 ++++++++++++++++++++++
 4 files changed, 134 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb

-- 
1.9.1


