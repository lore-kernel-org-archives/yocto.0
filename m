Return-Path: <Rob.Woolley@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E0B8E00A9A; Thu,  6 Apr 2017 11:44:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B210E00A71
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 11:44:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v36IiLlN023922
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 6 Apr 2017 11:44:21 -0700
Received: from ala-lpggp2.wrs.com (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 6 Apr 2017 11:44:20 -0700
From: Rob Woolley <rob.woolley@windriver.com>
To: <andrei@gherzan.ro>, <yocto@yoctoproject.org>
Date: Thu, 6 Apr 2017 11:44:17 -0700
Message-ID: <20170406184420.55160-1-rob.woolley@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH v2 0/3] pitft: Add support for pitft35r
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
X-List-Received-Date: Thu, 06 Apr 2017 18:44:26 -0000
Content-Type: text/plain

As requested, I have split the patch into separate commits for:

  1. dtbo inclusion
  2. rpi-config changes
  3. Documentation commit

I ordered them this way in case a user ever walked through the
commits in the git tree.  This way the prerequisites are present
before the feature is advertised in the documentation.

Hope this works for you.  Let me know if there are any additional 
changes that need to be made.

Regards,
Rob

