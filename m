Return-Path: <b.weissbach@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C024BE00B4C; Mon,  2 Jun 2014 00:05:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.weissbach[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38087E00A2F
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 00:05:11 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id a1so4550034wgh.15
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 00:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=QF9Fuf8otzcT0oBtRipBEFNrTPYpe1iK1XNtdc8LTDI=;
	b=FjGUpWhlk+KbYerR5iDtvJFw/lC4g+xJRSJY2OHBoIzyFxImch/iWQrkvvpPO0D/De
	7j2yq/A0b35hEJD7xKbjnB7nAicQdT1I2XOusYj4CqEk8+aAByoy1hV0mmOhyE9YO5zi
	o1a3n+jeXjrzGrId19wt9zsjueFWihXDz3fFM/xuYuIMNTQbrlxlcXmvLZt0Wd2KvaEO
	kjJ8cDNh0mcsUs1hb1HL2keDUOX1zQfYHGUms8qJAqfiXDfyqGFRebVJVfGBQvbpR3tU
	zLvDq7L0/vjh/wApyFn2kl5LR2qXJeMj065t3PvWUq9DlsVRv6Y/evv3RDZ6H9fWMiM6
	+2XA==
X-Received: by 10.180.185.100 with SMTP id fb4mr19599146wic.11.1401692710618; 
	Mon, 02 Jun 2014 00:05:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.129.74 with HTTP; Mon, 2 Jun 2014 00:04:50 -0700 (PDT)
In-Reply-To: <CAB=cyLZcLyGccCehBpA7vvvR2NaKPsKLKP1Snz=XGa29c92CYA@mail.gmail.com>
References: <CAJhyh6m8NuB0V=KOqCOscpDZm_m8X=OQGF4HAn39KR+Etjud8A@mail.gmail.com>
	<CAMCfZKGMAN3ZgKQa3s-yN2kOY5BJni-5yT9LbeD-TsK_sxz38g@mail.gmail.com>
	<CAJhyh6=rXfS8xH-X_zbQruwhULGJAi=fApbvBMqP2SXCRYT42g@mail.gmail.com>
	<CAB=cyLZcLyGccCehBpA7vvvR2NaKPsKLKP1Snz=XGa29c92CYA@mail.gmail.com>
From: =?UTF-8?Q?Bastian_Wei=C3=9Fbach?= <b.weissbach@gmail.com>
Date: Mon, 2 Jun 2014 09:04:50 +0200
Message-ID: <CAJhyh6=sCpmpXbdxz7iRLCJoTapktrezvnopDz_WqAAvA2rGYw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QT5 for gernericX86
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
X-List-Received-Date: Mon, 02 Jun 2014 07:05:15 -0000
Content-Type: multipart/alternative; boundary=001a11c23ff619cbd804fad504ba

--001a11c23ff619cbd804fad504ba
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

still no luck for this. My current configuration is:

IMAGE_INSTALL_append =3D " cinematicexperience "
DISTRO_FEATURES_append =3D " opengl "
DISTRO_FEATURES_remove =3D " x11 wayland "

Also I added a .bbappend to the qtbase package:

PACKAGECONFIG =3D " release dbus udev evdev widgets tools libs openssl jpeg
libpng zlib gles2 "

This seems to work for QT5. But I think mesa does not install any DRI
drivers into the image. The DRI drivers are build (because they are into
the deploy-rpms folder) but not installed.

Another question is:

Is it possible to build QT5 without X11 and wayland (so that QT only uses
egl)?

Best regards,




2014-05-27 11:47 GMT+02:00 Falk Niebuhr <niebuhrf@gmail.com>:

> Hi,
>
> I had build a little self made Qt App with poky for an ARM target and
> had the same issue. I'm not sure, but I think I added 'qtbase-plugins'
> to IMAGE_INSTALL_append.
> Perhaps you want to try this.
>
> Best regards
> Falk
>
>
> 2014-05-27 10:48 GMT+02:00 Bastian Wei=C3=9Fbach <b.weissbach@gmail.com>:
> > Hi,
> >
> > in the future I would like to use egl instead of x11. But for the momen=
t
> I
> > would be happy if I could get any results ;).
> >
> > This time I added those lines to my conf/local.conf:
> >
> > IMAGE_INSTALL_append =3D " cinematicexperience "
> > DISTRO_FEATURES_append =3D " x11 "
> >
> > then I build core-image-x11. The QT5 CinematicExperience still tells me
> that
> > xcb plugin is missing.
> >
> > Regards,
> >
> >
> >
> >
> >
> >
> >
> > 2014-05-22 22:45 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> >
> >> Bastian,
> >>
> >>
> >> On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=C3=9Fbach <
> b.weissbach@gmail.com>
> >> wrote:
> >>>
> >>> Hey Guys,
> >>>
> >>> I'm trying to build a Linux for a generic X86 system with QT5.
> >>>
> >>> I've tried to go the simple way. I cloned the nessesary layers
> >>> (meta-intel and meta-qt5). Then I selected  "intel-corei7-64" as
> MACHINE and
> >>> added cinematicexperience to my image. Then I build core-image-minima=
l.
> >>>
> >>> But when I try to start Qt5_CinematicExperience (on the target) it
> failed
> >>> because of the missing xcb plugin.
> >>>
> >>> Is there anything I missed?
> >>>
> >>> Thanks for your help!
> >>
> >>
> >> If you want to use qt5 with X11 you need to add DISTRO_FEATURES_append
> >> onto your local.conf
> >> But if tou want to use opengl or famebuffer take a look at PACKAGECONF=
IG
> >> options on:
> >>
> >> meta-qt5/recipes-qt/qt5/qtbase.inc
> >>
> >>
> >> I would recommend you to you core-image-x11 or core-image-base.
> >>
> >> Regards,
> >>
> >> --
> >> *dS
> >> Diego Sueiro
> >>
> >> Administrador do Embarcados
> >> www.embarcados.com.br
> >>
> >> /*long live rock 'n roll*/
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11c23ff619cbd804fad504ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>still no luck for this. My current =
configuration is:</div><div><br></div><div><div>IMAGE_INSTALL_append =3D &q=
uot; cinematicexperience &quot;</div><div>DISTRO_FEATURES_append =3D &quot;=
 opengl &quot;</div>

