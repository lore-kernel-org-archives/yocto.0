Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56E06E00DD7; Fri,  3 Jun 2016 10:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1435E00BFF
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 10:56:33 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id q184so8241296qkf.0
	for <yocto@yoctoproject.org>; Fri, 03 Jun 2016 10:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=T2a2V4d6iiTURvxQAMRXgUL5nDBJtlirFRA/pLLlNX0=;
	b=JMj7MbON+VyRvdhdW3yO4P5U8t719zA5OIOAvXqq1h7LEzt6kwSY4peuH7a+hXFuqZ
	iQ/RZ6JO6V1eJQGj3SwKXWGbyQqL2z24LH7cEkaSIuuxB5HVor7627y/WynUgChQRT5d
	VjkIcF/Zqv2s03HHyXrxHZY6+PL+Mwgp7V6jYP8otBim2Z1JRk1cal5Y6THC+PNKBQrG
	XWSW74frYJBvNuoUlSkmiU928hbH48hRYQx4vhpqDN7aObxiZTXzUYhHZAmrZNvxrZ0z
	gV2KAguNwm2diaQd5icb/79OgA/iVOBXu9SNLpDL2EcbunQy9jHG1lDxnPiijo4onNSX
	8MbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=T2a2V4d6iiTURvxQAMRXgUL5nDBJtlirFRA/pLLlNX0=;
	b=ICabe7DTfpkzmoRtSO60kFfWeG7BJ0GM4Q5WKzqbRQ7dgXCCS/C7uGuBok0TGl1SX8
	9D1RyyMV3WSOMozlQWTlzHPGXvxerXgsND0EvP6gcbZd6jfx2SSSuIaUroB9wjSIhQaV
	WXjL//XpNqrXmZEOQRPpATRc63DX0j2BlbQwELCLXRYecSnCtmSoDhPe4UNj1rVOJBLm
	g6LsRE3ao0w+pP691HaImvxNQhJFhzVsyGPv54zauf39+wdS7httsHxXKI9kjeqTJ6tB
	YWR2DX3asaaqLUQIGufv7cVrAXnTMJtJ+yiYVMAonq7ldCihhygMBJUTbkpTve8dwp4Y
	m/yA==
X-Gm-Message-State: ALyK8tKV+P/J/knwtpUx6eL2tfLdH8PxqILrlFt147VyvifgYZ+WpE+nCv4KjXtOWBHKMeFeGgy30hN4ZtP7rw==
X-Received: by 10.233.220.4 with SMTP id q4mr4375684qkf.145.1464976593042;
	Fri, 03 Jun 2016 10:56:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.49.35 with HTTP; Fri, 3 Jun 2016 10:56:32 -0700 (PDT)
In-Reply-To: <1726204.03aEvQFlgk@localhost.localdomain>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
	<1726204.03aEvQFlgk@localhost.localdomain>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Fri, 3 Jun 2016 20:56:32 +0300
Message-ID: <CAEeWubKEgaf0+KaVmkUycbqvNUJf69xYTAvhF7S0P2wwUqKvZA@mail.gmail.com>
To: Diego <diego.ml@zoho.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Fri, 03 Jun 2016 17:56:36 -0000
Content-Type: multipart/alternative; boundary=94eb2c0436b06eddae053463711b

--94eb2c0436b06eddae053463711b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I found that that=E2=80=99s an issue with rpm packages. I didn't expect the=
re might
be some issue with rpm. If you really don't care which package management
system to use, switch to deb:

PACKAGE_CLASSES =3D "package_deb"

On Fri, Jun 3, 2016 at 4:52 PM, Diego <diego.ml@zoho.com> wrote:

> Hi Oleksandr,
>
> In data mercoled=C3=AC 1 giugno 2016 21:57:32, Oleksandr Poznyak ha scrit=
to:
> > Here is the content of bbappend recipe for base-files recipe:
> >
> > FILESEXTRAPATHS_append :=3D "${THISDIR}/${PN}"
> >
> > SRC_URI +=3D "file://fstab-flash \
> >         file://fstab-regular \
> >         "
> >
> > PACKAGES +=3D " ${PN}-flash ${PN}-regular"
> > CONFFILES_${PN}-flash =3D "${CONFFILES_${PN}}"
> > CONFFILES_${PN}-regular =3D "${CONFFILES_${PN}}"
> >
> > pkg_preinst_${PN}-flash =3D "${pkg_preinst_${PN}}"
> > pkg_preinst_${PN}-regular =3D "${pkg_preinst_${PN}}"
> >
> > RREPLACES_${PN}-flash =3D "${PN}"
> > RPROVIDES_${PN}-flash =3D "${PN}"
> > RCONFLICTS_${PN}-flash =3D "${PN}"
> >
> > RREPLACES_${PN}-regular =3D "${PN}"
> > RPROVIDES_${PN}-regular =3D "${PN}"
> > RCONFLICTS_${PN}-regular =3D "${PN}"
> >
> > python populate_packages_prepend() {
> >     import shutil
> >
> >     packages =3D ("${PN}-flash", "${PN}-regular")
> >     for package in packages:
> >         # copy ${PN} content to packages
> >         shutil.copytree("${PKGD}", "${PKGDEST}/%s" % package,
> symlinks=3DTrue)
> > # replace fstab
> >         if package =3D=3D "${PN}-flash":
> >             shutil.copy("${WORKDIR}/fstab-flash",
> > "${PKGDEST}/${PN}-flash/etc/fstab")
> >         else:
> >             shutil.copy("${WORKDIR}/fstab-regular",
> > "${PKGDEST}/${PN}-regular/etc/fstab")
> > }
> >
> >
> > This will produce two separate packages that will replace base-files
> > package.
> > Moreover, this trick allows You to modify base-files package separately
> for
> > flash-OS and regular-OS
> >
>
> This is very useful, thank you. With this code I'm able to have two
> different
> fstab files under packages-split:
> ./packages-split/base-files-regular/etc/fstab
> ./packages-split/base-files-flash/etc/fstab
>
> Regardless of that though, the resulting rpm packages for
> "base-files-regular"
> and "base-files-flash" have the original fstab as in "base-files", which =
is
> different to both the fstabs in packages-split mentioned above.
>
> I'm looking at what might be causing this, but any idea is welcome.
>
> Thanks,
> Diego
>
>

