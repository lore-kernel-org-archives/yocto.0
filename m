Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6B7FE00D77; Thu,  3 Sep 2015 09:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D53DE006F7
	for <yocto@yoctoproject.org>; Thu,  3 Sep 2015 09:48:41 -0700 (PDT)
Received: by lbbmp1 with SMTP id mp1so27987947lbb.1
	for <yocto@yoctoproject.org>; Thu, 03 Sep 2015 09:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vxqXWmvKaXV6g7KTRlYFdnR3JKqfK69bkPKuKAwuEVA=;
	b=t87N0zYaQWm39Ix+61tYYej71109W/X1/sBW8A0pj6Ea5CNEm8nT6DtT9/X32JTpy6
	mpcL23qIqoRhnkCF6MA88zxdABWqdCeGHMY1vDfI3Q4nEwt+AtQ+D+wK2rOXCXpfK6Xk
	lHbG9EyJoiW/D8mawttb+OoAnBV1qfELH07pPIAAKYsS4C2m1TPfyxLnzwq3QyCNjdDs
	45lHnlOuI7Cyxp9kQYmq5blqD3ILZX+vkca/TduB/OB7HGeyCZ5IhyQGDzU/q/q3zRbu
	XXAdZo3VJLRJZoEGx7pmii4XWnyn53QPYvMVHbY+mlSmM7M2z0fhyXM2/NfUMWRbdJs6
	tW7Q==
MIME-Version: 1.0
X-Received: by 10.152.23.38 with SMTP id j6mr22090426laf.47.1441298918981;
	Thu, 03 Sep 2015 09:48:38 -0700 (PDT)
Received: by 10.112.161.231 with HTTP; Thu, 3 Sep 2015 09:48:38 -0700 (PDT)
In-Reply-To: <20150902131817.GB2470@jama>
References: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
	<55E5B48B.7030309@siemens.com>
	<CAJqtCybvjh79geHsOcsvX_cvWnSL+1fCnB3scsAXS6azOj9Gwg@mail.gmail.com>
	<CAJqtCybfSCcTaqZ84LW6yK=mXS6q5nJQUjpQ6o+j2o=Mq4TNNg@mail.gmail.com>
	<20150901215732.GF2458@jama>
	<CAJqtCybHU52+xvFt95eZCfhYCCbp2zs_JjGiAsS6hT3=gQkGcA@mail.gmail.com>
	<20150902131817.GB2470@jama>
Date: Thu, 3 Sep 2015 13:48:38 -0300
Message-ID: <CAJqtCyZmZFA_sYi+eR-gcEXEfCUj3d9aJmdTGVutTwxzvxcmsA@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Thu, 03 Sep 2015 16:48:44 -0000
Content-Type: multipart/alternative; boundary=089e0160b6f014c530051eda8e14

--089e0160b6f014c530051eda8e14
Content-Type: text/plain; charset=UTF-8

Martin,
I tested with PACKAGECONFIG_pn-qtbase = " accessibility"  and after with
PACKAGECONFIG_append_pn-qtbase in the local.conf but the problem still the
same.


Collected errors:
 * satisfy_dependencies_for: Cannot satisfy the following dependencies for
packagegroup-qt5:
 *     qtquickcontrols-plugins *     qtquickcontrols *
 * opkg_install_cmd: Cannot install package packagegroup-qt5.

ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.18724

I'm trying to find what is missing or wrong.

Thank you very much!.

Regards

Caio Pereira

2015-09-02 10:18 GMT-03:00 Martin Jansa <martin.jansa@gmail.com>:

