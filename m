Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41985E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 08:21:50 -0800 (PST)
Received: by mail-oa0-f51.google.com with SMTP id i7so18752988oag.10
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 08:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=29nh6zyES2c465cUkZJejkzjzHBbkUiVg3jL/BSkuWY=;
	b=pe2FuLgQfa+giMfDGX0DPTUso09KTzoI4zclL68JnD7ujG55AFGV3KnJl/7Vdh4Cu4
	CeOD54d0Rtww2+JkpYxzHQQF/YYa3KHHbAKAfRJXmp5IDPmjEdbF7w+hefMsJiwi1mIV
	fxRyE2ZhG8wzQCgpP9IHSYeRwbr7qzkC5QBx96mloXHnhmL1P2LfHvEJ995LxZAz+3b7
	FD4ZaoEaMueJ0MVpYoBsHdH+lFqIZhGL8VXICNJB0KlVinO2lFLnCrUdyCWgFmdPNB9I
	5iEtz8i+SmJ3MTJspO5p4mCNGEU5FmHBbkyz+R0WZH+jzBcHF03eQLtGyU9UbElIXryF
	d4vA==
MIME-Version: 1.0
X-Received: by 10.182.166.40 with SMTP id zd8mr68076415obb.25.1386260510016;
	Thu, 05 Dec 2013 08:21:50 -0800 (PST)
Received: by 10.60.142.41 with HTTP; Thu, 5 Dec 2013 08:21:49 -0800 (PST)
In-Reply-To: <CABcZANmtrNW-XWbVKj2+VHFrfvsOJMT6Xm77Bb1jKPBAR5yLbg@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
	<CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
	<CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
	<CABcZANmtrNW-XWbVKj2+VHFrfvsOJMT6Xm77Bb1jKPBAR5yLbg@mail.gmail.com>
Date: Thu, 5 Dec 2013 11:21:49 -0500
Message-ID: <CAFZh4h_b=8NonYoQ_WMTAYXNDWdS=fkG70uGaVOYHYdr_fOK9g@mail.gmail.com>
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
X-List-Received-Date: Thu, 05 Dec 2013 16:21:51 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce0244142704eccbed47

--e89a8ff1ce0244142704eccbed47
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2013 at 11:11 AM, Chris Larson <clarson@kergoth.com> wrote:

>
> On Thu, Dec 5, 2013 at 6:42 AM, Brian Hutchinson <b.hutchman@gmail.com>wr=
ote:
>
>> On Wed, Dec 4, 2013 at 5:38 PM, Chris Larson <clarson@kergoth.com> wrote=
:
>>
>>>
>>> On Wed, Dec 4, 2013 at 3:29 PM, Brian Hutchinson <b.hutchman@gmail.com>=
wrote:
>>>
>>>> On Wed, Dec 4, 2013 at 5:10 PM, Chris Larson <clarson@kergoth.com>wrot=
e:
>>>>
>>>>>
>>>>> do_install is the task that installs. If your makefile has an install
>>>>> target, you=92d define a do_install that runs it. But not all makefil=
es
>>>>> provide an equivalent to automake=92s DESTDIR, which is why we don=92=
t provide
>>>>> a do_install for non-autotools make-based buildsystems. Either manual=
ly
>>>>> install the library where it belongs in your do_install, e.g. with th=
e
>>>>> =91install=92 or =91cp=92 commands, or define one which runs the appr=
opriate make
>>>>> command to install the files into ${D}.
>>>>>  --
>>>>>
>>>>> Thanks Chris.
>>>>
>>>> I do have a do_install that is copying stuff to ${D}/usr/lib which put=
s
>>>> things in my sysroot ... but what target do I use to get stuff into th=
e
>>>> package which is used by my IMAGE_INSTALL line?  When I tar tvf my
>>>> core-image.tar and grep for my .so it currently isn't there ... but it=
 and
