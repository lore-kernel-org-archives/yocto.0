Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3481BE00D90; Tue,  1 Sep 2015 07:54:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B07E006D5
	for <yocto@yoctoproject.org>; Tue,  1 Sep 2015 07:54:51 -0700 (PDT)
Received: by lamp12 with SMTP id p12so1565288lam.0
	for <yocto@yoctoproject.org>; Tue, 01 Sep 2015 07:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=e7J2mzEKF20M5B9dYsUZ5q/uDPccEfHin2MHfnQRd9s=;
	b=gR3YkES2u8Tgy9j5CFTAtFzj7d60rPM0D4VGdIzt2wWIFNI9TYfarYgl1ptbhqBLnm
	FKn5TwvCjxijelc0BfV7cvfXQya98Wd1EcmApv8wL6TfxKBYc37JEWmz9tsUGK2Lp5RF
	fPUmETpmtoFEA9tYNJ1FBgeKqNf4ikEorE6tKt/yH/h+gDz39V7NQd6kb+U0FlGJkW1Y
	w4AavUT3UF392DILRHci8y/1OmtwHgFHV4Otnr8G78vmUNzDG4VKxbHe7GMV8CN4WmG9
	oI/cz7yoD0xkeJbyf9v/OtmZKUxX/hgWVQGacf+dnhIiXuZo1vllfP/uKJe0Frx3oN8U
	tJJw==
MIME-Version: 1.0
X-Received: by 10.152.170.130 with SMTP id am2mr13263426lac.54.1441119289095; 
	Tue, 01 Sep 2015 07:54:49 -0700 (PDT)
Received: by 10.112.161.231 with HTTP; Tue, 1 Sep 2015 07:54:48 -0700 (PDT)
In-Reply-To: <55E5B48B.7030309@siemens.com>
References: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
	<55E5B48B.7030309@siemens.com>
Date: Tue, 1 Sep 2015 11:54:48 -0300
Message-ID: <CAJqtCybvjh79geHsOcsvX_cvWnSL+1fCnB3scsAXS6azOj9Gwg@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Pascal Bach <pascal.bach@siemens.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [meta-qt5] Missing qt5declarative rootfs
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
X-List-Received-Date: Tue, 01 Sep 2015 14:54:53 -0000
Content-Type: multipart/alternative; boundary=089e011615684e3df2051eb0bb43

--089e011615684e3df2051eb0bb43
Content-Type: text/plain; charset=UTF-8

Pascal,

You're right, was my mistake.
I updated the recipe to use RDEPENDS_${PN} , but now I'm having problem
with dependence ( qtquickcontrols). I'm trying to fix.


SUMMARY = "QT5  package group"
LICENSE = "MIT"

PR = "0"

inherit packagegroup

RDEPENDS_${PN} += " \
    qtbase \
    qtbase-plugins \
    qtbase-fonts \
    qtdeclarative \
    qtdeclarative-plugins \
    qtdeclarative-qmlplugins \
    qtsvg \
    qtsvg-plugins \
    qtimageformats \
    qtimageformats-plugins \
    qtmultimedia \
    qtmultimedia-plugins \
    qtmultimedia-qmlplugins \
    qtserialport \
    qtscript \
    qtgraphicaleffects-qmlplugins \
    qtconnectivity-qmlplugins \
    qtxmlpatterns \
    qtquick1 \
    qtquick1-plugins \
    qtquick1-qmlplugins \
    qtquickcontrols \
    qtquickcontrols-qmlplugins \
    qtgstreamer \
    "

Error:

Configuring packagegroup-gstreamer.
Configuring opkg-collateral.
Configuring poky-feed-config-opkg.
Configuring quitbattery.
Configuring psplash.
Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for
packagegroup-qt5:
 *     qtquickcontrols *
 * opkg_install_cmd: Cannot install package packagegroup-qt5.

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.3458
ERROR: Task 7
(/home/icchw/fsl-community-bsp/sources/poky/meta/recipes-core/images/
core-image-minimal.bb, do_rootfs) failed with exit code '1'


