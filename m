Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E57CE01562
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 02:16:48 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id i3so10458586vbh.15
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 02:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6P3DKX6mAq6gPp7XFwa2m5cAXrBn6edXPioa5z8OgDE=;
	b=JaIPPVs/KaLHXDOBpyWnx1wAfZKggxyoq0LDBpT2eQxDgC3pI7OdA7eLwAY6+40a+8
	Ln1c6f9aKMwL/BFw+yUDh4mJL9ljUqGqf/Ywa37k7ROMg26PnCmG7dBTaU2m5utUkUpD
	vYJTIavsU4cKQAc9Z/fU8MY0mjHHCH3W9ACKfX7knhjKYB/NgkoIb2O+MkqsGaFQUoGl
	2I81YHE5Ylg2KQS3n/es80ysQKAHMAczECGb6Ivd+88y/SPn2Ba9oypCXxRwFg9fM1Dv
	rtY4HQrlN7lEP5kM4FV98Dy2UsMmPRgQvuSG2Cun0QX7CrCrvufkeQBaMRn53tA/lk+1
	Epng==
MIME-Version: 1.0
X-Received: by 10.52.163.139 with SMTP id yi11mr1138732vdb.96.1372238207780;
	Wed, 26 Jun 2013 02:16:47 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Wed, 26 Jun 2013 02:16:47 -0700 (PDT)
In-Reply-To: <7888643.66nBCjdCFc@helios>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
	<2169568.OdCe6aKEne@helios>
	<CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
	<7888643.66nBCjdCFc@helios>
Date: Wed, 26 Jun 2013 11:16:47 +0200
Message-ID: <CAFMfyz+axp0LwFE=KDG4thmcZ22R8hqYERsHOJbQou2HK_fq=g@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing .deb file in Build
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
X-List-Received-Date: Wed, 26 Jun 2013 09:16:49 -0000
Content-Type: multipart/alternative; boundary=001a11c2257eec0f3404e00b1a6f

--001a11c2257eec0f3404e00b1a6f
Content-Type: text/plain; charset=ISO-8859-1

Ok I did remove the stuff and I modified as you mentioned... I have two
aims here,

1. To start the bootstraper at the start of the boot, it means it has to be
in every runlevel and I am successfull in that.

2. To install a /opt directory which I am faling at..

I don't have any install errors but please tell me why the /opt directory
no more exists in the rootfs

S*UMMARY = "Bootstrapper from Skidata"*
*DESCRIPTION = "For the moment it just installs the .deb file"*
*LICENSE = "CLOSED"*
*
*
*SRC_URI[md5sum] = "7835334732d1704765e52168994b09a6"*
*SRC_URI[sha256sum] =
"11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
*
*
*
*
*SRC_URI =
"file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.14.deb"
*
*
*
*inherit bin_package pkgconfig update-rc.d*
*
*
*INITSCRIPT_PACKAGES = "${PN}"*
*INITSCRIPT_NAME_${PN} = "bootstraploader"*
*INITSCRIPT_PARAMS_${PN} = "defaults 85"*
*
*
*do_install() {*
*
*
* install -d ${D}${sysconfdir}/init.d/*
* install -m 0755 ${WORKDIR}/etc/init.d/bootstraploader
${D}${sysconfdir}/init.d/bootstraploader*
*
*
* install -d ${D}/opt/skidata/bootstraploader/*
* echo -e ${D}*
* for f in ${WORKDIR}/opt/skidata/bootstraploader/*.pm*
* do*
*     install -m 0755 $f ${D}/opt/skidata/bootstraploader/*
* done*
*
*
* for ff in ${WORKDIR}/opt/skidata/bootstraploader/*.sh*
* do*
*     install -m 0755 ${ff} ${D}/opt/skidata/bootstraploader/*
* done*


}
*
*
*FILES_${PN} = "${base_libdir}/udev ${systemd_unitdir}"*
*FILES_${PN} += "${sysconfdir}/init.d/bootstraploader"*
*FILES_${PN} += "${D}/opt/skidata/bootstraploader/*.sh
${D}/opt/skidata/bootstraploader/*.pm"*
*
*
Any reasons why its failing is deeply appreciated

Greets,
Satya


On Tue, Jun 25, 2013 at 5:16 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> On Tuesday 25 June 2013 15:20:19 DAMARLA Satya Swaroop wrote:
> > I am trying to install .deb file and the recipe is as follows... may I
> ask
> > you what is the mistake that is not allowing it to build it into the
> > rootfilesystem....
> >
> > *UMMARY = "Bootstrapper from Skidata"*
> > *DESCRIPTION = "For the moment it just installs the .deb file"*
> > *LICENSE = "CLOSED"*
> > *
> > *
> > *SRC_URI[md5sum] = "7835334732d1704765e52168994b09a6"*
> > *SRC_URI[sha256sum] =
> > "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
> > *
> > *
> > *
> > *
> > *SRC_URI =
> >
> "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.14.d
> > eb" *
> > *
> > *
> > *inherit bin_package*
> > *
> > *
> > *INITSCRIPT_PACKAGES = "${PN}-bsd"*
> > *INITSCRIPT_NAME_${PN}-bsp = "bootstraploader"*
> > *INITSCRIPT_PARAMS_${PN}-bsp = "defaults 90"*
>
> You have a mismatch here, "bsp" in the last two lines and "bsd" everywhere
> else.
>
> > *PACKAGES =+ "${PN} ${PN}-bsd"*
> > *
> > *
> > *FILES_${PN}-bsd = "${sysconfdir}/init.d/bootstraploader"*
> > *FILES_${PN} = "${D}/usr/skidata/bootstraploader/*.sh
> > ${D}/usr/skidata/bootstraploader/*.pm"*
>
> You should not include ${D} in FILES values. Because of the invalid path
> the
> desired files are not being picked up.
>
> The reason you're likely getting an error at do_rootfs is that because of
> the
> above, the package is empty and therefore is not produced, thus it can't be
> found when it comes to installing it into the image.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c2257eec0f3404e00b1a6f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok I did remove the stuff and I modified as you mentioned.=
.. I have two aims here,=A0<div><br></div><div>1. To start the bootstraper =
at the start of the boot, it means it has to be in every runlevel and I am =
successfull in that.</div>
<div><br></div><div>2. To install a /opt directory which I am faling at..=
=A0</div><div><br></div><div>I don&#39;t have any install errors but please=
 tell me why the /opt directory no more exists in the rootfs</div><div><br>
</div><div><div>S<i>UMMARY =3D &quot;Bootstrapper from Skidata&quot;</i></d=
iv><div><i>DESCRIPTION =3D &quot;For the moment it just installs the .deb f=
ile&quot;</i></div><div><i>LICENSE =3D &quot;CLOSED&quot;</i></div><div><i>=
<br>
</i></div><div><i>SRC_URI[md5sum] =3D &quot;7835334732d1704765e52168994b09a=
6&quot;</i></div><div><i>SRC_URI[sha256sum] =3D &quot;11bda24a487da08ef6d31=
33cc0bf55862e6ae75891c7d08433341f2f3a0dc740&quot;</i></div><div><i><br></i>=
</div>
<div><i><br></i></div><div><i>SRC_URI =3D &quot;file:///home/damarla/openYo=
cto/downloads/skidata-bootstraploader-1.0.0.14.deb&quot;</i></div><div><i><=
br></i></div><div><i>inherit bin_package pkgconfig update-rc.d</i></div><di=
v>
<i><br></i></div><div><i>INITSCRIPT_PACKAGES =3D &quot;${PN}&quot;</i></div=
><div><i>INITSCRIPT_NAME_${PN} =3D &quot;bootstraploader&quot;</i></div><di=
v><i>INITSCRIPT_PARAMS_${PN} =3D &quot;defaults 85&quot;</i></div><div><i><=
br>
</i></div><div><i>do_install() {</i></div><div><i><br></i></div><div><i>=A0=
install -d ${D}${sysconfdir}/init.d/</i></div><div><i>=A0install -m 0755 ${=
WORKDIR}/etc/init.d/bootstraploader ${D}${sysconfdir}/init.d/bootstraploade=
r</i></div>
<div><i><br></i></div><div><i>=A0install -d ${D}/opt/skidata/bootstraploade=
r/</i></div><div><i>=A0echo -e ${D}</i></div><div><i>=A0for f in ${WORKDIR}=
/opt/skidata/bootstraploader/*.pm</i></div><div><i>=A0do</i></div><div><i>=
=A0 =A0 =A0install -m 0755 $f ${D}/opt/skidata/bootstraploader/</i></div>
<div><i>=A0done</i></div><div><i><br></i></div><div><i>=A0for ff in ${WORKD=
IR}/opt/skidata/bootstraploader/*.sh</i></div><div><i>=A0do</i></div><div><=
i>=A0 =A0 =A0install -m 0755 ${ff} ${D}/opt/skidata/bootstraploader/</i></d=
iv><div>
<i>=A0done</i></div><div><br></div><div><br></div><div>}</div><div><i><br><=
/i></div><div><i>FILES_${PN} =3D &quot;${base_libdir}/udev ${systemd_unitdi=
r}&quot;</i></div><div><i>FILES_${PN} +=3D &quot;${sysconfdir}/init.d/boots=
traploader&quot;</i></div>
<div><i>FILES_${PN} +=3D &quot;${D}/opt/skidata/bootstraploader/*.sh ${D}/o=
pt/skidata/bootstraploader/*.pm&quot;</i></div></div><div><i><br></i></div>=
<div>Any reasons why its failing is deeply appreciated</div><div><br></div>
<div>Greets,</div><div>Satya</div></div><div class=3D"gmail_extra"><br><br>=
<div class=3D"gmail_quote">On Tue, Jun 25, 2013 at 5:16 PM, Paul Eggleton <=
span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" targe=
t=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Tuesday 25 June 2013 15=
:20:19 DAMARLA Satya Swaroop wrote:<br>
&gt; I am trying to install .deb file and the recipe is as follows... may I=
 ask<br>
&gt; you what is the mistake that is not allowing it to build it into the<b=
r>
&gt; rootfilesystem....<br>
&gt;<br>
</div>&gt; *UMMARY =3D &quot;Bootstrapper from Skidata&quot;*<br>
&gt; *DESCRIPTION =3D &quot;For the moment it just installs the .deb file&q=
uot;*<br>
&gt; *LICENSE =3D &quot;CLOSED&quot;*<br>
&gt; *<br>
&gt; *<br>
&gt; *SRC_URI[md5sum] =3D &quot;7835334732d1704765e52168994b09a6&quot;*<br>
&gt; *SRC_URI[sha256sum] =3D<br>
&gt; &quot;11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740=
&quot;*<br>
&gt; *<br>
&gt; *<br>
&gt; *<br>
&gt; *<br>
&gt; *SRC_URI =3D<br>
&gt; &quot;file:///home/damarla/openYocto/downloads/skidata-bootstraploader=
-1.0.0.14.d<br>
&gt; eb&quot; *<br>
&gt; *<br>
&gt; *<br>
&gt; *inherit bin_package*<br>
&gt; *<br>
&gt; *<br>
&gt; *INITSCRIPT_PACKAGES =3D &quot;${PN}-bsd&quot;*<br>
&gt; *INITSCRIPT_NAME_${PN}-bsp =3D &quot;bootstraploader&quot;*<br>
&gt; *INITSCRIPT_PARAMS_${PN}-bsp =3D &quot;defaults 90&quot;*<br>
<br>
You have a mismatch here, &quot;bsp&quot; in the last two lines and &quot;b=
sd&quot; everywhere<br>
else.<br>
<br>
&gt; *PACKAGES =3D+ &quot;${PN} ${PN}-bsd&quot;*<br>
&gt; *<br>
&gt; *<br>
&gt; *FILES_${PN}-bsd =3D &quot;${sysconfdir}/init.d/bootstraploader&quot;*=
<br>
&gt; *FILES_${PN} =3D &quot;${D}/usr/skidata/bootstraploader/*.sh<br>
&gt; ${D}/usr/skidata/bootstraploader/*.pm&quot;*<br>
<br>
You should not include ${D} in FILES values. Because of the invalid path th=
e<br>
desired files are not being picked up.<br>
<br>
The reason you&#39;re likely getting an error at do_rootfs is that because =
of the<br>
above, the package is empty and therefore is not produced, thus it can&#39;=
t be<br>
found when it comes to installing it into the image.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a11c2257eec0f3404e00b1a6f--
