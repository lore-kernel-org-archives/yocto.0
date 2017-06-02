Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57A96E009A0; Fri,  2 Jun 2017 16:34:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1822EE0082A;
	Fri,  2 Jun 2017 16:34:20 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jun 2017 16:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,287,1493708400"; d="scan'208";a="94159510"
Received: from amritama-mobl1.amr.corp.intel.com ([10.252.140.245])
	by orsmga004.jf.intel.com with ESMTP; 02 Jun 2017 16:34:18 -0700
To: yocto-announce@yoctoproject.org, yocto@yoctoproject.org,
	meta-intel@yoctoproject.org
From: Tracy Graydon <tracy.graydon@intel.com>
Message-ID: <5931F5FA.7060201@intel.com>
Date: Fri, 2 Jun 2017 16:34:18 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
	Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
Subject: [ANNOUNCEMENT] meta-intel 7.0 for Yocto Project "pyro" 2.3 now available
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
X-List-Received-Date: Fri, 02 Jun 2017 23:34:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

All,

The meta-intel 7.0 layer for the Yocto Project 2.3 “pyro" release and board support packages are now available for download.

Tracy Graydon 
Intel Corporation

meta-intel 
-------------

repo: git://git.yoctoproject.org/meta-intel branch: pyro
tag: 7.0-morty-2.3 
hash: 7e8f98aa326f16edd679a95f7bb2daf4256479f3 
download: http://downloads.yoctoproject.org/releases/yocto/yocto-2.3/meta-intel-7.0-pyro-2.3.tar.bz2 
md5sum: fbb56931de38a5b0f6702982c0e73183


New Features:
----------------
linux-intel 4.9 kernel for an Intel maintained LTS based Linux Kernel
Added QEMU support for call meta-intel MACHINE targets


Updates:
----------
Linux-Yocto: 4.10.15
Linux-Intel: 4.9.27
Linux-Yocto 4.8.12
Linux-Yocto 4.4.60
Linux-Yocto 4.1.39

README: Update information for pyro release
linux-intel: Update SRCREVs
linux-intel: Update to 4.9.20
linux-intel/4.9: Update yocto-kernel-cache SRCREV
intel-microcode: Update to latest 20170511
maintainer: Update Maintainer list
rmc: update SRCREV for rmc recipe
rmc: update license file checksum
rmc: integration update
libyami: update to verssion 1.1.0
libyami-utils: update to verssion 1.1.0
DPDK: updated to 17.02
libva-intel-driver: Update to 1.7.3
thermald: updated to 1.5.4
Updated broxton-m machine subtype kernel SRCREV
systemd-boot: update 230 -> 232


Added: 
-------
libyami - Yet Another Multimedia Interface

