Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC7CCE00971; Tue,  2 Oct 2018 14:50:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0676E00718
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2018 14:50:23 -0700 (PDT)
Received: by mail-ua1-f45.google.com with SMTP id s8-v6so1319302uad.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2018 14:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=duO1gVxu5OTWyelAGZf1DlZu0qkFIP44e18cYjwJK5w=;
	b=ZQZxLndhAukc7hRNiYWLrAhNT1TDx27JKAXXZ/c61RZPjBwEX25XwnRwD1P8tg9QgY
	m5MkyaMuxKM5yfsl1XsblG3w0kCqwzebt1elCC3Kju/vKcHUkxzR46DQkjmea+J6io0l
	45jXO9Ba5qMa99qvEPQyF5n7Js5WpkTnMqaYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=duO1gVxu5OTWyelAGZf1DlZu0qkFIP44e18cYjwJK5w=;
	b=P1Ayz59DN1C9ijCrC6FTIWyQNw7dZcVDZy8cfpRI9IsIGyQkWwsH8FRP4Dey/bXZ5a
	RWVk/593lVfn9X/ojppSMNJMBvZVb7v4A0uWZ/La7akeso41UH1BElxkY/2dwlvYc3+g
	AcpYEOLUjVz10u+uPzb7aI7E/tE7qseWIE4mwWGF0oFiCmq2Z/7r5sN00IHGFu1U/Awb
	gToivn1kbOyQV4v8FG6frSzPyTes0uAUns6X8oIJMgZh6m1WSYyE837cmgca5XFdSi/I
	c5CTeu+xRka15gc0z5zxhiuVaW99/ayYVH9TOctg544z8LZuH4OCA8mddkLQmS+Llb/E
	qb/w==
X-Gm-Message-State: ABuFfoipl7nvnZBBnVz3bhNNVA6s3THxdesWzOl+K6mzx7qp22X5DGGs
	EIbPxfQ9CGohwAzJT00UtyAzaIYi0h1OEnNe6g3iWhfL
X-Google-Smtp-Source: ACcGV62HE3BLWsV3CmAHVR9F8FYI63udkcACEyjPZAc7XoabiHQeJbzL7nqfzJ+xDIOpo36Tkp2dPDpCewEeN6aJvhE=
X-Received: by 2002:ab0:6609:: with SMTP id r9-v6mr7560165uam.6.1538517022911; 
	Tue, 02 Oct 2018 14:50:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1525139239.git.paul.eggleton@linux.intel.com>
	<8a00c2aa-ea4a-bc9f-65e7-4df683420169@linux.intel.com>
	<3282715.K8pGKosiL1@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3282715.K8pGKosiL1@peggleto-mobl.ger.corp.intel.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Tue, 2 Oct 2018 16:50:11 -0500
Message-ID: <CA+_AqivHUkM97pEi0bJrwmpxYxvDqcxHjzyG=bV_FWOuAZW7CA@mail.gmail.com>
To: paul.eggleton@linux.intel.com
Cc: yocto@yoctoproject.org, alexander.kanavin@linux.intel.com
Subject: Re: [layerindex-web][PATCH 000/242] Integrate and improve Recipe Reporting System (cover letter only)
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
X-List-Received-Date: Tue, 02 Oct 2018 21:50:24 -0000
Content-Type: multipart/alternative; boundary="000000000000a1c59a057745e872"

--000000000000a1c59a057745e872
Content-Type: text/plain; charset="UTF-8"

Hi Paul,

Good to know that is integrated now.

Cheers,
Anibal

On Tue, 1 May 2018 at 15:09, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Hi Alex,
>
> On Tuesday, 1 May 2018 9:58:03 PM NZST Alexander Kanavin wrote:
> > On 05/01/2018 05:23 AM, Paul Eggleton wrote:
> > > The Recipe Reporting System (RRS - live instance at
> > > http://recipes.yoctoproject.org) was originally developed as a fork of
> > > the layer index (live instance at http://layers.openembedded.org) -
> this
> > > set of changes rebases it on top of master and makes the functionality
> > > possible to activate for other layers. I've introduced the concept of a
> > > "Maintenance Plan" to tie together the recipe maintenance information
> > > for one or more layers and used it to replace all the parts that
> assumed
> > > Poky or OE-Core were the repositories/layers being tracked. I've also
> > > made it possible again for the application to gather data going back to
> > > 1.6 across the python 2/3 divide, and made various cleanups and
> > > optimisations in the code.
> >
> > Thanks! Is this already taken into use on the recipes.yoctoproject.org?
>
> No, what you see there is still the old version. I haven't discussed it
> yet
> with Michael but I would propose that once this gets merged and
> layers.openembedded.org is updated, then recipes.yoctoproject.org would
> simply
> become a redirect to the OE-Core maintenance plan on
> layers.openembedded.org.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a1c59a057745e872
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>Good to know that is integrate=
d now.</div><div><br></div><div>Cheers,</div><div>Anibal</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Tue, 1 May 2018 at 15:09, Paul =
Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton=
@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi =
Alex,<br>
<br>
On Tuesday, 1 May 2018 9:58:03 PM NZST Alexander Kanavin wrote:<br>
&gt; On 05/01/2018 05:23 AM, Paul Eggleton wrote:<br>
&gt; &gt; The Recipe Reporting System (RRS - live instance at<br>
&gt; &gt; <a href=3D"http://recipes.yoctoproject.org" rel=3D"noreferrer" ta=
rget=3D"_blank">http://recipes.yoctoproject.org</a>) was originally develop=
ed as a fork of<br>
&gt; &gt; the layer index (live instance at <a href=3D"http://layers.openem=
bedded.org" rel=3D"noreferrer" target=3D"_blank">http://layers.openembedded=
.org</a>) - this<br>
&gt; &gt; set of changes rebases it on top of master and makes the function=
ality<br>
&gt; &gt; possible to activate for other layers. I&#39;ve introduced the co=
ncept of a<br>
&gt; &gt; &quot;Maintenance Plan&quot; to tie together the recipe maintenan=
ce information<br>
&gt; &gt; for one or more layers and used it to replace all the parts that =
assumed<br>
&gt; &gt; Poky or OE-Core were the repositories/layers being tracked. I&#39=
;ve also<br>
&gt; &gt; made it possible again for the application to gather data going b=
ack to<br>
&gt; &gt; 1.6 across the python 2/3 divide, and made various cleanups and<b=
r>
&gt; &gt; optimisations in the code.<br>
&gt; <br>
&gt; Thanks! Is this already taken into use on the <a href=3D"http://recipe=
s.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">recipes.yoctoproje=
ct.org</a>?<br>
<br>
No, what you see there is still the old version. I haven&#39;t discussed it=
 yet <br>
with Michael but I would propose that once this gets merged and <br>
<a href=3D"http://layers.openembedded.org" rel=3D"noreferrer" target=3D"_bl=
ank">layers.openembedded.org</a> is updated, then <a href=3D"http://recipes=
.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">recipes.yoctoprojec=
t.org</a> would simply <br>
become a redirect to the OE-Core maintenance plan on <a href=3D"http://laye=
rs.openembedded.org" rel=3D"noreferrer" target=3D"_blank">layers.openembedd=
ed.org</a>.<br>
<br>
Cheers,<br>
Paul<br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000a1c59a057745e872--
