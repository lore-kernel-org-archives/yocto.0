Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 24EC84C80B6B
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 13:01:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2010 11:01:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,237,1288594800"; d="scan'208";a="629260655"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 11:01:58 -0800
Received: from [10.255.13.141] (10.255.13.141) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 22 Nov 2010 12:01:58 -0700
Message-ID: <4CEABE21.40406@intel.com>
Date: Mon, 22 Nov 2010 11:01:53 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: When is it ok to link to host libraries?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Nov 2010 19:01:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I'd like to get some better clarity about what constitutes host 
contamination when it comes to building packages. Could someone with 
deeper knowledge of these issues clarify or comment on the following?

My understanding is that when building non -native recipes, there should 
be absolutely no linking to the libraries on the host system - meaning 
that autotols configure scripts and so on should not be determining 
which features are available based on what packages are installed on the 
host OS. The only exceptions to this are the use of some core system 
utilities (cp, mv, etc).

However, when it comes to -native recipes, is it acceptable to link to 
the host libraries? Since the package is intended to run on the same 
host, I would think this would be acceptable, but I'm not certain.

The problem I'm working on which prompted this inquiry is a segfault 
that is occurring with QEMU in certain circumstances. The latest Ubuntu 
(10.10, Maverick) with the proprietary NVIDIA Xorg driver also installs 
its own version of libGL, which is linked by qemu-native. If I uninstall 
the proprietary NVIDIA driver and rebuild qemu-native from scratch, the 
segfault does not occur.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

