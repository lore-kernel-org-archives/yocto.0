Return-Path: <matteo.facchinetti@sirius-es.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E6DDE00D15; Fri,  5 Apr 2019 08:54:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F15E1E00BB7
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 08:54:43 -0700 (PDT)
Received: by mail-qk1-f175.google.com with SMTP id a71so4117923qkg.2
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 08:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/tKdl9x+96Vajm5STiUhn9QMfW4rzvvwFeD/tjI0Lzw=;
	b=b+xsKZS8WsyDHW+nBv2lQSa6TTiJduHvB4QjsvNEBgw+DaxIpg/DLTtQ7hd2RvYMzA
	mGQ2z7glvgN0t/boeXAQqWHlzeYkLYdfk9kgHg++f6JmEgWP+/HbZSp6sXSHj0y7mYk6
	X1KfcHCGEmFMqi1xXO++dcFZdPRCf/7Q8D9jEKoo8xguF0TZWy3wzWmAflDVlUhoWK4h
	MIH40KkKCfN+C8M4Z+gF+0niffHApu+aX9B/8hMuNsZB9MaxWt59pRXm39QJsNcwpJ74
	wwsWhz20M/o93F5LwFd3cc4mmPrCqFH/67M0+xVVWBjgXjFI8WYYoqxYk+2qzsDPkCrF
	1s7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/tKdl9x+96Vajm5STiUhn9QMfW4rzvvwFeD/tjI0Lzw=;
	b=fKpTxDuE1c/5tUsJGUZ7/FNDCtQstOtiqNNEijaATrYtDlgh6LleHpS7ubZqZ4Z7FD
	BKdtLsehX4dX1Kmrx8CSp1ntQEeSQn5huWy3Q6DKEkeeKut4bIJI9ZK68rDQhvxDfaYs
	7DtF0c8oCeVifKAzq8XMsMSq5YHuCUQlVpqF/W8AId+ey5tRTrVn/PM1sI8/QX3UXXUK
	qiTCv+F+/T5wPRjxDFRwVCllFfjLW42LpYMLpksQ87/08VkaNhVk8LTJX7xY+agXec2C
	SRAFM93j32/b2S5V2/Vvgs7Oj8ODLJVBku9WVkpeqk2NsqTtAz8bmqNJ1iK7rItCPepq
	UU0g==
X-Gm-Message-State: APjAAAXo2qjARGAUuL9g7JwGuAGmD1MKxPXGQk+y2F9CBWnIf+Rykq5R
	huINXohSFuGlhrJeRTE7lD7LSwd5SBPi0IzKNZGXmW0t6KvShJq7
X-Google-Smtp-Source: APXvYqwEKfSsAsyEig8iJv4s75sYynM8hjsdu00/74a0br/X4BwbDMDI7HM2WPuZS4/fy2J84vp8IcvqRrR9bqMoqy0=
X-Received: by 2002:a37:4e4d:: with SMTP id c74mr11174363qkb.230.1554479683167;
	Fri, 05 Apr 2019 08:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAjAsixRKTj9pt1gSC5cT149Y4Kgy5WYxjLmWRU9z9LhY-2-ww@mail.gmail.com>
	<036ebe30-ce24-9e66-9e00-b6431023946c@denx.de>
In-Reply-To: <036ebe30-ce24-9e66-9e00-b6431023946c@denx.de>
From: Matteo Facchinetti <matteo.facchinetti@sirius-es.it>
Date: Fri, 5 Apr 2019 17:54:32 +0200
Message-ID: <CAAjAsiyRnnFKgJ95H9Hk2JkXU-p0sK5xZJPcNvXC6CMzHGrKqg@mail.gmail.com>
To: Stefano Babic <sbabic@denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: require and image.bbappend
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
X-List-Received-Date: Fri, 05 Apr 2019 15:54:45 -0000
Content-Type: multipart/alternative; boundary="000000000000537d2e0585ca8149"

--000000000000537d2e0585ca8149
Content-Type: text/plain; charset="UTF-8"

Hi Stefano,

Il giorno gio 4 apr 2019 alle ore 17:32 Stefano Babic <sbabic@denx.de> ha
scritto:

> Hi Matteo,
>
> On 04/04/19 15:35, Matteo Facchinetti wrote:
> > Hi,
> >
> > I encountered a problem when try to add packages in my image recipe, but
> > I don't understernd if I wrong something or I have to do it in another
> way.
> >
> > In detail, in my common_layer there are:
> >    - image_base.bb <http://image_base.bb> : yocto base image
> >    - image_with_graphicsupport.bb <http://image_with_graphicsupport.bb>
> > : where include image_base.bb <http://image_base.bb> (require
> > image_base.bb <http://image_base.bb>)
> >
> > Now, in my BSP layer, I want to add some packages to the image_base.bb
> > <http://image_base.bb>, so I create here the image_base.bbappend file.
> > But when I try to compile image_with_graphicsupport.bb
> > <http://image_with_graphicsupport.bb> the result is not how expected.
> > Image_with_graphicsupport.bb doesn't add packages contained in
> > image_base.bbappend but only the packages contained in image_base.bb
> > <http://image_base.bb>.
> >
> > Is true that when include an image to another with require statement,
> > you can't extend the base image with a bbappend?
>
> Yes, it is true, because the file is included and it is not anymore like
> a recipe that can be extend. It will be searched for a
> image_with_graphicsupport.bb append, not image_base.bbappend.
>
>
Ok, understood.


