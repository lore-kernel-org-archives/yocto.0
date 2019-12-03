Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.9156.1575392714573695238
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 09:05:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xB3H5Be7023068
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 3 Dec 2019 09:05:11 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Tue, 3 Dec 2019
 09:05:10 -0800
Subject: Re: [yocto] Yocto Image Build for NXP i.MX8M
To: Aj Cit <aj.ci.01.239@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
References: <CALSaBR8uTFeGqBeOCDan4Sjo=1Dh+1GnpanKZfB03+j0sSMuuA@mail.gmail.com>
 <CALSaBR_YY=7FnN2ngLwL-gVEiQWYqkFGmCUoPNp1Hi0AaWsOEg@mail.gmail.com>
 <20191128085252.ch5dmsqxdut5vsih@jholzmayr.localdomain>
 <CALSaBR_Z5GpPA03w0nerSzA2bR5mRDP12Zp3YNrij89y3Nbvfw@mail.gmail.com>
 <20191128090438.aih26zwmmtmzwviu@jholzmayr.localdomain>
 <CALSaBR8-X6JMfCHq=RbuTngEutGGcZ-jyzsb6nRk615YCbYunw@mail.gmail.com>
 <b28f7b71-be2c-3d6e-a632-a43ba960f4e8@windriver.com>
 <CALSaBR-105LrWp7hkznVoaqnJ5kCG7RW720SSJKuRRj8YPmXHA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <38e8c9c4-fabb-f579-1165-3503f84945af@windriver.com>
Date: Tue, 3 Dec 2019 12:05:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <CALSaBR-105LrWp7hkznVoaqnJ5kCG7RW720SSJKuRRj8YPmXHA@mail.gmail.com>
X-Originating-IP: [172.25.44.8]
Content-Type: multipart/alternative;
	boundary="------------1CD8219D8E0D92B7E32B8549"
Content-Language: en-CA

--------------1CD8219D8E0D92B7E32B8549
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xB3H5Be7023068

On 12/3/19 1:51 AM, Aj Cit wrote:
>
> Dear Randy,
>
> Could you please tell me the steps for running a "Hello world" app on=20
> x86 QEMU?
>
> I've been following the guidelines as per
> https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs=
.html=20
>
>
> tnx
> Aj

Aj,

Please CC the yocto email list; I've added it back.

Googling "hello world yocto" found:
 =C2=A0=C2=A0 http://variwiki.com/index.php?title=3DYocto_Hello_World
and several other web pages and youtube videos.

You might also find the Wind River "A Sample Application Recipe File"=20
documentaion useful:
https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Developers_Gu=
ide_LTS_19/page/mmo1403548803429.html
It's written for the WR product but there doesn't seem to be much that=20
is specific to WR in this case.

I hope that helps.

../Randy