> On Wed, Sep 02, 2015 at 10:04:19AM -0300, Caio wrote:
> > I had the same dependency error.
> >
> > Collected errors:
> >  * satisfy_dependencies_for: Cannot satisfy the following dependencies
> for
> > packagegroup-qt5:
> >  *     qtquickcontrols-plugins *     qtquickcontrols *
> >  * opkg_install_cmd: Cannot install package packagegroup-qt5.
> >
> > ERROR: Function failed: do_rootfs
> > ERROR: Logfile of failure stored in:
> >
> /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.2872
> > ERROR: Task 7
> > (/home/icchw/fsl-community-bsp/sources/poky/meta/recipes-core/images/
> > core-image-minimal.bb, do_rootfs) failed with exit code '1'
>
> And fixing that by creating empty packages is the worst thing you can do..
>
> qtquickcontrols is probably empty because you didn't enable right
> PACKAGECONFIG options for qtbase (accessiblity), see README and
> qtbase_git.bb
>
> > Which option is better to add Qt5 packages? Create a package group or add
> > the packages in the Image recipe?
>
> It doesn't matter, packagegroup is better if you want to group all qt5
> related packages together and/or reuse the same packagegroup from
> various images.
>
> > 2015-09-01 18:57 GMT-03:00 Martin Jansa <martin.jansa@gmail.com>:
> >
> > > On Tue, Sep 01, 2015 at 06:05:58PM -0300, Caio wrote:
> > > > I created a bbappend for qtquickcontrol with ALLOW_EMPTY_${PN} = "1"
> to
> > > > fix. (Thanks Sergio Prado)
> > > >
> > > > #cat qtquickcontrol_%.bbappend
> > > > ALLOW_EMPTY_${PN} = "1"
> > >
> > > And what do you expect from empty package installed in your rootfs?
> > >
> > > If you need qtquickcontrol-plugins, then you should add
> > > qtquickcontrol-plugins to RDEPENDS, installing empty package is as good
> > > as not installing qtquickcontrol at all.
> > >
> > > > 2015-09-01 11:54 GMT-03:00 Caio <caiortp@gmail.com>:
> > > >
> > > > > Pascal,
> > > > >
> > > > > You're right, was my mistake.
> > > > > I updated the recipe to use RDEPENDS_${PN} , but now I'm having
> problem
> > > > > with dependence ( qtquickcontrols). I'm trying to fix.
> > > > >
> > > > >
> > > > > SUMMARY = "QT5  package group"
> > > > > LICENSE = "MIT"
> > > > >
> > > > > PR = "0"
> > > > >
> > > > > inherit packagegroup
> > > > >
> > > > > RDEPENDS_${PN} += " \
> > > > >     qtbase \
> > > > >     qtbase-plugins \
> > > > >     qtbase-fonts \
> > > > >     qtdeclarative \
> > > > >     qtdeclarative-plugins \
> > > > >     qtdeclarative-qmlplugins \
> > > > >     qtsvg \
> > > > >     qtsvg-plugins \
> > > > >     qtimageformats \
> > > > >     qtimageformats-plugins \
> > > > >     qtmultimedia \
> > > > >     qtmultimedia-plugins \
> > > > >     qtmultimedia-qmlplugins \
> > > > >     qtserialport \
> > > > >     qtscript \
> > > > >     qtgraphicaleffects-qmlplugins \
> > > > >     qtconnectivity-qmlplugins \
> > > > >     qtxmlpatterns \
> > > > >     qtquick1 \
> > > > >     qtquick1-plugins \
> > > > >     qtquick1-qmlplugins \
> > > > >     qtquickcontrols \
> > > > >     qtquickcontrols-qmlplugins \
> > > > >     qtgstreamer \
> > > > >     "
> > > > >
> > > > > Error:
> > > > >
> > > > > Configuring packagegroup-gstreamer.
> > > > > Configuring opkg-collateral.
> > > > > Configuring poky-feed-config-opkg.
> > > > > Configuring quitbattery.
> > > > > Configuring psplash.
> > > > > Collected errors:
> > > > >  * satisfy_dependencies_for: Cannot satisfy the following
> dependencies
> > > for
> > > > > packagegroup-qt5:
> > > > >  *     qtquickcontrols *
> > > > >  * opkg_install_cmd: Cannot install package packagegroup-qt5.
> > > > >
> > > > > ERROR: Function failed: do_rootfs
> > > > > ERROR: Logfile of failure stored in:
> > > > >
> > >
> /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.3458
> > > > > ERROR: Task 7
> > > > >
> (/home/icchw/fsl-community-bsp/sources/poky/meta/recipes-core/images/
> > > > > core-image-minimal.bb, do_rootfs) failed with exit code '1'
> > > > >
> > > > >
> > > > > Thank you very much,
> > > > >
> > > > > Regards,
> > > > >
> > > > > Caio Pereira
> > > > >
> > > > >
> > > > > 2015-09-01 11:22 GMT-03:00 Pascal Bach <pascal.bach@siemens.com>:
> > > > >
> > > > >> >
> > > > >> >
> > > > >> > my package group
> > > > >> >
> > > > >> > packagegroup-qt5_0.1.bb <http://packagegroup-qt5_0.1.bb>
> > > > >> >
> > > > >> > SUMMARY = "QT5  package group"
> > > > >> > LICENSE = "MIT"
> > > > >> >
> > > > >> > PR = "0"
> > > > >> >
> > > > >> > inherit packagegroup
> > > > >> >
> > > > >> > VIRTUAL_KEYBOARD ?= "maliit-framework-qt5 maliit-plugins-qt5"
> > > > >> >
> > > > >> I don't know if you can use IMAGE_INSTALL in a package group.
> > > > >> Unitl now I have only seen RDEPENDS_${PN} used. IMAGE_INSTALL is
> > > normaly
> > > > >> only used in images.
> > > > >>
> > > > >> > IMAGE_INSTALL+ = " \
> > > > >> >     dbus \
> > > > >> >     qtbase \
> > > > >> >     qtbase-plugins \
> > > > >> >     qtbase-fonts \
> > > > >> >     qtdeclarative \
> > > > >> >     qtdeclarative-plugins \
> > > > >> >     qtdeclarative-qmlplugins \
> > > > >> >     qtmultimedia \
> > > > >> >     qtmultimedia-plugins \
> > > > >> >     qtmultimedia-qmlplugins \
> > > > >> >     qtserialport \
> > > > >> >     qtscript \
> > > > >> >     qtgraphicaleffects-qmlplugins \
> > > > >> >     qtconnectivity-qmlplugins \
> > > > >> >     qtxmlpatterns \
> > > > >> >     qtquick1 \
> > > > >> >     qtquickcontrols \
> > > > >> >     qtquickcontrols-qmlplugins \
> > > > >> >     qtgstreamer \
> > > > >> >     qtsvg \
> > > > >> >     qtsvg-plugins \
> > > > >> >     qtimageformats \
> > > > >> >     qtimageformats-plugin \
> > > > >> >     "
> > > > >> >
> > > > >> > RDEPENDS_${PN}= "qtquickcontrols-qmlplugins
> qtdeclarative-qmlplugins
> > > > >> qtdeclarative-plugins"
> > > > >> >
> > > > >> >
> > > > >> Pascal
> > > > >>
> > > > >>
> > > > >
> > > > >
> > > > > --
> > > > > ----------------------------------------------
> > > > > Caio Pereira
> > > > >
> > > >
> > > >
> > > >
> > > > --
> > > > ----------------------------------------------
> > > > Caio Pereira
> > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
> > > --
> > > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> > >
> >
> >
> >
> > --
> > ----------------------------------------------
> > Caio Pereira
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>