<div>DISTRO_FEATURES_remove =3D &quot; x11 wayland &quot;</div></div><div><=
br></div><div>Also I added a .bbappend to the qtbase package:=C2=A0</div><d=
iv><br></div><div>PACKAGECONFIG =3D &quot; release dbus udev evdev widgets =
tools libs openssl jpeg libpng zlib gles2 &quot;<br>

</div><div><br></div><div>This seems to work for QT5. But I think mesa does=
 not install any DRI drivers into the image. The DRI drivers are build (bec=
ause they are into the deploy-rpms folder) but not installed.=C2=A0</div><d=
iv>

<br></div><div>Another question is:</div><div><br></div><div>Is it possible=
 to build QT5 without X11 and wayland (so that QT only uses egl)?</div><div=
><br></div><div>Best regards,</div><div><br></div><div><br></div></div>

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">2014-05-27 11=
:47 GMT+02:00 Falk Niebuhr <span dir=3D"ltr">&lt;<a href=3D"mailto:niebuhrf=
@gmail.com" target=3D"_blank">niebuhrf@gmail.com</a>&gt;</span>:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">

Hi,<br>
<br>
I had build a little self made Qt App with poky for an ARM target and<br>
had the same issue. I&#39;m not sure, but I think I added &#39;qtbase-plugi=
ns&#39;<br>
to IMAGE_INSTALL_append.<br>
Perhaps you want to try this.<br>
<br>
Best regards<br>
Falk<br>
<br>
<br>
2014-05-27 10:48 GMT+02:00 Bastian Wei=C3=9Fbach &lt;<a href=3D"mailto:b.we=
issbach@gmail.com">b.weissbach@gmail.com</a>&gt;:<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt; Hi,<br>
&gt;<br>
&gt; in the future I would like to use egl instead of x11. But for the mome=
nt I<br>
&gt; would be happy if I could get any results ;).<br>
&gt;<br>
&gt; This time I added those lines to my conf/local.conf:<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot; cinematicexperience &quot;<br>
&gt; DISTRO_FEATURES_append =3D &quot; x11 &quot;<br>
&gt;<br>
&gt; then I build core-image-x11. The QT5 CinematicExperience still tells m=
e that<br>
&gt; xcb plugin is missing.<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2014-05-22 22:45 GMT+02:00 Diego Sueiro &lt;<a href=3D"mailto:diego.su=
eiro@gmail.com">diego.sueiro@gmail.com</a>&gt;:<br>
&gt;<br>
&gt;&gt; Bastian,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Thu, May 22, 2014 at 12:32 PM, Bastian Wei=C3=9Fbach &lt;<a hre=
f=3D"mailto:b.weissbach@gmail.com">b.weissbach@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hey Guys,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;m trying to build a Linux for a generic X86 system with =
QT5.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I&#39;ve tried to go the simple way. I cloned the nessesary la=
yers<br>
&gt;&gt;&gt; (meta-intel and meta-qt5). Then I selected =C2=A0&quot;intel-c=
orei7-64&quot; as MACHINE and<br>
&gt;&gt;&gt; added cinematicexperience to my image. Then I build core-image=
-minimal.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; But when I try to start Qt5_CinematicExperience (on the target=
) it failed<br>
&gt;&gt;&gt; because of the missing xcb plugin.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Is there anything I missed?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks for your help!<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; If you want to use qt5 with X11 you need to add DISTRO_FEATURES_ap=
pend<br>
&gt;&gt; onto your local.conf<br>
&gt;&gt; But if tou want to use opengl or famebuffer take a look at PACKAGE=
CONFIG<br>
&gt;&gt; options on:<br>
&gt;&gt;<br>
&gt;&gt; meta-qt5/recipes-qt/qt5/qtbase.inc<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I would recommend you to you core-image-x11 or core-image-base.<br=
>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; *dS<br>
&gt;&gt; Diego Sueiro<br>
&gt;&gt;<br>
&gt;&gt; Administrador do Embarcados<br>
&gt;&gt; <a href=3D"http://www.embarcados.com.br" target=3D"_blank">www.emb=
arcados.com.br</a><br>
&gt;&gt;<br>
&gt;&gt; /*long live rock &#39;n roll*/<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11c23ff619cbd804fad504ba--
