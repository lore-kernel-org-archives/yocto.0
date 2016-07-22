Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4132BE00EDC; Thu, 21 Jul 2016 18:45:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE21EE00ED7
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:45:44 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jul 2016 18:45:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,402,1464678000"; d="scan'208";a="143547242"
Received: from lwong9-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.176.13])
	by fmsmga004.fm.intel.com with ESMTP; 21 Jul 2016 18:45:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2016 13:45:38 +1200
Message-ID: <2059857.6fejhZ6HEk@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sr4UxRWu+8Bei0H3H9epO1uU_5AJ=NCQH2FGgN4gz0OkQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 01:45:48 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thu, 21 Jul 2016 18:35:25 Khem Raj wrote:
> On Thu, Jul 21, 2016 at 6:32 PM, Paul Eggleton
>=20
> <paul.eggleton@linux.intel.com> wrote:
> > On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
> >> > On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger
> >> > <vijayakumarmb@gmail.com>
> >> > wrote:
> >> >=20
> >> > The sync driver is already ported in the kernel.  I just need to=
 get
> >> > this
> >> > compilation error fixed. I tried adding below change to kernel b=
b file
> >> > but still I get that same error.
> >> >=20
> >> > PACKAGES =3D+ "kernel-headers"
> >> > FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
> >>=20
> >> there is a different recipe for headers linux-libc-headers that al=
so
> >> needs
> >> to be patched and then hopefully kernel build system is exporting =
this
> >> header for userspace automatically and you will be set.
> >=20
> > I thought we weren't supposed to be encouraging modifying
> > linux-libc-headers - especially as this isn't for the libc - it's f=
or
> > other userspace code...?
>
> Yes thats correct thats why
> I am not asking for submitting this patch upstream.

Sure, but this question comes up a lot. We ought to be telling people t=
he=20
correct mechanism for introducing extra headers such as this if it isn'=
t to=20
modify linux-libc-headers.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

