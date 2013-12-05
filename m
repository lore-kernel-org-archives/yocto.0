Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49BFFE007AE
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 05:42:22 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id wp18so17680274obc.2
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 05:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C2gH3ZlN4QWsMieE+hIqsJOPIQ8tcmGfJF5wsPo6S8E=;
	b=qLpP4rGwi8huloORanK0HWIqeAutCi670qYbUasSqvK8JiiMvpj8FHkduRZBtGnBzr
	R7KKtpAFRwgWzmsk+kxjeBpy1Fhy3kcZ7hZ8limz15keDsqaUQlC0c63o0S1ES5ZdxQF
	IyXRHp6ClKC7S4oW3j9PtTkr2mrRRGLgRUKmFPzqHzp/tiOqWIoo6sD/4hTT/XLQgFMG
	kr15oocRww62PDu/vNSWdKdEpErYp33dcURggm+vs1JPUgOCwuWcRh8DgFISGHxbShAT
	3e8p26FBM4/1tJaHH4im2j8l7udCHimF2hzWERR1vJGc2D0uXLAutSjJQDBtkOQM+NyR
	uEdA==
MIME-Version: 1.0
X-Received: by 10.182.42.105 with SMTP id n9mr64459246obl.33.1386250942297;
	Thu, 05 Dec 2013 05:42:22 -0800 (PST)
Received: by 10.60.142.41 with HTTP; Thu, 5 Dec 2013 05:42:22 -0800 (PST)
In-Reply-To: <CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
	<CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
Date: Thu, 5 Dec 2013 08:42:22 -0500
Message-ID: <CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
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
X-List-Received-Date: Thu, 05 Dec 2013 13:42:24 -0000
Content-Type: multipart/alternative; boundary=14dae939981ffc3b9704ecc9b27a

--14dae939981ffc3b9704ecc9b27a
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 4, 2013 at 5:38 PM, Chris Larson <clarson@kergoth.com> wrote:

>
> On Wed, Dec 4, 2013 at 3:29 PM, Brian Hutchinson <b.hutchman@gmail.com>wr=
ote:
>
>> On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <clarson@kergoth.com> wrote=
:
>>
>>>
>>> do_install is the task that installs. If your makefile has an install
>>> target, you=92d define a do_install that runs it. But not all makefiles
>>> provide an equivalent to automake=92s DESTDIR, which is why we don=92t =
provide
>>> a do_install for non-autotools make-based buildsystems. Either manually
>>> install the library where it belongs in your do_install, e.g. with the
>>> =91install=92 or =91cp=92 commands, or define one which runs the approp=
riate make
>>> command to install the files into ${D}.
>>>  --
>>>
>>> Thanks Chris.
>>
>> I do have a do_install that is copying stuff to ${D}/usr/lib which puts
>> things in my sysroot ... but what target do I use to get stuff into the
>> package which is used by my IMAGE_INSTALL line?  When I tar tvf my
>> core-image.tar and grep for my .so it currently isn't there ... but it a=
nd
>> the headers are in the sysroot.
>>
>
> do_install. The contents of ${D} are where the FILES globs are matched. W=
e
> don=92t include the raw libfoo.so, since that=92s supposed to be a symlin=
k. If
> your lib is missing an SONAME, it=92d be named incorrectly and be missing=
 a
> symlink, and the lib would end up in the -dev package instead of the main
> package.
> --
>
> The lib that the makefile generates is just a soname  like libfoo.so.  So
you're telling me it will not pick that file up?  I guess I need to find
the class that handles this and study it as I'm probably not picking up all
you're telling me.  Like I said, this used to work and now it doesn't so
I'm still at a loss as to what I need to do.  It is making it into the
sysroot but not the package and the rootfs image is built from all the
IMAGE_INSTALL package names so it isn't making it into the rootfs.

Do I just cheat and make my do_install copy my .so file to
packages-split/mypackage/usr/lib?

Regards,

Brian

--14dae939981ffc3b9704ecc9b27a
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Dec 4, 2013 at 5:38 PM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</s=
pan> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><div class=3D"im">On Wed,=
 Dec 4, 2013 at 3:29 PM, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=3D"=
mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>&gt;=
</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><div>On Wed, Dec 4, 2013 at 5:10 PM, Chris Lar=
son <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"=
_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>



<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div><div><br></div></div>do_install is the task that in=
stalls. If your makefile has an install target, you=92d define a do_install=
 that runs it. But not all makefiles provide an equivalent to automake=92s =
DESTDIR, which is why we don=92t provide a do_install for non-autotools mak=
e-based buildsystems. Either manually install the library where it belongs =
in your do_install, e.g. with the =91install=92 or =91cp=92 commands, or de=
fine one which runs the appropriate make command to install the files into =
${D}.</div>



<span><font color=3D"#888888">

<div class=3D"gmail_extra">-- <br><br></div></font></span></div></blockquot=
e></div><div>Thanks Chris.<br><br>I do have a do_install that is copying st=
uff to ${D}/usr/lib which puts things in my sysroot ... but what target do =
I use to get stuff into the package which is used by my IMAGE_INSTALL line?=
=A0 When I tar tvf my core-image.tar and grep for my .so it currently isn&#=
39;t there ... but it and the headers are in the sysroot.=A0</div>


</div></div></blockquote><div><br></div></div><div>do_install. The contents=
 of ${D} are where the FILES globs are matched. We don=92t include the raw =
libfoo.so, since that=92s supposed to be a symlink. If your lib is missing =
an SONAME, it=92d be named incorrectly and be missing a symlink, and the li=
b would end up in the -dev package instead of the main package.</div>


</div><div class=3D"im">-- <br><br></div></div></div></blockquote><div>The =
lib that the makefile generates is just a soname=A0 like libfoo.so.=A0 So y=
ou&#39;re telling me it will not pick that file up?=A0 I guess I need to fi=
nd the class that handles this and study it as I&#39;m probably not picking=
 up all you&#39;re telling me.=A0 Like I said, this used to work and now it=
 doesn&#39;t so I&#39;m still at a loss as to what I need to do.=A0 It is m=
aking it into the sysroot but not the package and the rootfs image is built=
 from all the IMAGE_INSTALL package names so it isn&#39;t making it into th=
e rootfs.<br>
<br></div><div>Do I just cheat and make my do_install copy my .so file to p=
ackages-split/mypackage/usr/lib?</div><div><br></div><div>Regards,<br><br>B=
rian <br></div></div><br></div></div>

--14dae939981ffc3b9704ecc9b27a--