>
> On Tue, Dec 3, 2019 at 7:38 AM Randy MacLeod=20
> <randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>> wrot=
e:
>
>     On 11/28/19 7:02 AM, Aj Cit wrote:
>     >
>     > Dear Josef,
>     >
>     > I've managed to run build command to generate OS image for the
>     target,
>     > which is |core-image-sato|=C2=A0by executing the following comman=
d:
>     >
>     >=C2=A0 =C2=A0 =C2=A0 =C2=A0$ bitbake core-image-sato
>     >
>     > Can I know how to proceed further?
>     >
>     > I'm getting the following response from the Ubuntu 18.04.1 LTS
>     >
>     > Loading cache: 100%
>     >
>     |##################################################################=
#######################################|
>
>     > Time: 0:00:00
>     > Loaded 1264 entries from dependency cache.
>     > NOTE: Resolving any missing task queue dependencies
>     >
>     > Build Configuration:
>     > BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "1.40.0"
>     > BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x86_64-li=
nux"
>     > NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"
>     > TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-poky-li=
nux"
>     > MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "qemu=
x86-64"
>     > DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "poky=
"
>     > DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "2.6.2"
>     > TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"
>     > TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""
>     > meta
>     > meta-poky
>     > meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D
>     "HEAD:e7f0177ef3b6e06b8bc1722fca0241fef08a1530"
>     >
>     > Initialising tasks: 100%
>     >
>     |##################################################################=
#######################################|
>
>     > Time: 0:00:02
>     > Checking sstate mirror object availability: 100%
>     >
>     |##################################################################=
####################|
>
>     > Time: 0:05:55
>     > Sstate summary: Wanted 1402 Found 329 Missed 2146 Current 708 (23=
%
>     > match, 49% complete)
>     > NOTE: Executing SetScene Tasks
>     > NOTE: Executing RunQueue Tasks
>     > WARNING: sudo-1.8.23-r0 do_fetch: Failed to fetch URL
>     > http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz, attempting
>     MIRRORS if
>     > available
>     > NOTE: Tasks Summary: Attempted 5774 tasks of which 2941 didn't
>     need to
>     > be rerun and all succeeded.
>     >
>     > Summary: There was 1 WARNING message shown.
>     > adminuser@verathon:~/poky/build$ ls
>     > bitbake-cookerdaemon.log =C2=A0cache =C2=A0conf =C2=A0downloads =C2=
=A0sstate-cache =C2=A0tmp
>     > adminuser@verathon:~/poky/build$ runqemu qemux86
>     > runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...
>     > runqemu - ERROR -
>     /home/adminuser/poky/build/tmp/deploy/images/qemux86
>     > not a directory valid DEPLOY_DIR_IMAGE
>     > ls: cannot access
>     >
>     '/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.co=
nf':
>
>     > No such file or directory
>     > runqemu - ERROR - Command 'ls -t
>     >
>     /home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot.con=
f'
>     > returned non-zero exit status 2.
>     > runqemu - INFO - Cleaning up
>     > adminuser@verathon:~/poky/build$
>     >
>     >
>     Run:
>     $ runqemu qemux86-64
>
>     since your machine is:
>     =C2=A0> MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 "qemux86-64"
>
>     above.
>
>     I see that the 'quick start' guide says to use "qemux86"
>
>     https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-projec=
t-qs.html
>
>     Did you change the machine or is the documentation out of date?
>
>     ../Randy
>
>
>     > Thanks,
>     >
>     > Ajith
>     >
>     > On Thu, Nov 28, 2019 at 2:34 PM Josef Holzmayr
>     > <holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>
>     <mailto:holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>>>
>     > wrote:
>     >
>     >=C2=A0 =C2=A0 =C2=A0On Thu, Nov 28, 2019 at 02:29:08PM +0530, Aj C=
it wrote:
>     >=C2=A0 =C2=A0 =C2=A0 > Hi Josef,
>     >=C2=A0 =C2=A0 =C2=A0 >
>     >=C2=A0 =C2=A0 =C2=A0 > Is there specific steps to be followed to b=
uild an image
>     for iMX8M?
>     >
>     >=C2=A0 =C2=A0 =C2=A0You need at least a board support (BSP) layer.=
 As I have no
>     clue about
>     >=C2=A0 =C2=A0 =C2=A0your board, I can only guess that it will prob=
ably something
>     freescale
>     >=C2=A0 =C2=A0 =C2=A0related, mabye
>     https://git.yoctoproject.org/cgit.cgi/meta-freescale/
>     >
>     >=C2=A0 =C2=A0 =C2=A0But first and absolutely foremost:
>     >=C2=A0 =C2=A0 =C2=A01) watch the introductory videos
>     >=C2=A0 =C2=A0 =C2=A02) consult the documentation of your board ven=
dor.
>     >
>     >=C2=A0 =C2=A0 =C2=A0Greetz
>     >
>     >=C2=A0 =C2=A0 =C2=A0 >
>     >=C2=A0 =C2=A0 =C2=A0 > Tnx
>     >=C2=A0 =C2=A0 =C2=A0 > Ajith
>     >=C2=A0 =C2=A0 =C2=A0 >
>     >=C2=A0 =C2=A0 =C2=A0 > On Thu, Nov 28, 2019 at 2:23 PM Josef Holzm=
ayr <
>     >=C2=A0 =C2=A0 =C2=A0 > holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>
>     >=C2=A0 =C2=A0 =C2=A0<mailto:holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>>> wrote:
>     >=C2=A0 =C2=A0 =C2=A0 >
>     >=C2=A0 =C2=A0 =C2=A0 > > On Thu, Nov 28, 2019 at 02:02:29PM +0530,=
 Aj Cit wrote:
