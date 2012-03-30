Return-Path: <giannis.damigos@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 443D7E006C7
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 00:23:12 -0700 (PDT)
Received: by iagw33 with SMTP id w33so775606iag.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 00:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=L4ELubw5SQlhwPdD+K2ns+gpACCRwx5UTrjGYXVLNWc=;
	b=FHn0DAJ5v55XqraQ2lHatiJfQB8YeehNTgGcpNeYIj3fiQh8ARY37QMPRciKmPXtd9
	m8cn1KfpAl1M21EwIQj4h1m3l+ReNs/wXRPyB++JAE+VUlXnxIRQshr+nmF42VT241lI
	Ru4wLus/pQYaUcGVs2V/HzANlsR7ZR/N2dzp9kb3Dlbg1nvWOis6w7jVWkdXcJtVmE28
	xPGgXbVFVjRKFS8O5QTxoKwjy4ckOkgT/vueQwZBtsuvaDIyKl9Mqh8spUJdqDPmicqO
	g6FIbdnB9JupePvtlf3tlSZ8x4ohL97luymi5JszZZZMEJLPfhss8/rnzcDXBwJ+RB4R
	Z0dQ==
MIME-Version: 1.0
Received: by 10.50.89.197 with SMTP id bq5mr715951igb.13.1333092191559; Fri,
	30 Mar 2012 00:23:11 -0700 (PDT)
Received: by 10.50.194.135 with HTTP; Fri, 30 Mar 2012 00:23:11 -0700 (PDT)
In-Reply-To: <1333089019.10988.1.camel@localhost.localdomain>
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
	<1332842944.25277.42.camel@localhost.localdomain>
	<1332926479.25277.66.camel@localhost.localdomain>
	<4F72E29E.7000803@communistcode.co.uk>
	<1332985943.25277.85.camel@localhost.localdomain>
	<1332986753.25277.87.camel@localhost.localdomain>
	<CAG5jFBqnxDK0ZBHGyupC0aBZQxO3jkWzcPQtmJDrvEa4cmaYyg@mail.gmail.com>
	<1333007302.25277.114.camel@localhost.localdomain>
	<CAG5jFBqnZ=Ob5OSFV2vnFpbBbLew3Ti-wReC7OzaTTZLYg1gbg@mail.gmail.com>
	<1333012321.25277.127.camel@localhost.localdomain>
	<1333089019.10988.1.camel@localhost.localdomain>
Date: Fri, 30 Mar 2012 10:23:11 +0300
Message-ID: <CAG5jFBo0=FGsvMPmrsGCMzzirThfQi3KKw0geczAVScgeJa_eQ@mail.gmail.com>
From: Giannis Damigos <giannis.damigos@gmail.com>
To: niqingliang@insigma.com.cn
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 30 Mar 2012 07:23:12 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 9:30 AM, Ni Qingliang
<niqingliang@insigma.com.cn> wrote:
> maybe we should report the two bugs?
>
> On Thu, 2012-03-29 at 17:12 +0800, =C4=DF=C7=EC=C1=C1 wrote:
>> yes, you are right.
>>
>> the 32 bit lib and gconf is TWO problem, but maybe the reason is same,
>> the 'ld' search path.
>>
>> the 32 bit lib is only occured on NOT pure 64 bit arch. if you are using
>> 64 bit arch, and with this problem, maybe you have installed some 32 bit
>> libs. (my VM is a pure 64 bit arch, no this problem, and my host is
>> using multilib, with this problem)
>>
>> but the gconf problem is occured both on pure/NOT-pure 64 bit arch.
>>
>>
>> the former is focused on the arch (is 64 bit or 32 bit) of libs. and the
>> other one is focused on the dependency of libs.
>>
>> the gconf need libgtk/libgdk (found in the sysroot), and libgtk/libgdk
>> depends on libXrandr (found in host's rootfs), and libXrandr need glibc
>> 2.14 (not found in the sysroot, only glibc 2.13).
>>
>> so the search path is switch between the sysroot and host's rootfs back
>> and forth.
>>
>> On Thu, 2012-03-29 at 16:54 +0800, Giannis Damigos wrote:
>> > Installing package lib32-libxrandr, cleaning gconf and building it
>> > again does not solved the problem.
>> > Such problems on OE were solved by fixing the library path.
>> > Now gconf is looking for libXrandr in archlinux libraries and not in
>> > yocto's libraries in build directory.
>> >
>> >
>> > On Thu, Mar 29, 2012 at 10:48 AM, Ni Qingliang
>> > <niqingliang@insigma.com.cn> wrote:
>> > > give you my hands. I have waited you so long time.:)
>> > >
>> > > indeed, I have the gcc-multilib problem also.
>> > > the ati driver catalyst-total need some 32 bit libs, once you instal=
led
>> > > that, the poky compile fail, and then we need install other 32 bit l=
ibs
>> > > (like gcc-multilib you said). (with a pure 64 bit archlinux, all are=
 OK)
