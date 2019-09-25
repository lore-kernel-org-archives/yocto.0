Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DA9E00D89; Wed, 25 Sep 2019 00:00:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
	[209.85.167.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42ADCE00D68
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:00:09 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id c195so3318952lfg.9
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 00:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5MUDaHEH0PcmvG7I4yFvz8r+MqUKidYNhlngdgH/drE=;
	b=l3ruE1zhe/XrSYp4ZkX7i4132PX/1SBzhmHkL/dGmPcszSofAOI9Nl9oW/5CSkfkL9
	PEly9yyTZoaENQJAK5KwgNtuEFHa9qFzuoRgOlRStn16+ZaoVyak9YVF2JirA+4+rkZL
	MSkG4+se1o8uldk8df5uvpWW6EIYBs/1u3kAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5MUDaHEH0PcmvG7I4yFvz8r+MqUKidYNhlngdgH/drE=;
	b=YbuD5EvP90eoC5uI4+hBM9yA4Z7hTxOjswRwmKwrC5mdGBkiDWsZmhkQ8s8BLakD5X
	kgHL88KdMVvfLPIe9GBl2zVxcKmQeChCgjfThLW+3eyXh+J4YAYE4EW6bXI91d6r1Qf4
	mNrfSavVI7yaO7wercXip0j6gCS0E04PeRzZli2+oPNA1fgSFZqb1Vq9RU+wVijrdPmd
	Aws9gEqRpGafHYFOTaoNIhj/ZAvwhxLU76lLryTjerSeIf1TYAm/FDF/+Hq532o+Ng2L
	id53yJiIEw3qir9RODbezI6WcfPs1P6eUoIYcZNUPodgml4v1mBGabNF16pt1//Vt4LY
	farw==
X-Gm-Message-State: APjAAAVTapAf3otM1aZSbDLBbgg7X5MT3paLUhtJrvO+gs9ZzSgGvmM1
	ffaKVl/XtT39ToR5z5ZpaZuZfVUH/3B1kfxuEMDjdA==
X-Google-Smtp-Source: APXvYqzDxwUmjx3B3VydWq7hc7CkSEX4VVIETPVbIBQhVwHPBFJMfz21I3YVTme5+ENCOePbh57uRsPPU2hOYtA5fT4=
X-Received: by 2002:ac2:5633:: with SMTP id b19mr4499626lff.103.1569394808115; 
	Wed, 25 Sep 2019 00:00:08 -0700 (PDT)
MIME-Version: 1.0
References: <CA+FhBv-74abWOFa-99ad_o5J35_az46AUbYuLpESmCUjdyU12g@mail.gmail.com>
In-Reply-To: <CA+FhBv-74abWOFa-99ad_o5J35_az46AUbYuLpESmCUjdyU12g@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Wed, 25 Sep 2019 09:59:52 +0300
Message-ID: <CAD5=o+oWFH5d2+qBkzxUQxXnHH0fRht1OO-FRhemcR-yUDuLXw@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES 'python3-dev'
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
X-List-Received-Date: Wed, 25 Sep 2019 07:00:11 -0000
Content-Type: multipart/alternative; boundary="0000000000000ce65b05935b34ee"

--0000000000000ce65b05935b34ee
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Sep 2019 at 09:16, Damien LEFEVRE <lefevre.da@gmail.com> wrote:

> > On 24/09/2019 10:36, Damien LEFEVRE wrote:
> > > Hi,
> > >
> > > Migrating from poky:pyro to poky:warrior.
> > >
> > > It looks like the python3-dev package is generated from
> > > python3-manifest.json:
> > >
> > >  ? ? "dev": {
> > >  ? ? ? ? "cached": [],
> > >  ? ? ? ? "files": [
> > >  ? ? ? ? ? ? "${base_libdir}/*.a",
> > >  ? ? ? ? ? ? "${base_libdir}/*.o",
> > >  ? ? ? ? ? ? "${bindir}/python*-config",
> > >  ? ? ? ? ? ? "${datadir}/aclocal",
> > >  ? ? ? ? ? ? "${datadir}/pkgconfig",
> > >  ? ? ? ? ? ? "${includedir}",
> > >  ? ? ? ? ? ? "${libdir}/*.a",
> > >  ? ? ? ? ? ? "${libdir}/*.la",
> > >  ? ? ? ? ? ? "${libdir}/*.o",
> > >  ? ? ? ? ? ? "${libdir}/lib*${SOLIBSDEV}",
> > >  ? ? ? ? ? ? "${libdir}/pkgconfig"
> > >  ? ? ? ? ],
> > >  ? ? ? ? "rdepends": [
> > >  ? ? ? ? ? ? "core"
> > >  ? ? ? ? ],
> > >  ? ? ? ? "summary": "Python development package"
> > >  ? ? },
> > >
> > > and this is used in python3_3.7.2.bb <http://python3_3.7.2.bb>.
> > >
> > > Still I get this error: Nothing PROVIDES 'python3-dev'
> >
> > Are you trying to 'bitbake python3-dev'?  You bitbake a recipe, not a
> > package, so 'bitbake python3'.
> >
> > Ross
>
> Hi Ross,
>
> The issue is with the python3 recipe. It declares RDEPENDS_python3-dev,
> not DEPENDS_python3-dev.
>

> I'm using the Python C API. So I need headers and so lib files at build
> time but only so lib at runtime.
>

DEPENDing on python3 should give you the former (headers etc in sysroot at
build time) and RDEPENDing on the correct package (maybe libpython3?)
should give you the latter -- but RDEPENDS should be automatic if your app
links to the library.

Is this not working?



>
> I can add python3-dev to my recipe's RDEPENDS list, but bitbake rightfully
> complains about installing -dev files to the image.
>
> I'll check today how to fix that.
>
> -Damien
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000000ce65b05935b34ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 25 Sep 2019 at 09:16, Damien =
LEFEVRE &lt;<a href=3D"mailto:lefevre.da@gmail.com">lefevre.da@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">&gt; On 24/09/2019 10:36, Damien LEFEVRE wrote:<br>&gt; &gt; =
Hi,<br>&gt; &gt;=C2=A0<br>&gt; &gt; Migrating from poky:pyro to poky:warrio=
r.<br>&gt; &gt;=C2=A0<br>&gt; &gt; It looks like the python3-dev package is=
 generated from=C2=A0<br>&gt; &gt; python3-manifest.json:<br>&gt; &gt;=C2=
=A0<br>&gt; &gt;=C2=A0 ? ? &quot;dev&quot;: {<br>&gt; &gt;=C2=A0 ? ? ? ? &q=
uot;cached&quot;: [],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;files&quot;: [<br>&g=
t; &gt;=C2=A0 ? ? ? ? ? ? &quot;${base_libdir}/*.a&quot;,<br>&gt; &gt;=C2=
=A0 ? ? ? ? ? ? &quot;${base_libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? =
? ? &quot;${bindir}/python*-config&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &q=
uot;${datadir}/aclocal&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${datadi=
r}/pkgconfig&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${includedir}&quot=
;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/*.a&quot;,<br>&gt; &gt;=
=C2=A0 ? ? ? ? ? ? &quot;${libdir}/*.la&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ?=
 ? &quot;${libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir=
}/lib*${SOLIBSDEV}&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/pk=
gconfig&quot;<br>&gt; &gt;=C2=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &quo=
t;rdepends&quot;: [<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;core&quot;<br>&gt;=
 &gt;=C2=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;summary&quot;: &quo=
t;Python development package&quot;<br>&gt; &gt;=C2=A0 ? ? },<br>&gt; &gt;=
=C2=A0<br>&gt; &gt; and this is used in=C2=A0<a href=3D"http://python3_3.7.=
2.bb/" rel=3D"noreferrer" target=3D"_blank">python3_3.7.2.bb</a>=C2=A0&lt;<=
a href=3D"http://python3_3.7.2.bb/" rel=3D"noreferrer" target=3D"_blank">ht=
tp://python3_3.7.2.bb</a>&gt;.<br>&gt; &gt;=C2=A0<br>&gt; &gt; Still I get =
this error: Nothing PROVIDES &#39;python3-dev&#39;<br>&gt;=C2=A0<br>&gt; Ar=
e you trying to &#39;bitbake python3-dev&#39;?=C2=A0 You bitbake a recipe, =
not a=C2=A0<br>&gt; package, so &#39;bitbake python3&#39;.<br>&gt;=C2=A0<br=
>&gt; Ross<br><div><br></div><div>Hi Ross,</div><div><br></div><div>The iss=
ue is with the python3 recipe. It declares RDEPENDS_python3-dev, not DEPEND=
S_python3-dev.</div></div></blockquote><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div><br></div><div>I&#39;m using the Python=
 C API. So I need headers and so lib files at build time but only so lib at=
 runtime.=C2=A0</div></div></blockquote><div><br></div><div>DEPENDing on py=
thon3 should give you the former (headers etc in sysroot at build time) and=
 RDEPENDing on the correct package (maybe libpython3?) should give you the =
latter -- but RDEPENDS should be automatic if your app links to the library=
.</div><div><br></div><div>Is this not working?</div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div><br></div><div>I can add python3-dev to my recipe&#39;s RDEPENDS l=
ist, but bitbake rightfully complains about installing -dev files to the im=
age.</div><div><br></div><div>I&#39;ll check today how to fix that.</div><d=
iv><br></div><div>-Damien</div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000000ce65b05935b34ee--
