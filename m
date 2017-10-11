Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB037E00C78; Wed, 11 Oct 2017 09:30:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.49 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C629E00C65
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 09:30:29 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id j126so4002862oib.8
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 09:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=VIJkSYFNpSuily02PfHeyKPhzSuFUY4PsJRhh4K1Ca8=;
	b=YrKcwi5yDPxLDmSTWNsFjEMuHzd6R/drn4+lBrbEr5fHNZ+AZcJeDu18QVgI4gJfZD
	S/79cYZVAMs7e5DyBf/ory91risLLwpGSGGTxJQoIxP/n+F+nDmfyXC/AxW5Qe2IeGJa
	CKlVEIVN3UgBywNzsypK4xdMk6bHRlsnMKJtvKzm4VZ61FtLQ7ZToXqaa0Hxphk33Dua
	sFjmTgvsQnrtjVLy6HWSl5c/MV08Gf/p5nJ3CB4Y7gqlm2uAaqE/r6KEwmZWfRTk59/S
	ec6EjBOcypPcaq16Fo5t+10N8RGRCm8SvDjghrILktYSCgj96B3kfqBdBkwZLNp95RlV
	AUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=VIJkSYFNpSuily02PfHeyKPhzSuFUY4PsJRhh4K1Ca8=;
	b=BTfUTXJEV7qrDg4F4XpiSRUVxFTHAJdyMk7bnbPBJFRL7Y9Uef6turiwnf1Xo/8pVL
	eHgumjaeTOTj3EyeTWgAMPTsjQiDGKMWyB4C7e+SB4b5vJBF0aO83XWlfLujV6YNKReX
	RNzUEyyPU+aDMLD4jtUDA+PY+pEfLd0bRZLkO7Sy5IMX1f3Zcx121ggwjM+mFH+8SDAf
	rWJ9SZh/2rm0onQAVeLFaHlCJU2D4qQO1/lWk+zosZkI+8P8oMXiYT4FMqdsykoSIwvP
	FIjndKYWgSIiVWETLwrTydRiqhnMVF+HsWCV1iSehMblssm77Uul76oWhGAUL6ijEusb
	l4zQ==
X-Gm-Message-State: AMCzsaUUWf/dOpZLBG/9R/R8nWbsijYXuW9+0Wz1+vXBn2gQ0IiU6Ej+
	xCsYdV8rk+tlo3yKq6+OAitzXf3gIlTU+coDnK9F6w==
X-Google-Smtp-Source: AOwi7QBCy02BSnaOBE+J//irb9AUFwP6N72AmnsCtfIMaYZt2BOj1gAfkBfwKLbtGe5fSZUlx/666b7u5r+7wxp8HHA=
X-Received: by 10.157.36.195 with SMTP id z61mr91502ota.51.1507739428818; Wed,
	11 Oct 2017 09:30:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.14.100 with HTTP; Wed, 11 Oct 2017 09:30:28 -0700 (PDT)
In-Reply-To: <CAJ86T=X8VtwndQPWJcdLs7n4CSyFQde5a_cM0qEDcW6EYyih7w@mail.gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<CAJ86T=X8VtwndQPWJcdLs7n4CSyFQde5a_cM0qEDcW6EYyih7w@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 11 Oct 2017 12:30:28 -0400
Message-ID: <CAE0QtjMaobVB--VkOobD1CjV+jYtn24Me181g4TSr24vfhMmUw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Wed, 11 Oct 2017 16:30:30 -0000
Content-Type: multipart/alternative; boundary="94eb2c04f6fe119108055b47f13d"

--94eb2c04f6fe119108055b47f13d
Content-Type: text/plain; charset="UTF-8"

Thanks for answers from Ross and Andre.
Now further question:
* If we look at file \poky\meta\recipes-core\images\core-image-minimal.bb
<http://core-image-base.bb>
========================================================
SUMMARY = "A small image just capable of allowing a device to boot."

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image
========================================================
* "inherit core-image" *comes after* "IMAGE_INSTALL = ..."
* Will the "IMAGE_INSTALL" in this file be overridden by "IMAGE_INSTALL" in
"core-image"

So what is the rule for "overridden"?

