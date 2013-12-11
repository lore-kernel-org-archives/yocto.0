Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A785E007D5
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:20:51 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id a1so6700033wgh.11
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 10:20:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bmdrR0bumSM8ytqYaKP8UbJ532OOjXhxC8Lnn71GF2k=;
	b=knEOYO+RAG0gNtmmoLy1hOvB87outMxV/WhIdLPPLkyLFwE0hXmWkY5tyyB1gNfjA8
	dXtSMRTDPx/NzUdtBa+w6s14CU/0yKdOEVqqpIrgifxvTLDRKoycDkdXYSTgFFNCEyoQ
	ZgCVFn9kviKZEZIpVctCQ9oDKjChf5naRcwpm9XlJOUgXJ6SyCQ42AxCT244/3DZYOe/
	+UTi8dhLZCyODJjw804G+SvoEBpSt6wR+nEba6r2a2+7xyvdiKoRDsPhBtWszE/b2kHy
	iVQZacDIB9y4fzqsYRW7kZTrBs/1VqVHdp6Xbyx7LAvcdxe7x8YihcuIkaPvxYsVcx4t
	NOwQ==
X-Gm-Message-State: ALoCoQnKdr8Epr3LnrTKJmmE0B41whO2Fidf19odKI7DQGKvGrnNl6SwrBI6CjXSWck6ujAHA8YZ
X-Received: by 10.180.160.239 with SMTP id xn15mr4143487wib.17.1386786050761; 
	Wed, 11 Dec 2013 10:20:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Wed, 11 Dec 2013 10:20:30 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAKVO3PXf2a4fPPhvbz5zLaNQ5tPuw=h+LzUpFd-9fX93v_J2Ng@mail.gmail.com>
References: <CAKVO3PXf2a4fPPhvbz5zLaNQ5tPuw=h+LzUpFd-9fX93v_J2Ng@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 11 Dec 2013 20:20:30 +0200
Message-ID: <CAK18fxFfr3Q-b9tvTZ1aktHjDQsPT=AEObEAwbTc87YmScy4Rg@mail.gmail.com>
To: Arancha Muelas Ruiz <aranzazumuelas@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: FxOS on Rpi
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
X-List-Received-Date: Wed, 11 Dec 2013 18:20:52 -0000
Content-Type: multipart/alternative; boundary=047d7b624278ef7ba804ed464919

--047d7b624278ef7ba804ed464919
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Arancha,


On Wed, Dec 4, 2013 at 5:50 PM, Arancha Muelas Ruiz <
aranzazumuelas@gmail.com> wrote:

