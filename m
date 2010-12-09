Return-Path: <liping.ke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1123E4C8123C
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 03:29:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Dec 2010 01:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,319,1288594800"; d="scan'208";a="359251199"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 09 Dec 2010 01:29:22 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 17:28:59 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 17:28:59 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 9 Dec 2010
	17:28:58 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Thu, 9 Dec 2010 17:28:53 +0800
Thread-Topic: PULL] ADT installer script implementation, Liping Ke
Thread-Index: AcuXg38e2UrJcVRuQMOv8z8Es1XcBA==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: A4CB BV/8 B/wC CqVF DHig EMFd GT/j HXyd Hjb/ I5Cx I6md
	JYGh JZz+ J519 J6Es
	KE4A; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {88C3FAEB-46B7-4EE8-A250-AE27717F5AFA};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Thu,
	09 Dec 2010 09:28:53 GMT;
	UABVAEwATABdACAAQQBEAFQAIABpAG4AcwB0AGEAbABsAGUAcgAgAHMAYwByAGkAcAB0ACAAaQBtAHAAbABlAG0AZQBuAHQAYQB0AGkAbwBuACwAIABMAGkAcABpAG4AZwAgAEsAZQA=
x-cr-puzzleid: {88C3FAEB-46B7-4EE8-A250-AE27717F5AFA}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: PULL] ADT installer script implementation, Liping Ke
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
X-List-Received-Date: Thu, 09 Dec 2010 09:29:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Saul

This pull request includes initial ADT(Yocto Application Development Tools)=
 installer script implementation.

Pull URL: git://git.pokylinux.org/poky-contrib.git
Branch: lke/adt_installer_initial
Browse: http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dlke=
/adt_installer_initial&id=3Da06769b01d7b18894ad413daa8159f74c90f6c0f


Thanks,
criping



Add initial yocto adt installer scriptlke/adt_installer_initial
Below patches are for installing Yocto Application Development Tools.
opkg files include both 32 bit and 64 bit installation machine.
Installer entry script file is yocto_installer. A hidden .config files
are for holding parameters which are unlikely to be changed by end users

Signed-off-by: Liping Ke <liping.ke@intel.com>
Signed-off-by: Jessica Zhang<jessica.zhang@intel.com>
Diffstat (more/less context) (ignore whitespace changes)
-rw-r--r--	scripts/adt-installer/.config	35=09
-rw-r--r--	scripts/adt-installer/opkg-sdk-i586.conf	17=09
-rw-r--r--	scripts/adt-installer/opkg-sdk-x86_64.conf	17=09
-rw-r--r--	scripts/adt-installer/util	70=09
-rwxr-xr-x	scripts/adt-installer/yocto_installer	250=09
-rw-r--r--	scripts/adt-installer/yocto_installer.conf	32=09
-rwxr-xr-x	scripts/adt-installer/yocto_installer_internal	222=09
7 files changed, 643 insertions, 0 deletions

