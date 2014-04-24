Return-Path: <vmartin@avaya.com>
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A49D6E00B7C
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 12:54:06 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AgQFAOxqWVPGmAcV/2dsb2JhbABZgmUhgSbEQ4EfFnSCJQEBAQECARIoNAYKCwIBCA0EBAEBAQoUEDIdCAEBBAESCBqIFwgBngytSheOKDiDJIEVBJ98i1aDMYIr
X-IronPort-AV: E=Sophos;i="4.97,921,1389762000"; d="scan'208";a="59501286"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	24 Apr 2014 15:54:05 -0400
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Apr 2014 15:38:29 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Thu, 24 Apr 2014 15:54:02 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Exporting kernel header from patch
Thread-Index: Ac9f1VoEjF/wfPWZSACSxkzGYHPoeAAL0+oAAAgHaPD//8fCAIAAJrDg
Date: Thu, 24 Apr 2014 19:54:02 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779820B77AFA@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779820B77A65@AZ-US1EXMB03.global.avaya.com>
	<53594AA0.7020603@windriver.com>
	<30C2D590D16A5C46ADFE65219103779820B77AA1@AZ-US1EXMB03.global.avaya.com>
	<53595154.4080302@windriver.com>
In-Reply-To: <53595154.4080302@windriver.com>
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
X-List-Received-Date: Thu, 24 Apr 2014 19:54:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Bruce Ashfield
> Sent: April 24, 2014 2:01 PM
> To: Vuille, Martin (Martin); yocto@yoctoproject.org
> Subject: Re: [yocto] Exporting kernel header from patch
>=20
> On 14-04-24 01:52 PM, Vuille, Martin (Martin) wrote:
> >> From: Bruce Ashfield
> >> Sent: April 24, 2014 1:32 PM
> >>
> >> On 14-04-24 11:57 AM, Vuille, Martin (Martin) wrote:
> >>> I have a custom layer to add patches to my vendor's BSP layer
> >>>
> >>> (based on Linux 3.4, if it matters) and a .bbappend to list the
> >>>
> >>> patches.
> >>>
> >>> One of the patches adds a header, and this header needs to
> >>>
> >>> be exported to the sysroot.
> >>>
> >>> I added the following to my .bbappend, based on a discussion
> >>>
> >>> I found:
> >>>
> >>> do_install_append() {
> >>>
> >>>       install -d ${D}${includedir}/linux
> >>>
> >>>       install -m 644 ${S}/include/linux/uc1698u.h
> >>> ${D}${includedir}/linux/uc1698u.h
> >>>
> >>> }
> >>>
> >>> It "works" (i.e., the header is installed in the sysroot) but there
> >>> must
> >>>
> >>> be more to it than that because I also get a warning about the
> >>> header
> >>>
> >>> being "installed but not shipped in any package".
> >>>
> >>> What's the correct way to do this?
> >>
> >> Not answering the question directly, but I can say that kernel's
> >> shouldn't be exporting their header files over the sysroot's
> >> include/linux/* directory structure, since that is where
> >> linux-libc-headers installs and manages the userspace safe headers for
> the c-library.
> >>
> >> Sure you are probably installing a new file, and one that doesn't
> >> conflict with the existing libc-headers, but as soon as you start
> >> working in that directory structure .. you will eventually clobber an
> existing file.
> >>
> >> There have been quite a few discussions on this topic over time on
> >> the oe- core and yocto lists. Look at the comment in the
> >> linux-libc-headers.inc file, and you'll see a note from Richard
> >> explaining why this shouldn't be done (searches on the mailing list
> archives will also find more hits).
> >>
> >> When you install into the sysroot, the header file should also be in
> >> a FILES_<package> as part of your recipe .. and that is why you are
> >> seeing the warning. packaging it would remove the warning, but you'll
> >> still have the problem I mention above.
> >>
> >> The right way is for your application to look at the
> >> STAGING_KERNEL_DIR, which will have a copy of that same header file.
> >>
> >> Alternatively, you can stage your header file at a different sysroot
> >> location than include/linux/* and have your application look there.
> >>
> >> I have an open enhancement that I'm doing for yocto 1.7 which
> >> automates the alternate header file structure, but doing it
> >> explicitly in your recipes will work for now.
> >
> > Hi Bruce,
> >
> > Thanks for your response. But I'm afraid I'm not entirely following
> > you. I am quite new to Yocto/OE, so I may be missing something
> fundamental/obvious.
> >
> > Leaving aside the patch and .bbappend for the moment, presumably it is
> > normal for the kernel in the BSP layer to export headers for
> > userland's consumption. How is that specified? Where is the
> > FILES_<package> that lists those headers?
>=20
> Actually, in the yocto world, it isn't. At least not in the sense that yo=
u are
> looking for.
>=20
> The kernel's source tree is staged for consumption by other packages in t=
he
> sysroot, accessible via the variable STAGING_KERNEL_DIR. That's the first
> choice for an application to look for kernel header files.
>=20
> The sysroots /usr/include/linux/* is strictly for the linux-libc-headers
> package, and nothing else should be installing into that structure.
>=20
> If you do need to export something to the sysroot, that isn't already in =
the
> libc-headers, and you can't use the STAGING_KERNEL_DIR, then you should
> be installing it to another directory structure like:
> /usr-alt/include/linux/*
> and have your applications look there. You'd export and install them
> similarly to what you are doing, and you'd need to package them similarly=
.
>=20
> i.e. in the recipe:
>=20
> PACKAGES +=3D " kernel-extra-headers"
> FILES_kernel-extra-headers =3D "/usr-alt/linux/*'
>=20
> And you'd get the header in the sysroot, and avoid the QA warning about i=
t
> not being packaged.
>=20

I probably should've mentioned earlier that this header contains some ioctl
definitions that I need to import into some userland code.

If I include the header from STAGING_KERNEL_DIR, isn't that the "raw"
header, unprepared for inclusion from userland? (Of course, that was also
a problem with my original way of doing it, which I omitted from my OP).

What is special about the headers added to sysroot by linux-libc-headers?
If this driver were part of upstream instead of added by me, wouldn't its
header file be included in the sysroot by linux-libc-headers?

I understand that glibc was built against the headers from linux-libc-heade=
rs,
but that shouldn't matter since no one else but me knows about this new
header.

Is there a legitimate way for me to add to linux-libc-headers?

Apologies if I've gotten myself confused.

MV


