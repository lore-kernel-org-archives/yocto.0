Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20834E00CCE; Thu, 21 Feb 2019 03:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62653E00CB9
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:37:45 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1LBbX4i023663
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 21 Feb 2019 03:37:33 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.435.0;
	Thu, 21 Feb 2019 03:37:33 -0800
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <richard.purdie@linuxfoundation.org>, <mhalstead@linuxfoundation.org>,
	<ross.burton@intel.com>, <raj.khem@gmail.com>,
	<paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Thu, 21 Feb 2019 06:37:06 -0500
Message-ID: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Cc: lpd-cdc-core-dev@windriver.com, Zhangle.Yang@windriver.com
Subject: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Thu, 21 Feb 2019 11:37:47 -0000
Content-Type: text/plain

Hi RP and Yocto folks,

Currently AI on IoT edge becomes more and more popular, but there is no
machine learning framework in Yocto/OE. With the support of Eric
<Zhangle.Yang@windriver.com>, Robert <liezhi.yang@windriver.com>
and Randy <randy.macleod@windriver.com>, after two months effort, I've
integrated TensorFlow to Yocto.

Now, I contribute the patches to Yocto for review, and apply for creating
a layer named `meta-tensorflow' on Yocto.

For test convenient, there is a fork on github:
https://github.com/hongxu-jia/meta-tensorflow

BTW, I have contributed other 11 fundamental recipes to meta-openembedded
and all of them have been merged to master branch.

Please no hesitate to share your suggestion.

//Hongxu

Testing Commands:
-----------------
See README

Testing, Expected Results:
--------------------------
See README


