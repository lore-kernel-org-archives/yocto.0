Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DAF984C80053
	for <yocto@yoctoproject.org>; Sun, 13 Feb 2011 01:12:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Feb 2011 23:12:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,464,1291622400"; d="scan'208";a="602159469"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 12 Feb 2011 23:12:29 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 13 Feb 2011 15:12:28 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 13 Feb 2011 15:12:27 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sun, 13 Feb 2011 15:12:25 +0800
Thread-Topic: [yocto] Master build error caused a small typo by commit today
	: fetch2: unpack revision
Thread-Index: AcvLGcHYflVb/TNkRfSjmzl8BpQDpwAMvHLA
Message-ID: <789F9655DD1B8F43B48D77C5D306597332C188B9@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
	<1865303E0DED764181A9D882DEF65FB68629835F3E@shsmsx502.ccr.corp.intel.com>
	<4D56CCCD.6040106@windriver.com>
	<C7D623A5-69C2-4318-8C2F-5792C66391BD@dominion.thruhere.net>
	<4D56DCB5.2070205@mlbassoc.com>	<4D570BE2.4020900@windriver.com>
	<4D572DB0.7050805@intel.com>
In-Reply-To: <4D572DB0.7050805@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sun, 13 Feb 2011 07:12:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >> Does not changing this "%d" to "%s" work?
> >
> > Yes, this is the correct fix.  Nobody has been around today to push
> the fix into
> > the tree however.
> >
> > It was a simple typo.
>=20
> I managed to catch Richard on IRC about an hour ago and he pushed a fix
> to master.
>=20
> Scott

Hi, Scott and Mark,
After fixing the typo, we'll meet another error relates to the tar/untar ch=
ange for preserving the hard link (mark's comments). I wrote it in another =
letter as below.
If we revert the patch, seems we need to rebuild from scratch, otherwise, I=
 met other problems. Only for your info!

Thanks a lot!
Criping

Pasted Info:


After fixing this typo, I found another error when bitbake xorg-minimal-fon=
ts, It will report
ERROR: Function 'org-minial-fonts: LIC_FILES_CHKSUM points to invalid file:=
 ../misc/fonts/alias' failed

I checked the folder of build/tmp/work/all-poky-linux/xorg-minimal-fonts-1_=
1.0-r0, fonts.alias fonts.dir Cursor.pcf.gz we not under misc subfolder as =
its expectation, but on the outer folder, seems the SRC_URI=3D"file://misc"=
 defined in the Xorg-minimal-fonts.bb does not work.


>=20
> --
> Scott Garman
> Embedded Linux Engineer - Yocto Project
> Intel Open Source Technology Center
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

