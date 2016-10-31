Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF189E00BC3; Mon, 31 Oct 2016 15:44:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0A6E00B79
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 15:44:36 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 31 Oct 2016 15:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,428,1473145200"; d="scan'208";a="780559728"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by FMSMGA003.fm.intel.com with ESMTP; 31 Oct 2016 15:44:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 01 Nov 2016 11:44:29 +1300
Message-ID: <2078671.b1bTT14Ux0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <5362FBF7-1336-4A63-8A5B-4DD670C84C25@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
	<1850332.dJ48PBlyDk@peggleto-mobl.ger.corp.intel.com>
	<5362FBF7-1336-4A63-8A5B-4DD670C84C25@gmail.com>
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 22:44:39 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Mon, 31 Oct 2016 15:36:24 Khem Raj wrote:
> > On Oct 31, 2016, at 2:59 PM, Paul Eggleton <paul.eggleton@linux.int=
el.com>
> > wrote:>=20
> > On Mon, 31 Oct 2016 09:37:07 Khem Raj wrote:
> >>> On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) <vmartin@ava=
ya.com>
> >>> wrote:
> >>>=20
> >>> We are looking at upgrading from Yocto 1.8 to 2.2.
> >>>=20
> >>> Yocto 2.2 has a minimum kernel requirement of 3.2.0.
> >>>=20
> >>> This isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but=
 may be
> >>> an issue for our automated build machines (x86, Linux 2.6.32=E2=80=
=94CentOS 6.)
> >>>=20
> >>> However, there is a note that says
> >>> =E2=80=9CFor x86 and x86_64, you can reset OLDEST_KERNEL
> >>> <http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.htm=
l#var-O
> >>> L
> >>> DEST_KERNEL> to anything down to 2.6.32 if desired.=E2=80=9D
> >>>=20
> >>> Is it possible to configure things such that we can keep supporti=
ng the
> >>> old kernel for the SDK while we support a more up-to-date kernel =
for the
> >>> target?
> >>=20
> >> I think that should be the default. We do not set it for x86/nativ=
esdk
> >> case. File a ticket if thats not the case.
> >=20
> > SDK_OLDEST_KERNEL is the variable that's supposed to be controlling=
 this,
> > but I noticed a couple of weeks ago that we aren't feeding
> > SDK_OLDEST_KERNEL into glibc for nativesdk, so we should fix that -=
 I've
> > filed a bug [1] and will sort that out. I think we should probably =
set
> > the SDK_OLDEST_KERNEL default for x86 to 2.6.32 at the same time - =
I
> > assume there are no objections?
>
> Yes, its for nativesdk/glibc, I think for target x86 we should keep 3=
.2

Right, I'm not proposing changing the target value.

It turns out setting SDK_OLDEST_KERNEL in an arch-specific manner is a =
little=20
awkward since there aren't overrides that can be used for the SDK value=
, but=20
we can do it from conf/machine-sdk/*.conf though.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

