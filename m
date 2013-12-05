Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4F5E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:11:54 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id ec20so10622357lab.1
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 08:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=o4PPC4tPQsA08TtO6GRF3zbaaEHbY+Exyq7QlBPMfoQ=;
	b=BTjXl3GDxH+rd9r4GJoYvA/n/S2DzaokcX6oeQc5qmXdPSjHhBOpkwHG7+r1ZpgKrE
	DAIjdBoDyuTPigYlUwu8yH3Hq/3MpWghXJvkNKMCbjxdkIQQCOEOGFrxS1svWIKJIbhY
	cpuIjGeEHVh3F0RKHHI24R5KzY/hlGhRu8NncLB6iVR9QCFysytPvIm9XtAw3bTXd7CB
	a+0V/e/o/mWZjMrnBCq8au+NVKQfIxIeToPSbr/mRCHWip0F5fXCpOnLeRQnMD+zhVlY
	oCA+z0TkrjUGVPqDrbTnCggnq8odiJXaJv+7LAmJiI2V9tPrFNCTd63Dm8irO49hZUFC
	pdPQ==
X-Received: by 10.152.7.67 with SMTP id h3mr7702520laa.29.1386259912333; Thu,
	05 Dec 2013 08:11:52 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Thu, 5 Dec 2013 08:11:32 -0800 (PST)
In-Reply-To: <CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
	<CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
	<CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 5 Dec 2013 09:11:32 -0700
X-Google-Sender-Auth: x_x65vHyexY0T90Vxg0HYoi_2qc
Message-ID: <CABcZANmtrNW-XWbVKj2+VHFrfvsOJMT6Xm77Bb1jKPBAR5yLbg@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build a non-autotools package that contains only a lib. Getting empty archive - package is not generated
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
X-List-Received-Date: Thu, 05 Dec 2013 16:11:58 -0000
Content-Type: multipart/alternative; boundary=001a11c21fbaa41ec604eccbc9a6

--001a11c21fbaa41ec604eccbc9a6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2013 at 6:42 AM, Brian Hutchinson <b.hutchman@gmail.com>wrot=
e:

> On Wed, Dec 4, 2013 at 5:38 PM, Chris Larson <clarson@kergoth.com> wrote:
>
>>
>> On Wed, Dec 4, 2013 at 3:29 PM, Brian Hutchinson <b.hutchman@gmail.com>w=
rote:
>>
>>> On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <clarson@kergoth.com>wrote=
:
>>>
>>>>
>>>> do_install is the task that installs. If your makefile has an install
>>>> target, you=E2=80=99d define a do_install that runs it. But not all ma=
kefiles
>>>> provide an equivalent to automake=E2=80=99s DESTDIR, which is why we d=
on=E2=80=99t provide
>>>> a do_install for non-autotools make-based buildsystems. Either manuall=
y
>>>> install the library where it belongs in your do_install, e.g. with the
>>>> =E2=80=98install=E2=80=99 or =E2=80=98cp=E2=80=99 commands, or define =
one which runs the appropriate make
>>>> command to install the files into ${D}.
>>>>  --
>>>>
>>>> Thanks Chris.
>>>
>>> I do have a do_install that is copying stuff to ${D}/usr/lib which puts
>>> things in my sysroot ... but what target do I use to get stuff into the
>>> package which is used by my IMAGE_INSTALL line?  When I tar tvf my
>>> core-image.tar and grep for my .so it currently isn't there ... but it =
and
>>> the headers are in the sysroot.
>>>
>>
>> do_install. The contents of ${D} are where the FILES globs are matched.
>> We don=E2=80=99t include the raw libfoo.so, since that=E2=80=99s suppose=
d to be a symlink.
>> If your lib is missing an SONAME, it=E2=80=99d be named incorrectly and =
be missing
>> a symlink, and the lib would end up in the -dev package instead of the m=
ain
>> package.
>> --
>>
>> The lib that the makefile generates is just a soname  like libfoo.so.  S=
o
> you're telling me it will not pick that file up?  I guess I need to find
> the class that handles this and study it as I'm probably not picking up a=
ll
> you're telling me.  Like I said, this used to work and now it doesn't so
> I'm still at a loss as to what I need to do.  It is making it into the
> sysroot but not the package and the rootfs image is built from all the
> IMAGE_INSTALL package names so it isn't making it into the rootfs.
>
> Do I just cheat and make my do_install copy my .so file to
> packages-split/mypackage/usr/lib?
>

The best fix would be to properly name and version your library, e.g.
libfoo.so.2.4, with libfoo.so.2 and libfoo.so symlinks, which is the most
common practice, but if that=E2=80=99s not an option, or will take too much=
 time,
yes, you can absolutely make your .so end up in the main package.

