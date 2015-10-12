Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE364E00B99; Mon, 12 Oct 2015 11:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3731E00AF6
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 11:06:53 -0700 (PDT)
Received: by iofl186 with SMTP id l186so76902385iof.2
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 11:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Tr1TWgWRQpkZeSsFVKutfz6wQ3zB2VwgA8Tiw1xy9V0=;
	b=QQ2o1h+MNX1zY5wnl8PS9vCUd6kyh9cN9rXnQk3myEfd+ffiHtuG87rcfJX8f/1RQv
	sq/Lv24bjuj+QjxW1TQCP6Fi7Ip6vDwPFnX1PKLu6ilUEymItH76xCB6LrGe+QacElNR
	bGqsA8MlPxjais+1Mvx1HnoRf8WM1IuiOUY4C+5FN7GdkzzK3O5RpkHzEu5bQ0ZIVaEZ
	Tpt9perzAIT5aDxNUzm/zrQE8tN8S3W3P9M/qhvuyC4BUl/K82hmySD+tmA3HFcxsqGb
	Tja0qZlV5+TkgT/F5LqQGHN4s6lFoQFDEu57KGsvbkhpCoLdzUlgbxjsg+wy2x72uwI0
	U5ig==
X-Received: by 10.107.40.201 with SMTP id o192mr28765364ioo.83.1444673212330; 
	Mon, 12 Oct 2015 11:06:52 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Mon, 12 Oct 2015 11:06:32 -0700 (PDT)
In-Reply-To: <DUB128-W14F5A73F31F2C4FA1E3DB798310@phx.gbl>
References: <DUB128-W3890E99CA3478F4E8A991D98310@phx.gbl>
	<DUB128-W14F5A73F31F2C4FA1E3DB798310@phx.gbl>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 12 Oct 2015 11:06:32 -0700
X-Google-Sender-Auth: 7KbqxhEovNUoK1ajCwqSlqnqspo
Message-ID: <CABcZANmyWji+iYZ8zoBBEbQ9c=t0xBUd0fgGXGE_1kU5i4xXJA@mail.gmail.com>
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: packages are compiled but not included in the final image
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
X-List-Received-Date: Mon, 12 Oct 2015 18:06:57 -0000
Content-Type: multipart/alternative; boundary=001a1141f410a3933e0521ec3177

--001a1141f410a3933e0521ec3177
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 10:08 AM, Thanassis Silis <djnass_18@hotmail.com>
wrote:

> From: djnass_18@hotmail.com
> To: yocto-bounces@yoctoproject.org
> Subject: [yocto] packages are compiled but not included in the final image
> Date: Mon, 12 Oct 2015 16:53:51 +0000
>
> Hi all,
> I am attempting to add a few executables that are not there by default in
> a "core-image-base" image.
>
> so my conf/local.conf looks like
>
> MACHINE ??= 'imx6qsabrelite'
> #after version 1.5, use
> #MACHINE ??= 'nitrogen6x'
>
> DISTRO ?= 'poky'
> PACKAGE_CLASSES ?= "package_rpm package_ipk package_deb"
>
> #dev see http://www.yoctoproject.org/docs/1.8/mega-manual/mega-manual.html
> EXTRA_IMAGE_FEATURES = " debug-tweaks "
> EXTRA_IMAGE_FEATURES += " package-management  "
> EXTRA_IMAGE_FEATURES += " ssh-server-openssh lmsensors "
>
> USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> PATCHRESOLVE = "noop"
> BB_DISKMON_DIRS = "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K"
> CONF_VERSION = "1"
>
> BB_NUMBER_THREADS = '2'
> PARALLEL_MAKE = '-j 2'
> ACCEPT_FSL_EULA = ""
>
>
> #webserver
> CORE_IMAGE_EXTRA_INSTALL += " apache2 php "
>
> CORE_IMAGE_EXTRA_INSTALL += " rrdtool bc screen ntp minicom  "
>
> The image has been created but I have the following problems.
>
> while ntpd has been installed on the image and works fine, the executable
> ntpdate is NOT there.
> bash is also missing from core-image-base . is that to be expected? Should
> I add it as a CORE_IMAGE_EXTRA_INSTALL or as an EXTRA_IMAGE_FEATURE ?
>

