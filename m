Return-Path: <giannis.damigos@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A847DE0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 00:40:38 -0700 (PDT)
Received: by iagw33 with SMTP id w33so3513147iag.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 00:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=DcjlVHTk1ogDSTcqYXHPzvzNRd401pp+UY7iB+Jsavk=;
	b=KGDXibUSL4y7Tfiw3F5TZlMLKc0YtyNaIfBYw7f2SIJX9pNPCz9QAdFsnSvXcthIE/
	OeSmDj6RHDw5CT4gTH172i/75dwAC05i5+AxIhOaSORUnITRBTeeDFCOmIdKJX6xQEpU
	oVxueRz0HoTrFfLIBU+cw4Qgufx/7hc6n9XTqAylTotwFo1ZbqslJJQQliuseMz9Qi21
	3g9V6P4kkWezgmtHrKvvndjKHYuJ1rjyPkVSrGjZ0mCfwxL0TLsTBaUYjpe7y/D0c+5i
	e1Wd4yKk8Nf9pmJRZleN4zFkDU0gF7+da/3mxpqKC8YANRy8vdJvEy+B6yb7IhhrQR1l
	Fj5g==
MIME-Version: 1.0
Received: by 10.50.89.168 with SMTP id bp8mr761344igb.3.1333006838095; Thu, 29
	Mar 2012 00:40:38 -0700 (PDT)
Received: by 10.50.194.135 with HTTP; Thu, 29 Mar 2012 00:40:38 -0700 (PDT)
In-Reply-To: <1332986753.25277.87.camel@localhost.localdomain>
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
	<1332842944.25277.42.camel@localhost.localdomain>
	<1332926479.25277.66.camel@localhost.localdomain>
	<4F72E29E.7000803@communistcode.co.uk>
	<1332985943.25277.85.camel@localhost.localdomain>
	<1332986753.25277.87.camel@localhost.localdomain>
Date: Thu, 29 Mar 2012 10:40:38 +0300
Message-ID: <CAG5jFBqnxDK0ZBHGyupC0aBZQxO3jkWzcPQtmJDrvEa4cmaYyg@mail.gmail.com>
From: Giannis Damigos <giannis.damigos@gmail.com>
To: niqingliang@insigma.com.cn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: who are using archlinux?
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
X-List-Received-Date: Thu, 29 Mar 2012 07:40:38 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: quoted-printable

Hi,

I had similar errors building an OE image for my Micro2440 board under
archlinux x86-64. I solved the problem by installing gcc-multlib
(https://wiki.archlinux.org/index.php/Arch64_FAQ#Multilib_Repository_-_Mult=
ilib_Project).

But, I tried to bake gconf with yocto just adding MACHINE and DISTRO
to my local.conf:
MACHINE ?=3D "qemux86-64"
DISTRO ?=3D "poky-lsb"

and I had the same error.

