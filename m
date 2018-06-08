Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C667E00D4A; Fri,  8 Jun 2018 00:22:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CE6E00D1A
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 00:22:09 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id u4-v6so14830838iof.2
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2018 00:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NKBVf66gBSUN6N/MndCaPf+1sdDfdXlYOXAlmVbQP8Q=;
	b=DsZngr1lRrj0RKYOV06wx5HKB6gQOVKkmtn1IC9gd2Vm1NFiEOphBgOT1FPTwVrbub
	Kctp4Tt8kG8ASm1Is84Yeor/1ZMwy/U4wzJMM1+IJCMyHE+hUbNqdKBNPhVXkpEjJj/0
	FQvzTl9Vx86exnd8TetwYk8Bz9OgUxXIdTEYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NKBVf66gBSUN6N/MndCaPf+1sdDfdXlYOXAlmVbQP8Q=;
	b=Nmc8iR47JpuT3TMuPn6T7h4CsoNpqAkU18NH3oULWtHoogAIYYlAZbgKit/XmfVFca
	d7+qw+gYD8G/1OorB7nX9u/BPkaaZe14p3ILSBB0aR9Lc70m+BQCJs1duoV0DGwSozTG
	pBpAwV4pTkk+gDcQ2x4zidD7rlhNKqLnMn0gBfS31v+kO8i0/Iqy1ah7ndOZCnVTBvn2
	5xLAITFB8RuJdgnjnJoRuldoAWgU8Vx7ME53YU7do4Hczi7oMFu01ww3LMRLrw5y8Jul
	KgM9p3xWowShGKKhctfgfKcgy41yvY4y1uiB9PWOl5SwxLBr3sMcIpWMrtvnyei/tL9A
	hMvQ==
X-Gm-Message-State: APt69E0ihjCqAEATeIVwFheLfep0cCyBdrH1f58QFnTS0udJfRmucV/0
	IPP6ZtE3kphCuP3ASveOFP+OLomQtQpUoS1Q/919HQ==
X-Google-Smtp-Source: ADUXVKKEGPn8WA/+Im/tNtbXdEVsPM15R6ckDH6l3RcGYhiaAZAyDPwP+s5PwCQeK3A3hmPDPRz8f0ObXVf609Cump4=
X-Received: by 2002:a6b:214a:: with SMTP id
	h71-v6mr3955139ioh.229.1528442529133; 
	Fri, 08 Jun 2018 00:22:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Fri, 8 Jun 2018 00:22:08 -0700 (PDT)
In-Reply-To: <20180607164704.GA24833@linux-uys3>
References: <CAALXFYwr=UUkS7dVb3QzHzsoQ3pU56j58CZunkKJkRYYcpMv3g@mail.gmail.com>
	<20180607164704.GA24833@linux-uys3>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 8 Jun 2018 09:22:08 +0200
Message-ID: <CAALXFYww07W-Srar1CNJLvqF2KL6aUHg+qsNA0VELJ1h9j1jNw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Issue when integrating different bsp-layers on a single bblayers.conf
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
X-List-Received-Date: Fri, 08 Jun 2018 07:22:11 -0000
Content-Type: multipart/alternative; boundary="000000000000024cb2056e1c427d"

--000000000000024cb2056e1c427d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello.

Many thanks for your explanation Mr. Trevor. That makes sense to me. At
least now we know we are in the good way.

2018-06-07 18:47 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:

> Hi Iv=C3=A1n,
>
> On Thu 2018-06-07 @ 04:39:11 PM, Iv=C3=A1n Castell wrote:
> > When setting the "build" directory with a bblayers.conf customized for =
a
> > single platform, each platform builds the image recipe properly.
> >
> > However, when I have integrated all bsp-layers in a single bblayers.con=
f,
> > the compilation of some platforms has been broken.
>
> This is a problem that comes up fairly often, and is a bug with the BSP
> layer
> itself. All BSP layers are supposed to be created so that they work well
> when
> intermixed with other BSP layers, but often they don't. See Angstrom:
>
>         http://www.angstrom-distribution.org/
>
> > The specific problem is this: one bsp layer (meta-rockchip +
> > meta-rockchip-extra) defines a recipes-graphics/mesa/mesa_%.bbappend
> with
> > this content inside:
>
> I am the maintainer of the non-vendor meta-rockchip layer:
>
>         https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/
>
> The fact you mention this problem and meta-rockchip-extra implies to me
> that
> you're using the vendor-provided meta-rockchip and meta-rockchip-extra:
>
>         https://github.com/rockchip-linux/meta-rockchip
>         https://github.com/rockchip-linux/meta-rockchip-extra
>

