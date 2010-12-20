Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B858E4C80039
	for <yocto@yoctoproject.org>; Sun, 19 Dec 2010 18:41:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Dec 2010 16:41:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,198,1291622400"; d="scan'208";a="869890276"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2010 16:41:25 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 20 Dec 2010 08:40:42 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 20 Dec 2010 08:40:42 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Li, Susie" <susie.li@intel.com>
Date: Mon, 20 Dec 2010 08:40:39 +0800
Thread-Topic: Biweekly Status Report WW50~51'2010 --OSEL SDK Liping Ke
Thread-Index: Acuf3oZX/B4+iNh4RhytotWZtrmx5A==
Message-ID: <789F9655DD1B8F43B48D77C5D30659733142ADD2@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Biweekly Status Report WW50~51'2010 --OSEL SDK Liping Ke
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
X-List-Received-Date: Mon, 20 Dec 2010 00:41:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[Summary]
1.	OSEL SDK related jobs
2.	Others

[Details]
SDK related jobs:
1. Modified the first installer script according to Jessica and RP's input,=
 including:
   1) all sorts of echo message formalization.
   2) Make script could be run anywhere.
   3) solve the privilege level problem, change the owner of root fs extrac=
tion folder, etc.
2. Finished the draft version of bb class file for generating tarball for s=
cript installer.
   And I had sent out the patch for review.
3. Finished the qemu extra parameters patch for poky-qemu/poky-qemu script.=
 Scott helped to
   Review the patch and it has been checked in.
4. TCF RSE integration patch has finally been checked in which means all ja=
va part patch
   For tcf has been in the upstream.
Others:
   1. Take 0.5 days' annual leave and half day's sick leave
   2. Take weekly project meeting and technical sharing meeting.
    =20
Thanks & Regards,
criping