-- 
----------------------------------------------
Caio Pereira

--089e0160b6f014c530051eda8e14
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Martin,<br></div><div>I tested with PACKAGECONFIG_pn-=
qtbase =3D &quot; accessibility&quot;=C2=A0 and after with PACKAGECONFIG_ap=
pend_pn-qtbase in the local.conf but the problem still the same.</div><div>=
<br></div><div></div><div></div><div><br>Collected errors:<br>=C2=A0* satis=
fy_dependencies_for: Cannot satisfy the following dependencies for packageg=
roup-qt5:<br>=C2=A0* =C2=A0=C2=A0=C2=A0 qtquickcontrols-plugins * =C2=A0=C2=
=A0=C2=A0 qtquickcontrols * <br>=C2=A0* opkg_install_cmd: Cannot install pa=
ckage packagegroup-qt5.<br><br>ERROR: Function failed: do_rootfs<br>ERROR: =
Logfile of failure stored in: /home/icchw/fsl-community-bsp/toradex_colibri=
_imx6/tmp/work/colibri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/te=
mp/log.do_rootfs.18724<br><br>I&#39;m trying to find what is missing or wro=
ng.<br><br>Thank you very much!.<br><br></div><div>Regards<br><br></div><di=
v>Caio Pereira<br></div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">2015-09-02 10:18 GMT-03:00 Martin Jansa <span dir=3D"ltr">&lt;=
<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gm=
ail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
On Wed, Sep 02, 2015 at 10:04:19AM -0300, Caio wrote:<br>
&gt; I had the same dependency error.<br>
&gt;<br>
&gt; Collected errors:<br>
&gt;=C2=A0 * satisfy_dependencies_for: Cannot satisfy the following depende=
ncies for<br>
&gt; packagegroup-qt5:<br>
&gt;=C2=A0 *=C2=A0 =C2=A0 =C2=A0qtquickcontrols-plugins *=C2=A0 =C2=A0 =C2=
=A0qtquickcontrols *<br>
&gt;=C2=A0 * opkg_install_cmd: Cannot install package packagegroup-qt5.<br>
&gt;<br>
&gt; ERROR: Function failed: do_rootfs<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colibri_im=
x6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.2872<br>
&gt; ERROR: Task 7<br>
</span><span class=3D"">&gt; (/home/icchw/fsl-community-bsp/sources/poky/me=
ta/recipes-core/images/<br>
&gt; <a href=3D"http://core-image-minimal.bb" rel=3D"noreferrer" target=3D"=
_blank">core-image-minimal.bb</a>, do_rootfs) failed with exit code &#39;1&=
#39;<br>
<br>
</span>And fixing that by creating empty packages is the worst thing you ca=
n do..<br>
<br>
qtquickcontrols is probably empty because you didn&#39;t enable right<br>
PACKAGECONFIG options for qtbase (accessiblity), see README and<br>
<a href=3D"http://qtbase_git.bb" rel=3D"noreferrer" target=3D"_blank">qtbas=
e_git.bb</a><br>
<span class=3D""><br>
&gt; Which option is better to add Qt5 packages? Create a package group or =
add<br>
&gt; the packages in the Image recipe?<br>
<br>
</span>It doesn&#39;t matter, packagegroup is better if you want to group a=
ll qt5<br>
related packages together and/or reuse the same packagegroup from<br>
various images.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; 2015-09-01 18:57 GMT-03:00 Martin Jansa &lt;<a href=3D"mailto:martin.j=
ansa@gmail.com">martin.jansa@gmail.com</a>&gt;:<br>
&gt;<br>
&gt; &gt; On Tue, Sep 01, 2015 at 06:05:58PM -0300, Caio wrote:<br>
&gt; &gt; &gt; I created a bbappend for qtquickcontrol with ALLOW_EMPTY_${P=
N} =3D &quot;1&quot; to<br>
&gt; &gt; &gt; fix. (Thanks Sergio Prado)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; #cat qtquickcontrol_%.bbappend<br>
&gt; &gt; &gt; ALLOW_EMPTY_${PN} =3D &quot;1&quot;<br>
&gt; &gt;<br>
&gt; &gt; And what do you expect from empty package installed in your rootf=
s?<br>
&gt; &gt;<br>
&gt; &gt; If you need qtquickcontrol-plugins, then you should add<br>
&gt; &gt; qtquickcontrol-plugins to RDEPENDS, installing empty package is a=
s good<br>
&gt; &gt; as not installing qtquickcontrol at all.<br>
&gt; &gt;<br>
&gt; &gt; &gt; 2015-09-01 11:54 GMT-03:00 Caio &lt;<a href=3D"mailto:caiort=
p@gmail.com">caiortp@gmail.com</a>&gt;:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Pascal,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; You&#39;re right, was my mistake.<br>
&gt; &gt; &gt; &gt; I updated the recipe to use RDEPENDS_${PN} , but now I&=
#39;m having problem<br>
&gt; &gt; &gt; &gt; with dependence ( qtquickcontrols). I&#39;m trying to f=
ix.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; SUMMARY =3D &quot;QT5=C2=A0 package group&quot;<br>
&gt; &gt; &gt; &gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; PR =3D &quot;0&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; inherit packagegroup<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; RDEPENDS_${PN} +=3D &quot; \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase-fonts \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtsvg \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtsvg-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtimageformats \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtimageformats-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtserialport \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtscript \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtgraphicaleffects-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtconnectivity-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtxmlpatterns \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquick1 \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquick1-plugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquick1-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols-qmlplugins \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0qtgstreamer \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Error:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Configuring packagegroup-gstreamer.<br>
&gt; &gt; &gt; &gt; Configuring opkg-collateral.<br>
&gt; &gt; &gt; &gt; Configuring poky-feed-config-opkg.<br>
&gt; &gt; &gt; &gt; Configuring quitbattery.<br>
&gt; &gt; &gt; &gt; Configuring psplash.<br>
&gt; &gt; &gt; &gt; Collected errors:<br>
&gt; &gt; &gt; &gt;=C2=A0 * satisfy_dependencies_for: Cannot satisfy the fo=
llowing dependencies<br>
&gt; &gt; for<br>
&gt; &gt; &gt; &gt; packagegroup-qt5:<br>
&gt; &gt; &gt; &gt;=C2=A0 *=C2=A0 =C2=A0 =C2=A0qtquickcontrols *<br>
&gt; &gt; &gt; &gt;=C2=A0 * opkg_install_cmd: Cannot install package packag=
egroup-qt5.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; ERROR: Function failed: do_rootfs<br>
&gt; &gt; &gt; &gt; ERROR: Logfile of failure stored in:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; /home/icchw/fsl-community-bsp/toradex_colibri_imx6/tmp/work/colib=
ri_imx6-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.345=
8<br>
&gt; &gt; &gt; &gt; ERROR: Task 7<br>
&gt; &gt; &gt; &gt; (/home/icchw/fsl-community-bsp/sources/poky/meta/recipe=
s-core/images/<br>
&gt; &gt; &gt; &gt; <a href=3D"http://core-image-minimal.bb" rel=3D"norefer=
rer" target=3D"_blank">core-image-minimal.bb</a>, do_rootfs) failed with ex=
it code &#39;1&#39;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Thank you very much,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Regards,<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Caio Pereira<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; 2015-09-01 11:22 GMT-03:00 Pascal Bach &lt;<a href=3D"m=
ailto:pascal.bach@siemens.com">pascal.bach@siemens.com</a>&gt;:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; my package group<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; <a href=3D"http://packagegroup-qt5_0.1.bb" rel=
=3D"noreferrer" target=3D"_blank">packagegroup-qt5_0.1.bb</a> &lt;<a href=
=3D"http://packagegroup-qt5_0.1.bb" rel=3D"noreferrer" target=3D"_blank">ht=
tp://packagegroup-qt5_0.1.bb</a>&gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; SUMMARY =3D &quot;QT5=C2=A0 package group&quot=
;<br>
&gt; &gt; &gt; &gt;&gt; &gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; PR =3D &quot;0&quot;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; inherit packagegroup<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; VIRTUAL_KEYBOARD ?=3D &quot;maliit-framework-q=
t5 maliit-plugins-qt5&quot;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; I don&#39;t know if you can use IMAGE_INSTALL in a =
package group.<br>
&gt; &gt; &gt; &gt;&gt; Unitl now I have only seen RDEPENDS_${PN} used. IMA=
GE_INSTALL is<br>
&gt; &gt; normaly<br>
&gt; &gt; &gt; &gt;&gt; only used in images.<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; IMAGE_INSTALL+ =3D &quot; \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0dbus \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase-plugins \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtbase-fonts \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-plugins \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtdeclarative-qmlplugins \<=
br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-plugins \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtmultimedia-qmlplugins \<b=
r>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtserialport \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtscript \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtgraphicaleffects-qmlplugi=
ns \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtconnectivity-qmlplugins \=
<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtxmlpatterns \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquick1 \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtquickcontrols-qmlplugins =
\<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtgstreamer \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtsvg \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtsvg-plugins \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtimageformats \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0qtimageformats-plugin \<br>
&gt; &gt; &gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt; RDEPENDS_${PN}=3D &quot;qtquickcontrols-qmlplu=
gins qtdeclarative-qmlplugins<br>
&gt; &gt; &gt; &gt;&gt; qtdeclarative-plugins&quot;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; &gt;<br>
&gt; &gt; &gt; &gt;&gt; Pascal<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; ----------------------------------------------<br>
&gt; &gt; &gt; &gt; Caio Pereira<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; ----------------------------------------------<br>
&gt; &gt; &gt; Caio Pereira<br>
&gt; &gt;<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; yocto mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a><br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" re=
l=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/=
yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D=
"mailto:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ----------------------------------------------<br>
&gt; Caio Pereira<br>
<br>
--<br>
Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mailto:Ma=
rtin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature">----------------------------------------------<br>Caio=
 Pereira</div>
</div>

--089e0160b6f014c530051eda8e14--
