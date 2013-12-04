Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 665BAE00783
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 14:29:59 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id wn1so16953711obc.33
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 14:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=b9C392VSO26NikYfS1X23aqAjCXBadzAyWlp62HeynE=;
	b=QdNsouo6phl7kP3Z7UJQKAd0HsTDQ3okiZtsbE2z/6yLM+tboLFrx+ik2ZQWus7Baf
	A0bcncAAGjLH5MLmQqA9rVXKPi9TqCKWC2JvXEAB8T6qdC/wCGkGn+wrS0dXx7bp2BkH
	BrpJL2jPWf+ShGm9FPCF4Vn+E/9phqDGBBvBzVHXdbcylfA2ipUs3ZW9zpXNrEUmy9kq
	dsdxmwjA5+GhKp9bVL4YLV6v9TK6OzOnKqSxzMbIBKsyBXZBEtwVnNt1SEeBG1qleZEL
	w3y1JFOgMN2cmpLLZhoiMKlJQNNcSVijBvR0NfF49KPUYsOqnetV1w4dXCEErAj+tL8r
	A1UQ==
MIME-Version: 1.0
X-Received: by 10.182.220.225 with SMTP id pz1mr12320957obc.51.1386196199223; 
	Wed, 04 Dec 2013 14:29:59 -0800 (PST)
Received: by 10.60.142.41 with HTTP; Wed, 4 Dec 2013 14:29:59 -0800 (PST)
In-Reply-To: <CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
Date: Wed, 4 Dec 2013 17:29:59 -0500
Message-ID: <CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Chris Larson <clarson@kergoth.com>
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
X-List-Received-Date: Wed, 04 Dec 2013 22:30:02 -0000
Content-Type: multipart/alternative; boundary=001a11c30fac0b34bd04ecbcf4be

--001a11c30fac0b34bd04ecbcf4be
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <clarson@kergoth.com> wrote:

>
> do_install is the task that installs. If your makefile has an install
> target, you=92d define a do_install that runs it. But not all makefiles
> provide an equivalent to automake=92s DESTDIR, which is why we don=92t pr=
ovide
> a do_install for non-autotools make-based buildsystems. Either manually
> install the library where it belongs in your do_install, e.g. with the
> =91install=92 or =91cp=92 commands, or define one which runs the appropri=
ate make
> command to install the files into ${D}.
> --
>
> Thanks Chris.

I do have a do_install that is copying stuff to ${D}/usr/lib which puts
things in my sysroot ... but what target do I use to get stuff into the
package which is used by my IMAGE_INSTALL line?  When I tar tvf my
core-image.tar and grep for my .so it currently isn't there ... but it and
the headers are in the sysroot.

When I look in the tmp/work dir, in packages-split my package name shows up
and there is noting in it.  In the very first version of yocto (1.0) the
same recipe I'm trying to use now worked and put the lib in
packages-split/usr/lib.  With Dora, packages-split/usr/lib is empty.

Regards,

Brian

--001a11c30fac0b34bd04ecbcf4be
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Dec 4, 2013 at 5:10 PM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div><div class=3D"h5"><br></div></div>do_install is the=
 task that installs. If your makefile has an install target, you=92d define=
 a do_install that runs it. But not all makefiles provide an equivalent to =
automake=92s DESTDIR, which is why we don=92t provide a do_install for non-=
autotools make-based buildsystems. Either manually install the library wher=
e it belongs in your do_install, e.g. with the =91install=92 or =91cp=92 co=
mmands, or define one which runs the appropriate make command to install th=
e files into ${D}.</div>
<span class=3D""><font color=3D"#888888">

<div class=3D"gmail_extra">-- <br><br></div></font></span></div></blockquot=
e><div>Thanks Chris.<br><br>I do have a do_install that is copying stuff to=
 ${D}/usr/lib which puts things in my sysroot ... but what target do I use =
to get stuff into the package which is used by my IMAGE_INSTALL line?=A0 Wh=
en I tar tvf my core-image.tar and grep for my .so it currently isn&#39;t t=
here ... but it and the headers are in the sysroot.=A0 <br>
</div></div><br></div><div class=3D"gmail_extra">When I look in the tmp/wor=
k dir, in packages-split my package name shows up and there is noting in it=
.=A0 In the very first version of yocto (1.0) the same recipe I&#39;m tryin=
g to use now worked and put the lib in packages-split/usr/lib.=A0 With Dora=
, packages-split/usr/lib is empty.<br>
<br></div><div class=3D"gmail_extra">Regards,<br><br>Brian<br><br></div></d=
iv>

--001a11c30fac0b34bd04ecbcf4be--