> Hello;
> I=B4m tryingo to port FxOS on Raspberry pi with that manual:
> http://www.philipp-wagner.com/ffos-for-rpi/manual/
>
> >>>src/poky/rpi-build$ bitbake -v rpi-b2g-image
>
> ERROR: 'debug-tools' in IMAGE_FEATURES is not a valid image feature. Vali=
d
> features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
> nfs-server package-management package-management ptest-pkgs qt4-pkgs
> read-only-rootfs splash ssh-server-dropbear ssh-server-openssh
> staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11
> x11-base x11-sato
> ERROR: Unable to parse /media/9697426f-bc6f-437d-
> bb62-4272fef1d0a0/src/poky/meta-b2g/recipes-core/images/rpi-b2g-image.bb:
> Exited with "1"
> ERROR: 'debug-tools' in IMAGE_FEATURES is not a valid image feature. Vali=
d
> features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
> nfs-server package-management package-management ptest-pkgs qt4-pkgs
> read-only-rootfs splash ssh-server-dropbear ssh-server-openssh
> staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11
> x11-base x11-sato
>
> Summary: There were 3 ERROR messages shown, returning a non-zero exit cod=
e.
>
> I dont know what happen :-(
>
> Any help? please.
>

I don't have access to your code but most probably you have a custom image
which includes debug-tools in IMAGE_FEATURES. You can
check core-image.bbclass in poky to see the valid entries for
IMAGE_FEATURES.

# Available IMAGE_FEATURES:

#

# - x11                 - X server

# - x11-base            - X server with minimal environment

# - x11-sato            - OpenedHand Sato environment

# - tools-debug         - debugging tools

# - eclipse-debug       - Eclipse remote debugging support

# - tools-profile       - profiling tools

# - tools-testapps      - tools usable to make some device tests

# - tools-sdk           - SDK (C/C++ compiler, autotools, etc.)

# - nfs-server          - NFS server

# - ssh-server-dropbear - SSH server (dropbear)

# - ssh-server-openssh  - SSH server (openssh)

# - qt4-pkgs            - Qt4/X11 and demo applications

# - hwcodecs            - Install hardware acceleration codecs

# - package-management  - installs package management tools and preserves
the package manager database
# - debug-tweaks        - makes an image suitable for development, e.g.
allowing passwordless root logins
# - dev-pkgs            - development packages (headers, etc.) for all
installed packages in the rootfs
# - dbg-pkgs            - debug symbol packages for all installed packages
in the rootfs
# - doc-pkgs            - documentation packages for all installed packages
in the rootfs
# - read-only-rootfs    - tweaks an image to support read-only rootfs

--=20
*ag*

--047d7b624278ef7ba804ed464919
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Arancha,<br><div class=3D"gmail_extra"><br><br><div =
class=3D"gmail_quote">On Wed, Dec 4, 2013 at 5:50 PM, Arancha Muelas Ruiz <=
span dir=3D"ltr">&lt;<a href=3D"mailto:aranzazumuelas@gmail.com" target=3D"=
_blank">aranzazumuelas@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello;<br>I=B4m tryingo to port FxOS=
 on Raspberry pi with that manual: <br>

<a href=3D"http://www.philipp-wagner.com/ffos-for-rpi/manual/" target=3D"_b=
lank">http://www.philipp-wagner.com/ffos-for-rpi/manual/</a><br>
<br>&gt;&gt;&gt;src/poky/rpi-build$ bitbake -v rpi-b2g-image<br><br>
ERROR: &#39;debug-tools&#39; in IMAGE_FEATURES is not a valid image feature=
.=20
Valid features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug=20
hwcodecs nfs-server package-management package-management ptest-pkgs=20
qt4-pkgs read-only-rootfs splash ssh-server-dropbear ssh-server-openssh=20
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11=20
x11-base x11-sato<br>
ERROR: Unable to parse /media/9697426f-bc6f-437d-<div>bb62-4272fef1d0a0/src=
/poky/meta-b2g/recipes-core/images/<a href=3D"http://rpi-b2g-image.bb" targ=
et=3D"_blank">rpi-b2g-image.bb</a>: Exited with &quot;1&quot;<br>ERROR:
 &#39;debug-tools&#39; in IMAGE_FEATURES is not a valid image feature. Vali=
d=20
features: dbg-pkgs debug-tweaks dev-pkgs doc-pkgs eclipse-debug hwcodecs
 nfs-server package-management package-management ptest-pkgs qt4-pkgs=20
read-only-rootfs splash ssh-server-dropbear ssh-server-openssh=20
staticdev-pkgs tools-debug tools-profile tools-sdk tools-testapps x11=20
x11-base x11-sato<br>
<br>Summary: There were 3 ERROR messages shown, returning a non-zero exit c=
ode.<br><br></div>I dont know what happen :-(<br><br></div>Any help? please=
.</div></blockquote></div><div class=3D"gmail_extra"><br></div></div><div c=
lass=3D"gmail_extra">

I don&#39;t have access to your code but most probably you have a custom im=
age which includes=A0debug-tools in IMAGE_FEATURES. You can check=A0core-im=
age.bbclass in poky to see the valid entries for IMAGE_FEATURES.</div><div =
class=3D"gmail_extra">

<br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra"># Available=
 IMAGE_FEATURES: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0</div><div class=3D"gmail_extra"># =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - x11 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 - X serv=
er =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div=
><div class=3D"gmail_extra"># - x11-base =A0 =A0 =A0 =A0 =A0 =A0- X server =
with minimal environment =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - x11-sato =A0 =A0 =A0 =A0 =A0 =A0- OpenedHand=
 Sato environment =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div><div class=3D"gmail_ex=
tra"># - tools-debug =A0 =A0 =A0 =A0 - debugging tools =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - eclipse-debug =A0 =A0 =A0 - Eclipse remote d=
ebugging support =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div class=3D"gmail_extra"># - =
tools-profile =A0 =A0 =A0 - profiling tools =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - tools-testapps =A0 =A0 =A0- tools usable to =
make some device tests =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div class=3D"gmail_extra"># - tools-sd=
k =A0 =A0 =A0 =A0 =A0 - SDK (C/C++ compiler, autotools, etc.) =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</di=
v>

<div class=3D"gmail_extra"># - nfs-server =A0 =A0 =A0 =A0 =A0- NFS server =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div c=
lass=3D"gmail_extra"># - ssh-server-dropbear - SSH server (dropbear) =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - ssh-server-openssh =A0- SSH server (openssh)=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div class=3D"gmail_ext=
ra"># - qt4-pkgs =A0 =A0 =A0 =A0 =A0 =A0- Qt4/X11 and demo applications =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - hwcodecs =A0 =A0 =A0 =A0 =A0 =A0- Install ha=
rdware acceleration codecs =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div class=3D"gmail_extra"># - =
package-management =A0- installs package management tools and preserves the=
 package manager database =A0=A0</div>

<div class=3D"gmail_extra"># - debug-tweaks =A0 =A0 =A0 =A0- makes an image=
 suitable for development, e.g. allowing passwordless root logins</div><div=
 class=3D"gmail_extra"># - dev-pkgs =A0 =A0 =A0 =A0 =A0 =A0- development pa=
ckages (headers, etc.) for all installed packages in the rootfs =A0</div>

<div class=3D"gmail_extra"># - dbg-pkgs =A0 =A0 =A0 =A0 =A0 =A0- debug symb=
ol packages for all installed packages in the rootfs =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0=A0</div><div class=3D"gmail_extra"># - doc-pkgs =A0 =A0 =A0 =A0=
 =A0 =A0- documentation packages for all installed packages in the rootfs =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0</div>

<div class=3D"gmail_extra"># - read-only-rootfs =A0 =A0- tweaks an image to=
 support read-only rootfs</div><div><br></div>--=A0</div><div class=3D"gmai=
l_extra"><b style=3D"color:rgb(51,51,51);font-family:Arial;text-align:cente=
r">ag</b>
</div></div>

--047d7b624278ef7ba804ed464919--
