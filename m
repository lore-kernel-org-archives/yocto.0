Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F75E0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 18:42:01 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Feb 2012 18:42:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="117646867"
Received: from pgsmsx509.gar.corp.intel.com ([172.30.13.17])
	by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2012 18:41:56 -0800
Received: from pgsmsx152.gar.corp.intel.com (172.30.236.43) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 15 Feb 2012 10:41:37 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX152.gar.corp.intel.com (172.30.236.43) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 15 Feb 2012 10:41:36 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Wed, 15 Feb 2012 10:42:02 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poldi871.lists@progserv.de" <svogl@vodata.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Segmentation fault with "hob"-command (now no html)
Thread-Index: AczrNFR5Z690VRPQSaO5xKDGt4bR5wAVdDlg
Date: Wed, 15 Feb 2012 02:42:01 +0000
Message-ID: <A25F549E4D43CD42B4C02DF47A1913230FCC7FD6@SHSMSX102.ccr.corp.intel.com>
References: <001a01cceb35$2ae88fa0$6305010a@rzn99>
In-Reply-To: <001a01cceb35$2ae88fa0$6305010a@rzn99>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Segmentation fault with "hob"-command (now no html)
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
X-List-Received-Date: Wed, 15 Feb 2012 02:42:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

poldi871.lists@progserv.de wrote on 2012-02-15:
> Sorry for the last post in HTML-Format.
> I didn't recognize that my provider has changed the format and doesn't
> send text-messages any more.
> Perhaps the admin may delete my wrong post.
>=20
>=20
> Hello, I am evaluating Yocto, therefore sorry, if it is a beginner
> fault; I have a problem starting "hob". After the command "hob" the
> system tells that some tools have to be built. The build ends with the
> following lines:
>=20
> ------------- snip --------------------------------------- ... NOTE:
> package pseudo-native-1.1.1-r2: task do_populate_sysroot: Started NOTE:
> package pseudo-native-1.1.1-r2: task do_populate_sysroot: Succeeded
> NOTE: Tasks Summary: Attempted 126 tasks of which 0 didn't need to be
> rerun and 0 failed. /Yocto/poky-edison-6.0/scripts/bitbake: Zeile 86:
> 14880 Speicherzugriffsfehler   PSEUDO_BINDIR=3D$PSEUDOBINDIR
> PSEUDO_LIBDIR=3D$PSEUDOBINDIR/../lib/pseudo/lib
> PSEUDO_PREFIX=3D$PSEUDOBINDIR/../../ PSEUDO_DISABLED=3D1
> $PSEUDOBINDIR/pseudo $BITBAKE $@
>=20
> ------------- snap ---------------------------------------
> German output: "Speicherzugriffsfehler" =3D "segmentation fault"
>=20
> System-infos: Build-System: OpenSuSE 11.3, 32bit Yocto version:
> "poky-edison-6.0-tar-bz2" from the Yokto download server
>=20
> The absolute same problem also appears with the following constellation:
> Build system: OpenSuSE 11.3 64bit
> Yocto version: "poky-edison-6.0-tar-bz2 'from yocto download server
>=20
> On the 64-bit system, I have the "nightly build"
> ("http://autobuilder.yoctoproject.org/nightly/20120213-1/yocto.tar.bz2
> ") reinstalled. Here I get the following output: ------------- snip
> --------------------------------------- ... NOTE: package
> tar-replacement-native-1.26-r0: task do_populate_sysroot: Started NOTE:
> package tar-replacement-native-1.26-r0: task do_populate_sysroot:
> Succeeded NOTE: Tasks Summary: Attempted 126 tasks of which 0 didn't
> need to be rerun and 0 failed. /Yocto/yocto/scripts/bitbake: Zeile 95:
> 29888 Speicherzugriffsfehler PSEUDO_BINDIR=3D$PSEUDOBINDIR
> PSEUDO_LIBDIR=3D$PSEUDOBINDIR/../lib/pseudo/lib
> PSEUDO_PREFIX=3D$PSEUDOBINDIR/../../ PSEUDO_DISABLED=3D1
> $PSEUDOBINDIR/pseudo $BITBAKE $@
>=20
> ------------- snap ---------------------------------------
>=20
> From a gdb session (evaluation of the core dump) of the nightly build
> I get the following output:
> ------------- snip ---------------------------------------
> ...
> Core was generated by `python /Yocto/yocto/bitbake/bin/bitbake -r
> conf/hob-pre.conf -R conf/hob-post.c'.
> Program terminated with signal 11, Segmentation fault.
> #0  0x00007f0254626c9e in gdk_window_enable_synchronized_configure
> ()
>    from /usr/lib64/libgdk-x11-2.0.so.0
> (gdb)
> ------------- snap ---------------------------------------
>=20
> The error occurred in each case at the first attempt after a new
> installation. Commands: ------------- snip
> --------------------------------------- source oe-init-build-env hob
> ------------- snap ---------------------------------------
>=20
> Changes in "local.conf":
>=20
> ------------- snip ---------------------------------------
> MACHINE ?=3D "atom-pc"
> ------------- snap ---------------------------------------
>=20
> Is it a bug, or a beginner's mistake?
This seems a pygtk bug of bitbake that only appears on some Linux distribut=
ion?
In my Ubuntu 11.04, I don't get the SegFault.

Thanks,
-- Dexuan



