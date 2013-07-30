Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B545CE002E3
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 10:03:54 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id tb18so12812951obb.30
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 10:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WcU/SXjantNhcw+SnbaId0t9HEoYNwdmv+MKIVi8T+g=;
	b=iUhREzIUic8EcN6ICULpC054qPvwi/Dxu9uRTcp5ftr+3DM8b7R3TYvpOiocWtH0qq
	8vZE6Rewf7xdfbU9qgsfZmwYFmvmSBk/EkZrWPyb726CBH/DlOdDjP9dbUEx8kzLhWQW
	TYvFfVIenYo3hmio1Y8SmoFRBWWxjnZnvr1pHqGgevetOxQM2mJdFN7C2v++pfc7zRRV
	/BVMxRUrTFhgjiTCRxNJH8M8ZLxsCEnDir8h3arlWpMC0rAsNz8VMch+4JVR5zybu0Tq
	vPblGqCufy2bY7uU9JA35xiuqDRFsPxYGGC1gWnz6xuG4ZkBklni6zxaQc/RXhJN+3BY
	/fXQ==
MIME-Version: 1.0
X-Received: by 10.60.96.170 with SMTP id dt10mr63134493oeb.81.1375203827716;
	Tue, 30 Jul 2013 10:03:47 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Tue, 30 Jul 2013 10:03:47 -0700 (PDT)
In-Reply-To: <2010302.ipSdHH7rJ3@helios>
References: <CAE8H0+WMNPphz89i8WUeAwExPDxgFHHgc4FuLxVyx8pMR2esvw@mail.gmail.com>
	<2010302.ipSdHH7rJ3@helios>
Date: Tue, 30 Jul 2013 13:03:47 -0400
Message-ID: <CAE8H0+UYuO=4Dg88PPmG05cuCf77odGjDTn+fBm0ZPd7LkXLKg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: denzil to dylan, netbase recipe broken?
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
X-List-Received-Date: Tue, 30 Jul 2013 17:03:54 -0000
Content-Type: multipart/alternative; boundary=089e01228cf6a5175904e2bd9727

--089e01228cf6a5175904e2bd9727
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jul 30, 2013 at 11:29 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi John,
>
> On Tuesday 30 July 2013 11:15:26 r10kindsofpeople wrote:
> > Under Denzil 7.0.1, I had a recipe
> > mylayer/recipes-core/netbase/netbase_4.47.bbappend that contained:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> > SRC_URI += " file://interfaces \
> >             "
> > To put my own interface file in the root file system from
> > mylayer/recipes-core/netbase/netbase/interfaces
> >
> > Under Dylan 9.0.1, I tried the same technique, except renaming to
> > netbase_5.0.bbappend, but I don't get my copy of interfaces, I get some
> > default.
> >
> > I've hacked at the recipe a bit, trying to add a do_install step (based
> on
> > the recipe in meta), and know at least that the recipe is getting parsed,
> > because of the errors I created.  I was able to clear up the errors, but
> > still don't get my copy.  Right now, the recipe reads:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> > SRC_URI_prepend = " file://interfaces \
> >             "
> >
> > do_install_append () {
> > install -d ${D}/${sysconfdir}/network
> > install -m 0644 ${WORKDIR}/interfaces
> ${D}${sysconfdir}/network/interfaces
> > }
> >
> > PRINC := "${@int(PRINC) + 1}"
> >
> > Can anyone help me understand why the old recipe no longer works, and
> what
> > needs to be done to remedy?
>
> The functionality for starting interfaces has been moved to a separate
> init-ifupdown recipe for dylan. This should have been noted in the
> migration
> information in the reference manual but did not make it in in time; I
> hadn't
> realised it still hasn't been updated in the "current" version of the
> documentation on the website and the dylan branch so I will now make sure
> that
> happens.
>
> Basically you just need to move your bbappend across to init-ifupdown and
> it
> should work.
>
> Cheers,
> Paul
>

Thanks, Paul, that worked.

John


>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--089e01228cf6a5175904e2bd9727
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Jul 30, 2013 at 11:29 AM, Paul Eggleton <span dir=
=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_bl=
ank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra">
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi John,<br>
<br>
On Tuesday 30 July 2013 11:15:26 r10kindsofpeople wrote:<br>
&gt; Under Denzil 7.0.1, I had a recipe<br>
&gt; mylayer/recipes-core/netbase/netbase_4.47.bbappend that contained:<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; SRC_URI +=3D &quot; file://interfaces \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
&gt; To put my own interface file in the root file system from<br>
&gt; mylayer/recipes-core/netbase/netbase/interfaces<br>
&gt;<br>
&gt; Under Dylan 9.0.1, I tried the same technique, except renaming to<br>
&gt; netbase_5.0.bbappend, but I don&#39;t get my copy of interfaces, I get=
 some<br>
&gt; default.<br>
&gt;<br>
&gt; I&#39;ve hacked at the recipe a bit, trying to add a do_install step (=
based on<br>
&gt; the recipe in meta), and know at least that the recipe is getting pars=
ed,<br>
&gt; because of the errors I created. =A0I was able to clear up the errors,=
 but<br>
&gt; still don&#39;t get my copy. =A0Right now, the recipe reads:<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; SRC_URI_prepend =3D &quot; file://interfaces \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
&gt;<br>
&gt; do_install_append () {<br>
&gt; install -d ${D}/${sysconfdir}/network<br>
&gt; install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interf=
aces<br>
&gt; }<br>
&gt;<br>
&gt; PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<br>
&gt;<br>
&gt; Can anyone help me understand why the old recipe no longer works, and =
what<br>
&gt; needs to be done to remedy?<br>
<br>
The functionality for starting interfaces has been moved to a separate<br>
init-ifupdown recipe for dylan. This should have been noted in the migratio=
n<br>
information in the reference manual but did not make it in in time; I hadn&=
#39;t<br>
realised it still hasn&#39;t been updated in the &quot;current&quot; versio=
n of the<br>
documentation on the website and the dylan branch so I will now make sure t=
hat<br>
happens.<br>
<br>
Basically you just need to move your bbappend across to init-ifupdown and i=
t<br>
should work.<br>
<br>
Cheers,<br>
Paul<br></blockquote><div><br></div><div>Thanks, Paul, that worked. =A0</di=
v><div><br></div><div>John</div><div>=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div></div>

--089e01228cf6a5175904e2bd9727--
