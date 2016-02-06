Return-Path: <mgloff@emacinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46ED3E00D49; Sat,  6 Feb 2016 12:28:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC253E00D3A
	for <yocto@yoctoproject.org>; Sat,  6 Feb 2016 12:28:48 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id mw1so35041641igb.1
	for <yocto@yoctoproject.org>; Sat, 06 Feb 2016 12:28:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=emacinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=rxgWVxbvDrjXnxyFjFZQqY9pkKew1QNuiBiF2wqwDiE=;
	b=1ldY+ki+oeID9KwlNRZtpqSAtpNSqPwJMpHTUCykjx9rr0xju2pJ2eLM2uTpWWJbRY
	LDbvv7yQNWSU5fTeR9ZxAG/1gqIbua08Qo7QrlTYo5zJLyhLqagZkLX7u9so72CYIit2
	tPdHNj3oszeYyNNLJewQtxtzGhYcFiELH3hXk97csh/dTnNUHCAEof5yJwD9eCNfpg33
	D/mLTK8bd2DbHzKyHMdMjBPKCo/GJhHjN1YPE+gfLlNGWK/I0hi0/d3xX/6UsHCU2I5d
	T3oZVlf9V9G9hp1q78ZGWT29H7IzRiUnAvOhixHRPkBBh8kxnuI4FZTWIcwfxz7MEO7Q
	xrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=rxgWVxbvDrjXnxyFjFZQqY9pkKew1QNuiBiF2wqwDiE=;
	b=hhKpz5ks7QYk4ZwDuIARMinydMVgJv+4VctWr+IwOgarahbNqZlU7Zh2VbN+/E3k/B
	jMnYVCtTKkG4K5vURArg23SszJ7vJpdPj8/L0+ylv4Bb6RVX3bmCYWYesknAbtRS2hgz
	1BZrzRPVKFgq6KIf1zlsnZvV2cCNU7cgrvREIQZJ0OzpadvEdELMRQfHf7J95vWC2o0B
	MKmkXGTlgftk8XbGSlneaNxGPRGKbiSZXEt5kDtkt+EH7cS3mLjtb+B+ofT9tCepAznh
	Tdq5ayONiwFObT7YqiTMEYr+Ngckh2jfCNgzERP0d8L1SJ5b48kSEfZQm8nIn2XozCfR
	OkBQ==
X-Gm-Message-State: AG10YOSkSCJegyscdRG2LLgVodxkroGB9XUHV1MuqifBW3Nk1e0CRUQA/kFwTQFMsTpLVmvMHSRjh061nc9xnpaT
MIME-Version: 1.0
X-Received: by 10.50.155.40 with SMTP id vt8mr20817245igb.56.1454790527811;
	Sat, 06 Feb 2016 12:28:47 -0800 (PST)
Received: by 10.107.133.67 with HTTP; Sat, 6 Feb 2016 12:28:47 -0800 (PST)
In-Reply-To: <CALXw4G6C3AFm9FLEaKSF6nrxwKU59v4r-yX3zCTwRKTWPPbTLg@mail.gmail.com>
References: <CALXw4G6C3AFm9FLEaKSF6nrxwKU59v4r-yX3zCTwRKTWPPbTLg@mail.gmail.com>
Date: Sat, 6 Feb 2016 14:28:47 -0600
Message-ID: <CALXw4G44V9n_+jVHNhdvdj1h0+365p4HEmJi0O=nsA=fTrBrEw@mail.gmail.com>
From: Michael Gloff <mgloff@emacinc.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Qtbase Poky/Jethro
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
X-List-Received-Date: Sat, 06 Feb 2016 20:28:54 -0000
Content-Type: multipart/alternative; boundary=001a11c2c79ea23f2f052b1fd080

--001a11c2c79ea23f2f052b1fd080
Content-Type: text/plain; charset=UTF-8

Does anyone have any insite as to why Qt5 does not compile against OE core
fido branch?

