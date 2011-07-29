Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8988C4C800D8
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 23:39:38 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jul 2011 21:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,286,1309762800"; d="scan'208";a="33419571"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 28 Jul 2011 21:39:37 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Thu, 28 Jul 2011 21:39:37 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "'galak@kernel.crashing.org'" <galak@kernel.crashing.org>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Thu, 28 Jul 2011 21:39:37 -0700
Thread-Topic: [yocto] examples / docs on utilizing an external toolchain
Thread-Index: AcxM16obcTQowRcGQNmDFW+wT7DFGgA0dryK
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
In-Reply-To: <A836DA06-E769-4562-99BF-16812ED33270@kernel.crashing.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: examples / docs on utilizing an external toolchain
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
X-List-Received-Date: Fri, 29 Jul 2011 04:39:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Scott - I have had a couple of questions about this exact topic. Can you pl=
ease submit a bug on this? Thanks.=20

Sent from my Blackberry

----- Original Message -----
From: Kumar Gala [mailto:galak@kernel.crashing.org]
Sent: Wednesday, July 27, 2011 08:37 PM=0A=
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [yocto] examples / docs on utilizing an external toolchain

It seems like there is a way to use a prebuilt toolchain with poky but no r=
eal details.

Some refs in the docs like:

POKYMODE
Toolchain selector. It can be external toolchain built from Poky or few sup=
ported combinations of upstream GCC or CodeSourcery Labs toolchain.

But grepping the code there doesn't seem to be any actual use of POKYMODE. =
 There seems to be some references even on the autobuilder about this 'nigh=
tly-external-toolchain'.  So wondering what the details where on how to con=
figure things to use an external toolchain.

- k
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