Thank you very much,

Regards,

Caio Pereira


2015-09-01 11:22 GMT-03:00 Pascal Bach <pascal.bach@siemens.com>:

> >
> >
> > my package group
> >
> > packagegroup-qt5_0.1.bb <http://packagegroup-qt5_0.1.bb>
> >
> > SUMMARY = "QT5  package group"
> > LICENSE = "MIT"
> >
> > PR = "0"
> >
> > inherit packagegroup
> >
> > VIRTUAL_KEYBOARD ?= "maliit-framework-qt5 maliit-plugins-qt5"
> >
> I don't know if you can use IMAGE_INSTALL in a package group.
> Unitl now I have only seen RDEPENDS_${PN} used. IMAGE_INSTALL is normaly
> only used in images.
>
> > IMAGE_INSTALL+ = " \
> >     dbus \
> >     qtbase \
> >     qtbase-plugins \
> >     qtbase-fonts \
> >     qtdeclarative \
> >     qtdeclarative-plugins \
> >     qtdeclarative-qmlplugins \
> >     qtmultimedia \
> >     qtmultimedia-plugins \
> >     qtmultimedia-qmlplugins \
> >     qtserialport \
> >     qtscript \
> >     qtgraphicaleffects-qmlplugins \
> >     qtconnectivity-qmlplugins \
> >     qtxmlpatterns \
> >     qtquick1 \
> >     qtquickcontrols \
> >     qtquickcontrols-qmlplugins \
> >     qtgstreamer \
> >     qtsvg \
> >     qtsvg-plugins \
> >     qtimageformats \
> >     qtimageformats-plugin \
> >     "
> >
> > RDEPENDS_${PN}= "qtquickcontrols-qmlplugins qtdeclarative-qmlplugins
> qtdeclarative-plugins"
> >
> >
> Pascal
>
>


-- 
----------------------------------------------
Caio Pereira

