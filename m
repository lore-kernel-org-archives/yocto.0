Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A1CAE01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 15:27:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jun 2013 15:27:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,854,1363158000"; d="scan'208";a="348959684"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2013 15:27:31 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 12 Jun 2013 15:27:02 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.227]) with mapi id
	14.03.0123.003; Wed, 12 Jun 2013 15:27:01 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Trevor Woerner'
	<twoerner@gmail.com>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/QAdpzoAAAGA5oAAEHfWgAAClEUAAAHdloAAAGnyAAAOYMXQ
Date: Wed, 12 Jun 2013 22:26:58 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3A753@ORSMSX103.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org><1875741.cStO1T6C1g@helios><58DC6CADE1A5492E9E712C310E6C9019@PAULD><CAHUNapQwaFgZv58X-MEhMc_x1rDUL2jtGY+irZ=d6fDQDKxC-w@mail.gmail.com>
	<DB661AC610E74F50A7066636B2F398E7@PAULD>
	<FBE503961E8B47A18FEB4862A9BB1D32@PAULD>
In-Reply-To: <FBE503961E8B47A18FEB4862A9BB1D32@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 22:27:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Both of them will generate the cross toolchain which will be used by applic=
ation developer on their development host for generate binaries for their t=
arget embedded devices, this cross toolchain includes the cross compiler, c=
ross linker, etc.  But to allow for cross development, the application deve=
loper also needs development packages that contains target headers and libr=
aries that they can develop application against.  These development package=
s are included in the sysroot that cross toolchain is compiling and linking=
 against.  This sysroot is typically base on the target devices' image root=
fs.  The first command "bitbae -c populate_sdk <image>" will generate the f=
ull SDK that includes toolchain and a target image matching sysroot, while =
the command bitbake meta_toolchain only generate the cross toolchain and a =
minimum sysroot that you shouldn't use to develop against.  For the latter =
case, we suggest people to setup their sysroot using a target image rootfs.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul D. DeRocco
Sent: Wednesday, June 12, 2013 3:10 PM
To: 'Trevor Woerner'
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Need clarification on some terms

Or, looking at your notes, is it that "bitbake -c populate_sdk <image>"
takes the toolchain that was used to build the image, and packages it up as=
 an SDK for the benefit of application developers (the normal case), while =
"bitbake meta-toolchain" builds a new SDK that may be different in some way=
s, including maybe running on a third intermediate machine (the special cas=
e)?

--

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

