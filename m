Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F290EE00C1E; Tue,  5 Mar 2019 14:45:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C119E0097C;
	Tue,  5 Mar 2019 14:45:30 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Mar 2019 14:45:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,445,1544515200"; d="scan'208";a="139429238"
Received: from tjgoh-mobl.ccr.corp.intel.com ([10.254.10.40])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2019 14:45:29 -0800
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <572ab631-53d4-a8c6-42ff-1d69b5308414@intel.com>
Date: Tue, 5 Mar 2019 14:45:28 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 2.7 (yocto-2.7_M2) now available
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
X-List-Received-Date: Tue, 05 Mar 2019 22:45:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

We are pleased to announce the second milestone release for Yocto Project 2.7 (yocto-2.7_M2) is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.7_M2/

poky: be52da152a4d9f9e798844f592ec9ae7e051c658
oecore: 2dbbf598192ae2b3aa488df042f56aa6c6634a00
bitbake: d73dbc3580faa1225d95ae4cefac4879ca3c1b2f
eclipse-poky-neon: cd86f167be58a11b289af4ef236b4adec57ec316
eclipse-poky-oxygen: 210c58c5a7147127f9c840718c6cd2a56e871718
meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
meta-intel: 29e4db5bf484f18e41bc9123161b1c069e60a128
meta-mingw: 423433e3d31a32dbb80203c628e808442d440ad1
meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517

Test report:

https://wiki.yoctoproject.org/wiki/WW07_-_2019-02-14_-_Full_Test_Cycle_2.7_M2_RC2

Thank you.

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

