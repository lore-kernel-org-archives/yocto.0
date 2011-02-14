Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B77D94C8007E
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 10:03:41 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2011 08:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="657519515"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 08:03:40 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Feb 2011 00:03:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 15 Feb 2011 00:03:39 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 15 Feb 2011 00:03:38 +0800
Thread-Topic: [yocto] Some nightly build failures on autobuilder (on commit
	b9a97e07, namely, "Revert part of the unpack change...")
Thread-Index: AcvME8IOrSyKLIxiSse1uT6ouB6cUQASprAgAACNVbA=
Message-ID: <1865303E0DED764181A9D882DEF65FB68630C8DA76@shsmsx502.ccr.corp.intel.com>
References: <1865303E0DED764181A9D882DEF65FB68630C8DA71@shsmsx502.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB68630C8DA75@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB68630C8DA75@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Some nightly build failures on autobuilder (on commit b9a97e07, namely, "Revert part of the unpack change...")
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
X-List-Received-Date: Mon, 14 Feb 2011 16:03:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cui, Dexuan wrote:
> Cui, Dexuan wrote:
>> 1)	Building qemumips meta-toolchain-sdk failed:
>> http://autobuilder.pokylinux.org:8010/builders/nightly-external/builds/3=
5/steps/shell_26/logs/stdio
>> eglibc's do_package failed: ERROR: Error executing a python function
>> in
>> /srv/home/pokybuild/poky-slave/nightly-external/build/meta/recipes-core/=
eglibc/eglibc_2.12.bb:
>> CopyFailed: Command tar -cf - -C
>> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mip=
s-poky-linux/eglibc-2.12-r13/sstate-install-package///package
>> -ps . | tar -xf - -C
>> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/mip=
s-poky-linux/eglibc-2.12-r13/package
>> failed with return value 2  =20
>>=20
>> Looks it's related to Mark's recent commit 3e6d91ec, but what's odd
>> is: qemumips failed here while qemux86 and qemuarm are ok... BTW:
>> MACHINE routerstationpro and atom-pc also have the same failure as
>> qemumips.=20
>>=20
>> First I'm trying to reproduce issue 1 now. Mark, do you have any
>> quick thought?  :-)
> hmmm, I can't reproduce the issue in my local ppc build with the same
> commit...=20
Sorry for the typo: I meant my local mips build, rather than ppc build.

Thanks,
-- Dexuan