Exactly those are the layers we are using. We use all hardware platforms to
play videos using a Qt + gstreamer application.

The problem is, the vendor is only interested in their own hardware, so to
> them there's no reason to ever mix their BSP layer with any other BSP
> layer.
> There's no interest on their part to "play well" with others or to check
> whether their layers comply with community guidelines.
>
> As a person who likes OpenEmbedded as a whole, I try my best to make sure
> any
> layer I'm interested in plays well within the entire OpenEmbedded
> ecosystem.
> However, because mali graphics are currently all binary blobs and project=
s
> like Lima and Panfrost aren't yet ready for prime-time, there isn't much
> support yet for _accelerated_ graphics in the non-vendor layer.
>

I hope some of these open projects will success to improve the current
situation.



> >     - Can you suggest a fix to solve this issue?
>
> Fix the problem in the layer by using MACHINE-specific OVERRIDES and subm=
it
> a pull request to the owners. However, I've noticed there haven't been an=
y
> updates to their OE layers in the past 4 months or more, so I can't help
> wonder if they've abandoned them.
>

Will try to fix it as suggested and will send the PR.



> Out of curiosity, which MACHINE(s) are you interested in?
>

Current working platforms are:
    * Intel Celeron J1900 (meta-intel).
    * Rockchip RK3288 Merrii-K2 (meta-rockchip)

Planning to start working with some Allwinner-based board (meta-sunxi).

Have a nice day! :-)

Kind regards,
  --  Ivan