>     >=C2=A0 =C2=A0 =C2=A0 > > > I've followed the instruction from the =
yocto project:
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >
>     https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yo=
ctoprojectqs.html
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > This can not be exactly true, as this gui=
de certainly
>     does not
>     >=C2=A0 =C2=A0 =C2=A0include
>     >=C2=A0 =C2=A0 =C2=A0 > > anything related to the imx8. So you are =
either still
>     building
>     >=C2=A0 =C2=A0 =C2=A0for qemu
>     >=C2=A0 =C2=A0 =C2=A0 > > (as it defaults to), or using seomthing a=
dditional that
>     you're not
>     >=C2=A0 =C2=A0 =C2=A0 > > mentioning.
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > till the bitbake command. However, I'm =
getting the
>     following
>     >=C2=A0 =C2=A0 =C2=A0error:
>     >=C2=A0 =C2=A0 =C2=A0 > > > ERROR:=C2=A0 OE-core's config sanity ch=
ecker detected a
>     potential
>     >=C2=A0 =C2=A0 =C2=A0 > > > misconfiguration.
>     >=C2=A0 =C2=A0 =C2=A0 > > >=C2=A0 =C2=A0 =C2=A0Either fix the cause=
 of this error or at your own
>     risk
>     >=C2=A0 =C2=A0 =C2=A0disable the
>     >=C2=A0 =C2=A0 =C2=A0 > > > checker (see sanity.conf).
>     >=C2=A0 =C2=A0 =C2=A0 > > >=C2=A0 =C2=A0 =C2=A0Following is the lis=
t of potential problems /
>     advisories:
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > >=C2=A0 =C2=A0 =C2=A0Do not use Bitbake a=
s root.
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > Here is your answer: do not run botbake a=
s the root user :)
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > In a nutshell, I recommend watching at le=
ast the first
>     couple
>     >=C2=A0 =C2=A0 =C2=A0of videos
>     >=C2=A0 =C2=A0 =C2=A0 > > here:
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >
>     https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY=
25Qsfyj
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > Greetz
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > On Thu, Nov 28, 2019 at 12:29 PM Aj Cit
>     >=C2=A0 =C2=A0 =C2=A0<aj.ci.01.239@gmail.com <mailto:aj.ci.01.239@g=
mail.com>
>     <mailto:aj.ci.01.239@gmail.com <mailto:aj.ci.01.239@gmail.com>>>
>     wrote:
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > > Hello,
>     >=C2=A0 =C2=A0 =C2=A0 > > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > > I'm trying to build a Yocto image for=
 NXP i.MX8M (4
>     core
>     >=C2=A0 =C2=A0 =C2=A064-bit A53s).
>     >=C2=A0 =C2=A0 =C2=A0 > > I
>     >=C2=A0 =C2=A0 =C2=A0 > > > > am getting some error when I execute =
the bitmake
>     command.
>     >=C2=A0 =C2=A0 =C2=A0 > > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > > I'd appreciate if you could guide me =
with next
>     steps. Any
>     >=C2=A0 =C2=A0 =C2=A0Guide or url
>     >=C2=A0 =C2=A0 =C2=A0 > > > > will be helpful.
>     >=C2=A0 =C2=A0 =C2=A0 > > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > > Thanks
>     >=C2=A0 =C2=A0 =C2=A0 > > > > Ajith
>     >=C2=A0 =C2=A0 =C2=A0 > > > >
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-
>     >=C2=A0 =C2=A0 =C2=A0 > > > Links: You receive all messages sent to=
 this group.
