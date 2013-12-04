Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D46E00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 14:38:30 -0800 (PST)
Received: by mail-lb0-f177.google.com with SMTP id w7so9462893lbi.22
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 14:38:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=8vrAmyerCrkyO50sK99ghJEoBvsqjBZueXDO21jp9xo=;
	b=A/kjE9TVn2bCCrZKUWSK24m+M5RgP/zDj4OUzH+v3aK86ESVxTPY6YwJw5gKDZbvqt
	Jy2MyI//jGuI1zUrgX67oHRygUckKsXHcSFZRsr+9hy29bz6sx5Gxp0ZNeSs83ddG1kQ
	tlLW3Z0ODbp5Iq7Pyhm1ixZA6MA6XVZ+vE8F44HFM+lqMwetdgkBR1fGgsCIguOqF0Bn
	Whlf4oQYM5vSQ/gi3EXP3pQQxmJ03TseHLo+12grVe+d70+Dfnq5Ka3IG4A1cbHOujyi
	H8P+zVqgkc4MBZvQo3bRUGTfIsZ1PUJeD/cUnh7SLBvWaBEGCjo2GBbHmoCYA6FdjZvL
	gkYQ==
X-Received: by 10.112.139.35 with SMTP id qv3mr3223011lbb.47.1386196709205;
	Wed, 04 Dec 2013 14:38:29 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.176.201 with HTTP; Wed, 4 Dec 2013 14:38:09 -0800 (PST)
In-Reply-To: <CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 4 Dec 2013 15:38:09 -0700
X-Google-Sender-Auth: 9BGr5wQaOm6wEi97bKTFeXCeWD0
Message-ID: <CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Dec 2013 22:38:34 -0000
Content-Type: multipart/alternative; boundary=089e0115fb1270edc404ecbd12eb

--089e0115fb1270edc404ecbd12eb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2013 at 3:29 PM, Brian Hutchinson <b.hutchman@gmail.com>wrot=
e:

> On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <clarson@kergoth.com> wrote:
>
>>
>> do_install is the task that installs. If your makefile has an install
>> target, you=E2=80=99d define a do_install that runs it. But not all make=
files
>> provide an equivalent to automake=E2=80=99s DESTDIR, which is why we don=
=E2=80=99t provide
>> a do_install for non-autotools make-based buildsystems. Either manually
>> install the library where it belongs in your do_install, e.g. with the
>> =E2=80=98install=E2=80=99 or =E2=80=98cp=E2=80=99 commands, or define on=
e which runs the appropriate make
>> command to install the files into ${D}.
>>  --
>>
>> Thanks Chris.
>
> I do have a do_install that is copying stuff to ${D}/usr/lib which puts
> things in my sysroot ... but what target do I use to get stuff into the
> package which is used by my IMAGE_INSTALL line?  When I tar tvf my
> core-image.tar and grep for my .so it currently isn't there ... but it an=
d
> the headers are in the sysroot.
>

do_install. The contents of ${D} are where the FILES globs are matched. We
don=E2=80=99t include the raw libfoo.so, since that=E2=80=99s supposed to b=
e a symlink. If
your lib is missing an SONAME, it=E2=80=99d be named incorrectly and be mis=
sing a
symlink, and the lib would end up in the -dev package instead of the main
package.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0115fb1270edc404ecbd12eb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Dec 4, 2013 at 3:29 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><div class=3D"im">On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank=
">clarson@kergoth.com</a>&gt;</span> wrote:<br>


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

</div></div></blockquote><div><br></div><div>do_install. The contents of ${=
D} are where the FILES globs are matched. We don=E2=80=99t include the raw =
libfoo.so, since that=E2=80=99s supposed to be a symlink. If your lib is mi=
ssing an SONAME, it=E2=80=99d be named incorrectly and be missing a symlink=
, and the lib would end up in the -dev package instead of the main package.=
</div>

</div>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software =
Engineer, Mentor Graphics
</div></div>

--089e0115fb1270edc404ecbd12eb--
