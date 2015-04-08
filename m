Return-Path: <tobias.olausson@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D5D8E0098D; Wed,  8 Apr 2015 03:29:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD5BE00959
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 03:29:43 -0700 (PDT)
Received: by laat2 with SMTP id t2so55434729laa.1
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 03:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Y0Y611DV7NsWICmXhAJGbcNANgab3mF/c4ls5fXZ0FI=;
	b=GPBG01+e5MtHD57fMnUFeNb5yW2SoxAHP097AOteUaIGnXPpY538RFXQozL62yEdTC
	+//x7fi+6xrJutXAXzPqp9G0w8OC46nhPV761HOCFD7PL0n5B4euladB+67Kog/4dvi6
	5xg3/kW17o0cIfi7pLAX+70FcqrNF7z5fjcG2T8FyMe4eZVsZgOblxmqJqnJH/wkZDGc
	0E4O2bar1iANDLtnwOv8gqk31dy7Ea9F3F21877ScUoIQMxsze9Qzg8tB+mYJp6O6Qjd
	ukaMTQ+AZsIIzV4bH3IUu0s+U+seW4ovPdVDrplTTpER7FTq5EFnKqnZt5xDGmaeH7Q4
	me4Q==
X-Gm-Message-State: ALoCoQmCbweYJwp15tzFXPPGK0CIOI1c0RTVLTvStr7qsJL/YAKdd3j9L7c4gtAjFByaXn4CkW5A
X-Received: by 10.112.145.230 with SMTP id sx6mr22381157lbb.70.1428488981794; 
	Wed, 08 Apr 2015 03:29:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.142.132 with HTTP; Wed, 8 Apr 2015 03:29:21 -0700 (PDT)
In-Reply-To: <1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
References: <CAMg8ce8C3k6L0MOBKtk2i9QGbgmXyza0Kn1sfSZBbfO9kX9EzQ@mail.gmail.com>
	<1521935.2Je9FCNQNj@peggleto-mobl.ger.corp.intel.com>
From: Tobias Olausson <tobias.olausson@pelagicore.com>
Date: Wed, 8 Apr 2015 12:29:21 +0200
Message-ID: <CAMg8ce8=x06ZsMO=zNxh4P0ZCSdRx5f3Q8L_i=+gMXFzcHOA2Q@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bblayer priorities ignored for bbappends?
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
X-List-Received-Date: Wed, 08 Apr 2015 10:29:47 -0000
Content-Type: multipart/alternative; boundary=047d7b3a7d925363ba05133402bd

--047d7b3a7d925363ba05133402bd
Content-Type: text/plain; charset=UTF-8

Hi Paul

On 8 April 2015 at 10:55, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Hi Tobias,
>
> On Wednesday 08 April 2015 08:54:20 Tobias Olausson wrote:
> > I just had a weird experience with yocto and I wanted to know if the
> > described behaviour is intentional.
> >
> > I have a layer with priority 7 containing a recipe, foo.bb. In another
> > layer, with priority 8, there is a foo.bbappend. Finally, I just added
> > another layer, with priority 9, where foo.bb is redefined as a binary
> > recipe.
> >
> > When I added the last layer, I expected that to take precedence over the
> > other two. However, the bbappend for foo is still applied (which in this
> > case changed the SRC_URI, making the whole binary recipe moot). Is this
> > really the way it's supposed to be? I would expect that lower layers
> cannot
> > influence layers with higher priority at all, but that does not seem to
> be
> > the case.
>
> That is the case, yes - bbappends are always applied. As far as I am aware
> this is the first time this kind of situation has been asked about though
> so
> it's probably just that we didn't consider it before.
>

I see. I can see a point of always applying bbappends, of course, I had
just never considered it either.


>
> Presumably you could use a bbappend rather than a recipe in the last layer?
> You might need to stub out some of the functions of course, but it should
> be
> possible.
>

Indeed, that is a reasonable solution.


>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



-- 
Tobias Olausson
M.Sc
Software Engineer

PELAGICORE | Experience Change
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46(0)735-873444
E-Mail: tobias.olausson@pelagicore.com
IRC: wto @ FreeNode

--047d7b3a7d925363ba05133402bd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul<br><div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 8 April 2015 at 10:55, Paul Eggleton <span dir=3D"ltr">=
&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul=
.eggleton@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Hi Tobias,<br>
<span class=3D""><br>
On Wednesday 08 April 2015 08:54:20 Tobias Olausson wrote:<br>
&gt; I just had a weird experience with yocto and I wanted to know if the<b=
r>
&gt; described behaviour is intentional.<br>
&gt;<br>
&gt; I have a layer with priority 7 containing a recipe, <a href=3D"http://=
foo.bb" target=3D"_blank">foo.bb</a>. In another<br>
&gt; layer, with priority 8, there is a foo.bbappend. Finally, I just added=
<br>
&gt; another layer, with priority 9, where <a href=3D"http://foo.bb" target=
=3D"_blank">foo.bb</a> is redefined as a binary<br>
&gt; recipe.<br>
&gt;<br>
&gt; When I added the last layer, I expected that to take precedence over t=
he<br>
&gt; other two. However, the bbappend for foo is still applied (which in th=
is<br>
&gt; case changed the SRC_URI, making the whole binary recipe moot). Is thi=
s<br>
&gt; really the way it&#39;s supposed to be? I would expect that lower laye=
rs cannot<br>
&gt; influence layers with higher priority at all, but that does not seem t=
o be<br>
&gt; the case.<br>
<br>
</span>That is the case, yes - bbappends are always applied. As far as I am=
 aware<br>
this is the first time this kind of situation has been asked about though s=
o<br>
it&#39;s probably just that we didn&#39;t consider it before.<br></blockquo=
te><div><br>I see. I can see a point of always applying bbappends, of cours=
e, I had just never considered it either.<br></div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
<br>
Presumably you could use a bbappend rather than a recipe in the last layer?=
<br>
You might need to stub out some of the functions of course, but it should b=
e<br>
possible.<br></blockquote><div><br></div><div>Indeed, that is a reasonable =
solution.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"lt=
r"><div>Tobias Olausson<br></div><div>M.Sc</div><div>Software Engineer</div=
><div><div><br></div><div>PELAGICORE | Experience Change</div><div>Ekelunds=
gatan 4, 6tr, SE-411 18 Gothenburg, Sweden<br></div><div>Mobile: +46(0)735-=
873444<br>E-Mail: <a href=3D"mailto:tobias.olausson@pelagicore.com" target=
=3D"_blank">tobias.olausson@pelagicore.com</a> <br></div></div><div>IRC: wt=
o @ FreeNode</div></div></div></div></div></div>
</div></div></div>

--047d7b3a7d925363ba05133402bd--
