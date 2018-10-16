Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EF14E00B9F; Tue, 16 Oct 2018 15:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB496E0095C;
	Tue, 16 Oct 2018 15:23:36 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Oct 2018 15:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,389,1534834800"; d="scan'208";a="81988018"
Received: from nsstewa-mobl1.amr.corp.intel.com ([10.254.37.15])
	by orsmga008.jf.intel.com with ESMTP; 16 Oct 2018 15:23:35 -0700
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
Message-ID: <1313fe96-137b-319d-7563-dc1c4186c63a@intel.com>
Date: Tue, 16 Oct 2018 15:23:34 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 2.6 (yocto-2.6_M3) now available
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
X-List-Received-Date: Tue, 16 Oct 2018 22:23:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

We are pleased to announce the third milestone release for Yocto Project 2.6 (yocto-2.6_M3) is available for download now.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.6_M3/

bitbake e72be96cfa9f05fda5f420c7cfa8bcfa9304b884
eclipse-poky-neon 303e46a6848f1937d12541a7fd58e61aa1361225
eclipse-poky-oxygen f1a20dc6a5a252a4ed4484b618d579cbbc7d146e
meta-gplv2 813b7d2b5573d8591c6cd8087b326f0a0703d6b9
meta-intel ba19605153725d66dc55e0a16962ae684e66c9e4
meta-mingw 17887019257143f649a0f2e9caa9f814f7fb0b2a
meta-qt3 02f273cba6c25f5cf20cb66d8a417a83772c3179
meta-qt4 8e791c40140460825956430ba86b6266fdec0a93
oecore e3f5ceec690379d64bd38330111a32f6c8fc6353
poky c6edf2f8bc5778b267e3a7f4e8875d22f359fb8d

Test report:

https://wiki.yoctoproject.org/wiki/WW41_-_2018-10-03_-_Full_Test_Cycle_2.6_M3_RC1

Thank you.

Tracy Graydon
Yocto Project Build and Release
tracy.graydon@intel.com

