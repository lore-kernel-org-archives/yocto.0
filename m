Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89257E00B3E; Tue, 11 Sep 2018 01:38:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29348E00B23
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 01:38:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8B8cAaK016050
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Sep 2018 01:38:20 -0700
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.408.0; Tue, 11 Sep 2018 01:37:59 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <paul.eggleton@linux.intel.com>
Date: Tue, 11 Sep 2018 16:48:55 +0800
Message-ID: <cover.1536655311.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [layerindex-web][V2 PATCH 0/1] import_layer.py: add -t option for layer_type
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
X-List-Received-Date: Tue, 11 Sep 2018 08:38:52 -0000
Content-Type: text/plain

* V2:
  - Make -t option use LAYER_TYPE_CHOICES from models.py.

* V1:
  - Initial version

// Robert

The following changes since commit ac32edb5bdbdef30ccf3ef49af0977246571abaa:

  TODO: add some more items (2018-09-06 11:08:43 +1200)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/li
  http://git.pokylinux.org/cgit.cgi//log/?h=rbt/li

Robert Yang (1):
  import_layer.py: add -t option for layer_type

 layerindex/tools/import_layer.py | 38 ++++++++++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 6 deletions(-)

-- 
2.7.4


