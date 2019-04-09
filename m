Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 171A9E00C14; Tue,  9 Apr 2019 16:29:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CC65E00AA9;
	Tue,  9 Apr 2019 16:29:53 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Apr 2019 16:29:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,331,1549958400"; d="scan'208";a="222040022"
Received: from tgraydon-mac01.jf.intel.com ([10.24.9.61])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2019 16:29:52 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <8849560e-8aa9-6f61-5103-b762190e881a@intel.com>
Date: Tue, 9 Apr 2019 16:29:52 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 2.7 (yocto-2.7_M3) now available
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
X-List-Received-Date: Tue, 09 Apr 2019 23:29:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

We are pleased to announce the third milestone release for Yocto Project 2.7 (yocto-2.7_M3) is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.7_M3/

poky: 753e2a0ede4449917c75353b57f13bbafe70fac8
oecore: 619a8ab875ee8e2914cd58947f342808d817833c
bitbake: e1f252408982a62485bbf874a01fd30a02aeed32
eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
meta-intel: c7c0e12c98cec527bcdcf26594d34bbeb16057c5
meta-mingw: 750706a3501ec9f5e3fa6dcbfb13a9027b6a875e
meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517

The YP 2.7 M3 rc1 report is summarized in the mailing list threads: 

QA Report: https://lists.yoctoproject.org/pipermail/yocto/2019-April/044667.html and the results are at 
Test Results: https://autobuilder.yocto.io/pub/releases/yocto-2.7_M3.rc1/testresults/
Build log: https://autobuilder.yoctoproject.org/typhoon/#/builders/83/builds/94
Release criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status#Milestone_3_-_Target_Mar._8.2C_2019


Thank you.

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

