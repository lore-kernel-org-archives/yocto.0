Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D6FE00E3A; Fri, 14 Jun 2019 07:49:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EADEE00E07
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 07:49:51 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5EEmrs0030351
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 14 Jun 2019 07:49:09 -0700
Received: from fidler.wrs.com (172.25.44.4) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.439.0;
	Fri, 14 Jun 2019 07:48:57 -0700
From: Randy MacLeod <Randy.MacLeod@windriver.com>
To: <yocto@yoctoproject.org>, <anibal.limon@linaro.org>
Date: Fri, 14 Jun 2019 10:48:49 -0400
Message-ID: <20190614144853.25839-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
MIME-Version: 1.0
Subject: [ptest-runner][PATCH v2] 3 old patches + utils: ensure child can be session leader
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
X-List-Received-Date: Fri, 14 Jun 2019 14:49:54 -0000
Content-Type: text/plain

My patch needs Richards previous 3 patches so I've added them here.

I've cleaned up the patch a bit since v1; mostly it's indentation and
other cosmetic changes. I have added a bit more error handling and
I've renamed get_slave_pty to setup_slave_pty to more accurately 
reflect what the function does. Also I've cleaned up the code to only
use open_pty() to get the tty name.

Care to release an update now that oe-core 2.8-M1 is in QA?

../Randy