Yes, that's expected, busybox is used by default. Add bash yourself if you
want it, or use a different image.

For ntpdate, it's split out into its own package, so add 'ntpdate' to
CORE_IMAGE_EXTRA_INSTALL as well if you want that.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1141f410a3933e0521ec3177
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Oct 12, 2015 at 10:08 AM, Thanassis Silis <span dir=3D"ltr">&lt;<a =
href=3D"mailto:djnass_18@hotmail.com" target=3D"_blank">djnass_18@hotmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>From: <a hr=
ef=3D"mailto:djnass_18@hotmail.com" target=3D"_blank">djnass_18@hotmail.com=
</a><br>To: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_bl=
ank">yocto-bounces@yoctoproject.org</a><br>Subject: [yocto] packages are co=
mpiled but not included in the final image<br>Date: Mon, 12 Oct 2015 16:53:=
51 +0000<br><br>


<div dir=3D"ltr">


<div dir=3D"ltr">Hi all,<br>I am attempting to add a few executables that a=
re not there by default in a &quot;core-image-base&quot; image.<br><br>so m=
y conf/local.conf looks like<br><br><blockquote><font face=3D"Courier New,s=
ans-serif">MACHINE ??=3D &#39;imx6qsabrelite&#39;</font><font face=3D"Couri=
er New,sans-serif"><br></font><font face=3D"Courier New,sans-serif">#after =
version 1.5, use</font><font face=3D"Courier New,sans-serif"><br></font><fo=
nt face=3D"Courier New,sans-serif">#MACHINE ??=3D &#39;nitrogen6x&#39;</fon=
t><font face=3D"Courier New,sans-serif"><br></font><font face=3D"Courier Ne=
w,sans-serif"><br></font><font face=3D"Courier New,sans-serif">DISTRO ?=3D =
&#39;poky&#39;</font><font face=3D"Courier New,sans-serif"><br></font><font=
 face=3D"Courier New,sans-serif">PACKAGE_CLASSES ?=3D &quot;package_rpm pac=
