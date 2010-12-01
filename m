Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E170F4C81231
	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 21:30:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Nov 2010 19:30:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,282,1288594800"; d="scan'208";a="579298590"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 30 Nov 2010 19:30:17 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 11:29:48 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 1 Dec 2010 11:29:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 1 Dec 2010
	11:29:47 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Wed, 1 Dec 2010 11:29:43 +0800
Thread-Topic: about install shell script privilege problem
Thread-Index: AcuRB/6Yk+hyR+TSSq2L2My3n5fIYQ==
Message-ID: <789F9655DD1B8F43B48D77C5D30659732FF6BE31@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: DAx9 DS3F De7O EFgC EQTm FT+m FxjA GAtW Gm3r H7b3 IDTP
	IIU1 Ipf1 JV2G JdfN
	JdgO; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {07E44498-429A-4B52-AEA3-B5A89B051951};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Wed,
	01 Dec 2010 03:29:43 GMT;
	YQBiAG8AdQB0ACAAaQBuAHMAdABhAGwAbAAgAHMAaABlAGwAbAAgAHMAYwByAGkAcAB0ACAAcAByAGkAdgBpAGwAZQBnAGUAIABwAHIAbwBiAGwAZQBtAA==
x-cr-puzzleid: {07E44498-429A-4B52-AEA3-B5A89B051951}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: about install shell script privilege problem
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
X-List-Received-Date: Wed, 01 Dec 2010 03:30:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica
When testing the script, we found some privilege problems if using normal u=
ser to install the sdk.

Now all those packages must be installed to /opt, which acquire root privil=
ege.=20
So when running opkg-cl, the installation root must be pointed to "/", so o=
pkg-cl needs root privilege too.
Since the installation root is "/", the opkg lib dir must be under "/var/li=
b/opkg" which needs root privilege too.

And also, when extract rootfs, we need to use pseudo, since pseudo is insta=
lled under /opt/poky/, when running, it needs to create lock file which als=
o needs root privilege.

If user don't use sudo, there're several problems which can't be solved wel=
l enough currently (for example, yes, we can change owner of /opt/poky to c=
urrent user, but what if user another username b to install another archite=
cture under the /opt/poky?)

So after discussion, we decide to use sudo to run the script.=20

Any other suggestions?

Thanks& Regards,
criping



