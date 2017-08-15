Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64608E00CDE; Tue, 15 Aug 2017 07:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.180 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABCCE00851
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 07:11:54 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id k43so3322394uaf.3
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 07:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I83mWZejSCXnCGSzAqmwp6qGWrKtfUbfbLV1xfIwk6s=;
	b=rdo58sCW7zx/WR/c+86i3fL+egqnJ3AMAEKRvg1A+ulxcqBsyvVik3fTOlT6ccAPWQ
	80/pXUuj98A2M6tCQkwRFApV1Y4OGFipOq1p8eUEcaLJAgqSmJb8nEDFv6q5kJkzdWXV
	iWW66d2kGaidDoP30vXPD3ZB39HKKfdF1Tc3hIPHwPcOeWr+/PPKeu+4bqN5x2JksrVI
	iLlFf6HnGgMfSvF+OJX8YA3F8l1jvRvTZgrLNOD+EZQ7p/g9xUg3x944i/5+VMWbncBB
	1xkzPUFgdXBesKiTprnN8gdjrWTbAMt/PHp7MpEonLXwWjREJ72vLMTtZ3skEPzCRFOA
	G8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I83mWZejSCXnCGSzAqmwp6qGWrKtfUbfbLV1xfIwk6s=;
	b=fjBBmCvF/CK01GHkBTlEfeGPULzrtjDnnkZJmwIkPqsgnoYljjD+QXUA4InlxJMQj9
	wW6mVMIL+iKiPuweXqsLSi/K/fCJqdirre5KiiKwLrJUrFMgAEwyXUh72jfIZTVAsn6l
	mrMe56UX9/NzpCmIR1H2bml/wpUhBlDVC2GLty0zsJvC2djRIyhKk+JcayvKbUTtD8Of
	359OFaIa9Rqca6qPviX+g76Ms6prz+GiKFGuLeDULUYHTtThN8jHHe9dyD6DHy0KkiMX
	Zt/1MSS4a4zEv689qFWawu5mMnhoMoYAlrhrQWkycsLwfPaS+PwsJ0ZqkcUAsOhGGTo2
	qqrQ==
X-Gm-Message-State: AHYfb5iVSuK1AZvgfqgo3Ku8fC2J6MUdJTIm0zh6HZjhsEpluwUsU+PW
	3agi8qhtLEezTfoFPGhiwBG+KrlbEg==
X-Received: by 10.176.80.193 with SMTP id d1mr19346210uaa.124.1502806314383;
	Tue, 15 Aug 2017 07:11:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.122.88 with HTTP; Tue, 15 Aug 2017 07:11:53 -0700 (PDT)
In-Reply-To: <1502806378.28941.32.camel@linux.intel.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
	<1502806378.28941.32.camel@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 15 Aug 2017 16:11:53 +0200
Message-ID: <CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Riko <antonius.riko@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Tue, 15 Aug 2017 14:11:56 -0000
Content-Type: multipart/alternative; boundary="94eb2c19211e88ff630556cb5c89"

--94eb2c19211e88ff630556cb5c89
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But it's related to it, in this thread he added oe-core/meta in master
branch to BBLAYERS in poky build (already including poky/meta) from pyro
branch.

That's why he is seeing 3 strange issues reported in couple threads already
(and this is also 3rd time someone telling him that he shouldn't include
oe-core meta twice and to use the same branch across all layers).

