Return-Path: <rjiejie@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64EB6E014EA;
	Mon, 16 Sep 2013 01:02:38 -0700 (PDT)
Received: by mail-pa0-f53.google.com with SMTP id lb1so5069588pab.12
	for <multiple recipients>; Mon, 16 Sep 2013 01:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject
	:mime-version:content-type;
	bh=AGkNUJFbrXh4VlfWIPkNJ8ZJ3JwWl39LhLrlkBo/9T4=;
	b=N5XPJ7Ddsbc5KBFj6XJKvbbBmV1rKKlHM9JvbBdsbhTxPyFFvOcwISy8r3oHXOULqe
	rXcBZnMSPQGwHJ1pZItaDXj1m1fey/OEIXPJaxCH6iYRt3k14MA5Li4WtrvtPs++ZEbP
	C6UsDmN9XbJsAEXAdDOJ26cuWz0QZSvNvcJyVyCNlx91EfR/v294+V8IwSFTP0USw9fg
	Y3QE9OW/Yinb4pQ5ES2oDZ8YwKqWkTTC3GKGFI/v+ClDNCOShhd97dgfA3PrNjsOhc5k
	JXM6ZSFCPU+CMjtpMdUPyVd8X3aRYAo8QVqvAr0eXAq0w2KR7vG5K87PqdhyKQfUj9ox
	Pj0g==
X-Received: by 10.68.220.193 with SMTP id py1mr1409592pbc.150.1379318558511;
	Mon, 16 Sep 2013 01:02:38 -0700 (PDT)
Received: from [192.168.10.162] ([115.236.28.243])
	by mx.google.com with ESMTPSA id
	pu5sm36735214pac.21.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 16 Sep 2013 01:02:37 -0700 (PDT)
Date: Mon, 16 Sep 2013 16:02:29 +0800
From: jojo <rjiejie@gmail.com>
To: Daiane Angolini <daiane.angolini@freescale.com>
Message-ID: <5A4E1DA77C324A4BA0D8162E247C809A@gmail.com>
In-Reply-To: <5231A5B3.2040804@freescale.com>
References: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
	<CA+AhUGxEebNBYp64mBh3TbCrn2_n4GDsi1KB3O_Tk0mpwj7jMQ@mail.gmail.com>
	<8AFAD819783F4C2CB04F1D5A9CA05C48@gmail.com>
	<B009182FF2944A11AD49E18C5954CCBE@gmail.com>
	<5231A5B3.2040804@freescale.com>
X-Mailer: sparrow 1.6.4 (build 1176)
MIME-Version: 1.0
Cc: "=?utf-8?Q?meta-freescale=40yoctoproject.org?="
	<meta-freescale@yoctoproject.org>,
	"=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?5Zue5aSN77yaIG1ldGEtZnJlZXNjYWxlXSDlm57lpI3vvJogb3cgdG8gaW5zdGFsbCBwdWxzZWF1ZGlvIGNvbXBsZXRlbHk=?=
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
X-List-Received-Date: Mon, 16 Sep 2013 08:02:39 -0000
Content-Type: multipart/alternative; boundary="5236bb15_3dc240fb_24a"

--5236bb15_3dc240fb_24a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi, =20
I need to install the =22pulseaudio-server=22 really & start up pulseaudi=
o in daemon mode,

  hdmi output is ok :)

bitbake -e =7C grep =5EDISTRO=5F=46EATURES
DISTRO=5F=46EATURES=3D=22alsa argp bluetooth ext2 irda largefile pcmcia u=
sbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-ba=
cktrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charset=
s libc-crypt                                    libc-crypt-ufc libc-db-al=
iases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse          =
libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locales=
 libc-locale-code                                       libc-memusage lib=
c-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams lib=
c-sunrpc                                         libc-utmp libc-utmpx lib=
c-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glib=
c                                         libc-posix-wchar-io pulseaudio =
sysvinit largefile opengl multiarch wayland=22
DISTRO=5F=46EATURES=5FLIBC=5Fclass-nativesdk=3D=22ipv4 ipv6 libc-backtrac=
e libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc=
-crypt                                    libc-crypt-ufc libc-db-aliases =
libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                =
                   libc-getlogin libc-idn libc-inet-anl libc-libm libc-li=
bm-big libc-locales libc-locale-code                                     =
    libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-s=
pawn libc-streams libc-sunrpc        libc-utmp libc-utmpx libc-wordexp li=
bc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc           =
                            libc-posix-wchar-io=22
