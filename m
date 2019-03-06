Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3308FE00C71; Wed,  6 Mar 2019 09:48:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B79FAE0048C
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 09:48:28 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id f2so11083278edy.13
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 09:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rx2CKGNDAbiLOQJ+gAmzzCI5CZdJcoPWOdtKRTrx5bw=;
	b=pytrXCfHzcsNyhj167NXKe7ArkTjLd6rzJ4zxofdHtClVJSyTjJ+p2v2V/Kg/AWFk3
	cVohkk1YMXpBdo0pxhqXm0qEhcAHJs3zAigIe4lTytGsKEthbV6ofVidFfNMHqdx1/Ml
	Ffst6vKK2rNq9Yq8R0+/sAli+b/JCd32tBrQ3y8taSaDbK7YHF4eey307MGs5asb3l0c
	yXfiiCcMSVa1eq7KCjk+MzQvZPtw8ZOO5reioHEf2Fq72ncUEDaOMNKE5q2NNyiZ1UoX
	GG9bpzmm7H8hDfKZ4bdkx1k+xPIo+lq3nzXsIf3gTKXU9sVxct5eIZnzGxkUA6nppVVZ
	LNsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rx2CKGNDAbiLOQJ+gAmzzCI5CZdJcoPWOdtKRTrx5bw=;
	b=dEmqiQgLZ8lD4mMMkJRn7xBpBUMyioedYifFV37djmtmkm6PzVH0TWrZ2jeSMvZHSR
	//o3pIoMXRUEnEu7c2fNFDd5bN68gqR44oBl1Rjhpp6rf9+UoPXDosbVjeEO550oMydK
	SSLCtNGDxutMXIjanf/vsMGnaPueqabvXF86+OUEjS2vGFuuJR6VCHHjOGGoGB6QEPYT
	TOK9L8x1QOmdCNU7Lfga77a12gxBYiF7eCKQl1w1HKiqIbnp7Zkp1MYHRLwayMJEdYQa
	IesbGPPZX9gs+Xyh8D+oqjFp6QikdyEp1ZU5DG0M+ok8/6TCy7xSXqsbh1besKvsn4JA
	lAww==
X-Gm-Message-State: APjAAAXb9QKa7BqQjWSfFDr/znt8PQmYXR0Rr4Wr3MKD/trgU6ALnTkr
	mZt7S5Q5yv7IE3sJaSjsPn9Sk5dV53v1t+NxUAs=
X-Google-Smtp-Source: APXvYqwqzha/FVvSoYGGWxn0WXxtzroKx5TWdsaG5YLvX3ptSEJZ8SX0O2nk288dADS3xRbqlv0ZLWZVdxD162HckMo=
X-Received: by 2002:a50:f5b5:: with SMTP id u50mr25238136edm.238.1551894507426;
	Wed, 06 Mar 2019 09:48:27 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
	<CAFNP8Ouk6e7xEjSLfBuCOsdQKVB=yDPhHwNG4nLUuNcLSPk=jQ@mail.gmail.com>
	<CAMKF1sr3e1e725ZpSWBYw2awbF-6VuJ8wYd0YEBn24b4zMeSTw@mail.gmail.com>
In-Reply-To: <CAMKF1sr3e1e725ZpSWBYw2awbF-6VuJ8wYd0YEBn24b4zMeSTw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Wed, 6 Mar 2019 09:48:16 -0800
Message-ID: <CAFNP8OsHvvVkiGGCUvtsVd6OAsAoT76BRGJ+WFY0aLRLdagk7w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 17:48:30 -0000
Content-Type: multipart/alternative; boundary="000000000000d819680583709860"

--000000000000d819680583709860
Content-Type: text/plain; charset="UTF-8"

I think we should probably at least document the variable in the YP
Reference Manual's glossary.  Correct?

Scott

On Wed, Mar 6, 2019 at 9:24 AM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Mar 6, 2019 at 8:15 AM Scott Rifenbark <srifenbark@gmail.com>
> wrote:
> >
> > Dimitris,
> >
> > Good find... I will see about documenting this.
> >
>
> Although its not encouranged to use it, its to be used as a last resort
> we use it sparingly.
>
> > Scott
> >
> > On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >>
> >> Hi all,
> >>
> >> this is not a request for help.
> >>
> >> Today, I've found a very nice option which is not documented
> >> which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
> >> inside the poky/meta/classes/staging.bbclass.
> >>
> >> I had an issue with a recipe that had a few binaries that I wanted to
> add to the
> >> recipe-sysroot-native in order to build another package and I was
> getting errors
> >> because the do_populate_sysroot couldn't strip those binaries. I've
> searched in
> >> the source and found that the author of that code was handling this
> case, but it's
> >> not documented (at least in the latest mega-manual).
> >>
> >> Therefore, I'm dropping this message as a reference to other that might
> need it.
> >>
> >> Regards,
> >> Dimitris
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d819680583709860
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think we should probably at least document the vari=
able in the YP Reference Manual&#39;s glossary.=C2=A0 Correct?</div><div><b=
r></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Mar 6, 2019 at 9:24 AM Khem Raj &lt;<=
a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Mar 6, 2019 =
at 8:15 AM Scott Rifenbark &lt;<a href=3D"mailto:srifenbark@gmail.com" targ=
et=3D"_blank">srifenbark@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Dimitris,<br>
&gt;<br>
&gt; Good find... I will see about documenting this.<br>
&gt;<br>
<br>
Although its not encouranged to use it, its to be used as a last resort<br>
we use it sparingly.<br>
<br>
&gt; Scott<br>
&gt;<br>
&gt; On Wed, Mar 6, 2019 at 8:12 AM Dimitris Tassopoulos &lt;<a href=3D"mai=
lto:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; this is not a request for help.<br>
&gt;&gt;<br>
&gt;&gt; Today, I&#39;ve found a very nice option which is not documented<b=
r>
&gt;&gt; which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_stri=
p()<br>
&gt;&gt; inside the poky/meta/classes/staging.bbclass.<br>
&gt;&gt;<br>
&gt;&gt; I had an issue with a recipe that had a few binaries that I wanted=
 to add to the<br>
&gt;&gt; recipe-sysroot-native in order to build another package and I was =
getting errors<br>
&gt;&gt; because the do_populate_sysroot couldn&#39;t strip those binaries.=
 I&#39;ve searched in<br>
&gt;&gt; the source and found that the author of that code was handling thi=
s case, but it&#39;s<br>
&gt;&gt; not documented (at least in the latest mega-manual).<br>
&gt;&gt;<br>
&gt;&gt; Therefore, I&#39;m dropping this message as a reference to other t=
hat might need it.<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Dimitris<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000d819680583709860--