> IMHO you can easy reach your goal if you write a packagegroup recipe
> where you put all packages you have in the IMAGE_INSTALL of your
> image_base.bb. You can then have a .bbappend for the packagegroup in
> your BSP layer (and this then works) and you put the packagegroup in the
> IMAGE_INSTALL directive of both image_base.bb and
> Image_with_graphicsupport.bb.
>
>
Thank you very much for this tip.
I have done exactly in this way and works perfectly and it's easy to manage.

However there's a part containded in the image_base.bb recipe:
    inherit core-image
    IMAGE_FEATURE_append = "..."

that I had to duplicate into the Image_with_graphicsupport.bb too.

It's not a problem but is it possible to put them in a common recipe like
packagegroup?

--000000000000537d2e0585ca8149
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><br></div>Hi Stefano,<di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il g=
iorno gio 4 apr 2019 alle ore 17:32 Stefano Babic &lt;<a href=3D"mailto:sba=
bic@denx.de">sbabic@denx.de</a>&gt; ha scritto:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Matteo,<br>
<br>
On 04/04/19 15:35, Matteo Facchinetti wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I encountered a problem when try to add packages in my image recipe, b=
ut<br>
&gt; I don&#39;t understernd if I wrong something or I have to do it in ano=
ther way.<br>
&gt; <br>
&gt; In detail, in my common_layer there are:<br>
&gt; =C2=A0 =C2=A0- <a href=3D"http://image_base.bb" rel=3D"noreferrer" tar=
get=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.bb" rel=
=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt; : yocto base=
 image=C2=A0<br>
&gt; =C2=A0 =C2=A0- <a href=3D"http://image_with_graphicsupport.bb" rel=3D"=
noreferrer" target=3D"_blank">image_with_graphicsupport.bb</a> &lt;<a href=
=3D"http://image_with_graphicsupport.bb" rel=3D"noreferrer" target=3D"_blan=
k">http://image_with_graphicsupport.bb</a>&gt;<br>
&gt; : where include <a href=3D"http://image_base.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">image_base.bb</a> &lt;<a href=3D"http://image_base.bb" rel=
=3D"noreferrer" target=3D"_blank">http://image_base.bb</a>&gt; (require<br>
&gt; <a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_blank">=
image_base.bb</a> &lt;<a href=3D"http://image_base.bb" rel=3D"noreferrer" t=
arget=3D"_blank">http://image_base.bb</a>&gt;)<br>
&gt; <br>
&gt; Now, in my BSP layer, I want to add some packages to the <a href=3D"ht=
tp://image_base.bb" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a><=
br>
&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_bla=
nk">http://image_base.bb</a>&gt;, so I create here the image_base.bbappend =
file.<br>
&gt; But when I try to compile <a href=3D"http://image_with_graphicsupport.=
bb" rel=3D"noreferrer" target=3D"_blank">image_with_graphicsupport.bb</a><b=
r>
&gt; &lt;<a href=3D"http://image_with_graphicsupport.bb" rel=3D"noreferrer"=
 target=3D"_blank">http://image_with_graphicsupport.bb</a>&gt; the result i=
s not how expected.<br>
&gt; Image_with_graphicsupport.bb doesn&#39;t add packages contained in<br>
&gt; image_base.bbappend but only the packages contained in <a href=3D"http=
://image_base.bb" rel=3D"noreferrer" target=3D"_blank">image_base.bb</a><br=
>
&gt; &lt;<a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_bla=
nk">http://image_base.bb</a>&gt;.<br>
&gt; <br>
&gt; Is true that when include an image to another with require statement,<=
br>
&gt; you can&#39;t extend the base image with a bbappend?<br>
<br>
Yes, it is true, because the file is included and it is not anymore like<br=
>
a recipe that can be extend. It will be searched for a<br>
<a href=3D"http://image_with_graphicsupport.bb" rel=3D"noreferrer" target=
=3D"_blank">image_with_graphicsupport.bb</a> append, not image_base.bbappen=
d.<br>
<br></blockquote><div><br></div><div>Ok, understood.</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
IMHO you can easy reach your goal if you write a packagegroup recipe<br>
where you put all packages you have in the IMAGE_INSTALL of your<br>
<a href=3D"http://image_base.bb" rel=3D"noreferrer" target=3D"_blank">image=
_base.bb</a>. You can then have a .bbappend for the packagegroup in<br>
your BSP layer (and this then works) and you put the packagegroup in the<br=
>
IMAGE_INSTALL directive of both <a href=3D"http://image_base.bb" rel=3D"nor=
eferrer" target=3D"_blank">image_base.bb</a> and<br>
Image_with_graphicsupport.bb.<br>
<br></blockquote><div><br></div><div><div>Thank you very much for this tip.=
</div><div>I have done exactly in this way and works perfectly and it&#39;s=
 easy to manage.</div><div><br></div><div>However there&#39;s a part contai=
nded in the <a href=3D"http://image_base.bb">image_base.bb</a> recipe:</div=
><div>=C2=A0 =C2=A0 inherit core-image</div><div>=C2=A0 =C2=A0 IMAGE_FEATUR=
E_append =3D &quot;...&quot;</div><div><br></div><div>that I had to duplica=
te into the Image_with_graphicsupport.bb too.</div><div><br></div><div>It&#=
39;s not a problem but is it possible to put them in a common recipe like p=
ackagegroup?</div></div><div><br></div><div><br></div></div></div></div></d=
iv>

--000000000000537d2e0585ca8149--
