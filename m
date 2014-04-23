Return-Path: <sujith.h@gmail.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98900E00480
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 22:59:40 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id x3so475850qcv.26
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 22:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=l6S2+Zp+sBDjXmEN+y7I4THWHGu5POQ/A4+yWzC01zQ=;
	b=sb8oxLbh/t4I+fPZ6fPLjo8ijKqnbhhpypqGH531lYNl2HgDFP/QQHF0127SgnUUXm
	jc0Sk6cs3GZO4QBJl3v1XkdhA35CtU+yleCy+aHtJFlYKdve3HZBsduJGipSpmBDcOMx
	SkIA7mDjMbRcyJKy+us2LpZKolYN9GlE374Ves7pWvNwn5kX5cnRfsmPEbnkHeUr2Pfm
	V/E8Z9OqsN7lqX9aeTdHpJsXkUORd6FRvUWVlzAtaciqAaRqGEHiI/DEl74SbozmldtJ
	AU44+hpY8eEHA1NoNFpHnXNqW+U0uC0jiAXW0Yolmzl9l/tJmKyWCHCXIrSucQQBRGVh
	tkBw==
X-Received: by 10.140.81.197 with SMTP id f63mr8392399qgd.114.1398232779192;
	Tue, 22 Apr 2014 22:59:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.231 with HTTP; Tue, 22 Apr 2014 22:59:19 -0700 (PDT)
In-Reply-To: <CAMKF1sqxhAVj1i6t7OTEv76a64Ov-LoHtED_pq5ufkxb-Ci3bQ@mail.gmail.com>
References: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
	<CAMKF1sqxhAVj1i6t7OTEv76a64Ov-LoHtED_pq5ufkxb-Ci3bQ@mail.gmail.com>
From: sujith h <sujith.h@gmail.com>
Date: Wed, 23 Apr 2014 11:29:19 +0530
Message-ID: <CADyYWL==UjRm5hGTaSaBj8NJLYELBgaA_0t0_sA-hMrzsfrcdw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] weston: Add weston.ini config file
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
X-List-Received-Date: Wed, 23 Apr 2014 05:59:42 -0000
Content-Type: multipart/alternative; boundary=001a11c129be1dfe2804f7af70ff

--001a11c129be1dfe2804f7af70ff
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,


On Wed, Apr 23, 2014 at 9:04 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Apr 16, 2014 at 1:12 AM, Sujith H <sujith.h@gmail.com> wrote:
> > Adding weston.ini to $ROOT_HOME/.config. With this change
> > user can login to $ROOT_HOME and launch weston with ivi-shell.
>
> what if I am not root ? IOW is there more systemwide way of doing it ?
>

I couldn't find any other login variable( like $ROOT_HOME) in bitbake.conf.
I agree that if we can do it in a more systemwide
way then it would be a clean solution. Any pointers to look at?


> >
> > Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
> > ---
> >  recipes-graphics/wayland/weston_1.4.0.bbappend | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend
> b/recipes-graphics/wayland/weston_1.4.0.bbappend
> > index 7a8ba6f..a2713d6 100644
> > --- a/recipes-graphics/wayland/weston_1.4.0.bbappend
> > +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
> > @@ -12,3 +12,16 @@ PR =3D "r1"
> >
> >  FILES_${PN} +=3D "${libdir}/weston/*"
> >  FILES_${PN}-dbg +=3D "${libdir}/weston/.debug/*"
> > +
> > +do_install_append() {
> > +   install -d ${D}${ROOT_HOME}/.config
> > +   install -m 0644 ${S}/ivi-shell/weston.ini.in${D}${ROOT_HOME}/.confi=
g/weston.ini
> > +   sed -i -e  's/hmi-controller.so/hmi-controller.so,
> ivi-controller.so/' ${D}${ROOT_HOME}/.config/weston.ini
> > +   sed -i -e 's|\@libexecdir\@|${libexecdir}|'
> ${D}${ROOT_HOME}/.config/weston.ini
> > +   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|'
> ${D}${ROOT_HOME}/.config/weston.ini
> > +   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|'
> ${D}${ROOT_HOME}/.config/weston.ini
> > +}
> > +
> > +PACKAGES +=3D "${PN}-ini"
> > +
> > +FILES_${PN}-ini =3D "${ROOT_HOME}/.config"
> > --
> > 1.8.4
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>



