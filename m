Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web09.291.1575338899422413700
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 18:08:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xB328Eai004804
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Mon, 2 Dec 2019 18:08:14 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Mon, 2 Dec 2019
 18:08:13 -0800
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
To: Aj Cit <aj.ci.01.239@gmail.com>,
        Josef Holzmayr
	<holzmayr@rsi-elektrotechnik.de>
CC: <yocto@lists.yoctoproject.org>
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
 <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain>
 <CALSaBR_Z5GpPA03w0nerSzA2bR5mRDP12Zp3YNrij89y3Nbvfw@mail.gmail.com>
 <20191128090438.aih26zwmmtmzwviu@jholzmayr.localdomain>
 <CALSaBR8-X6JMfCHq=RbuTngEutGGcZ-jyzsb6nRk615YCbYunw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <b28f7b71-be2c-3d6e-a632-a43ba960f4e8@windriver.com>
Date: Mon, 2 Dec 2019 21:08:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CALSaBR8-X6JMfCHq=RbuTngEutGGcZ-jyzsb6nRk615YCbYunw@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xB328Eai004804
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 11/28/19 7:02 AM, Aj Cit wrote:
>=20
> Dear Josef,
>=20
> I've managed to run build command to generate OS image for the target,=20
> which is |core-image-sato|=C2=A0by executing the following command:
>=20
>       $ bitbake core-image-sato
>=20
> Can I know how to proceed further?
>=20
> I'm getting the following response from the Ubuntu 18.04.1 LTS
>=20
> Loading cache: 100%=20
> |######################################################################=
###################################|=20
> Time: 0:00:00
> Loaded 1264 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>=20
> Build Configuration:
> BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "1.40.0"
> BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-linux"
> NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
> TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-linux"
> MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "qemux86-64=
"
> DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky"
> DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "2.6.2"
> TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"
> TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
> meta
> meta-poky
> meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D "HEAD:e7f0177ef3b6e06b8bc1722fc=
a0241fef08a1530"
>=20
> Initialising tasks: 100%=20
> |######################################################################=
###################################|=20
> Time: 0:00:02
> Checking sstate mirror object availability: 100%=20
> |######################################################################=
################|=20
> Time: 0:05:55
> Sstate summary: Wanted 1402 Found 329 Missed 2146 Current 708 (23%=20
> match, 49% complete)
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: sudo-1.8.23-r0 do_fetch: Failed to fetch URL=20
> http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz, attempting MIRRORS if=20
> available
> NOTE: Tasks Summary: Attempted 5774 tasks of which 2941 didn't need to=20
> be rerun and all succeeded.
>=20
> Summary: There was 1 WARNING message shown.
> adminuser@verathon:~/poky/build$ ls
> bitbake-cookerdaemon.log =C2=A0cache =C2=A0conf =C2=A0downloads =C2=A0s=
state-cache =C2=A0tmp
> adminuser@verathon:~/poky/build$ runqemu qemux86
> runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...
> runqemu - ERROR - /home/adminuser/poky/build/tmp/deploy/images/qemux86=20
> not a directory valid DEPLOY_DIR_IMAGE
> ls: cannot access=20
> '/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf':=
=20
> No such file or directory
> runqemu - ERROR - Command 'ls -t=20
> /home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.conf'=20
> returned non-zero exit status 2.
> runqemu - INFO - Cleaning up
> adminuser@verathon:~/poky/build$
>=20
>=20
Run:
$ runqemu qemux86-64

since your machine is:
 > MACHINE              =3D "qemux86-64"

above.

I see that the 'quick start' guide says to use "qemux86"
=20
https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.h=
tml

Did you change the machine or is the documentation out of date?

../Randy


> Thanks,
>=20
> Ajith
>=20
> On Thu, Nov 28, 2019 at 2:34 PM Josef Holzmayr=20
> <holzmayr@rsi-elektrotechnik.de <mailto:holzmayr@rsi-elektrotechnik.de>=
>=20
> wrote:
>=20
>     On Thu, Nov 28, 2019 at 02:29:08PM +0530, Aj Cit wrote:
>      > Hi Josef,
>      >
>      > Is there specific steps to be followed to build an image for iMX=
8M?
>=20
>     You need at least a board support (BSP) layer. As I have no clue ab=
out
>     your board, I can only guess that it will probably something freesc=
ale
>     related, mabye https://git.yoctoproject.org/cgit.cgi/meta-freescale=
/
>=20
>     But first and absolutely foremost:
>     1) watch the introductory videos
>     2) consult the documentation of your board vendor.
>=20
>     Greetz
>=20
>      >
>      > Tnx
>      > Ajith
>      >
>      > On Thu, Nov 28, 2019 at 2:23 PM Josef Holzmayr <
>      > holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>> wrote:
>      >
>      > > On Thu, Nov 28, 2019 at 02:02:29PM +0530, Aj Cit wrote:
>      > > > I've followed the instruction from the yocto project:
>      > > >
>      > >
>     https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yo=
ctoprojectqs.html
>      > >
>      > > This can not be exactly true, as this guide certainly does not
>     include
>      > > anything related to the imx8. So you are either still building
>     for qemu
>      > > (as it defaults to), or using seomthing additional that you're=
 not