As i said earlier, it=E2=80=99s the *packaging* process that puts the .so i=
n the
-dev package, as common practice is that the .so is a symlink only used in
development. If your do_install already installs the .so to ${D}${libdir},
you just need to alter the globs used in the FILES variables to change
which package it ends up in. To add your non-symlink .so to the main
package rather than the ${PN}-dev package:

    # Add the .so to the main package=E2=80=99s files list
    FILES_${PN} +=3D =E2=80=9C${libdir}/*.so=E2=80=9D
    # Make sure it isn=E2=80=99t in the dev package=E2=80=99s files list
    FILES_SOLIBSDEV =3D =E2=80=9C"

Should do it, as far as I can tell.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c21fbaa41ec604eccbc9a6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Dec 5, 2013 at 6:42 AM, Brian Hutchinson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Wed, Dec 4, 2013 at 5:3=
8 PM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.=
com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><div>On Wed, Dec 4, 2013 =
at 3:29 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=3D"mailto:b.hutc=
hman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>&gt;</span> wrote=
:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><div>On Wed, Dec 4, 2013 at 5:10 PM, Chris Lar=
son <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"=
_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>





<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div><div><br></div></div>do_install is the task that in=
stalls. If your makefile has an install target, you=E2=80=99d define a do_i=
nstall that runs it. But not all makefiles provide an equivalent to automak=
e=E2=80=99s DESTDIR, which is why we don=E2=80=99t provide a do_install for=
 non-autotools make-based buildsystems. Either manually install the library=
 where it belongs in your do_install, e.g. with the =E2=80=98install=E2=80=
=99 or =E2=80=98cp=E2=80=99 commands, or define one which runs the appropri=
ate make command to install the files into ${D}.</div>





<span><font color=3D"#888888">

<div class=3D"gmail_extra">-- <br><br></div></font></span></div></blockquot=
e></div><div>Thanks Chris.<br><br>I do have a do_install that is copying st=
uff to ${D}/usr/lib which puts things in my sysroot ... but what target do =
I use to get stuff into the package which is used by my IMAGE_INSTALL line?=
=C2=A0 When I tar tvf my core-image.tar and grep for my .so it currently is=
n&#39;t there ... but it and the headers are in the sysroot.=C2=A0</div>




</div></div></blockquote><div><br></div></div><div>do_install. The contents=
 of ${D} are where the FILES globs are matched. We don=E2=80=99t include th=
e raw libfoo.so, since that=E2=80=99s supposed to be a symlink. If your lib=
 is missing an SONAME, it=E2=80=99d be named incorrectly and be missing a s=
ymlink, and the lib would end up in the -dev package instead of the main pa=
ckage.</div>




</div><div>-- <br><br></div></div></div></blockquote></div><div>The lib tha=
t the makefile generates is just a soname=C2=A0 like libfoo.so.=C2=A0 So yo=
u&#39;re telling me it will not pick that file up?=C2=A0 I guess I need to =
find the class that handles this and study it as I&#39;m probably not picki=
ng up all you&#39;re telling me.=C2=A0 Like I said, this used to work and n=
ow it doesn&#39;t so I&#39;m still at a loss as to what I need to do.=C2=A0=
 It is making it into the sysroot but not the package and the rootfs image =
is built from all the IMAGE_INSTALL package names so it isn&#39;t making it=
 into the rootfs.<br>


<br></div><div>Do I just cheat and make my do_install copy my .so file to p=
ackages-split/mypackage/usr/lib?</div></blockquote></div><br>The best fix w=
ould be to properly name and version your library, e.g. libfoo.so.2.4, with=
 libfoo.so.2 and libfoo.so symlinks, which is the most common practice, but=
 if that=E2=80=99s not an option, or will take too much time, yes, you can =
absolutely make your .so end up in the main package.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">As i said e=
arlier, it=E2=80=99s the *packaging* process that puts the .so in the -dev =
package, as common practice is that the .so is a symlink only used in devel=
opment. If your do_install already installs the .so to ${D}${libdir}, you j=
ust need to alter the globs used in the FILES variables to change which pac=
kage it ends up in. To add your non-symlink .so to the main package rather =
than the ${PN}-dev package:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=C2=A0 =C2=
=A0 # Add the .so to the main package=E2=80=99s files list</div><div class=
=3D"gmail_extra">=C2=A0 =C2=A0 FILES_${PN} +=3D =E2=80=9C${libdir}/*.so=E2=
=80=9D</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 # Make sure it isn=E2=
=80=99t in the dev package=E2=80=99s files list</div>

<div class=3D"gmail_extra">=C2=A0 =C2=A0 FILES_SOLIBSDEV =3D =E2=80=9C&quot=
;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Shou=
ld do it, as far as I can tell.</div><div class=3D"gmail_extra">-- <br>Chri=
stopher Larson<br>clarson at kergoth dot com<br>

Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior=
 Software Engineer, Mentor Graphics
</div></div>

--001a11c21fbaa41ec604eccbc9a6--