DISTRO=5F=46EATURES=5FBACK=46ILL=3D=22pulseaudio sysvinit=22
DISTRO=5F=46EATURES=5FLIBC=3D=22ipv4 ipv6 libc-backtrace libc-big-macros =
libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt            =
                        libc-crypt-ufc libc-db-aliases libc-envz libc-fcv=
t libc-fmtmsg libc-fstab libc-ftraverse                                  =
 libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big libc-locale=
s libc-locale-code                                         libc-memusage =
libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams =
libc-sunrpc                        libc-utmp libc-utmpx libc-wordexp libc=
-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc             =
                          libc-posix-wchar-io=22
DISTRO=5F=46EATURES=5FLIBC=5FDE=46AULT=3D=22ipv4 ipv6 libc-backtrace libc=
-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt=
                                    libc-crypt-ufc libc-db-aliases libc-e=
nvz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse                      =
             libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big=
 libc-locales libc-locale-code                                         li=
bc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn l=
ibc-streams libc-sunrpc                libc-utmp libc-utmpx libc-wordexp =
libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc         =
                              libc-posix-wchar-io=22

Thanks,

- Jojo


=E5=9C=A8 2013=E5=B9=B49=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E5=9B=9B=EF=
=BC=8C=E4=B8=8B=E5=8D=887:29=EF=BC=8CDaiane Angolini =E5=86=99=E9=81=93=EF=
=BC=9A

> On 09/12/2013 07:07 AM, jojo wrote:
> > Hi,
> =20
> =20
> Hi Jojo,
> =20
> > I installed pulse audio server in IMX6QSD of =46SL, but there is no o=
utput
> > of audio with HDMI :(
> > =20
> =20
> =20
> Please, double check if pulseaudio is in your DISTRO=5F=46EATURES (i th=
ink =20
> it's default, but I cannot remember exactly)
> =20
> bitbake -e =7C grep =5EDISTRO=5F=46EATURES
> =20
> How are you configuring HDMI audio=3F I know there is a doc in =20
> imx-community with the audio configuration if you want to change it fro=
m =20
> default to HDMI.
> =20
> =20
> > =20
> > how to track the log of the pulse audio =3F
> > =20
> > Thanks,
> > =20
> > - Jojo
> > =20
> > =E5=9C=A8 2013=E5=B9=B47=E6=9C=8816=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C=
=EF=BC=8C=E4=B8=8B=E5=8D=8811:32=EF=BC=8Cjojo =E5=86=99=E9=81=93=EF=BC=9A=

> > =20
> > > Hi,
> > > Ok & i will have a try, thanks for your reply :)
> > > =20
> > > Thanks,
> > > =20
> > > - Jojo
> > > =20
> > > =E5=9C=A8 2013=E5=B9=B47=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=
=94=EF=BC=8C=E4=B8=8B=E5=8D=886:45=EF=BC=8CErik Bot=C3=B6 =E5=86=99=E9=81=
=93=EF=BC=9A
> > > =20
> > > > Hi,
> > > > On =46ri, Jul 12, 2013 at 12:35 PM, jojo <rjiejie=40gmail.com (ma=
ilto:rjiejie=40gmail.com)
> > > > <mailto:rjiejie=40gmail.com>> wrote:
> > > > > Hi,
> > > > > My yocto version/tag is dylan.
> > > > > I have compiled fsl-image-gui to testing the the audio output, =
but i
> > > > > can not find
> > > > > anything about for pulseaudio server to start up daemon.
> > > > > =20
> > > > > I saw the build code in the path about for
> > > > > =22build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio=
/3.0-r0/image/=22
> > > > > and it really have built all things of pulseaudio. but when i c=
reate
> > > > > the fsl-image-gui to start up, i just find =22libpulse*=22 in t=
he
> > > > > rootfs.
> > > > > =20
> > > > > I think that something wrong with pulseaudio configure so that =
it do
> > > > > not install completely by default.
> > > > > =20
> > > > =20
> > > > =20
> > > > The pulseaudio daemon is packaged as pulseaudio-server, maybe the=

> > > > image doesn't install that package by default=3F
> > > > Cheers,
> > > > Erik Bot=C3=B6
> > > > =20
> > > > > =20
> > > > > someone know about that how to install pulseaudio completely =3F=

> > > > > =20
> > > > > Thanks,
> > > > > =20
> > > > > - Jojo
> > > > > =20
> > > > > =20
> > > > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F
> > > > > meta-freescale mailing list
> > > > > meta-freescale=40yoctoproject.org <mailto:meta-freescale=40yoct=
oproject.org>
> > > > > https://lists.yoctoproject.org/listinfo/meta-freescale
> > > > > =20
> > > > =20
> > > > =20
> > > =20
> > > =20
> > =20
> > =20
> > =20
> > =20
> > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > meta-freescale mailing list
> > meta-freescale=40yoctoproject.org (mailto:meta-freescale=40yoctoproje=
ct.org)
> > https://lists.yoctoproject.org/listinfo/meta-freescale
> > =20
> =20
> =20
> =20
> -- =20
> Daiane
> =20
> =20



--5236bb15_3dc240fb_24a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div>
                    Hi,
                </div><div><span class=3D=22Apple-tab-span=22 style=3D=22=
white-space:pre=22>	</span>I need to install the =22pulseaudio-server=22 =
really &amp; start up pulseaudio in daemon mode,</div><div><br></div><div=
>&nbsp;<span class=3D=22Apple-tab-span=22 style=3D=22white-space:pre=22>	=
</span>hdmi&nbsp;output is ok&nbsp;:)</div><div><br></div><div>bitbake -e=
 =7C grep =5EDISTRO=5F=46EATURES</div><div>DISTRO=5F=46EATURES=3D=22alsa =
