Return-Path: <yejun.guo@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67C79E00C6E
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 19:16:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2014 19:16:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,783,1389772800"; d="scan'208";a="505832299"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2014 19:16:51 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
	FMSMSX104.amr.corp.intel.com (10.19.9.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 2 Apr 2014 19:16:51 -0700
Received: from shsmsx152.ccr.corp.intel.com (10.239.6.52) by
	fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 2 Apr 2014 19:16:50 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.11]) by
	SHSMSX152.ccr.corp.intel.com ([169.254.6.130]) with mapi id
	14.03.0123.003; Thu, 3 Apr 2014 10:16:49 +0800
From: "Guo, Yejun" <yejun.guo@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: how to set LICENSE for llvm in .bb file
Thread-Index: Ac9O4rCylqoYf5MSQVmwmbx+UlgfLA==
Date: Thu, 3 Apr 2014 02:16:48 +0000
Message-ID: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Thu, 03 Apr 2014 02:16:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm adding package llvm which has its own license: University of Illinois/N=
CSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT . =
 I tried something for LICENSE in .bb file, but is not recognized by the sy=
stem. Could you please let me know how to set this value? Thanks a lot!


Thanks