>> > >
>> > > the only reason I doubt the 'ld', only because if I remove
>> > > libXrandr.so.2 in host's rootfs, the error info changed, the libXran=
dr
>> > > become another lib's name (maybe libXext, I can't remember clearly).
>> > >
>> > > and after several days experiments, I can ensure the problem is focu=
sed
>> > > on the 'ld' (belongs to binutils).
>> > >
>> > > On Thu, 2012-03-29 at 15:40 +0800, Giannis Damigos wrote:
>> > >> Hi,
>> > >>
>> > >> I had similar errors building an OE image for my Micro2440 board un=
der
>> > >> archlinux x86-64. I solved the problem by installing gcc-multlib
>> > >> (https://wiki.archlinux.org/index.php/Arch64_FAQ#Multilib_Repositor=
y_-_Multilib_Project).
>> > >>
>> > >> But, I tried to bake gconf with yocto just adding MACHINE and DISTR=
O
>> > >> to my local.conf:
>> > >> MACHINE ?=3D "qemux86-64"
>> > >> DISTRO ?=3D "poky-lsb"
>> > >>
>> > >> and I had the same error.
>> > >>
>> > >> On Thu, Mar 29, 2012 at 5:05 AM, Ni Qingliang
>> > >> <niqingliang@insigma.com.cn> wrote:
>> > >> >
>> > >> > Oh, I lost something, before running the testgconf.sh, you should
>> > >> > cleanall gconf, and build gconf. If not, you can't run it.
>> > >> >
>> > >> > On Thu, 2012-03-29 at 09:52 +0800, =C4=DF=C7=EC=C1=C1 wrote:
>> > >> > > what the custom script has done is only adding the build dir (w=
hich
>> > >> > > include the 'python' symlink) into the 'PATH', only that.
>> > >> > > AND: integrate the oe-init-build-env and bitbake together.
>> > >> > > indeed, no modification.
>> > >> > >
>> > >> > > using it, I can build anything with one command (call the scrip=
t),
>> > >> > > without it, I must call init env script manually.
>> > >> > >
>> > >> > > archlinux: latest
>> > >> > > poky: latest
>> > >> > > build: clean (> 4times)
>> > >> > >
>> > >> > > indeed, the possibility you mentioned has been excluded by my t=
est.
>> > >> > > you can build it succcessfully. what arch of arch you are using=
? x86 or
>> > >> > > x86-64? what about the local.conf? are you using the same as mi=
ne?.
>> > >> > >
>> > >> > > both of them from my side is x86-64.
>> > >> > >
>> > >> > > I doubt 'ld', only because of my test. the attachment 'testgcon=
f.sh'
>> > >> > > contain the root cause of the problem. and I attached the local=
.conf I
>> > >> > > have used, just remove the 'SOURCE_MIRROR_URL' if test it.
>> > >> > >
>> > >> > > you can run it to check the output, before that, you should cha=
nge the
>> > >> > > two var in the head of it:
>> > >> > > POKY_DIR=3D"/media/pangu/optimus"
>> > >> > > COMPILE_DIR=3D"/media/pangu/lsbt"
>> > >> > >
>> > >> > > in it, the modification I have done (modify 'PATH') has been re=
moved.
>> > >> > >
>> > >> > > maybe you can run it success, but you can check the 'libXrandr.=
so.2'
>> > >> > > line in the output, if it like:
>> > >> > > found libXrandr.so.2 at /usr/lib/../lib/libXrandr.so.2
>> > >> > >
>> > >> > > that is the problem, even you success, it has problem.
>> > >> > > you can paste your output in the email. let's check it.
>> > >> > > the version of libxrandr on my host is 1.3.2-2.
>> > >> > >
>> > >> > >
>> > >> > > On Wed, 2012-03-28 at 18:06 +0800, Jack Mitchell wrote:
>> > >> > > > On 28/03/12 10:21, Ni Qingliang wrote:
>> > >> > > > > no echo again?
>> > >> > > > >
>> > >> > > > > what's the problem?
>> > >> > > > >
>> > >> > > > > am I wrong? where?
>> > >> > > > >
>> > >> > > > > On Tue, 2012-03-27 at 18:09 +0800, =C4=DF=C7=EC=C1=C1 wrote=
:
>> > >> > > > >> thanks your reply, indeed, this is not the first email thr=
ead about
>> > >> > > > >> the
>> > >> > > > >> gconf compile problem. it in there only because of no echo=
.
>> > >> > > > >>
>> > >> > > > >> I have installed python2, and made a symlink in the build
>> > >> > > > >> directory, and
>> > >> > > > >> exported to the env var PATH.
>> > >> > > > >>
>> > >> > > > >> this is the script I used to build (located in the build
>> > >> > > > >> directory):
>> > >> > > > >>  #!/bin/bash
>> > >> > > > >>  loc_dir=3D"`pwd`"
>> > >> > > > >>  . ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
>> > >> > > > >>  export PATH=3D"${loc_dir}:$PATH"
>> > >> > > > >>  bitbake $@
>> > >> > > > >>
>> > >> > > > >> OS: x86-64 arch / desktop env: gnome 3.2
>> > >> > > > >> local.conf ( modified section ):
>> > >> > > > >>  MACHINE ??=3D "qemux86-64"
>> > >> > > > >>  DISTRO ?=3D "poky-lsb"
>> > >> > > > >>  SOURCE_MIRROR_URL =3D "http://10.10.20.149/optimussources=
/"
>> > >> > > > >>  INHERIT +=3D "own-mirrors"
>> > >> > > > >>  BB_GENERATE_MIRROR_TARBALLS =3D "0"
>> > >> > > > >>  INHERIT +=3D "rm_work"
>> > >> > > > >>  CCACHE =3D ""
>> > >> > > > >>
>> > >> > > > >> when build gconf, got error:
>> > >> > > > >>   /usr/lib/../lib/libXrandr.so.2: undefined reference to
>> > >> > > > >> `memcpy@GLIBC_2.14'
>> > >> > > > >> when 'do_compile' at sanity-check step.
>> > >> > > > >>
>> > >> > > > >> the log of do_compile is attached, here is the last cmd (o=
nly
>> > >> > > > >> reserve
>> > >> > > > >> rpath):
>> > >> > > > >>  ../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib=
/../lib
>> > >> > > > >>
>> > >> > > > >> the libXrandr.so.2 (depended by the libgtk/libgdk) not app=
ear in
>> > >> > > > >> the
>> > >> > > > >> command explicitly.
>> > >> > > > >>
>> > >> > > > >> I have add --verbose in the command, and found the ld find=
 it in
>> > >> > > > >> the
>> > >> > > > >> host's rootfs, but it should search it in the sysroot arg.
>> > >> > > > >>
>> > >> > > > >> If remove the rpath arg or with the rpath arg prefixed by =
sysroot
>> > >> > > > >> arg, I
>> > >> > > > >> can build success. (wich will search the libXrandr in the =
sysroot
>> > >> > > > >> arg
>> > >> > > > >> correctly)
>> > >> > > > >>
>> > >> > > > >> so I think the error is focused on the `ld' which should s=
earch in
>> > >> > > > >> the
>> > >> > > > >> sysroot arg at first for implicit dependended libs, but no=
t host's
>> > >> > > > >> rootfs.
>> > >> > > > >>
>> > >> > > > >>
>> > >> > > > >>
>> > >> > > > >> On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
>> > >> > > > >>> On 27/03/12 03:33, Ni Qingliang wrote:
>> > >> > > > >>>> who are using archlinux? I want to talk about gconf comp=
ile fail
>> > >> > > > >>>> problem.
>> > >> > > > >>>>
>> > >> > > > >>>>
>> > >> > > > >>> I use Archlinux for OE/Yocto, could you post your error s=
o we can
>> > >> > > > >>> get an
>> > >> > > > >>> idea of the problem you are having?
>> > >> > > > >>>
>> > >> > > > >>> One note for Archlinux is that it ships Python 3 as defau=
lt, to
>> > >> > > > >>> you must
>> > >> > > > >>> install Python2 from the repositories then symlink python=
2 to
>> > >> > > > >>> python in
>> > >> > > > >>> /usb/bin.
>> > >> > > > >>>
>> > >> > > > >>> Regards,
>> > >> > > > >>>
>> > >> > > >
>> > >> > > > I'm not 100% sure what the issue is. How come you are using a=
 custom
