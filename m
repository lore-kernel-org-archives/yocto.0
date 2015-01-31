Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5DB6E00874; Sat, 31 Jan 2015 00:36:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB82E00546
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 00:36:11 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id bs8so6622019wib.5
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 00:36:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=G7x7BziPvW2m8DjsYQu36PFoxK96iCs4F3JttmjWHiU=;
	b=SC/jDntBd2t6yp+zq1XaO/heYP0Z2L6V/k/bVxLpreiveT+9DMu+qexmPCK+YkGzeJ
	9m5s4zT2bIiYp3Zw9AO1HJS8qa2frXWT+hXhi8HDr0vmBQzfgUh3k1xfegfQCxeJbFXy
	SyhLB6et0pokPo2gvszE3d9b1WI66b81Kvj4o8T/pvvgjp57XrFODhAoXomm9Xa0kqVu
	PaU+QaqXI0AuYWokHKtQJmGoNucPQSRiYeyrX6k0+JP6U2uekGknV5MUdnfjpxr6TbRj
	9RIvY9kh3NdGc9zCt//VkALDfZd4H6xF/+FeK16asE5pIOXaAnMox1XMBon969qs8yTz
	83oA==
X-Received: by 10.180.83.129 with SMTP id q1mr2693203wiy.8.1422693370453; Sat,
	31 Jan 2015 00:36:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.32.85 with HTTP; Sat, 31 Jan 2015 00:35:50 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sat, 31 Jan 2015 09:35:50 +0100
Message-ID: <CAEfap_CVpqLp+WW471hVXgMhaf+JGK1fLtsKftOP4cC+FnCXUQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: 1.7 - QtCreator ERROR while linking- /usr/bin/ld:cannot find /lib/libpthread.so.0 inside
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
X-List-Received-Date: Sat, 31 Jan 2015 08:36:19 -0000
Content-Type: multipart/alternative; boundary=14dae9cc928cf862e4050dee9c97

--14dae9cc928cf862e4050dee9c97
Content-Type: text/plain; charset=UTF-8

yo!

I kind of solved the problem last night. At least i can deploy and run the
app in qemu/device.
*@Martin*: sorry again for direct mail, but i am not sure if my solution is
THE solution. Maybe i
just managed to find a workaround of sth, that can be solved someway else,
OR i just have my settings wrong.

As i already mentioned, linker was not the yocto-qt-sdk linker, but my
ubuntu one. Even though LD variable had been set correctly. I just assume
LD is for the linker, I have no idea if this LD should be used for linking.
So I did copy the i586-poky-linux-ld:
*cp i586-poky-linux-ld ld*
and look there, QtCreator suddenly used this ld for linking. This did not
solve the problem of looking for the libraries in /lib/ or /usr/lib of my
ubuntu machine. Even though *OE_QMAKE_LIBDIR_QT* set to:
*/opt/poky/1.7/sysroots/i586-poky-linux/usr/lib:/opt/poky/1.7/sysroots/i586-poky-linux/lib*

Not even the adding of sysroot to $LD or to $LDFLAGS or to
$OE_QMAKE_LDFLAGS or to $OE_QMAKE_CFLAGS helped:
*--sysroot=/opt/poky/1.7/sysroots/i586-poky-linux*

First setting *QMAKE_LFLAGS* manually in .pro like this:

*QMAKE_LFLAGS=--sysroot=/opt/poky/1.7/sysroots/i586-poky-linux*
caused the linker to look for the libraries. I will set this variable up in
qt5.sh of sdk later.

So, are those OE_QMAKE* variables used in some way? Where can i see them
beeing used. And is this really the solution of the problem? I can't help
the feeling that setting all those --sysroot in setup scripts (source
oe..., and qt5.sh) when starting QtCreator is wrong/not having any function.

*BTW:* I had to update QtCreator to 3.3.0, because deploying the
application with 3.2.0 to qemu(core-image-sato) caused ssh problem of
different protocols (qt hat the old one, not matching the new one in
openssh library of yocto 1.7).

