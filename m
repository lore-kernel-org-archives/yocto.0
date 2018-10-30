Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 816E3E00BD0; Tue, 30 Oct 2018 05:17:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF415E00AC5
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 05:17:36 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id h13so550751itl.1
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 05:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ln0KHYGb7WEVw60SMjjZUCaF4u5gXUte5U1yXIR5Ve4=;
	b=Q/uCUySpFBLI0F1bPDFMENWc72lhkMdhOrlo9mg3nUP9LTzB7ctJaGAyZe7De1CHnx
	Y7qjA3vJCsdEtZKFQ/OuzQMVGADXztt+ucgcK85X1OIDswZEz4xv37x6IdvDVZOulgZb
	MnCxh0six2oCWKAHUb8OE7Fs+jClodiTAYk5M4BGVyuDJFhF+QhtVL2j26Q6LoA2zpjg
	WRllGhyEEKXRloSbU0b8MUQacJHgsxyaj/67dhcrnA+66q0/h7p19LZ4k3iicUeCFA6s
	SteSikr+Tg/3NenGM/bOJ/e8YA+JnQEe52uNY9C+Vd94c85g2J8HUeYwIIYjIMKCrI+l
	d2tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ln0KHYGb7WEVw60SMjjZUCaF4u5gXUte5U1yXIR5Ve4=;
	b=ofUAi8A15+P/1Dddl1sXrvl+WNxXj/lTQ0jWQzLqjtHa7GVmlZYeej2HxSHZemqQde
	I+YvgINLA+yaXlHvfRlCIoemNaejQQBNDZB/pAnwlnHWmEqT4OjN8JUwTlTNlgskXH6/
	881uBIuAnT4UF/m118sM+qwnYlpvR1R+UW9tf+ayxwMQU1j5i6lVa8oLdWGj1ewpmd+5
	0VKNb0TPRCuL+xforkDpjFutCCTJBFbQAQarHcK+D4ekR8X7Q/eLplqfGa3QZqIzp3Nv
	nCa8Ny1+m4BAuQVNJLp5T4di5Ok+1/UljCQHzkmc51EPsIu/yZaRX3XDcquOF6MGDwqq
	tvLA==
X-Gm-Message-State: AGRZ1gIiI/0el5VX6vp6A5EsmZ4NdS8gNzmd1o0n67hQV2wWotWH+uaF
	5meNj8uAF5kIUZJHuL0F80Wde1icnbLMbK7hCXhXNQ==
X-Google-Smtp-Source: AJdET5fe2GdnB+SxfYDt8A+cIokgfM4LD2+7njr4/yWzpp/ykmwqIzDb8iS3bg8pxPwYzsxVUT1t4vtwIPTsr/acArM=
X-Received: by 2002:a02:5f18:: with SMTP id
	r24-v6mr10580043jab.10.1540901856226; 
	Tue, 30 Oct 2018 05:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
	<87bda8fc-cef2-c49b-090b-707a2d1d3a5b@mvista.com>
In-Reply-To: <87bda8fc-cef2-c49b-090b-707a2d1d3a5b@mvista.com>
From: Joe MacDonald <joe@deserted.net>
Date: Tue, 30 Oct 2018 08:17:24 -0400
Message-ID: <CANBf+V3L-59Ry-NqoQoBDC8oX5+Em3j6VV-18imO2utxiRH5gQ@mail.gmail.com>
To: "akuster@mvista" <akuster@mvista.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][sumo][PATCH 1/7] layer.conf: update LAYERSERIES_COMPAT `sumo' -> `thud'
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
X-List-Received-Date: Tue, 30 Oct 2018 12:17:39 -0000
Content-Type: multipart/alternative; boundary="000000000000c643c10579712be1"

--000000000000c643c10579712be1
Content-Type: text/plain; charset="UTF-8"

The patch set is definitely confusing.  I'm not able to access
git.yoctoproject.org at the moment, so I've pushed all three proposed
branch updates to my fork on github.  I think that's a more useful way to
review these changes anyway:

https://github.com/joeythesaint/meta-selinux/tree/jjm/master
https://github.com/joeythesaint/meta-selinux/tree/jjm/sumo
https://github.com/joeythesaint/meta-selinux/tree/jjm/thud

-J.


On Mon, Oct 29, 2018 at 3:16 PM akuster <akuster@mvista.com> wrote:

