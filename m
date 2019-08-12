Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 470CDE00D79; Mon, 12 Aug 2019 03:42:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F86FE00C46
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 03:42:12 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id m2so12244546qkd.10
	for <yocto@yoctoproject.org>; Mon, 12 Aug 2019 03:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nefGwOAAACebhH2Efy2VbUC2lCVOmvuC/bhp/Cj6gxg=;
	b=OR4Zse1LhIo8rqGj2+cNRp4jmEI+kLCSljx/zZbDXtx9vBB9ckjDTSj3i6KZ57piQ3
	cA+PAQ7naanUsd7CtrhzomM3N0iE1JMrcRGU2t7HbbBgZCDkW6kxO/enSUyTMBRfg2PP
	X/STlrHKJ6GsQJMfUgGlwR3WoIUubTOw+GYth6A/6VCrwpN1EdkK8oF5dJWPA/IvBLsI
	fM96eRnsY4ydvrBluzUYI2JEy3XIr1yY8HrzaR/Dv9shHNeYdRXdtGbodmbIlq8U5SQW
	1KTTzpL9zgteKPCHOJaMTN3yA/HVD3o/OfwywfuqYlypkcpj871nMZP9LK6s+VVjP1uo
	rESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nefGwOAAACebhH2Efy2VbUC2lCVOmvuC/bhp/Cj6gxg=;
	b=BDzjBBiDulVyiPYqPSxh6k7f+PJrZDmjQ6dCsaGnrG+sot4XHNSzZO6zdRTvHau4ap
	jzLDaT9IGJ7Z6+cCD0vFV8Bed54yDEXzVjACvzqWHpG2S/5UISApleZ0Nv+3GaPYsuTg
	1hWTv30lV0mesrOplKGKK00SahDy6+sJNoBIGXUJd61csTTRvRPemjF/sOKa/GbVYL9r
	zvB/LDASOhjeZU3pVn2mrph8nNbRrjEff26YjuxkNf2HUwpapKMiNh4i8q3B2Q6Ea9Dc
	6/4kvVKJIV94ZMxAvWWVmLybZYPJSwlmMXn1PBPdg2fPMSnYvQ+8pkVY3EP6Z45OfDMu
	5D/Q==
X-Gm-Message-State: APjAAAUmtgel+cjowdX2aABxjrVMpKxbeqIHvRZOxrGT3ZhFPkcfB+ZT
	J9ram7eudmkehWs7DNB0zqmUuO7ZIEsmFR39br8=
X-Google-Smtp-Source: APXvYqyz1oqYGWFQlI9SgU3Acl8PGC3A3L1U6NsJ5QNm0/m/zLN1w8Wq2oHELOz1P5jB4NkXK9mVtL71He1YqELYutk=
X-Received: by 2002:a05:620a:16d6:: with SMTP id
	a22mr29651707qkn.414.1565606531867; 
	Mon, 12 Aug 2019 03:42:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxnLncDewt_k1SUP-H6313ubeNRRW0cqp-gawJ_xsrgaw@mail.gmail.com>
	<CAMKF1spSYzqBKA-n+kRSZv+J08CmOGogsfR_D_o19b_Y8578Pw@mail.gmail.com>
In-Reply-To: <CAMKF1spSYzqBKA-n+kRSZv+J08CmOGogsfR_D_o19b_Y8578Pw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 12 Aug 2019 12:42:00 +0200
Message-ID: <CAGAf8LywDVWYfQbpni5Kve_8CdTGYtcy-iA+Lwu3qJ56i4Z-1w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto repos for NXP referent platform MCIMXABASEV1 also called SABRE platform?
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
X-List-Received-Date: Mon, 12 Aug 2019 10:42:13 -0000
Content-Type: multipart/alternative; boundary="00000000000030a71b058fe92da1"

--00000000000030a71b058fe92da1
Content-Type: text/plain; charset="UTF-8"

Hello Khem,

Thank you for the reply.

I would say look at:
https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp

Zoran
_______

On Fri, Aug 9, 2019 at 6:51 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Aug 8, 2019 at 11:20 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello to all,
> >
> > I am trying to find out some recent yocto repo, which contains YOCTO
> > reference repo for the following NXP board:
> > MCIMXABASEV1 also called SABRE platform.
> >
> > Here is one repo I found reading this document... But this is too
> outdated!
> >
> >
> http://events17.linuxfoundation.org/sites/events/files/slides/AGLAMM_How%20we%20Run%20AGL%20on%20i.MX%20processors_tkobayashi_25FEB16%20rev.D.pdf
> >
> > Does anybody have some other repos/suggestions in mind for such a
> > board? Please, come forward if yes...
> >
>
> I would say look at
>
>
> http://layers.openembedded.org/layerindex/branch/master/machines/?q=sabre&search=1
>
> > Thank you,
> > Zoran
> > _______
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000030a71b058fe92da1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Khem,<div><br></div><div>Thank you for the reply.</d=
iv><div><br></div><div>I would say look at:<br>
</div><div><a href=3D"https://github.com/ZoranStojsavljevic/imx6-sabre-auto=
motive-bsp">https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp=
</a></div><div><br></div><div>Zoran</div><div>_______<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug =
9, 2019 at 6:51 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.k=
hem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">On Thu, Aug 8, 2019 at 11:20 PM Zoran Stojsavljevic<br>
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zora=
n.stojsavljevic@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello to all,<br>
&gt;<br>
&gt; I am trying to find out some recent yocto repo, which contains YOCTO<b=
r>
&gt; reference repo for the following NXP board:<br>
&gt; MCIMXABASEV1 also called SABRE platform.<br>
&gt;<br>
&gt; Here is one repo I found reading this document... But this is too outd=
ated!<br>
&gt;<br>
&gt; <a href=3D"http://events17.linuxfoundation.org/sites/events/files/slid=
es/AGLAMM_How%20we%20Run%20AGL%20on%20i.MX%20processors_tkobayashi_25FEB16%=
20rev.D.pdf" rel=3D"noreferrer" target=3D"_blank">http://events17.linuxfoun=
dation.org/sites/events/files/slides/AGLAMM_How%20we%20Run%20AGL%20on%20i.M=
X%20processors_tkobayashi_25FEB16%20rev.D.pdf</a><br>
&gt;<br>
&gt; Does anybody have some other repos/suggestions in mind for such a<br>
&gt; board? Please, come forward if yes...<br>
&gt;<br>
<br>
I would say look at<br>
<br>
<a href=3D"http://layers.openembedded.org/layerindex/branch/master/machines=
/?q=3Dsabre&amp;search=3D1" rel=3D"noreferrer" target=3D"_blank">http://lay=
ers.openembedded.org/layerindex/branch/master/machines/?q=3Dsabre&amp;searc=
h=3D1</a><br>
<br>
&gt; Thank you,<br>
&gt; Zoran<br>
&gt; _______<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000030a71b058fe92da1--