cheers
simon :-)

Date: Fri, 30 Jan 2015 16:59:31 +0100
> From: Simon Bolek <simon.bolek@googlemail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] 1.7 - QtCreator ERROR while linking- /usr/bin/ld:
>         cannot find /lib/libpthread.so.0 inside
> Message-ID:
>         <CAEfap_BwbJG8SZ_btNZAAKouS=JAWByJxkMB95n52qV7C=
> 0PqQ@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> hello!
>
> So after successfully bitbaking and installing meta-toolchain-st5 I set up
> QtCreator 3.2.2 and tried to compile an app against SDK of qt5. However I
> get an error:
>
> /usr/bin/ld: cannot find /lib/libpthread.so.0 inside
> /usr/bin/ld: cannot find /usr/lib/libpthread_nonshared.a inside
>
> libpthread.so is available alright, but the linker is not finding it
> somehow.
>
> LD variable is set to:
> i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
>
> Maybe this is a pure QtCreator bug, but where would I set(override) the
> linker correctly? Any suggestions?
>
> If i run(from console ):
> i586-poky-linux-ld --sysroot=/opt/poky/1.7/sysroots/i586-poky-linux
> /opt/poky/1.7/sysroots/i586-poky-linux/usr/lib/libpthread.so
> it is fine(it gives me some warning, but no errors).
>
> Here are the QtCreator settings for Qt5 Kit:
> GCC Compiler:
> path:
>
> /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc
>
> Qt Version:
> qmake location: /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/qt5/qmake
>
> Qt Kit:
> sysroot: /opt/poky/1.7/sysroots/i586-poky-linux
> compiler: set to above gcc compiler
> qt version: set to above qt version
>
> even manually setting LIBS to
> LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/lib
> or
> LIBS += -L//opt/poky/1.7/sysroots/i586-poky-linux/usr/lib
> does not help(but i really do not think this is the problem).
>
> So you have any hints for me?
> I compared the settings of 1.6.1, and there is no difference as far as my
> eye can catch.
>
>
> PS. I switched from 1.6.1 to 1.7, becasue of gclib not beeing available in
> 1.6.1.
>
> cheers
> simon :-)
>

--14dae9cc928cf862e4050dee9c97
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">yo!<br><br></div><div class=3D"=
gmail_extra">I kind of solved the problem last night. At least i can deploy=
 and run the app in qemu/device.<br></div><div class=3D"gmail_extra"><b>@Ma=
rtin</b>: sorry again for direct mail, but i am not sure if my solution is =
THE solution. Maybe i <br>just managed to find a workaround of sth, that ca=
n be solved someway else, OR i just have my settings wrong.<br></div><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">As i already ment=
ioned, linker was not the yocto-qt-sdk linker, but my ubuntu one. Even thou=
gh LD variable had been set correctly. I just assume LD is for the linker, =
I have no idea if this LD should be used for linking. So I did copy the=20
i586-poky-linux-ld:<br><b>cp i586-poky-linux-ld ld</b><br></div><div class=
=3D"gmail_extra">and look there, QtCreator suddenly used this ld for linkin=
g. This did not solve the problem of looking for the libraries in /lib/ or =
/usr/lib of my ubuntu machine. Even though <b>OE_QMAKE_LIBDIR_QT</b> set to=
: <br><i>/opt/poky/1.7/sysroots/i586-poky-linux/usr/lib:/opt/poky/1.7/sysro=
ots/i586-poky-linux/lib</i><br></div><div class=3D"gmail_extra"><br>Not eve=
n the adding of sysroot to $LD or to $LDFLAGS or to $OE_QMAKE_LDFLAGS or to=
 $OE_QMAKE_CFLAGS helped: <br></div><div class=3D"gmail_extra"><i>--sysroot=