>>>> the headers are in the sysroot.
>>>>
>>>
>>> do_install. The contents of ${D} are where the FILES globs are matched.
>>> We don=92t include the raw libfoo.so, since that=92s supposed to be a s=
ymlink.
>>> If your lib is missing an SONAME, it=92d be named incorrectly and be mi=
ssing
>>> a symlink, and the lib would end up in the -dev package instead of the =
main
>>> package.
>>> --
>>>
>>> The lib that the makefile generates is just a soname  like libfoo.so.
>> So you're telling me it will not pick that file up?  I guess I need to f=
ind
>> the class that handles this and study it as I'm probably not picking up =
all
>> you're telling me.  Like I said, this used to work and now it doesn't so
>> I'm still at a loss as to what I need to do.  It is making it into the
>> sysroot but not the package and the rootfs image is built from all the
>> IMAGE_INSTALL package names so it isn't making it into the rootfs.
>>
>> Do I just cheat and make my do_install copy my .so file to
>> packages-split/mypackage/usr/lib?
>>
>
> The best fix would be to properly name and version your library, e.g.
> libfoo.so.2.4, with libfoo.so.2 and libfoo.so symlinks, which is the most
> common practice, but if that=92s not an option, or will take too much tim=
e,
> yes, you can absolutely make your .so end up in the main package.
>
> As i said earlier, it=92s the *packaging* process that puts the .so in th=
e
> -dev package, as common practice is that the .so is a symlink only used i=
n
> development. If your do_install already installs the .so to ${D}${libdir}=
,
> you just need to alter the globs used in the FILES variables to change
> which package it ends up in. To add your non-symlink .so to the main
> package rather than the ${PN}-dev package:
>
>     # Add the .so to the main package=92s files list
>     FILES_${PN} +=3D =93${libdir}/*.so=94
>     # Make sure it isn=92t in the dev package=92s files list
>     FILES_SOLIBSDEV =3D =93"
>
> Should do it, as far as I can tell.
>
>
I had FILES_${PN} +=3D =93${libdir}/*.so=94 in there and that didn't work. =
 Maybe
it was because I was missing the FILES_SOLIBSDEV =3D =93" you mentioned.  I=
'll
play with it some more and see what happens.  I first started out with
FILES_${PN} +=3D =93${libdir}/*.so=94 and when that didn't work I tried oth=
er
things in the FILES_${PN} =3D line to try and get it picked up.  When I
couldn't get any of it to work and then saw others (well, at least the link
I provided) were seeing the same thing I figured it was time to quit
spinning my wheels and consult the big guns :)

Regards,

Brian

--e89a8ff1ce0244142704eccbed47
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Dec 5, 2013 at 11:11 AM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"=
mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">On=
 Thu, Dec 5, 2013 at 6:42 AM, Brian Hutchinson <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a=
>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>On Wed, Dec 4, 2013 =
at 5:38 PM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"mailto:clarson@ke=
rgoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</span> wrote:<br>



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





</div><div>-- <br><br></div></div></div></blockquote></div><div>The lib tha=
t the makefile generates is just a soname=A0 like libfoo.so.=A0 So you&#39;=
re telling me it will not pick that file up?=A0 I guess I need to find the =
class that handles this and study it as I&#39;m probably not picking up all=
 you&#39;re telling me.=A0 Like I said, this used to work and now it doesn&=
#39;t so I&#39;m still at a loss as to what I need to do.=A0 It is making i=
t into the sysroot but not the package and the rootfs image is built from a=
ll the IMAGE_INSTALL package names so it isn&#39;t making it into the rootf=
s.<br>



<br></div><div>Do I just cheat and make my do_install copy my .so file to p=
ackages-split/mypackage/usr/lib?</div></blockquote></div><br></div></div>Th=
e best fix would be to properly name and version your library, e.g. libfoo.=
so.2.4, with libfoo.so.2 and libfoo.so symlinks, which is the most common p=
ractice, but if that=92s not an option, or will take too much time, yes, yo=
u can absolutely make your .so end up in the main package.</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">As i said e=
arlier, it=92s the *packaging* process that puts the .so in the -dev packag=
e, as common practice is that the .so is a symlink only used in development=
. If your do_install already installs the .so to ${D}${libdir}, you just ne=
ed to alter the globs used in the FILES variables to change which package i=
t ends up in. To add your non-symlink .so to the main package rather than t=
he ${PN}-dev package:</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=A0 =A0 # A=
dd the .so to the main package=92s files list</div><div class=3D"gmail_extr=
a">=A0 =A0 FILES_${PN} +=3D =93${libdir}/*.so=94</div><div class=3D"gmail_e=
xtra">=A0 =A0 # Make sure it isn=92t in the dev package=92s files list</div=
>


<div class=3D"gmail_extra">=A0 =A0 FILES_SOLIBSDEV =3D =93&quot;</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Should do it, as=
 far as I can tell.</div><div class=3D"im"><div class=3D"gmail_extra"><br><=
/div></div></div>
</blockquote><div><br>I had FILES_${PN} +=3D =93${libdir}/*.so=94 in there =
and that didn&#39;t work.=A0 Maybe it was because I was missing the FILES_S=
OLIBSDEV =3D =93&quot; you mentioned.=A0 I&#39;ll play with it some more an=
d see what happens.=A0 I first started out with FILES_${PN} +=3D =93${libdi=
r}/*.so=94 and when that didn&#39;t work I tried other things in the FILES_=
${PN} =3D line to try and get it picked up.=A0 When I couldn&#39;t get any =
of it to work and then saw others (well, at least the link I provided) were=
 seeing the same thing I figured it was time to quit spinning my wheels and=
 consult the big guns :)<br>
<br>Regards,<br><br>Brian<br><br> </div></div><br></div></div>

--e89a8ff1ce0244142704eccbed47--
