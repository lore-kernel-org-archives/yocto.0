Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE0D74C80048
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 01:30:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2010 23:30:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="867493048"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2010 23:30:15 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 15:29:49 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 13 Dec 2010 15:29:49 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Mon, 13 Dec 2010 15:29:58 +0800
Thread-Topic: Try latest yocto adt script installer 
Thread-Index: Acual4vOqTvhX8f5Tsm9er0UcNM8oA==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DC806@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AqoD AxU6 BDb4 BrDL B4rp CMTv CYtt DbBI FolK FpEq F+Nr
	GI0B HY5R IIh0 IxIr
	KHwd; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {C2B9B905-8CE1-4E0A-BF15-5C2D5C1BF697};
	bABpAHAAaQBuAGcALgBrAGUAQABpAG4AdABlAGwALgBjAG8AbQA=; Mon,
	13 Dec 2010 07:29:58 GMT;
	VAByAHkAIABsAGEAdABlAHMAdAAgAHkAbwBjAHQAbwAgAGEAZAB0ACAAcwBjAHIAaQBwAHQAIABpAG4AcwB0AGEAbABsAGUAcgA=
x-cr-puzzleid: {C2B9B905-8CE1-4E0A-BF15-5C2D5C1BF697}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Try latest yocto adt script installer
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
X-List-Received-Date: Mon, 13 Dec 2010 07:30:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I have put the installer script tar ball in the below links: http://llu-pik=
eton.sh.intel.com/installer.tar

You can have a try. Below is some key notes:

1. since now version has problems, we have submit bug 586 http://bugzilla.p=
okylinux.org/show_bug.cgi?id=3D586
So currently we have no available x86_64 repository. (same packages now bel=
ong to different version because they are built in two days). So currently =
only 32 bit host could run the script
2. after untar this installer, under adt_installer folder, directly running=
 $ ./yocto_installer.
3. Build log are located @ adt_installer/yoctoadt_installer.log
4. User config ( install which targets) are defined/changed in Yocto_instal=
ler.conf. Note: now only i586 qemu rootfs are available in repository.

Any problem, just let me know.


Thanks& Regards,
criping