kage_ipk package_deb&quot;</font><font face=3D"Courier New,sans-serif"><br>=
</font><font face=3D"Courier New,sans-serif"><br></font><font face=3D"Couri=
er New,sans-serif">#dev see <a href=3D"http://www.yoctoproject.org/docs/1.8=
/mega-manual/mega-manual.html" target=3D"_blank">http://www.yoctoproject.or=
g/docs/1.8/mega-manual/mega-manual.html</a></font><font face=3D"Courier New=
,sans-serif"><br></font><font face=3D"Courier New,sans-serif">EXTRA_IMAGE_F=
EATURES =3D &quot; debug-tweaks &quot;</font><font face=3D"Courier New,sans=
-serif"><br></font><font face=3D"Courier New,sans-serif">EXTRA_IMAGE_FEATUR=
ES +=3D &quot; package-management=C2=A0 &quot;</font><font face=3D"Courier =
New,sans-serif"><br></font><font face=3D"Courier New,sans-serif">EXTRA_IMAG=
E_FEATURES +=3D &quot; ssh-server-openssh </font><font face=3D"Courier New,=
sans-serif"><font face=3D"Courier New,sans-serif"><font face=3D"Courier New=
,sans-serif">lmsensors</font></font> &quot;</font><font face=3D"Courier New=
,sans-serif"><br></font><font face=3D"Courier New,sans-serif"><br></font><f=
ont face=3D"Courier New,sans-serif">USER_CLASSES ?=3D &quot;buildstats imag=
e-mklibs image-prelink&quot;</font><font face=3D"Courier New,sans-serif"><b=
r></font><font face=3D"Courier New,sans-serif">PATCHRESOLVE =3D &quot;noop&=
quot;</font><font face=3D"Courier New,sans-serif"><br></font><font face=3D"=
Courier New,sans-serif">BB_DISKMON_DIRS =3D &quot;\</font><font face=3D"Cou=
rier New,sans-serif"><br></font><font face=3D"Courier New,sans-serif">=C2=
=A0=C2=A0=C2=A0 STOPTASKS,${TMPDIR},1G,100K \</font><font face=3D"Courier N=
ew,sans-serif"><br></font><font face=3D"Courier New,sans-serif">=C2=A0=C2=
=A0=C2=A0 STOPTASKS,${DL_DIR},1G,100K \</font><font face=3D"Courier New,san=
s-serif"><br></font><font face=3D"Courier New,sans-serif">=C2=A0=C2=A0=C2=
=A0 STOPTASKS,${SSTATE_DIR},1G,100K \</font><font face=3D"Courier New,sans-=
serif"><br></font><font face=3D"Courier New,sans-serif">=C2=A0=C2=A0=C2=A0 =
ABORT,${TMPDIR},100M,1K \</font><font face=3D"Courier New,sans-serif"><br><=
/font><font face=3D"Courier New,sans-serif">=C2=A0=C2=A0=C2=A0 ABORT,${DL_D=
IR},100M,1K \</font><font face=3D"Courier New,sans-serif"><br></font><font =
face=3D"Courier New,sans-serif">=C2=A0=C2=A0=C2=A0 ABORT,${SSTATE_DIR},100M=
,1K&quot; </font><font face=3D"Courier New,sans-serif"><br></font><font fac=
e=3D"Courier New,sans-serif">CONF_VERSION =3D &quot;1&quot;</font><font fac=
e=3D"Courier New,sans-serif"><br></font><font face=3D"Courier New,sans-seri=
f"><br></font><font face=3D"Courier New,sans-serif">BB_NUMBER_THREADS =3D &=
#39;2&#39;</font><font face=3D"Courier New,sans-serif"><br></font><font fac=
e=3D"Courier New,sans-serif">PARALLEL_MAKE =3D &#39;-j 2&#39;</font><font f=
ace=3D"Courier New,sans-serif"><br></font><font face=3D"Courier New,sans-se=
rif">ACCEPT_FSL_EULA =3D &quot;&quot;</font><font face=3D"Courier New,sans-=
serif"><br></font><font face=3D"Courier New,sans-serif"><br></font><font fa=
ce=3D"Courier New,sans-serif"><br></font><font face=3D"Courier New,sans-ser=
if">#webserver</font><font face=3D"Courier New,sans-serif"><br></font><font=
 face=3D"Courier New,sans-serif">CORE_IMAGE_EXTRA_INSTALL +=3D &quot; apach=
e2 php &quot;</font><font face=3D"Courier New,sans-serif"><br></font><font =
face=3D"Courier New,sans-serif"><br></font><font face=3D"Courier New,sans-s=
erif">CORE_IMAGE_EXTRA_INSTALL +=3D &quot; rrdtool bc screen ntp minicom=C2=
=A0</font><font face=3D"Courier New,sans-serif"><font face=3D"Courier New,s=
ans-serif"> </font>&quot;</font><br><br></blockquote>The image has been cre=
ated but I have the following problems.<br><br>while ntpd has been installe=
d on the image and works fine, the executable ntpdate is NOT there.<br>bash=
 is also missing from core-image-base . is that to be expected? Should I ad=
d it as a CORE_IMAGE_EXTRA_INSTALL or as an EXTRA_IMAGE_FEATURE ?</div></di=
v></div></blockquote></div><br>Yes, that&#39;s expected, busybox is used by=
 default. Add bash yourself if you want it, or use a different image.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">For ntpdate=
, it&#39;s split out into its own package, so add &#39;ntpdate&#39; to CORE=
_IMAGE_EXTRA_INSTALL as well if you want that.<br>-- <br><div class=3D"gmai=
l_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software =
Engineer, Mentor Graphics</div>
</div></div>

--001a1141f410a3933e0521ec3177--