>> > >> > > > build script and not the one bundled with OE? I'm not an expe=
rt by any
>> > >> > > > stretch of the imagination but by not using the given initial=
isation
>> > >> > > > scripts leaves me completely out of ideas as you're running a=
 custom
>> > >> > > > setup which I couldn't possibly know the extent of.
>> > >> > > >
>> > >> > > > All I can really comment on is that Yocto builds fine and con=
sistently
>> > >> > > > with Archlinux using the latest packages (I update nearly eve=
ryday) so
>> > >> > > > the only issue I can see is that your build setup script does=
n't cut
>> > >> > > > the
>> > >> > > > mustard. Have you tried a completely clean build with only th=
e bare
>> > >> > > > git
>> > >> > > > clone and no modifications?
>> > >> > > >
>> > >> > > > Regards,
>> > >> > > >
>> > >> > >
>> > >> >
>> > >> > --
>> > >> > Yi Qingliang
>> > >> > niqingliang@insigma.com.cn
>> > >> > https://niqingliang2003.wordpress.com
>> > >> >
>> > >> > _______________________________________________
>> > >> > yocto mailing list
>> > >> > yocto@yoctoproject.org
>> > >> > https://lists.yoctoproject.org/listinfo/yocto
>> > >
>> > > --
>> > > Yi Qingliang
>> > > niqingliang@insigma.com.cn
>> > > https://niqingliang2003.wordpress.com
>> > >
>>
>
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> https://niqingliang2003.wordpress.com
>

First, we should test if the problem happens to an other x86-64 linux
distro or i686 Archlinux installation.
I have to setup a VM because I only use Arch.

PS:
I read the Mailing List Guidelines from the wiki and they suggest not
to top post and to use interleaved (bottom) posting. I should have
read it before my first reply.