On Thu, Mar 29, 2012 at 5:05 AM, Ni Qingliang
<niqingliang@insigma.com.cn> wrote:
>
> Oh, I lost something, before running the testgconf.sh, you should
> cleanall gconf, and build gconf. If not, you can't run it.
>
> On Thu, 2012-03-29 at 09:52 +0800, =C4=DF=C7=EC=C1=C1 wrote:
> > what the custom script has done is only adding the build dir (which
> > include the 'python' symlink) into the 'PATH', only that.
> > AND: integrate the oe-init-build-env and bitbake together.
> > indeed, no modification.
> >
> > using it, I can build anything with one command (call the script),
> > without it, I must call init env script manually.
> >
> > archlinux: latest
> > poky: latest
> > build: clean (> 4times)
> >
> > indeed, the possibility you mentioned has been excluded by my test.
> > you can build it succcessfully. what arch of arch you are using? x86 or
> > x86-64? what about the local.conf? are you using the same as mine?.
> >
> > both of them from my side is x86-64.
> >
> > I doubt 'ld', only because of my test. the attachment 'testgconf.sh'
> > contain the root cause of the problem. and I attached the local.conf I
> > have used, just remove the 'SOURCE_MIRROR_URL' if test it.
> >
> > you can run it to check the output, before that, you should change the
> > two var in the head of it:
> > POKY_DIR=3D"/media/pangu/optimus"
> > COMPILE_DIR=3D"/media/pangu/lsbt"
> >
> > in it, the modification I have done (modify 'PATH') has been removed.
> >
> > maybe you can run it success, but you can check the 'libXrandr.so.2'
> > line in the output, if it like:
> > found libXrandr.so.2 at /usr/lib/../lib/libXrandr.so.2
> >
> > that is the problem, even you success, it has problem.
> > you can paste your output in the email. let's check it.
> > the version of libxrandr on my host is 1.3.2-2.
> >
> >
> > On Wed, 2012-03-28 at 18:06 +0800, Jack Mitchell wrote:
> > > On 28/03/12 10:21, Ni Qingliang wrote:
> > > > no echo again?
> > > >
> > > > what's the problem?
> > > >
> > > > am I wrong? where?
> > > >
> > > > On Tue, 2012-03-27 at 18:09 +0800, =C4=DF=C7=EC=C1=C1 wrote:
> > > >> thanks your reply, indeed, this is not the first email thread abou=
t
> > > >> the
> > > >> gconf compile problem. it in there only because of no echo.
> > > >>
> > > >> I have installed python2, and made a symlink in the build
> > > >> directory, and
> > > >> exported to the env var PATH.
> > > >>
> > > >> this is the script I used to build (located in the build
> > > >> directory):
> > > >>  #!/bin/bash
> > > >>  loc_dir=3D"`pwd`"
> > > >>  . ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
> > > >>  export PATH=3D"${loc_dir}:$PATH"
> > > >>  bitbake $@
> > > >>
> > > >> OS: x86-64 arch / desktop env: gnome 3.2
> > > >> local.conf ( modified section ):
> > > >>  MACHINE ??=3D "qemux86-64"
> > > >>  DISTRO ?=3D "poky-lsb"
> > > >>  SOURCE_MIRROR_URL =3D "http://10.10.20.149/optimussources/"
> > > >>  INHERIT +=3D "own-mirrors"
> > > >>  BB_GENERATE_MIRROR_TARBALLS =3D "0"
> > > >>  INHERIT +=3D "rm_work"
> > > >>  CCACHE =3D ""
> > > >>
> > > >> when build gconf, got error:
> > > >>   /usr/lib/../lib/libXrandr.so.2: undefined reference to
> > > >> `memcpy@GLIBC_2.14'
> > > >> when 'do_compile' at sanity-check step.
> > > >>
> > > >> the log of do_compile is attached, here is the last cmd (only
> > > >> reserve
> > > >> rpath):
> > > >>  ../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib
> > > >>
> > > >> the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in
> > > >> the
> > > >> command explicitly.
> > > >>
> > > >> I have add --verbose in the command, and found the ld find it in
> > > >> the
> > > >> host's rootfs, but it should search it in the sysroot arg.
> > > >>
> > > >> If remove the rpath arg or with the rpath arg prefixed by sysroot
> > > >> arg, I
> > > >> can build success. (wich will search the libXrandr in the sysroot
> > > >> arg
> > > >> correctly)
> > > >>
> > > >> so I think the error is focused on the `ld' which should search in
> > > >> the
> > > >> sysroot arg at first for implicit dependended libs, but not host's
> > > >> rootfs.
> > > >>
> > > >>
> > > >>
> > > >> On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
> > > >>> On 27/03/12 03:33, Ni Qingliang wrote:
> > > >>>> who are using archlinux? I want to talk about gconf compile fail
> > > >>>> problem.
> > > >>>>
> > > >>>>
> > > >>> I use Archlinux for OE/Yocto, could you post your error so we can
> > > >>> get an
> > > >>> idea of the problem you are having?
> > > >>>
> > > >>> One note for Archlinux is that it ships Python 3 as default, to
> > > >>> you must
> > > >>> install Python2 from the repositories then symlink python2 to
> > > >>> python in
> > > >>> /usb/bin.
> > > >>>
> > > >>> Regards,
> > > >>>
> > >
> > > I'm not 100% sure what the issue is. How come you are using a custom
> > > build script and not the one bundled with OE? I'm not an expert by an=
y
> > > stretch of the imagination but by not using the given initialisation
> > > scripts leaves me completely out of ideas as you're running a custom
> > > setup which I couldn't possibly know the extent of.
> > >
> > > All I can really comment on is that Yocto builds fine and consistentl=
y
> > > with Archlinux using the latest packages (I update nearly everyday) s=
o
> > > the only issue I can see is that your build setup script doesn't cut
> > > the
> > > mustard. Have you tried a completely clean build with only the bare
> > > git
> > > clone and no modifications?
> > >
> > > Regards,
> > >
> >
>
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> https://niqingliang2003.wordpress.com
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