argp bluetooth ext2 irda largefile pcmcia usbgadget usbhost wifi xattr nf=
s zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace libc-big-macros libc-b=
sd libc-cxx-tests libc-catgets libc-charsets libc-crypt &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-crypt-ufc libc-db-aliases libc-en=
vz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big =
libc-locales libc-locale-code &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld=
-debug libc-spawn libc-streams libc-sunrpc &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-utmp libc-utmpx libc-wordexp li=
bc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-posix-wchar=
-io pulseaudio sysvinit largefile opengl multiarch wayland=22</div><div>D=
ISTRO=5F=46EATURES=5FLIBC=5Fclass-nativesdk=3D=22ipv4 ipv6 libc-backtrace=
 libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-=
crypt &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-crypt-ufc =
libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-getlogin libc-idn lib=
c-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-memusage =
libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams =
libc-sunrpc &nbsp; &nbsp; &nbsp; &nbsp;libc-utmp libc-utmpx libc-wordexp =
libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-posix-wchar-io=22=
</div><div>DISTRO=5F=46EATURES=5FBACK=46ILL=3D=22pulseaudio sysvinit=22</=
div><div>DISTRO=5F=46EATURES=5FLIBC=3D=22ipv4 ipv6 libc-backtrace libc-bi=
g-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-crypt-ufc libc-db-=
aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-getlogin libc-idn libc-inet-a=
nl libc-libm libc-libm-big libc-locales libc-locale-code &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-memusage libc-nis=
 libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sun=
rpc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar li=
bc-posix-regexp libc-posix-regexp-glibc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; libc-posix-wchar-io=22</div><div>DISTRO=5F=46E=
ATURES=5FLIBC=5FDE=46AULT=3D=22ipv4 ipv6 libc-backtrace libc-big-macros l=
ibc-bsd libc-cxx-tests libc-catgets libc-charsets libc-crypt &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-crypt-ufc libc-db-aliases li=
bc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; libc-getlogin libc-idn libc-inet-anl libc-li=
bm libc-libm-big libc-locales libc-locale-code &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-memusage libc-nis libc-nssw=
itch libc-rcmd libc-rtld-debug libc-spawn libc-streams libc-sunrpc &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-utmp libc-utmpx lib=
c-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glib=
c &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; libc-posix-=
wchar-io=22</div>
                <div><div><br></div><div>Thanks,</div><div><br></div><div=