On Tue, Oct 10, 2017 at 6:07 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Oct 6, 2017 at 1:40 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> > Hi, all:
> >
> > I have a basic question: how to tell the difference between
> > "core-image-minimal" and "core-image-base"?
> > * If we look at file \poky\meta\recipes-core\images\core-image-base.bb
> > ============================================================
> =======================
> > SUMMARY = "A console-only image that fully supports the target device
> > hardware."
> >
> > IMAGE_FEATURES += "splash"
> >
> > LICENSE = "MIT"
> >
> > inherit core-image
> > ============================================================
> =======================
> > * how can we tell that "core-image-base" will include "support for a
> variety
> > of hardware such as WIFI, bluetooth...", as compare to
> "core-image-minimal"?
> > * Do I miss any other document that I need to read?
>
> core-image-base takes the default value of IMAGE_INSTALL from
> meta/classes/core-image.bbclass, but core-image-minimal over-rides the
> default value and effectively removes packagegroup-base-extended.
>
> See meta/recipes-core/packagegroups/packagegroup-base.bb for more
> details of what gets pulled in by packagegroup-base-extended.
>
> > Thanks!
> > Jerry
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--94eb2c04f6fe119108055b47f13d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><span class=3D"gmail-im">Thanks for answers from=
 Ross and Andre.<br>Now further question:<br>* If we look at file \poky\met=
a\recipes-core\<wbr>images\<a href=3D"http://core-image-base.bb" rel=3D"nor=
eferrer" target=3D"_blank">core-image-minimal.bb</a><br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>SUMMARY =3D &quot;A small image just capable of allowing a device to bo=
ot.&quot;<br><br>IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${CORE_IMAG=
E_EXTRA_INSTALL}&quot;<br><br>IMAGE_LINGUAS =3D &quot; &quot;<br><br>LICENS=
E =3D &quot;MIT&quot;<br><br>inherit core-image<br>=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></=
span></div><span class=3D"gmail-im">* &quot;inherit core-image&quot; <b>com=
es after</b> &quot;IMAGE_INSTALL =3D ...&quot;<br></span></div><span class=
=3D"gmail-im">* Will the &quot;IMAGE_INSTALL&quot; in this file be overridd=
en by &quot;IMAGE_INSTALL&quot; in &quot;core-image&quot;<br></span><div><d=
iv><span class=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im">=
So what is the rule for &quot;overridden&quot;?<br></span></div></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Oct 10, =
2017 at 6:07 PM, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"mailto:armc=
curdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Fri, Oct 6, 2017 at=
 1:40 PM, Jerry Lian &lt;<a href=3D"mailto:jerry.lian@gmail.com">jerry.lian=
@gmail.com</a>&gt; wrote:<br>
&gt; Hi, all:<br>
&gt;<br>
&gt; I have a basic question: how to tell the difference between<br>
&gt; &quot;core-image-minimal&quot; and &quot;core-image-base&quot;?<br>
&gt; * If we look at file \poky\meta\recipes-core\<wbr>images\<a href=3D"ht=
tp://core-image-base.bb" rel=3D"noreferrer" target=3D"_blank">core-image-ba=
se.bb</a><br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; SUMMARY =3D &quot;A console-only image that fully supports the target =
device<br>
&gt; hardware.&quot;<br>
&gt;<br>
&gt; IMAGE_FEATURES +=3D &quot;splash&quot;<br>
&gt;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt;<br>
&gt; inherit core-image<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; * how can we tell that &quot;core-image-base&quot; will include &quot;=
support for a variety<br>
&gt; of hardware such as WIFI, bluetooth...&quot;, as compare to &quot;core=
-image-minimal&quot;?<br>
&gt; * Do I miss any other document that I need to read?<br>
<br>
</span>core-image-base takes the default value of IMAGE_INSTALL from<br>
meta/classes/core-image.<wbr>bbclass, but core-image-minimal over-rides the=
<br>
default value and effectively removes packagegroup-base-extended.<br>
<br>
See meta/recipes-core/<wbr>packagegroups/<a href=3D"http://packagegroup-bas=
e.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-<wbr>base.bb</a> fo=
r more<br>
details of what gets pulled in by packagegroup-base-extended.<br>
<br>
&gt; Thanks!<br>
&gt; Jerry<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--94eb2c04f6fe119108055b47f13d--
