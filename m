Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EEE5E00BBD; Mon, 23 Jul 2018 03:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A58D1E00B7D
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 03:19:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6NAJmTk014717
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 23 Jul 2018 03:19:49 -0700 (PDT)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.399.0; Mon, 23 Jul 2018 03:19:47 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
Date: Mon, 23 Jul 2018 18:30:00 +0800
Message-ID: <cover.1532341697.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 0/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Mon, 23 Jul 2018 10:19:52 -0000
Content-Type: text/plain

The following changes since commit 65d058237f96a151c913a70ba4d639c7aa0fb0b5:

  Dockerfile: Reduce image size by merging RUN stages together (2018-07-23 08:40:00 +0200)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/li
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/li

Robert Yang (1):
  import_layer.py: add -t option for layer_type

 layerindex/tools/import_layer.py | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

-- 
2.7.4


