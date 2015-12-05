Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF64E0097F; Fri,  4 Dec 2015 16:15:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBDEE00948;
	Fri,  4 Dec 2015 16:15:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 04 Dec 2015 16:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,382,1444719600"; d="scan'208";a="854290963"
Received: from changjus-mobl.amr.corp.intel.com ([10.252.202.171])
	by fmsmga001.fm.intel.com with ESMTP; 04 Dec 2015 16:15:19 -0800
References: <56622A8B.4020903@intel.com>
From: Tracy Graydon <tracy.graydon@intel.com>
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org
X-Forwarded-Message-Id: <56622A8B.4020903@intel.com>
Message-ID: <56622C97.1060009@intel.com>
Date: Fri, 4 Dec 2015 16:15:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <56622A8B.4020903@intel.com>
Subject: [ANNOUNCEMENT] meta-intel 4.0 for Yocto Project "jethro" 2.0 now available
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
X-List-Received-Date: Sat, 05 Dec 2015 00:15:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


All,

The meta-intel 4.0 layer for the Yocto Projects 2.0 "jethro" release and
board support packages are now available for download.

Tracy Graydon
Intel Corp.

meta-intel
-----------------------

repo: git://git.yoctoproject.org/meta-intel
branch: jethro
tag: 4.0-fido-2.0
hash: 1ce13b3d39b2da79916e3a175cee6baa507290f1
download:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/meta-intel-4.0-jethro-2.0.tar.bz2
md5sum: 9399950f95f4cbc17fdcefb235bddf22

BSP downloads
-----------------------

Intel® Common Core BSP (intel-core2-32 and intel-corei7-64) 
https://www.yoctoproject.org/downloads/bsps/jethro20/intel-core2-32 
https://www.yoctoproject.org/downloads/bsps/jethro20/intel-corei7-64 
https://www.yoctoproject.org/downloads/bsps/jethro20/intel-quark

Downloads:
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/machines/intel-core2-32/intel-core2-32-4.0-jethro-2.0.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/machines/intel-corei7-64/intel-corei7-64-4.0-jethro-2.0.tar.bz2
http://downloads.yoctoproject.org/releases/yocto/yocto-2.0/machines/intel-quark/intel-quark-4.0-jethro-2.0.tar.bz2

md5sums:
afcf9d4d919cc787a4bf991964441bd3  intel-core2-32-4.0-jethro-2.0.tar.bz2
a877c100ee01e4c78c6738149599b374 intel-corei7-64-4.0-jethro-2.0.tar.bz2
e664d8b2973b177d430853a951ffa500  intel-quark-4.0-jethro-2.0.tar.bz2

Features:
-----------------------
- Removed BSPs: Crownbay, eMenlow, FRI2, older 32-bit NUC, sugarbay,
jasperforest, romley
- Updated the Linux Kernel to 4.1.8
- Added Intel-quark BSP
- iucode-tool: bump version to 1.3
- intel-microcode: bump version to 20150121
- xf86-video-ast: upgrade to 1.0.1
- intel-gpu-tools: upgrade to version 1.11



