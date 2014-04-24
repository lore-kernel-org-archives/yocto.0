Return-Path: <vmartin@avaya.com>
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B65EBE00B75
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 10:52:35 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgQFANJOWVPGmAcV/2dsb2JhbABZgmUhgSbEO4EdFnSCJQEBAQECARIoNAYKCwIBCA0IAQIKFAkHMhQRAQEEARIIGogXCAGeD61NF44oOIMkgRUEn3yLVoMxgis
X-IronPort-AV: E=Sophos;i="4.97,920,1389762000"; d="scan'208";a="59544078"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	24 Apr 2014 13:52:34 -0400
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Apr 2014 13:37:00 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Thu, 24 Apr 2014 13:52:33 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Exporting kernel header from patch
Thread-Index: Ac9f1VoEjF/wfPWZSACSxkzGYHPoeAAL0+oAAAgHaPA=
Date: Thu, 24 Apr 2014 17:52:32 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779820B77AA1@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779820B77A65@AZ-US1EXMB03.global.avaya.com>
	<53594AA0.7020603@windriver.com>
In-Reply-To: <53594AA0.7020603@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: Exporting kernel header from patch
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
X-List-Received-Date: Thu, 24 Apr 2014 17:52:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: April 24, 2014 1:32 PM
>=20
> On 14-04-24 11:57 AM, Vuille, Martin (Martin) wrote:
> > I have a custom layer to add patches to my vendor's BSP layer
> >
> > (based on Linux 3.4, if it matters) and a .bbappend to list the
> >
> > patches.
> >
> > One of the patches adds a header, and this header needs to
> >
> > be exported to the sysroot.
> >
> > I added the following to my .bbappend, based on a discussion
> >
> > I found:
> >
> > do_install_append() {
> >
> >      install -d ${D}${includedir}/linux
> >
> >      install -m 644 ${S}/include/linux/uc1698u.h
> > ${D}${includedir}/linux/uc1698u.h
> >
> > }
> >
> > It "works" (i.e., the header is installed in the sysroot) but there
> > must
> >
> > be more to it than that because I also get a warning about the header
> >
> > being "installed but not shipped in any package".
> >
> > What's the correct way to do this?
>=20
> Not answering the question directly, but I can say that kernel's shouldn'=
t be
> exporting their header files over the sysroot's
> include/linux/* directory structure, since that is where linux-libc-heade=
rs
> installs and manages the userspace safe headers for the c-library.
>=20
> Sure you are probably installing a new file, and one that doesn't conflic=
t
> with the existing libc-headers, but as soon as you start working in that
> directory structure .. you will eventually clobber an existing file.
>=20
> There have been quite a few discussions on this topic over time on the oe=
-
> core and yocto lists. Look at the comment in the linux-libc-headers.inc f=
ile,
> and you'll see a note from Richard explaining why this shouldn't be done
> (searches on the mailing list archives will also find more hits).
>=20
> When you install into the sysroot, the header file should also be in a
> FILES_<package> as part of your recipe .. and that is why you are seeing =
the
> warning. packaging it would remove the warning, but you'll still have the
> problem I mention above.
>=20
> The right way is for your application to look at the STAGING_KERNEL_DIR,
> which will have a copy of that same header file.
>=20
> Alternatively, you can stage your header file at a different sysroot loca=
tion
> than include/linux/* and have your application look there.
>=20
> I have an open enhancement that I'm doing for yocto 1.7 which automates
> the alternate header file structure, but doing it explicitly in your reci=
pes will
> work for now.

Hi Bruce,

Thanks for your response. But I'm afraid I'm not entirely following you. I =
am
quite new to Yocto/OE, so I may be missing something fundamental/obvious.

Leaving aside the patch and .bbappend for the moment, presumably it is
normal for the kernel in the BSP layer to export headers for userland's
consumption. How is that specified? Where is the FILES_<package> that
lists those headers?

MV