>     >=C2=A0 =C2=A0 =C2=A0 > > >
>     >=C2=A0 =C2=A0 =C2=A0 > > > View/Reply Online (#47444):
>     >=C2=A0 =C2=A0 =C2=A0 > > https://lists.yoctoproject.org/g/yocto/me=
ssage/47444
>     >=C2=A0 =C2=A0 =C2=A0 > > > Mute This Topic:
>     > https://lists.yoctoproject.org/mt/63894854/3618269
>     >=C2=A0 =C2=A0 =C2=A0 > > > Group Owner: yocto+owner@lists.yoctopro=
ject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     >=C2=A0 =C2=A0 =C2=A0<mailto:yocto%2Bowner@lists.yoctoproject.org
>     <mailto:yocto%252Bowner@lists.yoctoproject.org>>
>     >=C2=A0 =C2=A0 =C2=A0 > > > Unsubscribe:
>     https://lists.yoctoproject.org/g/yocto/unsub [
>     >=C2=A0 =C2=A0 =C2=A0 > > holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>
>     >=C2=A0 =C2=A0 =C2=A0<mailto:holzmayr@rsi-elektrotechnik.de
>     <mailto:holzmayr@rsi-elektrotechnik.de>>]
>     >=C2=A0 =C2=A0 =C2=A0 > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > --
>     >=C2=A0 =C2=A0 =C2=A0 > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94
>     >=C2=A0 =C2=A0 =C2=A0 > > Josef Holzmayr
>     >=C2=A0 =C2=A0 =C2=A0 > > Software Developer Embedded Systems
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > Tel: +49 8444 9204-48
>     >=C2=A0 =C2=A0 =C2=A0 > > Fax: +49 8444 9204-50
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > > R-S-I Elektrotechnik GmbH & Co. KG
>     >=C2=A0 =C2=A0 =C2=A0 > > Woelkestrasse 11
>     >=C2=A0 =C2=A0 =C2=A0 > > D-85301 Schweitenkirchen
>     >=C2=A0 =C2=A0 =C2=A0 > > www.rsi-elektrotechnik.de
>     <http://www.rsi-elektrotechnik.de> <http://www.rsi-elektrotechnik.d=
e>
>     >=C2=A0 =C2=A0 =C2=A0 > > =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94
>     >=C2=A0 =C2=A0 =C2=A0 > > Amtsgericht Ingolstadt =E2=80=93 GmbH: HR=
B 191328 =E2=80=93 KG: HRA 170393
>     >=C2=A0 =C2=A0 =C2=A0 > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Micha=
el Sorg, Dipl.-Ing.
>     Franz Sorg
>     >=C2=A0 =C2=A0 =C2=A0 > > Ust-IdNr: DE 128592548
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     _____________________________________________________________
>     >=C2=A0 =C2=A0 =C2=A0 > > Amtsgericht Ingolstadt - GmbH: HRB 191328=
 - KG: HRA 170363
>     >=C2=A0 =C2=A0 =C2=A0 > > Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Micha=
el Sorg, Dipl.-Ing.
>     Franz Sorg
>     >=C2=A0 =C2=A0 =C2=A0 > > USt-IdNr.: DE 128592548
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >=C2=A0 =C2=A0 =C2=A0 > >
>     >
>     >=C2=A0 =C2=A0 =C2=A0--
>     >=C2=A0 =C2=A0 =C2=A0=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94
>     >=C2=A0 =C2=A0 =C2=A0Josef Holzmayr
>     >=C2=A0 =C2=A0 =C2=A0Software Developer Embedded Systems
>     >
>     >=C2=A0 =C2=A0 =C2=A0Tel: +49 8444 9204-48
>     >=C2=A0 =C2=A0 =C2=A0Fax: +49 8444 9204-50
>     >
>     >=C2=A0 =C2=A0 =C2=A0R-S-I Elektrotechnik GmbH & Co. KG
>     >=C2=A0 =C2=A0 =C2=A0Woelkestrasse 11
>     >=C2=A0 =C2=A0 =C2=A0D-85301 Schweitenkirchen
>     > www.rsi-elektrotechnik.de <http://www.rsi-elektrotechnik.de>
>     <http://www.rsi-elektrotechnik.de>
>     >=C2=A0 =C2=A0 =C2=A0=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94
>     >=C2=A0 =C2=A0 =C2=A0Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191=
328 =E2=80=93 KG: HRA 170393
>     >=C2=A0 =C2=A0 =C2=A0Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael So=
rg, Dipl.-Ing. Franz Sorg
>     >=C2=A0 =C2=A0 =C2=A0Ust-IdNr: DE 128592548
>     >
>     >
>     > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     > Links: You receive all messages sent to this group.
>     >
>     > View/Reply Online (#47455):
>     https://lists.yoctoproject.org/g/yocto/message/47455
>     > Mute This Topic: https://lists.yoctoproject.org/mt/63894854/36167=
65
>     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>]
>     > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     >
>
>
>     --=20
>     # Randy MacLeod
>     # Wind River Linux
>