--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--001a11c129be1dfe2804f7af70ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem Raj,<br><div><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">On Wed, Apr 23, 2014 at 9:04 AM, Khem Raj <span di=
r=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.k=
hem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Wed, Apr 16, 2014 at 1:12=
 AM, Sujith H &lt;<a href=3D"mailto:sujith.h@gmail.com">sujith.h@gmail.com<=
/a>&gt; wrote:<br>


&gt; Adding weston.ini to $ROOT_HOME/.config. With this change<br>
&gt; user can login to $ROOT_HOME and launch weston with ivi-shell.<br>
<br>
</div>what if I am not root ? IOW is there more systemwide way of doing it =
?<br></blockquote><div><br></div><div>I couldn&#39;t find any other login v=
ariable( like $ROOT_HOME) in bitbake.conf. I agree that if we can do it in =
a more systemwide<br>

way then it would be a clean solution. Any pointers to look at?<br><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.=
com">Sujith_Haridasan@mentor.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0recipes-graphics/wayland/weston_1.4.0.bbappend | 13 ++++++++++++=
+<br>
&gt; =C2=A01 file changed, 13 insertions(+)<br>
&gt;<br>
&gt; diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-=
graphics/wayland/weston_1.4.0.bbappend<br>
&gt; index 7a8ba6f..a2713d6 100644<br>
&gt; --- a/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
&gt; +++ b/recipes-graphics/wayland/weston_1.4.0.bbappend<br>
&gt; @@ -12,3 +12,16 @@ PR =3D &quot;r1&quot;<br>
&gt;<br>
&gt; =C2=A0FILES_${PN} +=3D &quot;${libdir}/weston/*&quot;<br>
&gt; =C2=A0FILES_${PN}-dbg +=3D &quot;${libdir}/weston/.debug/*&quot;<br>
&gt; +<br>
&gt; +do_install_append() {<br>
&gt; + =C2=A0 install -d ${D}${ROOT_HOME}/.config<br>
&gt; + =C2=A0 install -m 0644 ${S}/ivi-shell/<a href=3D"http://weston.ini.i=
n" target=3D"_blank">weston.ini.in</a> ${D}${ROOT_HOME}/.config/weston.ini<=
br>
&gt; + =C2=A0 sed -i -e =C2=A0&#39;s/<a href=3D"http://hmi-controller.so/hm=
i-controller.so" target=3D"_blank">hmi-controller.so/hmi-controller.so</a>,=
 <a href=3D"http://ivi-controller.so/" target=3D"_blank">ivi-controller.so/=
</a>&#39; ${D}${ROOT_HOME}/.config/weston.ini<br>


&gt; + =C2=A0 sed -i -e &#39;s|\@libexecdir\@|${libexecdir}|&#39; ${D}${ROO=
T_HOME}/.config/weston.ini<br>
&gt; + =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/data|${datadir}\/westo=
n|&#39; ${D}${ROOT_HOME}/.config/weston.ini<br>
&gt; + =C2=A0 sed -i -e &#39;s|\@abs_top_builddir\@\/clients|${bindir}|&#39=
; ${D}${ROOT_HOME}/.config/weston.ini<br>
&gt; +}<br>
&gt; +<br>
&gt; +PACKAGES +=3D &quot;${PN}-ini&quot;<br>
&gt; +<br>
&gt; +FILES_${PN}-ini =3D &quot;${ROOT_HOME}/.config&quot;<br>
&gt; --<br>
&gt; 1.8.4<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>=E0=B4=B8=
=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=
=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&g=
t;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wiki/Anti-D=
RM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign<=
/a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br>
</div></div></div>

--001a11c129be1dfe2804f7af70ff--