>- Jojo</div><div><br></div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>=E5=9C=A8 2013=E5=B9=B4=
9=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E5=9B=9B=EF=BC=8C=E4=B8=8B=E5=8D=88=
7:29=EF=BC=8CDaiane Angolini =E5=86=99=E9=81=93=EF=BC=9A</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div><div>On 09/12/2013 07:07 AM, jojo wro=
te:</div><blockquote type=3D=22cite=22><div>Hi,</div></blockquote><div><b=
r></div><div>Hi Jojo,</div><div><br></div><blockquote type=3D=22cite=22><=
div><div>I installed pulse audio server in IMX6QSD of =46SL, but there is=
 no output</div><div>of audio with HDMI :(</div></div></blockquote><div><=
br></div><div>Please, double check if pulseaudio is in your DISTRO=5F=46E=
ATURES (i think </div><div>it's default, but I cannot remember exactly)</=
div><div><br></div><div>bitbake -e =7C grep =5EDISTRO=5F=46EATURES</div><=
div><br></div><div>How are you configuring HDMI audio=3F I know there is =
a doc in </div><div>imx-community with the audio configuration if you wan=
t to change it from </div><div>default to HDMI.</div><div><br></div><div>=
<br></div><blockquote type=3D=22cite=22><div><div><br></div><div>how to t=
rack the log of the pulse audio =3F</div><div><br></div><div>Thanks,</div=
><div><br></div><div>- Jojo</div><div><br></div><div>=E5=9C=A8 2013=E5=B9=
=B47=E6=9C=8816=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C=EF=BC=8C=E4=B8=8B=E5=8D=
=8811:32=EF=BC=8Cjojo =E5=86=99=E9=81=93=EF=BC=9A</div><div><br></div><bl=
ockquote type=3D=22cite=22><div><div>Hi,</div><div>Ok &amp; i will have a=
 try, thanks for your reply :)</div><div><br></div><div>Thanks,</div><div=
><br></div><div>- Jojo</div><div><br></div><div>=E5=9C=A8 2013=E5=B9=B47=E6=
=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94=EF=BC=8C=E4=B8=8B=E5=8D=886:=
45=EF=BC=8CErik Bot=C3=B6 =E5=86=99=E9=81=93=EF=BC=9A</div><div><br></div=
><blockquote type=3D=22cite=22><div><div>Hi,</div><div>On =46ri, Jul 12, =
2013 at 12:35 PM, jojo &lt;<a href=3D=22mailto:rjiejie=40gmail.com=22>rji=
ejie=40gmail.com</a></div><div>&lt;<a href=3D=22mailto:rjiejie=40gmail.co=
m=22>mailto:rjiejie=40gmail.com</a>&gt;&gt; wrote:</div><blockquote type=3D=
=22cite=22><div><div>Hi,</div><div>My yocto version/tag is dylan.</div><d=
iv>I have compiled fsl-image-gui to testing the the audio output, but i</=
div><div>can not find</div><div>anything about for pulseaudio server to s=
tart up daemon.</div><div><br></div><div>I saw the build code in the path=
 about for</div><div>=22build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi=
/pulseaudio/3.0-r0/image/=22</div><div>and it really have built all thing=
s of pulseaudio. but when i create</div><div>the fsl-image-gui to start u=
p, i just find =22libpulse*=22 in the</div><div>rootfs.</div><div><br></d=
iv><div>I think that something wrong with pulseaudio configure so that it=
 do</div><div>not install completely by default.</div></div></blockquote>=
<div><br></div><div>The pulseaudio daemon is packaged as pulseaudio-serve=
r, maybe the</div><div>image doesn't install that package by default=3F</=
div><div>Cheers,</div><div>Erik Bot=C3=B6</div><div><br></div><blockquote=
 type=3D=22cite=22><div><div><br></div><div>someone know about that how t=
o install pulseaudio completely =3F</div><div><br></div><div>Thanks,</div=
><div><br></div><div>- Jojo</div><div><br></div><div><br></div><div>=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F</div><div>me=
ta-freescale mailing list</div><div>meta-freescale=40yoctoproject.org &lt=
;<a href=3D=22mailto:meta-freescale=40yoctoproject.org=22>mailto:meta-fre=
escale=40yoctoproject.org</a>&gt;</div><div><a href=3D=22https://lists.yo=
ctoproject.org/listinfo/meta-freescale=22>https://lists.yoctoproject.org/=
listinfo/meta-freescale</a></div></div></blockquote></div></blockquote></=
div></blockquote><div><br></div><div><br></div><div><br></div><div>=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F</div><div>me=
ta-freescale mailing list</div><div><a href=3D=22mailto:meta-freescale=40=
yoctoproject.org=22>meta-freescale=40yoctoproject.org</a></div><div><a hr=
ef=3D=22https://lists.yoctoproject.org/listinfo/meta-freescale=22>https:/=
/lists.yoctoproject.org/listinfo/meta-freescale</a></div></div></blockquo=
te><div><br></div><div><br></div><div>-- </div><div>Daiane</div></div></d=
iv></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--5236bb15_3dc240fb_24a--