--089e011615684e3df2051eb0bb43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Pascal,<br><br></div>You&#39;re right, was my mi=
stake.<br>I updated the recipe to use RDEPENDS_${PN} , but now I&#39;m havi=
ng problem with dependence ( qtquickcontrols). I&#39;m trying to fix.<br><b=
r></div><div><br>SUMMARY =3D &quot;QT5=C2=A0 package group&quot;<span><br>L=
ICENSE =3D &quot;MIT&quot;<br><br>PR =3D &quot;0&quot;<br><br>inherit packa=
gegroup<br><br></span>RDEPENDS_${PN} +=3D &quot; \<span><br>=C2=A0=C2=A0=C2=
=A0 qtbase \<br>=C2=A0=C2=A0=C2=A0 qtbase-plugins \<br>=C2=A0=C2=A0=C2=A0 q=
tbase-fonts \<br>=C2=A0=C2=A0=C2=A0 qtdeclarative \<br>=C2=A0=C2=A0=C2=A0 q=
tdeclarative-plugins \<br>=C2=A0=C2=A0=C2=A0 qtdeclarative-qmlplugins \<br>=
</span>=C2=A0=C2=A0=C2=A0 qtsvg \<br>=C2=A0=C2=A0=C2=A0 qtsvg-plugins \<br>=
=C2=A0=C2=A0=C2=A0 qtimageformats \<br>=C2=A0=C2=A0=C2=A0 qtimageformats-pl=
ugins \<span><br>=C2=A0=C2=A0=C2=A0 qtmultimedia \<br>=C2=A0=C2=A0=C2=A0 qt=
multimedia-plugins \<br>=C2=A0=C2=A0=C2=A0 qtmultimedia-qmlplugins \<br>=C2=
=A0=C2=A0=C2=A0 qtserialport \<br>=C2=A0=C2=A0=C2=A0 qtscript \<br>=C2=A0=
=C2=A0=C2=A0 qtgraphicaleffects-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qtconnec=
tivity-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qtxmlpatterns \<br>=C2=A0=C2=A0=
=C2=A0 qtquick1 \<br></span>=C2=A0=C2=A0=C2=A0 qtquick1-plugins \<br>=C2=A0=
=C2=A0=C2=A0 qtquick1-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qtquickcontrols \<=
br>=C2=A0=C2=A0=C2=A0 qtquickcontrols-qmlplugins \<br>=C2=A0=C2=A0=C2=A0 qt=
gstreamer \<br>=C2=A0=C2=A0=C2=A0 &quot;<br><br>Error:<br><br>Configuring p=
ackagegroup-gstreamer.<br>Configuring opkg-collateral.<br>Configuring poky-=
feed-config-opkg.<br>Configuring quitbattery.<br>Configuring psplash.<br>Co=
llected errors:<br>=C2=A0* satisfy_dependencies_for: Cannot satisfy the fol=
lowing dependencies for packagegroup-qt5:<br>=C2=A0* =C2=A0=C2=A0=C2=A0 qtq=
uickcontrols * <br>=C2=A0* opkg_install_cmd: Cannot install package package=
group-qt5.<br><br>ERROR: Function failed: do_rootfs<br>ERROR: Logfile of fa=
ilure stored in: /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/wor=
k/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_roo=
tfs.3458<br>ERROR: Task 7 (/home/icchw/fsl-community-bsp/sources/poky/meta/=
recipes-core/images/<a href=3D"http://core-image-minimal.bb">core-image-min=
imal.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br><br><br></div>=
<div>Thank you very much,<br><br></div><div>Regards,<br><br></div><div>Caio=
 Pereira<br></div><div><br></div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">2015-09-01 11:22 GMT-03:00 Pascal Bach <span dir=3D"l=
tr">&lt;<a href=3D"mailto:pascal.bach@siemens.com" target=3D"_blank">pascal=
.bach@siemens.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt;<br=
>
&gt;<br>
&gt; my package group<br>
&gt;<br>
&gt; <a href=3D"http://packagegroup-qt5_0.1.bb" rel=3D"noreferrer" target=
=3D"_blank">packagegroup-qt5_0.1.bb</a> &lt;<a href=3D"http://packagegroup-=
qt5_0.1.bb" rel=3D"noreferrer" target=3D"_blank">http://packagegroup-qt5_0.=
1.bb</a>&gt;<br>
<span class=3D"">&gt;<br>
&gt; SUMMARY =3D &quot;QT5=C2=A0 package group&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt;<br>
&gt; PR =3D &quot;0&quot;<br>
&gt;<br>
&gt; inherit packagegroup<br>
&gt;<br>
&gt; VIRTUAL_KEYBOARD ?=3D &quot;maliit-framework-qt5 maliit-plugins-qt5&qu=
ot;<br>
&gt;<br>
</span>I don&#39;t know if you can use IMAGE_INSTALL in a package group.<br=
>
Unitl now I have only seen RDEPENDS_${PN} used. IMAGE_INSTALL is normaly on=
ly used in images.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; IMAGE_INSTALL+ =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0dbus \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtbase \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtbase-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtbase-fonts \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtserialport \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtscript \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtgraphicaleffects-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtconnectivity-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtxmlpatterns \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtquick1 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtgstreamer \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtsvg \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtsvg-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtimageformats \<br>
&gt;=C2=A0 =C2=A0 =C2=A0qtimageformats-plugin \<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;<br>
&gt; RDEPENDS_${PN}=3D &quot;qtquickcontrols-qmlplugins qtdeclarative-qmlpl=
ugins qtdeclarative-plugins&quot;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">Pascal<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature">----------------------------------------------<br>Cai=
o Pereira</div>
</div>

--089e011615684e3df2051eb0bb43--
