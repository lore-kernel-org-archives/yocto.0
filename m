Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AFA8E006D9
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 11:20:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jun 2012 11:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171222747"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 28 Jun 2012 11:20:56 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 28 Jun 2012 11:20:56 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.73]) with mapi id
	14.01.0355.002; Thu, 28 Jun 2012 11:20:53 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Wolfgang Denk <wd@denx.de>, Giovanni Foiani <fnognn@unife.it>
Thread-Topic: [yocto] Yocto and Qt embedded
Thread-Index: AQHNVVeE6+GEBbAcbEK6a88MRU73RJcQfcAA//+MI+A=
Date: Thu, 28 Jun 2012 18:20:55 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
In-Reply-To: <20120628181214.7ACD02026AB@gemini.denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Thu, 28 Jun 2012 18:20:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Giovanni,

You need to build a matching toolchain.  Either from command line do "bitba=
ke meta-toolchain-qte or through hob, under Settings, please make sure chec=
k "Build Toolchain".

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Wolfgang Denk
Sent: Thursday, June 28, 2012 11:12 AM
To: Giovanni Foiani
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto and Qt embedded

Dear Giovanni,

In message <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.=
com> you wrote:
>
> This is my first post on this mailing list and I'm quite new to Yocto.
> I successfully built a distro using the latest release of hob,
> including Qt embedded (without X11).
> I wrote a Qt application and cross compiled for ARM on my host machine
> but when I deploy it on the device (a Freescale iMX53) I get and error
> because the application looks for libraries like libQtGui but on the
> distro all Qt libraries are named like libQtGuiE (ending with E which
> I suppose it stands for Embedded).

These names are OK for the Qt Embedded libraries, and they should match wha=
t your cross development tools are using.  Which tool chain did you use for=
 compiling and linking your application - the one from meta-toolchain-qte ?

When I build meta-toolchain-qte, this also includes, for example,

.../sysroots/armv6-vfp-linux-gnueabi/usr/lib/libQtGuiE.so.4.8.2

so cross tool chain and native systems work together without problems.


Best regards,

Wolfgang Denk

--
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de It's =
hard to make a program foolproof because fools are so ingenious.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

