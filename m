Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C0C9E00C4F; Thu, 12 Apr 2018 11:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E090CE00BFF;
	Thu, 12 Apr 2018 11:49:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Apr 2018 11:49:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,443,1517904000"; d="scan'208";a="33840702"
Received: from tgraydon-mac01.jf.intel.com ([10.24.9.10])
	by orsmga006.jf.intel.com with ESMTP; 12 Apr 2018 11:49:54 -0700
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <c97b878a-b8cc-4b53-49cf-d4663b2d8c0c@intel.com>
Date: Thu, 12 Apr 2018 11:49:54 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 2.5 (yocto-2.5_M3) now available
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
X-List-Received-Date: Thu, 12 Apr 2018 18:50:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

We are pleased to announce the third milestone release for Yocto Project 2.5 (yocto-2.5_M3) is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.5_M3/

poky f49ee61422c867516db252054e993df29f775136
bitbake 39d6a30a28f66c599e18beddbd847f40dcff623c
eclipse-poky-neon a5dbc01b96be55c4ec2f774af9996a8086e402ab
eclipse-poky-oxygen fbb91e5c5ad06470cd50ce1daa407a5f7d13c6ca
meta-qt3 f33b73a9563f2dfdfd0ee37b61d65d90197a456f
meta-qt4 f313dbee2ac3d5fcc9801407947d3cb6cfb90b5d
meta-gplv2 c591f97432047a2add48ff0ec9c20babba2915c6
meta-intel 11c2d33606669ab77467c040b5f45a6e3e188dd8
meta-mingw a07fe304228b7f41b5558de7d8f39fd5e8a430d2

Test report:

https://wiki.yoctoproject.org/wiki/WW15_-_2018-04-09-_Full_Test_Cycle_-_2.5_M3_rc1


Thank you.

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

