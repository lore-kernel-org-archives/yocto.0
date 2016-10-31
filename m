Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D56E00B79; Mon, 31 Oct 2016 14:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6B5E00B04
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 14:59:26 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 31 Oct 2016 14:59:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,428,1473145200"; d="scan'208";a="26231100"
Received: from mbi370x-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.81])
	by orsmga004.jf.intel.com with ESMTP; 31 Oct 2016 14:59:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>, "Vuille,
	Martin (Martin)" <vmartin@avaya.com>
Date: Tue, 01 Nov 2016 10:59:20 +1300
Message-ID: <1850332.dJ48PBlyDk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.9-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <66B0CBC6-1852-482E-94EE-6E216B1105ED@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
	<66B0CBC6-1852-482E-94EE-6E216B1105ED@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 31 Oct 2016 21:59:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Mon, 31 Oct 2016 09:37:07 Khem Raj wrote:
> > On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) <vmartin@avaya=
.com>
> > wrote:
> >=20
> > We are looking at upgrading from Yocto 1.8 to 2.2.
> >=20
> > Yocto 2.2 has a minimum kernel requirement of 3.2.0.
> >=20
> > This isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but m=
ay be
> > an issue for our automated build machines (x86, Linux 2.6.32=E2=80=94=
CentOS 6.)
> >=20
> > However, there is a note that says
> > =E2=80=9CFor x86 and x86_64, you can reset OLDEST_KERNEL
> > <http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#=
var-OL
> > DEST_KERNEL> to anything down to 2.6.32 if desired.=E2=80=9D
> >=20
> > Is it possible to configure things such that we can keep supporting=
 the
> > old kernel for the SDK while we support a more up-to-date kernel fo=
r the
> > target?
>
> I think that should be the default. We do not set it for x86/nativesd=
k case.
> File a ticket if thats not the case.

SDK_OLDEST_KERNEL is the variable that's supposed to be controlling thi=
s, but=20
I noticed a couple of weeks ago that we aren't feeding SDK_OLDEST_KERNE=
L into=20
glibc for nativesdk, so we should fix that - I've filed a bug [1] and w=
ill=20
sort that out. I think we should probably set the SDK_OLDEST_KERNEL def=
ault=20
for x86 to 2.6.32 at the same time - I assume there are no objections?

Cheers,
Paul

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10561

--=20

Paul Eggleton
Intel Open Source Technology Centre

