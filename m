Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD8C1E00EDA; Thu, 21 Jul 2016 18:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC44E00ED3
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:32:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 21 Jul 2016 18:33:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,402,1464678000"; d="scan'208";a="1021669482"
Received: from lwong9-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.176.13])
	by orsmga002.jf.intel.com with ESMTP; 21 Jul 2016 18:32:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2016 13:32:54 +1200
Message-ID: <2248630.eW0NeUEiY0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <EF6FEB28-A462-4940-94A4-FBAA5EB30AEE@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJ58UN=ZNBHx+HHeyM-=QmuDqr8bZJh8iN8ok9idTDeOc1W-_A@mail.gmail.com>
	<EF6FEB28-A462-4940-94A4-FBAA5EB30AEE@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 22 Jul 2016 01:33:05 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thu, 21 Jul 2016 18:22:32 Khem Raj wrote:
> > On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger <vijayakumarmb@gma=
il.com>
> > wrote:
> >=20
> > The sync driver is already ported in the kernel.  I just need to ge=
t this
> > compilation error fixed. I tried adding below change to kernel bb f=
ile
> > but still I get that same error.
> >=20
> > PACKAGES =3D+ "kernel-headers"
> > FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D
>=20
> there is a different recipe for headers linux-libc-headers that also =
needs
> to be patched and then hopefully kernel build system is exporting thi=
s
> header for userspace automatically and you will be set.

I thought we weren't supposed to be encouraging modifying linux-libc-he=
aders -=20
especially as this isn't for the libc - it's for other userspace code..=
.?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

