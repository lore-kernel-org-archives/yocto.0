Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEF02E00503; Tue, 29 Nov 2016 12:17:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3512CE0049F;
	Tue, 29 Nov 2016 12:17:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 29 Nov 2016 12:17:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,570,1473145200"; d="scan'208";a="11230211"
Received: from dsmarti2-mobl4.amr.corp.intel.com ([10.254.88.39])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2016 12:17:04 -0800
From: Tracy Graydon <tracy.graydon@intel.com>
To: meta-intel@yoctoproject.org, yocto-announce@yoctoproject.org,
	yocto@yoctoproject.org
Message-ID: <583DE241.4010008@intel.com>
Date: Tue, 29 Nov 2016 12:17:05 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] meta-intel 6.0 for Yocto Project "morty" 2.2 now available
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
X-List-Received-Date: Tue, 29 Nov 2016 20:17:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

All,

The meta-intel 6.0 layer for the Yocto Project 2.2 “morty" release and board support packages are now available for download.

Tracy Graydon 
Intel Corporation

meta-intel 
-------------

repo: git://git.yoctoproject.org/meta-intel branch: morty 
tag: 6.0-morty-2.2 
hash: 0c42b70b33d0c7524dd71f9c40c47316fb548bbc 
download: http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/meta-intel-6.0-morty-2.2.tar.bz2 
md5sum: 6faa9141e60698b5307fb60039651416

BSP downloads 
--------------

Intel® Common Core BSP (intel-core2-32 and intel-corei7-64) 
https://www.yoctoproject.org/downloads/bsps/morty22/intel-core2-32 
https://www.yoctoproject.org/downloads/bsps/morty22/intel-corei7-64 
https://www.yoctoproject.org/downloads/bsps/morty22/intel-quark

Downloads: 
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/machines/intel-core2-32/intel-core2-32-6.0-morty-2.2.tar.bz2 
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/machines/intel-corei7-64/intel-corei7-64-6.0-morty-2.2.tar.bz2 
http://downloads.yoctoproject.org/releases/yocto/yocto-2.2/machines/intel-quark/intel-quark-6.0-morty-2.2.tar.bz2

md5sums: 
353378c819292edcaf7feac473a068ed  intel-core2-32-6.0-morty-2.2.tar.bz2
3d557f41f565bfdaeceb984193d75288  intel-corei7-64-6.0-morty-2.2.tar.bz2
18847e8408e7f8431238e6117fcc070d  intel-quark-6.0-morty-2.2.tar.bz2


New Features:
----------------
* Added Linux-Yocto 4.8 Kernel - Support newer Intel HW such as Broxton
* Linux-Yocto 4.4 is the LTS kernel
* Linux-Yocto 4.1 is the LTSI kernel
* Added Runtime Machine Configurationk
* Cleanup README Information

Updates:
----------
Linux-Yocto 4.8.3
Linux-Yocto 4.4.26
Linux-Yocto 4.1.33

dpdk: Moved and updated DPDK to 16.07
lms: Updated to lms7_7.1.20 and lms8_8.0.0
xf86-video-ast: Upgrade to 1.1.5
intel-gpu-tools: Upgrade to 1.16
meta-isg: dpdk: Update v2.2.0 -> v16.04
meta-isg: qat16: update v2.3.0-34 -> v2.6.0-65
libva-intel-driver: update to 1.7.2
libva: update to 1.7.2
efilinux: update 1.0 -> 1.1
gstreamer-vaapi: Update to 1.8.2
iucode-tool: Update to 1.5
intel-microcode: Update to the 20160714 version

Added thermald_1.5.3.bb
Added openssl-qat_0.4.9-009.bb
Added qat16_2.5.0-80.bb  qat16_2.6.0-65.bb  qat16.inc
Added zlib-qat_0.4.7-002.bb