--94eb2c0436b06eddae053463711b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I found that that=E2=80=99s an issue with rpm packages. I =
didn&#39;t expect there might be some issue with rpm. If you really don&#39=
;t care which package management system to use, switch to deb:<div><br></di=
v><div>PACKAGE_CLASSES =3D &quot;package_deb&quot;<br></div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 3, 2016 at 4:5=
2 PM, Diego <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.ml@zoho.com" targ=
et=3D"_blank">diego.ml@zoho.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Oleksandr,<br>
<div><div class=3D"h5"><br>
In data mercoled=C3=AC 1 giugno 2016 21:57:32, Oleksandr Poznyak ha scritto=
:<br>
&gt; Here is the content of bbappend recipe for base-files recipe:<br>
&gt;<br>
&gt; FILESEXTRAPATHS_append :=3D &quot;${THISDIR}/${PN}&quot;<br>
&gt;<br>
&gt; SRC_URI +=3D &quot;file://fstab-flash \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://fstab-regular \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
&gt;<br>
&gt; PACKAGES +=3D &quot; ${PN}-flash ${PN}-regular&quot;<br>
&gt; CONFFILES_${PN}-flash =3D &quot;${CONFFILES_${PN}}&quot;<br>
&gt; CONFFILES_${PN}-regular =3D &quot;${CONFFILES_${PN}}&quot;<br>
&gt;<br>
&gt; pkg_preinst_${PN}-flash =3D &quot;${pkg_preinst_${PN}}&quot;<br>
&gt; pkg_preinst_${PN}-regular =3D &quot;${pkg_preinst_${PN}}&quot;<br>
&gt;<br>
&gt; RREPLACES_${PN}-flash =3D &quot;${PN}&quot;<br>
&gt; RPROVIDES_${PN}-flash =3D &quot;${PN}&quot;<br>
&gt; RCONFLICTS_${PN}-flash =3D &quot;${PN}&quot;<br>
&gt;<br>
&gt; RREPLACES_${PN}-regular =3D &quot;${PN}&quot;<br>
&gt; RPROVIDES_${PN}-regular =3D &quot;${PN}&quot;<br>
&gt; RCONFLICTS_${PN}-regular =3D &quot;${PN}&quot;<br>
&gt;<br>
&gt; python populate_packages_prepend() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0import shutil<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0packages =3D (&quot;${PN}-flash&quot;, &quot;${PN}-=
regular&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0for package in packages:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# copy ${PN} content to packages<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shutil.copytree(&quot;${PKGD}&quot;, =
&quot;${PKGDEST}/%s&quot; % package, symlinks=3DTrue)<br>
&gt; # replace fstab<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if package =3D=3D &quot;${PN}-flash&q=
uot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shutil.copy(&quot;${WOR=
KDIR}/fstab-flash&quot;,<br>
&gt; &quot;${PKGDEST}/${PN}-flash/etc/fstab&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0shutil.copy(&quot;${WOR=
KDIR}/fstab-regular&quot;,<br>
&gt; &quot;${PKGDEST}/${PN}-regular/etc/fstab&quot;)<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; This will produce two separate packages that will replace base-files<b=
r>
&gt; package.<br>
&gt; Moreover, this trick allows You to modify base-files package separatel=
y for<br>
&gt; flash-OS and regular-OS<br>
&gt;<br>
<br>
</div></div>This is very useful, thank you. With this code I&#39;m able to =
have two different<br>
fstab files under packages-split:<br>
./packages-split/base-files-regular/etc/fstab<br>
./packages-split/base-files-flash/etc/fstab<br>
<br>
Regardless of that though, the resulting rpm packages for &quot;base-files-=
regular&quot;<br>
and &quot;base-files-flash&quot; have the original fstab as in &quot;base-f=
iles&quot;, which is<br>
different to both the fstabs in packages-split mentioned above.<br>
<br>
I&#39;m looking at what might be causing this, but any idea is welcome.<br>
<br>
Thanks,<br>
Diego<br>
<br>
</blockquote></div><br></div>

--94eb2c0436b06eddae053463711b--