A more recent pull of OE core master now fails building qtbase at
do_populate_sysroot with:

ERROR: QA Issue: Qt5OpenGLExtensions.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Sql.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Network.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Test.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5DBus.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Core.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5PlatformSupport.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5PrintSupport.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Widgets.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Xml.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Concurrent.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Gui.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5XcbQpa.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5OpenGL.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA Issue: Qt5Bootstrap.pc failed sanity test (tmpdir) in path
/home/developer/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig
[pkgconfig]
ERROR: QA staging was broken by the package built above

Michael Gloff
mgloff@emacinc.com


On Wed, Feb 3, 2016 at 3:15 PM, Michael Gloff <mgloff@emacinc.com> wrote:

> All,
> I'm hoping someone can help to get qtbase to compile on a fresh checkout
> of poky and meta-qt5 on Jethro branch and a clean build directory. I've
> attached the log.do_compile and pasted below what I believe to be the
> error. Has anyone seen this before? Qtbase does build in master for me
> though. Are there some particular patches that need to be backported?
>
> Build Configuration:
> BB_VERSION        = "1.28.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "x86_64-poky-linux"
> MACHINE           = "genericx86-64"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.0.1"
> TUNE_FEATURES     = "m64 core2"
> TARGET_FPU        = ""
> meta
> meta-yocto
> meta-yocto-bsp    = "jethro:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f"
> meta-qt5          = "jethro:d5536e34ec985c82b621448ab4325e5cbba38560"
>
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:
> In member function 'virtual QRect
> QGtkStyle::subControlRect(QStyle::ComplexControl, const
> QStyleOptionComplex*, QStyle::SubControl, const QWidget*) const':
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:24:
> error: 'isInstanceOf' is not a member of 'QStyleHelper'
> |              } else if
> (QStyleHelper::isInstanceOf(groupBox->styleObject, QAccessible::Grouping)) {
> |                         ^
> |
> /home/developer/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:74:
> error: 'QAccessible' has not been declared
> |              } else if
> (QStyleHelper::isInstanceOf(groupBox->styleObject, QAccessible::Grouping)) {
>
> Are there some PACKAGECONFIGs or DISTRO_FEATURES that are not part of
> default Poky that need to be enabled?
>
> Thanks,
>
> Michael Gloff
> mgloff@emacinc.com
>

--001a11c2c79ea23f2f052b1fd080
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Does anyone have any insite as to why Qt5 does not co=
mpile against OE core fido branch? <br><br>A more recent pull of OE core ma=
ster now fails building qtbase at do_populate_sysroot with:<br><br>ERROR: Q=
A Issue: Qt5OpenGLExtensions.pc failed sanity test (tmpdir) in path /home/d=
eveloper/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+=
gitAUTOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>=
ERROR: QA Issue: Qt5Sql.pc failed sanity test (tmpdir) in path /home/develo=
per/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAU=
TOINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR=
: QA Issue: Qt5Network.pc failed sanity test (tmpdir) in path /home/develop=
er/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUT=
OINC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR:=
 QA Issue: Qt5Test.pc failed sanity test (tmpdir) in path /home/developer/o=
e/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC=
+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA =
Issue: Qt5DBus.pc failed sanity test (tmpdir) in path /home/developer/oe/po=
ky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f=
4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Issu=
e: Qt5Core.pc failed sanity test (tmpdir) in path /home/developer/oe/poky/b=
uild/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde=
80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Issue: Q=
t5PlatformSupport.pc failed sanity test (tmpdir) in path /home/developer/oe=
/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+=
f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA I=
ssue: Qt5PrintSupport.pc failed sanity test (tmpdir) in path /home/develope=
r/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTO=
INC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: =
QA Issue: Qt5Widgets.pc failed sanity test (tmpdir) in path /home/developer=
/oe/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOI=
NC+f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: Q=
A Issue: Qt5Xml.pc failed sanity test (tmpdir) in path /home/developer/oe/p=
oky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7=
f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Iss=
ue: Qt5Concurrent.pc failed sanity test (tmpdir) in path /home/developer/oe=
/poky/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+=
f7f4dde80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA I=
ssue: Qt5Gui.pc failed sanity test (tmpdir) in path /home/developer/oe/poky=
/build/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4d=
de80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Issue:=
 Qt5XcbQpa.pc failed sanity test (tmpdir) in path /home/developer/oe/poky/b=
uild/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde=
80e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Issue: Q=
t5OpenGL.pc failed sanity test (tmpdir) in path /home/developer/oe/poky/bui=
ld/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde80=
e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA Issue: Qt5=
Bootstrap.pc failed sanity test (tmpdir) in path /home/developer/oe/poky/bu=
ild/tmp/work/i586-poky-linux/qtbase/5.5.99+5.6.0-alpha1+gitAUTOINC+f7f4dde8=
0e-r0/sysroot-destdir//usr/lib/pkgconfig [pkgconfig]<br>ERROR: QA staging w=
as broken by the package built above<br><br></div><div>Michael Gloff<br></d=
iv><div><a href=3D"mailto:mgloff@emacinc.com">mgloff@emacinc.com</a><br></d=
iv><div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Wed, Feb 3, 2016 at 3:15 PM, Michael Gloff <span dir=3D"ltr">&lt;=
<a href=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div><div><div>All,<br></div>I&#39;m hoping someone can help to get=
 qtbase to compile on a fresh checkout of poky and meta-qt5 on Jethro branc=
h and a clean build directory. I&#39;ve attached the log.do_compile and pas=
ted below what I believe to be the error. Has anyone seen this before? Qtba=
se does build in master for me though. Are there some particular patches th=
at need to be backported?<br><br>Build Configuration:<br>BB_VERSION=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.28.0&quot;<br>BUILD_SYS=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<=
br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-14.04&quot;<br>TARGET_SYS=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-poky-linux&quot=
;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;genericx86-64&quot;<br>DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=C2=A0=
=C2=A0=C2=A0 =3D &quot;2.0.1&quot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D &quot;m64 core2&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =3D &quot;&quot;<br>meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D &quot;jethro=
:dd0ba9ea4a11ab15348d4fe3574e4b28784db82f&quot;<br>meta-qt5=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;jethro:d5536e34ec985c82b6=
21448ab4325e5cbba38560&quot;<br><br>| /home/developer/oe/poky/build/tmp/wor=
k/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/widgets=
/styles/qgtkstyle.cpp: In member function &#39;virtual QRect QGtkStyle::sub=
ControlRect(QStyle::ComplexControl, const QStyleOptionComplex*, QStyle::Sub=
Control, const QWidget*) const&#39;:<br>| /home/developer/oe/poky/build/tmp=
/work/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc431323-r0/git/src/wid=
gets/styles/qgtkstyle.cpp:3636:24: error: &#39;isInstanceOf&#39; is not a m=
ember of &#39;QStyleHelper&#39;<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if (QStyleHelper::isInstance=
Of(groupBox-&gt;styleObject, QAccessible::Grouping)) {<br>|=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^<br>| /home/develop=
er/oe/poky/build/tmp/work/core2-64-poky-linux/qtbase/5.5.1+gitAUTOINC+5afc4=
31323-r0/git/src/widgets/styles/qgtkstyle.cpp:3636:74: error: &#39;QAccessi=
ble&#39; has not been declared<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if (QStyleHelper::isInstance=
Of(groupBox-&gt;styleObject, QAccessible::Grouping)) {<br><br></div>Are the=
re some PACKAGECONFIGs or DISTRO_FEATURES that are not part of default Poky=
 that need to be enabled?<br><br></div>Thanks,<br><br></div>Michael Gloff<b=
r></div><a href=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emac=
inc.com</a><br></div>
</blockquote></div><br></div>

--001a11c2c79ea23f2f052b1fd080--
