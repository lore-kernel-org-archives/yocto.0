Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B5F6E00CD8; Thu, 10 Jan 2019 16:25:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2145E00CB0;
	Thu, 10 Jan 2019 16:25:12 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jan 2019 16:25:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,463,1539673200"; d="scan'208";a="309420907"
Received: from chongmei-mobl1.amr.corp.intel.com ([10.251.153.185])
	by fmsmga006.fm.intel.com with ESMTP; 10 Jan 2019 16:25:03 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <ac68ac2b-26ae-d981-6d23-73c804f90c01@intel.com>
Date: Thu, 10 Jan 2019 16:25:01 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 2.7 (yocto-2.7_M1) now available
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
X-List-Received-Date: Fri, 11 Jan 2019 00:25:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

We are pleased to announce the first milestone release for Yocto Project 2.7 (yocto-2.7_M1) is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.7_M1/

poky: fe43e599327f26b399c1883205e988236a5e51bd
oecore: 20aea61385e1a53ac245353899277ba20104ed2f
bitbake: f02114cb70e8f6f1d32e19c02b758fe0aadecd19
eclipse-poky-neon: 9ab82dc61d603f3b1456059e9afafab806d0ca0a
eclipse-poky-oxygen: 94df2cc13127b7347b26e473c3b5c583f9a2b350
meta-gplv2: aabc30f3bd03f97326fb8596910b94639fea7575
meta-intel: 5bd939d746126a22af5e52139a54d1696578f902
meta-mingw: fa4ea76d93c87a2ad3ce88b052c282106b2761e4
meta-qt3: 23d7543ebd7e82ba95cbe19043ae4229bdb3b6b1
meta-qt4: b37d8b93924b314df3591b4a61e194ff3feb5517

Test report:

https://wiki.yoctoproject.org/wiki/WW01_-_2019-01-02_-_Full_Test_Cycle_2.7_M1_RC1

Thank you.

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