On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
> > Dear Team Yocto Members,
> >
> > I continue compiling, and got :
> >
> > ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
> build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
> entry 'wic.vmdk' - possibly invalid type name or missing support class
> > ERROR: Failed to parse
> > recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
> build-appliance-image_15.0.0.bb
> >
>
> would be better if you start another thread with this issue. BTW, I just
> built a build-appliance without any change at local.conf and all went
> fine so you may have included something that you are not referring to
> (IMAGE_FILES?)
>
>
>
> > How can I fix it ?
> >
> > regards,
> >
> > Riko
> >
> >
> >
> > On 14/08/17 23:56, Christopher Larson wrote:
> >
> > > The openembedded-core root isn=E2=80=99t a layer, openembedded-core/m=
eta is.
> > >
> > > On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
> > > <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> > >         On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
> > >         > Dear Yocto Members,
> > >         >
> > >         > How can I find this file ?
> > >
> > >
> > >         this is a pretty general question. are you running bitbake
> > >         from the
> > >         build directory? double check your conf/bblayers.conf and
> > >         make sure
> > >         paths there are pointing correctly.
> > >
> > >
> > >         >
> > >         > =3D=3D
> > >         >
> > >         > ERROR: Unable to parse
> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf:
> > >         [Errno 2] file
> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf not
> > >         found
> > >         >
> > >         >
> > >         > Thanks,
> > >         >
> > >         > Riko
> > >         >
> > >
> > >
> > >         --
> > >         _______________________________________________
> > >         yocto mailing list
> > >         yocto@yoctoproject.org
> > >         https://lists.yoctoproject.org/listinfo/yocto
> > >
> > >
> > >
> > >
> > >
> > > --
> > > Christopher Larson
> > > kergoth at gmail dot com
> > > Founder - BitBake, OpenEmbedded, OpenZaurus
> > > Senior Software Engineer, Mentor Graphics
> >
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c19211e88ff630556cb5c89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But it&#39;s related to it, in this thread he added oe-cor=
e/meta in master branch to BBLAYERS in poky build (already including poky/m=
eta) from pyro branch.<div><br></div><div>That&#39;s why he is seeing 3 str=
ange issues reported in couple threads already (and this is also 3rd time s=
omeone telling him that he shouldn&#39;t include oe-core meta twice and to =
use the same branch across all layers).</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Tue, Aug 15, 2017 at 4:12 PM, Leonardo=
 Sandoval <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzale=
z@linux.intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.intel=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 2017-0=
8-15 at 09:09 +0800, Riko wrote:<br>
&gt; Dear Team Yocto Members,<br>
&gt;<br>
&gt; I continue compiling, and got :<br>
&gt;<br>
&gt; ERROR: /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-cor=
e/images/<a href=3D"http://build-appliance-image_15.0.0.bb" rel=3D"noreferr=
er" target=3D"_blank">build-<wbr>appliance-image_15.0.0.bb</a>: No IMAGE_CM=
D defined for IMAGE_FSTYPES entry &#39;wic.vmdk&#39; - possibly invalid typ=
e name or missing support class<br>
&gt; ERROR: Failed to parse<br>
&gt; recipe: /home/bianchi/poky/<wbr>openembedded-core/meta/<wbr>recipes-co=
re/images/<a href=3D"http://build-appliance-image_15.0.0.bb" rel=3D"norefer=
rer" target=3D"_blank">build-<wbr>appliance-image_15.0.0.bb</a><br>
&gt;<br>
<br>
would be better if you start another thread with this issue. BTW, I just<br=
>
built a build-appliance without any change at local.conf and all went<br>
fine so you may have included something that you are not referring to<br>
(IMAGE_FILES?)<br>
<br>
<br>
<br>
&gt; How can I fix it ?<br>
&gt;<br>
&gt; regards,<br>
&gt;<br>
&gt; Riko<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 14/08/17 23:56, Christopher Larson wrote:<br>
&gt;<br>
&gt; &gt; The openembedded-core root isn=E2=80=99t a layer, openembedded-co=
re/meta is.<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval<br>
&gt; &gt; &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com"=
>leonardo.sandoval.gonzalez@<wbr>linux.intel.com</a>&gt; wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, 2017-08-14 at 15:11 +080=
0, Riko wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Dear Yocto Members,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; How can I find this file ?<=
br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0this is a pretty general questio=
n. are you running bitbake<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build directory? double check yo=
ur conf/bblayers.conf and<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make sure<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0paths there are pointing correct=
ly.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =3D=3D<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ERROR: Unable to parse<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /home/bianchi/poky/<wbr>ope=
nembedded-core/conf/layer.<wbr>conf:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[Errno 2] file<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /home/bianchi/poky/<wbr>ope=
nembedded-core/conf/layer.<wbr>conf not<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0found<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Thanks,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Riko<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0______________________________<w=
br>_________________<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctopro=
ject.org">yocto@yoctoproject.org</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://list=
s.yoctoproject.<wbr>org/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Christopher Larson<br>
&gt; &gt; kergoth at gmail dot com<br>
&gt; &gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; &gt; Senior Software Engineer, Mentor Graphics<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c19211e88ff630556cb5c89--