>      > > mentioning.
>      > >
>      > > >
>      > > >
>      > > > till the bitbake command. However, I'm getting the following
>     error:
>      > > > ERROR:=C2=A0 OE-core's config sanity checker detected a pote=
ntial
>      > > > misconfiguration.
>      > > >=C2=A0 =C2=A0 =C2=A0Either fix the cause of this error or at =
your own risk
>     disable the
>      > > > checker (see sanity.conf).
>      > > >=C2=A0 =C2=A0 =C2=A0Following is the list of potential proble=
ms / advisories:
>      > > >
>      > > >=C2=A0 =C2=A0 =C2=A0Do not use Bitbake as root.
>      > >
>      > > Here is your answer: do not run botbake as the root user :)
>      > >
>      > > In a nutshell, I recommend watching at least the first couple
>     of videos
>      > > here:
>      > >
>     https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY=
25Qsfyj
>      > >
>      > > Greetz
>      > > >
>      > > >
>      > > > On Thu, Nov 28, 2019 at 12:29 PM Aj Cit
>     <aj.ci.01.239@gmail.com <mailto:aj.ci.01.239@gmail.com>> wrote:
>      > > >
>      > > > > Hello,
>      > > > >
>      > > > > I'm trying to build a Yocto image for NXP i.MX8M (4 core
>     64-bit A53s).
>      > > I
>      > > > > am getting some error when I execute the bitmake command.
>      > > > >
>      > > > > I'd appreciate if you could guide me with next steps. Any
>     Guide or url
>      > > > > will be helpful.
>      > > > >
>      > > > > Thanks
>      > > > > Ajith
>      > > > >
>      > >
>      > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>      > > > Links: You receive all messages sent to this group.
>      > > >
>      > > > View/Reply Online (#47444):
>      > > https://lists.yoctoproject.org/g/yocto/message/47444
>      > > > Mute This Topic:
>     https://lists.yoctoproject.org/mt/63894854/3618269
>      > > > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>      > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=C2=
=A0 [
>      > > holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>]
>      > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>      > >
>      > >
>      > > --
>      > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>      > > Josef Holzmayr
>      > > Software Developer Embedded Systems
>      > >
>      > > Tel: +49 8444 9204-48
>      > > Fax: +49 8444 9204-50
>      > >
>      > > R-S-I Elektrotechnik GmbH & Co. KG
>      > > Woelkestrasse 11
>      > > D-85301 Schweitenkirchen
>      > > www.rsi-elektrotechnik.de <http://www.rsi-elektrotechnik.de>
>      > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>      > > Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG=
: HRA 170393
>      > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. F=
ranz Sorg
>      > > Ust-IdNr: DE 128592548
>      > >
>      > > _____________________________________________________________
>      > > Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
>      > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. F=
ranz Sorg
>      > > USt-IdNr.: DE 128592548
>      > >
>      > >
>=20
>     --=20
>     =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>     Josef Holzmayr
>     Software Developer Embedded Systems
>=20
>     Tel: +49 8444 9204-48
>     Fax: +49 8444 9204-50
>=20
>     R-S-I Elektrotechnik GmbH & Co. KG
>     Woelkestrasse 11
>     D-85301 Schweitenkirchen
>     www.rsi-elektrotechnik.de <http://www.rsi-elektrotechnik.de>
>     =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>     Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA=
 170393
>     Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz =
Sorg
>     Ust-IdNr: DE 128592548
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>=20
> View/Reply Online (#47455): https://lists.yoctoproject.org/g/yocto/mess=
age/47455
> Mute This Topic: https://lists.yoctoproject.org/mt/63894854/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [randy.macle=
od@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=20
# Randy MacLeod
# Wind River Linux
