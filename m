Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 198314C806DA
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 04:08:58 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Oct 2010 02:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,349,1283756400"; d="scan'208";a="565337203"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 19 Oct 2010 02:08:46 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 19 Oct 2010 17:07:29 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 19 Oct 2010 17:07:28 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 19 Oct 2010 17:07:27 +0800
Thread-Topic: [PULL] at: Non root install patch is not necessary (Bug 246)
Thread-Index: ActvbQ1ups/rdDS+Rx++sKpjEY1t/g==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL] at: Non root install patch is not necessary (Bug 246)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 09:08:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

meta/recipes-extended/at/at_3.1.12.bb               |    1
 meta/recipes-extended/at/files/nonrootinstall.patch |   75 ---------------=
-----
 2 files changed, 76 deletions(-)

Mei Lei (1):
      at: Non root install patch is not necessary (Bug 246) Pull URL:=20

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlmei3/distro

commit 22a1491482bdd0b8fe1bac3f89a2b4dad0a94a8c
Author: Mei Lei <lei.mei@intel.com>
Date:   Tue Oct 19 14:23:51 2010 +0800

   at: Non root install patch is not necessary (Bug 246)

   Removed nonrootinstall patch and modified the file which used this patch

   Fix [BUGID #246]

   Signed-off-by: Mei Lei <lei.mei@intel.com>



---
Mei, Lei
Email: lei.mei@intel.com