--=20
# Randy MacLeod
# Wind River Linux


--------------1CD8219D8E0D92B7E32B8549
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mail.windriver.com id xB3H5Be7023068

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 12/3/19 1:51 AM, Aj Cit wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CALSaBR-105LrWp7hkznVoaqnJ5kCG7RW720SSJKuRRj8YPmXHA@mail.gmai=
l.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr"><br>
        <div>Dear Randy,</div>
        <div><br>
        </div>
        <div>Could you please tell me the steps for running a "Hello
          world" app on x86 QEMU?</div>
        <div><br>
        </div>
        <div>I've been following the guidelines as per=C2=A0</div>
        <div><a
href=3D"https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-proj=
ect-qs.html"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.=
html</a>=C2=A0</div>
        <div><br>
        </div>
        <div>tnx</div>
        <div>Aj <br>
        </div>
      </div>
    </blockquote>
    <p>Aj,<br>
    </p>
    <p>Please CC the yocto email list; I've added it back.<br>
    </p>
    <p>Googling "hello world yocto" found:<br>
      =C2=A0=C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"http://vari=
wiki.com/index.php?title=3DYocto_Hello_World">http://variwiki.com/index.p=
hp?title=3DYocto_Hello_World</a><br>
      and several other web pages and youtube videos.</p>
    <p>You might also find the Wind River "A Sample Application Recipe
      File" documentaion useful:<br>
      =C2=A0=C2=A0
<a class=3D"moz-txt-link-freetext" href=3D"https://docs.windriver.com/bun=
dle/Wind_River_Linux_Platform_Developers_Guide_LTS_19/page/mmo14035488034=
29.html">https://docs.windriver.com/bundle/Wind_River_Linux_Platform_Deve=
lopers_Guide_LTS_19/page/mmo1403548803429.html</a><br>
      It's written for the WR product but there doesn't seem to be much
      that is specific to WR in this case. <br>
    </p>
    <p>I hope that helps.</p>
    <p>../Randy</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite"
cite=3D"mid:CALSaBR-105LrWp7hkznVoaqnJ5kCG7RW720SSJKuRRj8YPmXHA@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 3, 2019 at 7:38=
 AM
          Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com=
"
            moz-do-not-send=3D"true">randy.macleod@windriver.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
On
          11/28/19 7:02 AM, Aj Cit wrote:<br>
          &gt; <br>
          &gt; Dear Josef,<br>
          &gt; <br>
          &gt; I've managed to run build command to generate OS image
          for the target, <br>
          &gt; which is |core-image-sato|=C2=A0by executing the following
          command:<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$ bitbake core-image-sato<br>
          &gt; <br>
          &gt; Can I know how to proceed further?<br>
          &gt; <br>
          &gt; I'm getting the following response from the Ubuntu
          18.04.1 LTS<br>
          &gt; <br>
          &gt; Loading cache: 100% <br>
          &gt;
|########################################################################=
#################################|
          <br>
          &gt; Time: 0:00:00<br>
          &gt; Loaded 1264 entries from dependency cache.<br>
          &gt; NOTE: Resolving any missing task queue dependencies<br>
          &gt; <br>
          &gt; Build Configuration:<br>
          &gt; BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "1.40.0"=
<br>
          &gt; BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "x8=
6_64-linux"<br>
          &gt; NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D "universal"<br>
          &gt; TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-=
poky-linux"<br>
          &gt; MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 "qemux86-64"<br>
          &gt; DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D=
 "poky"<br>
          &gt; DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D "2.6.2"<br>
          &gt; TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "m64 core2"<b=
r>
          &gt; TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D ""<br>
          &gt; meta<br>
          &gt; meta-poky<br>
          &gt; meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D
          "HEAD:e7f0177ef3b6e06b8bc1722fca0241fef08a1530"<br>
          &gt; <br>
          &gt; Initialising tasks: 100% <br>
          &gt;