=3D/opt/poky/1.7/sysroots/i586-poky-linux</i><br></div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">First setting <b>QMAKE_LFLAGS</=
b> manually in .pro like this:<br><i>QMAKE_LFLAGS=3D--sysroot=3D/opt/poky/1=
.7/sysroots/i586-poky-linux<br></i></div><div class=3D"gmail_extra">caused =
the linker to look for the libraries. I will set this variable up in qt5.sh=
 of sdk later.<br><br></div><div class=3D"gmail_extra">So, are those OE_QMA=
KE* variables used in some way? Where can i see them beeing used. And is th=
is really the solution of the problem? I can&#39;t help the feeling that se=
tting all those --sysroot in setup scripts (source oe..., and qt5.sh) when =
starting QtCreator is wrong/not having any function.<br></div><div class=3D=
"gmail_extra"><br><b>BTW:</b> I had to update QtCreator to 3.3.0, because d=
eploying the application with 3.2.0 to qemu(core-image-sato) caused ssh pro=
blem of different protocols (qt hat the old one, not matching the new one i=
n openssh library of yocto 1.7).<br></div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">cheers<br>simon :-)<br><br></div><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Date: Fri, 30 Jan 2015 16:59:31 +0100<br>
From: Simon Bolek &lt;<a href=3D"mailto:simon.bolek@googlemail.com">simon.b=
olek@googlemail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] 1.7 - QtCreator ERROR while linking- /usr/bin/ld:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cannot find /lib/libpthread.so.0 inside<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAEfap_BwbJG8SZ_btNZAAKouS=3DJAWByJxkMB95n5=
2qV7C=3D<a href=3D"mailto:0PqQ@mail.gmail.com">0PqQ@mail.gmail.com</a>&gt;<=
br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
hello!<br>
<br>
So after successfully bitbaking and installing meta-toolchain-st5 I set up<=
br>
QtCreator 3.2.2 and tried to compile an app against SDK of qt5. However I<b=
r>
get an error:<br>
<br>
/usr/bin/ld: cannot find /lib/libpthread.so.0 inside<br>
/usr/bin/ld: cannot find /usr/lib/libpthread_nonshared.a inside<br>
<br>
libpthread.so is available alright, but the linker is not finding it<br>
somehow.<br>
<br>
LD variable is set to:<br>
i586-poky-linux-ld --sysroot=3D/opt/poky/1.7/sysroots/i586-poky-linux<br>
<br>
Maybe this is a pure QtCreator bug, but where would I set(override) the<br>
linker correctly? Any suggestions?<br>
<br>
If i run(from console ):<br>
i586-poky-linux-ld --sysroot=3D/opt/poky/1.7/sysroots/i586-poky-linux<br>
/opt/poky/1.7/sysroots/i586-poky-linux/usr/lib/libpthread.so<br>
it is fine(it gives me some warning, but no errors).<br>
<br>
Here are the QtCreator settings for Qt5 Kit:<br>
GCC Compiler:<br>
path:<br>
/opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky=
-linux-gcc<br>
<br>
Qt Version:<br>
qmake location: /opt/poky/1.7/sysroots/i686-pokysdk-linux/usr/bin/qt5/qmake=
<br>
<br>
Qt Kit:<br>
sysroot: /opt/poky/1.7/sysroots/i586-poky-linux<br>
compiler: set to above gcc compiler<br>
qt version: set to above qt version<br>
<br>
even manually setting LIBS to<br>
LIBS +=3D -L//opt/poky/1.7/sysroots/i586-poky-linux/lib<br>
or<br>
LIBS +=3D -L//opt/poky/1.7/sysroots/i586-poky-linux/usr/lib<br>
does not help(but i really do not think this is the problem).<br>
<br>
So you have any hints for me?<br>
I compared the settings of 1.6.1, and there is no difference as far as my<b=
r>
eye can catch.<br>
<br>
<br>
PS. I switched from 1.6.1 to 1.7, becasue of gclib not beeing available in<=
br>
1.6.1.<br>
<br>
cheers<br>
simon :-)<span class=3D""><font color=3D"#888888"><br>
</font></span></blockquote></div><br></div></div>

--14dae9cc928cf862e4050dee9c97--
