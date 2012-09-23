Return-Path: <sean.liming@annabooks.com>
Received: from mail32c40.carrierzone.com (mail32c40.carrierzone.com
	[209.235.156.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6141E01430
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2012 08:56:09 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail32c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q8NFtn3D002752
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 23 Sep 2012 15:55:51 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>
References: <000701cd9889$19ba1760$4d2e4620$@annabooks.com>
	<1348375217.23190.34.camel@empanada>
In-Reply-To: <1348375217.23190.34.camel@empanada>
Date: Sun, 23 Sep 2012 08:55:49 -0700
Message-ID: <000701cd99a3$e7f00c00$b7d02400$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AQG9NbNNd4Zjwhnh13rCA2Nt6DHSAAIPX3LOl6hg9lA=
X-Antivirus: avast! (VPS 120923-0, 09/23/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=Ez94Tw3ujgScwXs1pC+PmdLr+QYD70VLeGu7Cz1MAHQ= c=1 sm=1
	a=OatfdInpQccA:10 a=_DgR7O7FQkkA:10 a=IkcTkHD0fZMA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:17 a=QyXUC8HyAAAA:8 a=iGHA9ds3AAAA:8
	a=22pK5S-mAAAA:8 a=u7KSlL0PigCVQavUEcQA:9 a=QEXdDO2ut3YA:10
	a=FCaQVidmf_IA:10 a=nHK3ipOpxeAA:10 a=dGJ0OcVc7YAA:10 a=XDKM753qmDAA:10
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020208.505F3107.006D, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Cc: yocto@yoctoproject.org
Subject: Re: UEFI support for Crown Bay
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
X-List-Received-Date: Sun, 23 Sep 2012 15:56:12 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-us

> -----Original Message-----
> From: Tom Zanussi [mailto:tom.zanussi@intel.com]
> Sent: Saturday, September 22, 2012 9:40 PM
> To: Sean Liming
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] UEFI support for Crown Bay
>=20
> On Fri, 2012-09-21 at 23:11 -0700, Sean Liming wrote:
> >
> >
> > Yocto=3D1.2
> >
> > BSB =3D Crown Bay (Intel Atom Processor E660 with Intel Platform
> > Controller Hub EG20T Development Kit)
> >
> > Target System=3D Inforce Computing, Inc. - SYS9400 Reference =
Platform -
> > VGA output only.
> >
> > UEFI only no BIOS
> >
> > Base Image: core-image-minimal
> >
> > Hob used to build the image
> >
> >
> >
> >
> >
> >
> >
> > The target platform only has UEFI and doesn=E2=80=99t have =
traditional BIOS. I
> > am able to re-configure the UEFI firmware using the BLDK application
> > if needed. The Crown Bay BSP doesn=E2=80=99t include an efi loader
> > (bootia32.efi) like Cedar Trail BSP in the live image (hddimg). If I
> > add the EFI boot files from Cedar Trail live image, the USB flash =
disk
> > presents the menu for boot or install. Upon selecting boot, I can =
see
> > output on the serial console, but it eventually stops no output on =
the
> > VGA monitor. I have attached the output from the serial port.
> >
> >
> >
> > 1. Is UEFI supported with Crown Bay BSP? Is there a flag that needs =
to
> > be set like EFI =3D =E2=80=9C1=E2=80=9D?
> >
>=20
> Hi,
>=20
> The Crown Bay BSP doesn't yet have EFI support - I added it earlier =
this year
> but had some problems getting it to work.  I just now updated it and =
tried
> again but though I see the grub menu, selecting 'boot' also gets me a =
blank
> screen, and I don't even get serial output.
>=20
> If you want to try it out for yourself and see if you get better =
results, here's
> the branch (the top 6 commits add efi support and some related =
cleanup):
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-
> contrib/log/?h=3Dtzanussi/crownbay-efi-v2
>=20
> The current BSP can be found in the meta-intel repo in the =
meta-crownbay
> directory (the README has some build instructions):
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/
>=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-crownbay
>=20
>=20
> Since you're using the Inforce Sys9400, though, I'm thinking that it =
might
> make more sense to use the meta-sys940x BSP:
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-sys940x
>=20
> I see it already has efi support and so I think that's already been =
tested and
> probably works (cc'ing Darren, the author of the sys940x and EFI =
expert who
> actually added the EFI support recipes, etc).
>=20
> As for EMGD and X, the current BSPs should all be good to go - there =
was
> some unrelated problems with X in the core which has been fixed, and =
at
> least as far as the crownbay goes, I know it works as I tested it just
> yesterday...
>=20
> Hope that helps,
>=20
> Tom
>=20
>=20
Tom,

Thank you. I will get started trying them out.


Regards,

Sean Liming
Annabooks
Tel: 714-970-7523 / Cell: 858-774-3176




> >
> >
> > There seems to be discussions about this back in 2011:
> >
> > =
https://lists.yoctoproject.org/pipermail/yocto/2011-November/005806.ht
> > ml
> >
> > http://lists.linuxtogo.org/pipermail/openembedded-core/2011-
> November/0
> > 12972.html
> >
> >
> >
> > 2. Is it possible to setup serial console for Crown Bay? I tried the
> > following flags from the n450 information:
> >
> >
> >
> > SYSLINUX_OPTS_atom-pc =3D "serial 0 115200"
> >
> > SERIAL_CONSOLE_atom-pc =3D "115200 ttyS0"
> >
> > APPEND_atom-pc =3D "console=3DttyS0,115200 console=3Dtty0"
> >
> >
> >
> > 3. There was some discussion about EMGD and X Windows issues and a
> > possible fix. Where can I download the latest BSP to try out?
> >
> >
> >
> >
> >
> > Regards,
> >
> >
> >
> > Sean Liming
> >
> > Annabooks
> >
> > Tel: 714-970-7523 / Cell: 858-774-3176
> >
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto



