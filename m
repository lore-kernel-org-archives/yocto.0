Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58DC8E01564
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 05:52:29 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so11187235veb.40
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 05:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=O01KmxoLHRwR9ur/ybhGfa5meC3VORzBaL13ezfsd0g=;
	b=QF1d+AsAOkVmL1iXbuMiwwK/5rHXHfg2IEGHhgRDrexwszyzgL7cYjjR+t+ziYfrHf
	2ir0OmfQ3CQvusLAcohd7IdQDTVNXBQABWrwau+gY65mIkELNspdm5TaZuEWqtEjIVuB
	9D0n9TCZr7jySG5Q4Ox4XbHZiclt5NBduyGff5OfEuL9HSlRMFX8ZK+zItDXP4a/QAPj
	m7W1BXUy+Z1u6j3usE1vXueoe8FPprjgLz6kKHlGbpymEciKq//PwCWBMNsOzHYmyW3y
	Vxg6ws1EEBbq3RebzGkXRDVH+MqCayabn0edXJVHCTXRsU+kRblUIAfItKoo+YTzfwUA
	dAqQ==
MIME-Version: 1.0
X-Received: by 10.220.70.212 with SMTP id e20mr1649779vcj.45.1372251149240;
	Wed, 26 Jun 2013 05:52:29 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Wed, 26 Jun 2013 05:52:29 -0700 (PDT)
In-Reply-To: <CA+AhUGxVY0GiS5TO0VHNVFcDjTiR8piJjCtA3dGZD2mzUfNWgw@mail.gmail.com>
References: <CAFMfyzLWjR6s7B_XYqU-5QJZTv3dMf0KeZgvGsfAPUisdiwXKg@mail.gmail.com>
	<2169568.OdCe6aKEne@helios>
	<CAFMfyz+y6yEJqQao26EJ3beQhjFZmv7DiJ_BA9EKrQKrGt5+RQ@mail.gmail.com>
	<7888643.66nBCjdCFc@helios>
	<CAFMfyz+axp0LwFE=KDG4thmcZ22R8hqYERsHOJbQou2HK_fq=g@mail.gmail.com>
	<CA+AhUGxVY0GiS5TO0VHNVFcDjTiR8piJjCtA3dGZD2mzUfNWgw@mail.gmail.com>
Date: Wed, 26 Jun 2013 14:52:29 +0200
Message-ID: <CAFMfyzJYMZRwupNo2_5xNjB21RR1V-0fZBnxd+Lmmb898NVX-w@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 26 Jun 2013 12:52:31 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8ef84b0d5f04e00e1e99

--047d7b3a8ef84b0d5f04e00e1e99
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes, I think something wrong happened to my eyes and now its  working ..

Cheers,
Satya


On Wed, Jun 26, 2013 at 1:16 PM, Erik Bot=F6 <erik.boto@pelagicore.com> wro=
te:

> On Wed, Jun 26, 2013 at 11:16 AM, DAMARLA Satya Swaroop
> <satyaswaroop.damarla@gmail.com> wrote:
> > Ok I did remove the stuff and I modified as you mentioned... I have two
> aims
> > here,
> >
> > 1. To start the bootstraper at the start of the boot, it means it has t=
o
> be
> > in every runlevel and I am successfull in that.
> >
> > 2. To install a /opt directory which I am faling at..
> >
> > I don't have any install errors but please tell me why the /opt
> directory no
> > more exists in the rootfs
> >
> > SUMMARY =3D "Bootstrapper from Skidata"
> > DESCRIPTION =3D "For the moment it just installs the .deb file"
> > LICENSE =3D "CLOSED"
> >
> > SRC_URI[md5sum] =3D "7835334732d1704765e52168994b09a6"
> > SRC_URI[sha256sum] =3D
> > "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"
> >
> >
> > SRC_URI =3D
> >
> "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.1=
4.deb"
> >
> > inherit bin_package pkgconfig update-rc.d
> >
> > INITSCRIPT_PACKAGES =3D "${PN}"
> > INITSCRIPT_NAME_${PN} =3D "bootstraploader"
> > INITSCRIPT_PARAMS_${PN} =3D "defaults 85"
> >
> > do_install() {
> >
> >  install -d ${D}${sysconfdir}/init.d/
> >  install -m 0755 ${WORKDIR}/etc/init.d/bootstraploader
> > ${D}${sysconfdir}/init.d/bootstraploader
> >
> >  install -d ${D}/opt/skidata/bootstraploader/
> >  echo -e ${D}
> >  for f in ${WORKDIR}/opt/skidata/bootstraploader/*.pm
> >  do
> >      install -m 0755 $f ${D}/opt/skidata/bootstraploader/
> >  done
> >
> >  for ff in ${WORKDIR}/opt/skidata/bootstraploader/*.sh
> >  do
> >      install -m 0755 ${ff} ${D}/opt/skidata/bootstraploader/
> >  done
> >
> >
> > }
> >
> > FILES_${PN} =3D "${base_libdir}/udev ${systemd_unitdir}"
> > FILES_${PN} +=3D "${sysconfdir}/init.d/bootstraploader"
> > FILES_${PN} +=3D "${D}/opt/skidata/bootstraploader/*.sh
> > ${D}/opt/skidata/bootstraploader/*.pm"
> >
> > Any reasons why its failing is deeply appreciated
>
> You still have ${D} in FILES_${PN}, so the files in /opt is not
> included in the package.
>
> Cheers,
> Erik Bot=F6
>
> >
> > Greets,
> > Satya
> >
> >
> > On Tue, Jun 25, 2013 at 5:16 PM, Paul Eggleton
> > <paul.eggleton@linux.intel.com> wrote:
> >>
> >> On Tuesday 25 June 2013 15:20:19 DAMARLA Satya Swaroop wrote:
> >> > I am trying to install .deb file and the recipe is as follows... may=
 I
> >> > ask
> >> > you what is the mistake that is not allowing it to build it into the
> >> > rootfilesystem....
> >> >
> >> > *UMMARY =3D "Bootstrapper from Skidata"*
> >> > *DESCRIPTION =3D "For the moment it just installs the .deb file"*
> >> > *LICENSE =3D "CLOSED"*
> >> > *
> >> > *
> >> > *SRC_URI[md5sum] =3D "7835334732d1704765e52168994b09a6"*
> >> > *SRC_URI[sha256sum] =3D
> >> > "11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740"*
> >> > *
> >> > *
> >> > *
> >> > *
> >> > *SRC_URI =3D
> >> >
> >> >
> "file:///home/damarla/openYocto/downloads/skidata-bootstraploader-1.0.0.1=
4.d
> >> > eb" *
> >> > *
> >> > *
> >> > *inherit bin_package*
> >> > *
> >> > *
> >> > *INITSCRIPT_PACKAGES =3D "${PN}-bsd"*
> >> > *INITSCRIPT_NAME_${PN}-bsp =3D "bootstraploader"*
> >> > *INITSCRIPT_PARAMS_${PN}-bsp =3D "defaults 90"*
> >>
> >> You have a mismatch here, "bsp" in the last two lines and "bsd"
> everywhere
> >> else.
> >>
> >> > *PACKAGES =3D+ "${PN} ${PN}-bsd"*
> >> > *
> >> > *
> >> > *FILES_${PN}-bsd =3D "${sysconfdir}/init.d/bootstraploader"*
> >> > *FILES_${PN} =3D "${D}/usr/skidata/bootstraploader/*.sh
> >> > ${D}/usr/skidata/bootstraploader/*.pm"*
> >>
> >> You should not include ${D} in FILES values. Because of the invalid pa=
th
> >> the
> >> desired files are not being picked up.
> >>
> >> The reason you're likely getting an error at do_rootfs is that because
> of
> >> the
> >> above, the package is empty and therefore is not produced, thus it can=
't
> >> be
> >> found when it comes to installing it into the image.
> >>
> >> Cheers,
> >> Paul
> >>
> >> --
> >>
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--047d7b3a8ef84b0d5f04e00e1e99
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, I think something wrong happened to my eyes and now i=
ts =A0working ..<div><br></div><div>Cheers,</div><div>Satya</div></div><div=
 class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jun 26, 2=
013 at 1:16 PM, Erik Bot=F6 <span dir=3D"ltr">&lt;<a href=3D"mailto:erik.bo=
to@pelagicore.com" target=3D"_blank">erik.boto@pelagicore.com</a>&gt;</span=
> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On W=
ed, Jun 26, 2013 at 11:16 AM, DAMARLA Satya Swaroop<br>
&lt;<a href=3D"mailto:satyaswaroop.damarla@gmail.com">satyaswaroop.damarla@=
gmail.com</a>&gt; wrote:<br>
&gt; Ok I did remove the stuff and I modified as you mentioned... I have tw=
o aims<br>
&gt; here,<br>
&gt;<br>
&gt; 1. To start the bootstraper at the start of the boot, it means it has =
to be<br>
&gt; in every runlevel and I am successfull in that.<br>
&gt;<br>
&gt; 2. To install a /opt directory which I am faling at..<br>
&gt;<br>
&gt; I don&#39;t have any install errors but please tell me why the /opt di=
rectory no<br>
&gt; more exists in the rootfs<br>
&gt;<br>
&gt; SUMMARY =3D &quot;Bootstrapper from Skidata&quot;<br>
&gt; DESCRIPTION =3D &quot;For the moment it just installs the .deb file&qu=
ot;<br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;7835334732d1704765e52168994b09a6&quot;<br>
&gt; SRC_URI[sha256sum] =3D<br>
&gt; &quot;11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2f3a0dc740=
&quot;<br>
&gt;<br>
&gt;<br>
&gt; SRC_URI =3D<br>
&gt; &quot;file:///home/damarla/openYocto/downloads/skidata-bootstraploader=
-1.0.0.14.deb&quot;<br>
&gt;<br>
&gt; inherit bin_package pkgconfig update-rc.d<br>
&gt;<br>
&gt; INITSCRIPT_PACKAGES =3D &quot;${PN}&quot;<br>
&gt; INITSCRIPT_NAME_${PN} =3D &quot;bootstraploader&quot;<br>
&gt; INITSCRIPT_PARAMS_${PN} =3D &quot;defaults 85&quot;<br>
&gt;<br>
&gt; do_install() {<br>
&gt;<br>
&gt; =A0install -d ${D}${sysconfdir}/init.d/<br>
&gt; =A0install -m 0755 ${WORKDIR}/etc/init.d/bootstraploader<br>
&gt; ${D}${sysconfdir}/init.d/bootstraploader<br>
&gt;<br>
&gt; =A0install -d ${D}/opt/skidata/bootstraploader/<br>
&gt; =A0echo -e ${D}<br>
&gt; =A0for f in ${WORKDIR}/opt/skidata/bootstraploader/*.pm<br>
&gt; =A0do<br>
&gt; =A0 =A0 =A0install -m 0755 $f ${D}/opt/skidata/bootstraploader/<br>
&gt; =A0done<br>
&gt;<br>
&gt; =A0for ff in ${WORKDIR}/opt/skidata/bootstraploader/*.sh<br>
&gt; =A0do<br>
&gt; =A0 =A0 =A0install -m 0755 ${ff} ${D}/opt/skidata/bootstraploader/<br>
&gt; =A0done<br>
&gt;<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt; FILES_${PN} =3D &quot;${base_libdir}/udev ${systemd_unitdir}&quot;<br>
&gt; FILES_${PN} +=3D &quot;${sysconfdir}/init.d/bootstraploader&quot;<br>
&gt; FILES_${PN} +=3D &quot;${D}/opt/skidata/bootstraploader/*.sh<br>
&gt; ${D}/opt/skidata/bootstraploader/*.pm&quot;<br>
&gt;<br>
&gt; Any reasons why its failing is deeply appreciated<br>
<br>
</div></div>You still have ${D} in FILES_${PN}, so the files in /opt is not=
<br>
included in the package.<br>
<br>
Cheers,<br>
Erik Bot=F6<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Greets,<br>
&gt; Satya<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Jun 25, 2013 at 5:16 PM, Paul Eggleton<br>
&gt; &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@lin=
ux.intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tuesday 25 June 2013 15:20:19 DAMARLA Satya Swaroop wrote:<br>
&gt;&gt; &gt; I am trying to install .deb file and the recipe is as follows=
... may I<br>
&gt;&gt; &gt; ask<br>
&gt;&gt; &gt; you what is the mistake that is not allowing it to build it i=
nto the<br>
&gt;&gt; &gt; rootfilesystem....<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; *UMMARY =3D &quot;Bootstrapper from Skidata&quot;*<br>
&gt;&gt; &gt; *DESCRIPTION =3D &quot;For the moment it just installs the .d=
eb file&quot;*<br>
&gt;&gt; &gt; *LICENSE =3D &quot;CLOSED&quot;*<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *SRC_URI[md5sum] =3D &quot;7835334732d1704765e52168994b09a6&q=
uot;*<br>
&gt;&gt; &gt; *SRC_URI[sha256sum] =3D<br>
&gt;&gt; &gt; &quot;11bda24a487da08ef6d3133cc0bf55862e6ae75891c7d08433341f2=
f3a0dc740&quot;*<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *SRC_URI =3D<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &quot;file:///home/damarla/openYocto/downloads/skidata-bootst=
raploader-1.0.0.14.d<br>
&gt;&gt; &gt; eb&quot; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *inherit bin_package*<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *INITSCRIPT_PACKAGES =3D &quot;${PN}-bsd&quot;*<br>
&gt;&gt; &gt; *INITSCRIPT_NAME_${PN}-bsp =3D &quot;bootstraploader&quot;*<b=
r>
&gt;&gt; &gt; *INITSCRIPT_PARAMS_${PN}-bsp =3D &quot;defaults 90&quot;*<br>
&gt;&gt;<br>
&gt;&gt; You have a mismatch here, &quot;bsp&quot; in the last two lines an=
d &quot;bsd&quot; everywhere<br>
&gt;&gt; else.<br>
&gt;&gt;<br>
&gt;&gt; &gt; *PACKAGES =3D+ &quot;${PN} ${PN}-bsd&quot;*<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *<br>
&gt;&gt; &gt; *FILES_${PN}-bsd =3D &quot;${sysconfdir}/init.d/bootstrapload=
er&quot;*<br>
&gt;&gt; &gt; *FILES_${PN} =3D &quot;${D}/usr/skidata/bootstraploader/*.sh<=
br>
&gt;&gt; &gt; ${D}/usr/skidata/bootstraploader/*.pm&quot;*<br>
&gt;&gt;<br>
&gt;&gt; You should not include ${D} in FILES values. Because of the invali=
d path<br>
&gt;&gt; the<br>
&gt;&gt; desired files are not being picked up.<br>
&gt;&gt;<br>
&gt;&gt; The reason you&#39;re likely getting an error at do_rootfs is that=
 because of<br>
&gt;&gt; the<br>
&gt;&gt; above, the package is empty and therefore is not produced, thus it=
 can&#39;t<br>
&gt;&gt; be<br>
&gt;&gt; found when it comes to installing it into the image.<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Paul<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt;<br>
&gt;&gt; Paul Eggleton<br>
&gt;&gt; Intel Open Source Technology Centre<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; __________________=
_____________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div></div></blockquote></div><br></div>

--047d7b3a8ef84b0d5f04e00e1e99--