|########################################################################=
#################################|
          <br>
          &gt; Time: 0:00:02<br>
          &gt; Checking sstate mirror object availability: 100% <br>
          &gt;
|########################################################################=
##############|
          <br>
          &gt; Time: 0:05:55<br>
          &gt; Sstate summary: Wanted 1402 Found 329 Missed 2146 Current
          708 (23% <br>
          &gt; match, 49% complete)<br>
          &gt; NOTE: Executing SetScene Tasks<br>
          &gt; NOTE: Executing RunQueue Tasks<br>
          &gt; WARNING: sudo-1.8.23-r0 do_fetch: Failed to fetch URL <br>
          &gt; <a
            href=3D"http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>http://ftp.sudo.ws/sudo/dist/sudo-1.8.23.tar.gz</a>,
          attempting MIRRORS if <br>
          &gt; available<br>
          &gt; NOTE: Tasks Summary: Attempted 5774 tasks of which 2941
          didn't need to <br>
          &gt; be rerun and all succeeded.<br>
          &gt; <br>
          &gt; Summary: There was 1 WARNING message shown.<br>
          &gt; adminuser@verathon:~/poky/build$ ls<br>
          &gt; bitbake-cookerdaemon.log =C2=A0cache =C2=A0conf =C2=A0down=
loads
          =C2=A0sstate-cache =C2=A0tmp<br>
          &gt; adminuser@verathon:~/poky/build$ runqemu qemux86<br>
          &gt; runqemu - INFO - Running MACHINE=3Dqemux86 bitbake -e...<b=
r>
          &gt; runqemu - ERROR -
          /home/adminuser/poky/build/tmp/deploy/images/qemux86 <br>
          &gt; not a directory valid DEPLOY_DIR_IMAGE<br>
          &gt; ls: cannot access <br>
          &gt;
          '/home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboo=