--000000000000024cb2056e1c427d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello.</div><div><br></div><div><span style=3D"f=
ont-size:small;text-decoration-style:initial;text-decoration-color:initial;=
background-color:rgb(255,255,255);float:none;display:inline">Many t</span><=
span style=3D"font-size:small;text-decoration-style:initial;text-decoration=
-color:initial;background-color:rgb(255,255,255);float:none;display:inline"=
>hanks for your explanation Mr. Trevor.<span>=C2=A0</span></span><span styl=
e=3D"font-size:small;text-decoration-style:initial;text-decoration-color:in=
itial;background-color:rgb(255,255,255);float:none;display:inline">That mak=
es sense to me.=C2=A0</span><span style=3D"font-size:small;text-decoration-=
style:initial;text-decoration-color:initial;background-color:rgb(255,255,25=
5);float:none;display:inline">At least now we know we are in the good way.<=
/span><br></div><div><br></div><div><div class=3D"gmail_extra"><div class=
=3D"gmail_quote">2018-06-07 18:47 GMT+02:00 Trevor Woerner <span dir=3D"ltr=
">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmai=
l.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Iv=C3=A1n,<br>
<span class=3D""><br>
On Thu 2018-06-07 @ 04:39:11 PM, Iv=C3=A1n Castell wrote:<br>
&gt; When setting the &quot;build&quot; directory with a bblayers.conf cust=
omized for a<br>
&gt; single platform, each platform builds the image recipe properly.<br>
&gt; <br>
&gt; However, when I have integrated all bsp-layers in a single bblayers.co=
nf,<br>
&gt; the compilation of some platforms has been broken.<br>
<br>
</span>This is a problem that comes up fairly often, and is a bug with the =
BSP layer<br>
itself. All BSP layers are supposed to be created so that they work well wh=
en<br>
intermixed with other BSP layers, but often they don&#39;t. See Angstrom:<b=
r>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://www.angstrom-distribution.org=
/" rel=3D"noreferrer" target=3D"_blank">http://www.angstrom-<wbr>distributi=
on.org/</a><br>
<span class=3D""><br>
&gt; The specific problem is this: one bsp layer (meta-rockchip +<br>
&gt; meta-rockchip-extra) defines a recipes-graphics/mesa/mesa_%.<wbr>bbapp=
end with<br>
&gt; this content inside:<br>
<br>
</span>I am the maintainer of the non-vendor meta-rockchip layer:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://git.yoctoproject.org/cgit/cg=
it.cgi/meta-rockchip/" rel=3D"noreferrer" target=3D"_blank">https://git.yoc=
toproject.org/<wbr>cgit/cgit.cgi/meta-rockchip/</a><br>
<br>
The fact you mention this problem and meta-rockchip-extra implies to me tha=
t<br>
you&#39;re using the vendor-provided meta-rockchip and meta-rockchip-extra:=
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://github.com/rockchip-linux/me=
ta-rockchip" rel=3D"noreferrer" target=3D"_blank">https://github.com/rockch=
ip-<wbr>linux/meta-rockchip</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://github.com/rockchip-linux/me=
ta-rockchip-extra" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
rockchip-<wbr>linux/meta-rockchip-extra</a><br></blockquote><div><br></div>=
<div>Exactly those are the layers we are using. We use all hardware platfor=
ms to play videos using a Qt + gstreamer application.</div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">
The problem is, the vendor is only interested in their own hardware, so to<=
br>
them there&#39;s no reason to ever mix their BSP layer with any other BSP l=
ayer.<br>
There&#39;s no interest on their part to &quot;play well&quot; with others =
or to check<br>
whether their layers comply with community guidelines.<br>
<br>
As a person who likes OpenEmbedded as a whole, I try my best to make sure a=
ny<br>
layer I&#39;m interested in plays well within the entire OpenEmbedded ecosy=
stem.<br>
However, because mali graphics are currently all binary blobs and projects<=
br>
like Lima and Panfrost aren&#39;t yet ready for prime-time, there isn&#39;t=
 much<br>
support yet for _accelerated_ graphics in the non-vendor layer.<br></blockq=
uote><div><br></div><div>I hope some of these open projects will success to=
 improve the current situation.=C2=A0<br></div><div><br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><span class=3D"">&gt;=C2=A0 =C2=A0 =C2=
=A0- Can you suggest a fix to solve this issue?<br>
<br>
</span>Fix the problem in the layer by using MACHINE-specific OVERRIDES and=
 submit<br>
a pull request to the owners. However, I&#39;ve noticed there haven&#39;t b=
een any<br>
updates to their OE layers in the past 4 months or more, so I can&#39;t hel=
p<br>
wonder if they&#39;ve abandoned them.<br></blockquote><div><br></div><div>W=
ill try to fix it as suggested and will send the PR.</div><div><br></div><d=
iv>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Out of curiosity, which MACHI=
NE(s) are you interested in?<br></blockquote><div><br></div><div><span styl=
e=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">Current =
working platforms are:</span></div><div>=C2=A0 =C2=A0 * Intel Celeron J1900=
 (meta-intel).<br></div><div><span style=3D"font-size:small;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline">=C2=A0 =C2=A0 * Rockchip RK3288 Merrii-K2 (m=
eta-rockchip)</span><br></div><div><span style=3D"font-size:small;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><br></span></div><div><span style=3D"f=
ont-size:small;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">Planning to st=
art working with some Allwinner-based board (meta-sunxi).</span></div><div>=
<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><br></span></div><div><span style=3D"font-size:small;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">Have a nice day! :-)</span></div><div><span style=
=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><br></spa=
n></div><div><span style=3D"font-size:small;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">Kind regards,</span></div><div><span style=3D"font-size:smal=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">=C2=A0 --=C2=A0 Ivan</span>=
</div><div><br></div></div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra"><br></div><br><div class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><br><br></div>
</div></div></div></div>

--000000000000024cb2056e1c427d--
