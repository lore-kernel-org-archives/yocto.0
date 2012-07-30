Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3FCE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 15:23:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Jul 2012 15:23:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="179509536"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 30 Jul 2012 15:23:57 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 30 Jul 2012 15:23:57 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.82]) with mapi id
	14.01.0355.002; Mon, 30 Jul 2012 15:23:56 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Dallas Clement <dallas.a.clement@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] INSANE_SKIP
Thread-Index: AQHNZsQR576qa4CA1UW22B/dTiAvv5dCdcGw
Date: Mon, 30 Jul 2012 22:23:45 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD415D1@ORSMSX105.amr.corp.intel.com>
References: <CAE9DZUSqY684qob9zFWQp5jHg+uyc=sx78JxM03vYNX_3SncHw@mail.gmail.com>
In-Reply-To: <CAE9DZUSqY684qob9zFWQp5jHg+uyc=sx78JxM03vYNX_3SncHw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: INSANE_SKIP
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
X-List-Received-Date: Mon, 30 Jul 2012 22:23:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Dallas Clement
>Sent: Friday, July 20, 2012 3:07 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] INSANE_SKIP
>
>Is there a way to skip a QA check for more than one package or all package=
s?
>
>I'd like to avoid having to add a INSANE_SKIP_${PN} +=3D "ldflags" for
>every package that fails due to ERROR: QA Issue: No GNU_HASH in the
>elf binary.
>
>There are gobs of python and perl packages failing with this error
>when I try to build a distro.

Try exporting the below line before compiling with this works I guess.
export LD=3D"${LD} --hash-style=3Dgnu"=20

-Kishore.

>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