>
> On 10/29/18 11:32 AM, Joe MacDonald wrote:
> > From: Hongxu Jia <hongxu.jia@windriver.com>
> >
> > Since `9ec5a8a layer.conf: Drop sumo from LAYERSERIES_CORENAMES' and
> > `9867924 layer.conf: Add thud to LAYERSERIES_CORENAMES' applied in
> oe-core,
> > update LAYERSERIES_COMPAT `sumo' -> `thud'
>
> the subject branch and change confuse me. Shouldn't his be for "Thud"?
>
> - armin
>
> >
> > Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> > Signed-off-by: Joe MacDonald <joe@deserted.net>
> > ---
> >  conf/layer.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index 0f9ea41..5fecac6 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -18,7 +18,7 @@ BBFILE_PRIORITY_selinux = "5"
> >  # cause compatibility issues with other layers
> >  LAYERVERSION_selinux = "1"
> >
> > -LAYERSERIES_COMPAT_selinux = "sumo"
> > +LAYERSERIES_COMPAT_selinux = "thud"
> >
> >  LAYERDEPENDS_selinux = " \
> >      core \
>


-- 
Joe MacDonald
:wq

--000000000000c643c10579712be1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">The pat=
ch set is definitely confusing.=C2=A0 I&#39;m not able to access <a href=3D=
"http://git.yoctoproject.org">git.yoctoproject.org</a> at the=C2=A0moment, =
so I&#39;ve pushed all three proposed branch updates to my fork on github.=
=C2=A0 I think that&#39;s a more useful way to review these changes anyway:=
<div><br></div><div><a href=3D"https://github.com/joeythesaint/meta-selinux=
/tree/jjm/master">https://github.com/joeythesaint/meta-selinux/tree/jjm/mas=
ter</a><br></div><div><a href=3D"https://github.com/joeythesaint/meta-selin=
ux/tree/jjm/sumo">https://github.com/joeythesaint/meta-selinux/tree/jjm/sum=
o</a><br></div><div><a href=3D"https://github.com/joeythesaint/meta-selinux=
/tree/jjm/thud">https://github.com/joeythesaint/meta-selinux/tree/jjm/thud<=
/a><br></div><div><br></div><div>-J.</div><div><br></div></div></div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Oct 29, 2018 =
at 3:16 PM akuster &lt;<a href=3D"mailto:akuster@mvista.com">akuster@mvista=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
On 10/29/18 11:32 AM, Joe MacDonald wrote:<br>
&gt; From: Hongxu Jia &lt;<a href=3D"mailto:hongxu.jia@windriver.com" targe=
t=3D"_blank">hongxu.jia@windriver.com</a>&gt;<br>
&gt;<br>
&gt; Since `9ec5a8a layer.conf: Drop sumo from LAYERSERIES_CORENAMES&#39; a=
nd<br>
&gt; `9867924 layer.conf: Add thud to LAYERSERIES_CORENAMES&#39; applied in=
 oe-core,<br>
&gt; update LAYERSERIES_COMPAT `sumo&#39; -&gt; `thud&#39;<br>
<br>
the subject branch and change confuse me. Shouldn&#39;t his be for &quot;Th=
ud&quot;?<br>
<br>
- armin<br>
<br>
&gt;<br>
&gt; Signed-off-by: Hongxu Jia &lt;<a href=3D"mailto:hongxu.jia@windriver.c=
om" target=3D"_blank">hongxu.jia@windriver.com</a>&gt;<br>
&gt; Signed-off-by: Joe MacDonald &lt;<a href=3D"mailto:joe@deserted.net" t=
arget=3D"_blank">joe@deserted.net</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/layer.conf | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/conf/layer.conf b/conf/layer.conf<br>
&gt; index 0f9ea41..5fecac6 100644<br>
&gt; --- a/conf/layer.conf<br>
&gt; +++ b/conf/layer.conf<br>
&gt; @@ -18,7 +18,7 @@ BBFILE_PRIORITY_selinux =3D &quot;5&quot;<br>
&gt;=C2=A0 # cause compatibility issues with other layers<br>
&gt;=C2=A0 LAYERVERSION_selinux =3D &quot;1&quot;<br>
&gt;=C2=A0 <br>
&gt; -LAYERSERIES_COMPAT_selinux =3D &quot;sumo&quot;<br>
&gt; +LAYERSERIES_COMPAT_selinux =3D &quot;thud&quot;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 LAYERDEPENDS_selinux =3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 core \<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Joe MacDonald=
<br>:wq</div>

--000000000000c643c10579712be1--
