Return-Path: <tylerjones64@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8705DE0070B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 10:02:37 -0700 (PDT)
Received: by lboj14 with SMTP id j14so7385379lbo.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 10:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=F5Hq8ku3Vb+/qz60yr/R7/npQYliRkjL+7uCrAeU2N8=;
	b=WztINi0qybqJavshLgMrAgHplWUBBPPb+y9OpoQ7GSYIv9HI1avemQeuJoXWSvU2Ar
	ZyB5hodz0G+GiWjrw2PBYD8tTHn93D8zelVYSDvKczgh2NwCuNCQqVG0Q4Th/kbQsleq
	+qyFwp4oZBr59JjttSGr4nqLK79wtGqa0/mkTjciN1zEnh+vidQTP1GmB2XfsXVTZlDS
	L/+bwPDM6DFOMOzPt/uL5ok2/CAncfFmrJ+qFHVbdOU2SuPRo88FncjwEzvQ+G/wCFIK
	+/zNEXZlveWnfQNUvTX32sTQCWCOYYB+ZLXUfVO2cx1pZPS9/b1ohzyaDfZLm8ol9Bfi
	hRCg==
Received: by 10.152.123.244 with SMTP id md20mr19291531lab.0.1340125356159;
	Tue, 19 Jun 2012 10:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.48.10 with HTTP; Tue, 19 Jun 2012 10:02:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1206190526500.28865@oneiric>
References: <alpine.DEB.2.02.1206190526500.28865@oneiric>
From: Tyler Jones <tylerjones64@gmail.com>
Date: Tue, 19 Jun 2012 10:02:16 -0700
Message-ID: <CAN57a29Jm73jiaC8xuZKjsxYXLduwcKq5z09scK5UGzxMGTC6Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does yocto dev manual emphasize meta-intel BSP layer so much?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jun 2012 17:02:38 -0000
Content-Type: multipart/alternative; boundary=f46d042f9cd8cef1bc04c2d63fa1

--f46d042f9cd8cef1bc04c2d63fa1
Content-Type: text/plain; charset=ISO-8859-1

On 19 June 2012 02:29, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

>
> "Supported Board Support Packages (BSPs): The Yocto Project provides
> a layer called meta-intel and it is maintained in its own separate Git
> repository. The meta-intel layer contains many supported BSP
> Layers..."
>
>  well, yes, but that makes it sound like it's the *only* BSP layer of
> any consequence.  perhaps that could be reworded?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

It could be reworded but you have to remember that Intel is supporting the
Yocto Project [1].
I recall that there is a link to the OE Layer Index [2] in the
documentation that has many BSP layers.
I do like how it is worded on the downloads page [3] under the BSP section,
though I feel reference to the OE Layer Index [2] should be put on this
page as well.

[1] http://www.osnews.com/story/23963/Intel_Announces_The_Yocto_Project
[2] http://www.openembedded.org/wiki/LayerIndex
[3] http://www.yoctoproject.org/download

-Tyler Jones

--f46d042f9cd8cef1bc04c2d63fa1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div><div class=3D"gmail_quote">On 19 June 2012 02:29, Robert P. J. Da=
y <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"=
_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

<br>
&quot;Supported Board Support Packages (BSPs): The Yocto Project provides<b=
r>
a layer called meta-intel and it is maintained in its own separate Git<br>
repository. The meta-intel layer contains many supported BSP<br>
Layers...&quot;<br>
<br>
 =A0well, yes, but that makes it sound like it&#39;s the *only* BSP layer o=
f<br>
any consequence. =A0perhaps that could be reworded?<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><div><br></div>It could be reworded but you have to reme=
mber that=A0Intel=A0is supporting the Yocto Project [1].<div>I recall that =
there is a link to the OE Layer Index [2] in the documentation that has man=
y BSP layers.</div>

<div>I do like how it is worded on the downloads page [3] under the BSP sec=
tion, though I feel reference to the=A0OE Layer Index [2] should be put on =
this page as well.</div><div><div><br></div><div>[1]=A0<a href=3D"http://ww=
w.osnews.com/story/23963/Intel_Announces_The_Yocto_Project">http://www.osne=
ws.com/story/23963/Intel_Announces_The_Yocto_Project</a></div>

<div>[2]=A0<a href=3D"http://www.openembedded.org/wiki/LayerIndex">http://w=
ww.openembedded.org/wiki/LayerIndex</a></div><div>[3]=A0<a href=3D"http://w=
ww.yoctoproject.org/download">http://www.yoctoproject.org/download</a></div=
><div>

<br clear=3D"all">-Tyler Jones<br></div></div></div></div>

--f46d042f9cd8cef1bc04c2d63fa1--