t.conf':
          <br>
          &gt; No such file or directory<br>
          &gt; runqemu - ERROR - Command 'ls -t <br>
          &gt;
          /home/adminuser/poky/build/tmp/deploy/images/qemux86/*.qemuboot=
.conf'
          <br>
          &gt; returned non-zero exit status 2.<br>
          &gt; runqemu - INFO - Cleaning up<br>
          &gt; adminuser@verathon:~/poky/build$<br>
          &gt; <br>
          &gt; <br>
          Run:<br>
          $ runqemu qemux86-64<br>
          <br>
          since your machine is:<br>
          =C2=A0&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =3D "qemux86-64"<br>
          <br>
          above.<br>
          <br>
          I see that the 'quick start' guide says to use "qemux86"<br>
          <br>
          <a
href=3D"https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-proj=
ect-qs.html"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.=
html</a><br>
          <br>
          Did you change the machine or is the documentation out of
          date?<br>
          <br>
          ../Randy<br>
          <br>
          <br>
          &gt; Thanks,<br>
          &gt; <br>
          &gt; Ajith<br>
          &gt; <br>
          &gt; On Thu, Nov 28, 2019 at 2:34 PM Josef Holzmayr <br>
          &gt; &lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de"
            target=3D"_blank" moz-do-not-send=3D"true">holzmayr@rsi-elekt=
rotechnik.de</a>
          &lt;mailto:<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de"
            target=3D"_blank" moz-do-not-send=3D"true">holzmayr@rsi-elekt=
rotechnik.de</a>&gt;&gt;
          <br>
          &gt; wrote:<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0On Thu, Nov 28, 2019 at 02:29:08PM +053=
0, Aj Cit
          wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Josef,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Is there specific steps to be fol=
lowed to build
          an image for iMX8M?<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0You need at least a board support (BSP)=
 layer. As I
          have no clue about<br>
          &gt;=C2=A0 =C2=A0 =C2=A0your board, I can only guess that it wi=
ll probably
          something freescale<br>
          &gt;=C2=A0 =C2=A0 =C2=A0related, mabye <a
            href=3D"https://git.yoctoproject.org/cgit.cgi/meta-freescale/=
"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://git.yoctoproject.org/cgit.cgi/meta-freescale/</a><br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0But first and absolutely foremost:<br>
          &gt;=C2=A0 =C2=A0 =C2=A01) watch the introductory videos<br>
          &gt;=C2=A0 =C2=A0 =C2=A02) consult the documentation of your bo=
ard vendor.<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0Greetz<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Tnx<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Ajith<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Thu, Nov 28, 2019 at 2:23 PM J=
osef Holzmayr
          &lt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a
            href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_bla=
nk"
            moz-do-not-send=3D"true">holzmayr@rsi-elektrotechnik.de</a><b=
r>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a
            href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_bla=
nk"
            moz-do-not-send=3D"true">holzmayr@rsi-elektrotechnik.de</a>&g=
t;&gt;
          wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; On Thu, Nov 28, 2019 at 02:0=
2:29PM +0530,
          Aj Cit wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; I've followed the instr=
uction from
          the yocto project:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a
href=3D"https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-=
yoctoprojectqs.html"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://www.yoctoproject.org/docs/3.0/brief-yoctoprojectqs/brief-yoctopr=
ojectqs.html</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; This can not be exactly true=
, as this
          guide certainly does not<br>
          &gt;=C2=A0 =C2=A0 =C2=A0include<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; anything related to the imx8=
. So you are
          either still building<br>
          &gt;=C2=A0 =C2=A0 =C2=A0for qemu<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; (as it defaults to), or usin=
g seomthing
          additional that you're not<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; mentioning.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; till the bitbake comman=
d. However,
          I'm getting the following<br>
          &gt;=C2=A0 =C2=A0 =C2=A0error:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; ERROR:=C2=A0 OE-core's =
config sanity
          checker detected a potential<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; misconfiguration.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Eith=
er fix the cause of this
          error or at your own risk<br>
          &gt;=C2=A0 =C2=A0 =C2=A0disable the<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; checker (see sanity.con=
f).<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Foll=
owing is the list of
          potential problems / advisories:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0Do n=
ot use Bitbake as root.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Here is your answer: do not =
run botbake as
          the root user :)<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; In a nutshell, I recommend w=
atching at
          least the first couple<br>
          &gt;=C2=A0 =C2=A0 =C2=A0of videos<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; here:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a
href=3D"https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_G=
LY25Qsfyj"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://www.youtube.com/playlist?list=3DPLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsf=
yj</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Greetz<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; On Thu, Nov 28, 2019 at=
 12:29 PM Aj
          Cit<br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"mailto:aj.ci.01.239@gmai=
l.com"
            target=3D"_blank" moz-do-not-send=3D"true">aj.ci.01.239@gmail=
.com</a>
          &lt;mailto:<a href=3D"mailto:aj.ci.01.239@gmail.com"
            target=3D"_blank" moz-do-not-send=3D"true">aj.ci.01.239@gmail=
.com</a>&gt;&gt;
          wrote:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; Hello,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; I'm trying to buil=
d a Yocto
          image for NXP i.MX8M (4 core<br>
          &gt;=C2=A0 =C2=A0 =C2=A064-bit A53s).<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; I<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; am getting some er=
ror when I
          execute the bitmake command.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; I'd appreciate if =
you could
          guide me with next steps. Any<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Guide or url<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; will be helpful.<b=
r>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; Thanks<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt; Ajith<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Links: You receive all =
messages sent
          to this group.<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; View/Reply Online (#474=
44):<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a
            href=3D"https://lists.yoctoproject.org/g/yocto/message/47444"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/message/47444</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Mute This Topic:<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a
            href=3D"https://lists.yoctoproject.org/mt/63894854/3618269"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/mt/63894854/3618269</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Group Owner: <a
            href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"
            target=3D"_blank" moz-do-not-send=3D"true">yocto+owner@lists.=
yoctoproject.org</a><br>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a
            href=3D"mailto:yocto%252Bowner@lists.yoctoproject.org"
            target=3D"_blank" moz-do-not-send=3D"true">yocto%2Bowner@list=
s.yoctoproject.org</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; Unsubscribe: <a
            href=3D"https://lists.yoctoproject.org/g/yocto/unsub"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/unsub</a>=C2=A0
          [<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a
            href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_bla=
nk"
            moz-do-not-send=3D"true">holzmayr@rsi-elektrotechnik.de</a><b=
r>
          &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a
            href=3D"mailto:holzmayr@rsi-elektrotechnik.de" target=3D"_bla=
nk"
            moz-do-not-send=3D"true">holzmayr@rsi-elektrotechnik.de</a>&g=
t;]<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; --<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; =E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Josef Holzmayr<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Software Developer Embedded =
Systems<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Tel: +49 8444 9204-48<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Fax: +49 8444 9204-50<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; R-S-I Elektrotechnik GmbH &a=
mp; Co. KG<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Woelkestrasse 11<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; D-85301 Schweitenkirchen<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a
            href=3D"http://www.rsi-elektrotechnik.de" rel=3D"noreferrer"
            target=3D"_blank" moz-do-not-send=3D"true">www.rsi-elektrotec=
hnik.de</a>
          &lt;<a href=3D"http://www.rsi-elektrotechnik.de"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>http://www.rsi-elektrotechnik.de</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; =E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Amtsgericht Ingolstadt =E2=80=
=93 GmbH: HRB 191328
          =E2=80=93 KG: HRA 170393<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Gesch=C3=A4ftsf=C3=BChrer: D=
r.-Ing. Michael Sorg,
          Dipl.-Ing. Franz Sorg<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Ust-IdNr: DE 128592548<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;
          _____________________________________________________________<b=
r>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Amtsgericht Ingolstadt - Gmb=
H: HRB 191328
          - KG: HRA 170363<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Gesch=C3=A4ftsf=C3=BChrer: D=
r.-Ing. Michael Sorg,
          Dipl.-Ing. Franz Sorg<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; USt-IdNr.: DE 128592548<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0-- <br>
          &gt;=C2=A0 =C2=A0 =C2=A0=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Josef Holzmayr<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Software Developer Embedded Systems<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0Tel: +49 8444 9204-48<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Fax: +49 8444 9204-50<br>
          &gt; <br>
          &gt;=C2=A0 =C2=A0 =C2=A0R-S-I Elektrotechnik GmbH &amp; Co. KG<=
br>
          &gt;=C2=A0 =C2=A0 =C2=A0Woelkestrasse 11<br>
          &gt;=C2=A0 =C2=A0 =C2=A0D-85301 Schweitenkirchen<br>
          &gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"http://www.rsi-elektrotechni=
k.de"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>www.rsi-elektrotechnik.de</a>
          &lt;<a href=3D"http://www.rsi-elektrotechnik.de"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>http://www.rsi-elektrotechnik.de</a>&gt;<br>
          &gt;=C2=A0 =C2=A0 =C2=A0=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Amtsgericht Ingolstadt =E2=80=93 GmbH: =
HRB 191328 =E2=80=93 KG: HRA
          170393<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Mic=
hael Sorg, Dipl.-Ing.
          Franz Sorg<br>
          &gt;=C2=A0 =C2=A0 =C2=A0Ust-IdNr: DE 128592548<br>
          &gt; <br>
          &gt; <br>
          &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
          &gt; Links: You receive all messages sent to this group.<br>
          &gt; <br>
          &gt; View/Reply Online (#47455): <a
            href=3D"https://lists.yoctoproject.org/g/yocto/message/47455"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/message/47455</a><br>
          &gt; Mute This Topic: <a
            href=3D"https://lists.yoctoproject.org/mt/63894854/3616765"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/mt/63894854/3616765</a><br>
          &gt; Group Owner: <a
            href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"
            target=3D"_blank" moz-do-not-send=3D"true">yocto+owner@lists.=
yoctoproject.org</a><br>
          &gt; Unsubscribe: <a
            href=3D"https://lists.yoctoproject.org/g/yocto/unsub"
            rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"true"=
>https://lists.yoctoproject.org/g/yocto/unsub</a>=C2=A0
          [<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blan=
k"
            moz-do-not-send=3D"true">randy.macleod@windriver.com</a>]<br>
          &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
          &gt; <br>
          <br>
          <br>
          -- <br>
          # Randy MacLeod<br>
          # Wind River Linux<br>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------1CD8219D8E0D92B7E32B8549--
