Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0FC0E013D2
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 02:16:35 -0700 (PDT)
Received: by qatp27 with SMTP id p27so1126629qat.14
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 02:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=64bZF+mwsjeUqA5MYKNfW6yJ8UmO0gU9mzUsjRFXAfQ=;
	b=uydW/MJ4eK4pN+AdzEdFyw73g08nDcFKGJs0XzZnNPXoXkqWX1SLyFOA72L6M/xhik
	+86S+SBLBY0nXFsdPKodtoo/i9KOtBgYSlTnbNWsHAzHTr3i13Esqlv7Zj0rdeosxuIK
	wwd4ReQej5hRgAf0oFnN4t7HKqfoBw2CeMjC61i37SINYpLg013BuS1fHYhYBmBh/pXv
	6vshKnlOESL+2yHU5YoC4zQ5nw3XGOT9jmhNe4R2rsXV1ObG4fWJY5sr62+TU6yWfpRQ
	0OMP0/lcHdaAqGbOYGNqzUkrz9BHeUexmxFW4pRtuBvDaUtfQJZC0M+RyFIWMPgzWX0M
	tNBQ==
MIME-Version: 1.0
Received: by 10.229.135.133 with SMTP id n5mr8528694qct.124.1348478188719;
	Mon, 24 Sep 2012 02:16:28 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Mon, 24 Sep 2012 02:16:28 -0700 (PDT)
In-Reply-To: <9E8C582C-5DC7-4239-B2ED-9F3282861D38@keylevel.com>
References: <CAB3sqtaLL81HnFqnE5FKy0j7o8cpNUj6S7qVk6JO3EHTKBPDvg@mail.gmail.com>
	<9E8C582C-5DC7-4239-B2ED-9F3282861D38@keylevel.com>
Date: Mon, 24 Sep 2012 10:16:28 +0100
Message-ID: <CAB3sqtbAiXcExJVa4B=O=vyLMAYEDSFWQa+BwGAGessmd2PFqA@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: what are libraries required to use SDL
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
X-List-Received-Date: Mon, 24 Sep 2012 09:16:35 -0000
Content-Type: multipart/alternative; boundary=00248c6a672e6d102204ca6f0b6a

--00248c6a672e6d102204ca6f0b6a
Content-Type: text/plain; charset=ISO-8859-1

I'm using the MM soc i.MX6 from freescale. My application doesn't require a
full fledged desktop GUI so I'm basing my work on minimal image. The
application needs to play video "Possibly full screen" using gstreamer and
just draw some buttons over the video for control using SDL.

I have included libsdl - libsdl-image - libx11 and this is what was
installed:
root@imx6qsabrelite:~# rpm -qa |grep sdl
libsdl-1.2-0-1.2.15-r0.armv7a
libsdl-image-1.2-0-1.2.10-r3.armv7a

root@imx6qsabrelite:~# rpm -qa |grep libx
libxau6-1.0.7-r0.armv7a
libxdmcp6-1.1.1-r0.armv7a
libxml2-2.7.8-r7.armv7a
libxcb1-1.8.1-r0.armv7a
libx11-6-1.4.4-r3.armv7a
libxext6-1.3.1-r0.armv7a
libx11-xcb1-1.4.4-r3.armv7a
libxfixes3-5.0-r0.armv7a
libxrender1-0.9.7-r0.armv7a
libxi6-1.4.5-r0.armv7a
libxxf86vm1-1.1.2-r0.armv7a
libxdamage1-1.1.3-r1.armv7a
libxtst6-1.2.1-r0.armv7a

I still get the same error message so I'm not sure what else I need to do
to tell SDL to use HDMI video output?

If it easer to use DirectFB rather than libx11 I can do that. Is it
only directfb that I need to include? Is there any configuration parameters
that I need to enable?

Thanks in advance.

On Sun, Sep 23, 2012 at 9:09 PM, Chris Tapp <opensource@keylevel.com> wrote:

> On 23 Sep 2012, at 20:07, Tarek El-Sherbiny wrote:
>
> > Hi,
> >
> > I'm porting a program which uses SDL to openembedded Yocto-project. I
> have included libsdl to my image but SDL is failling to initialize
> SDL_Init(SDL_INIT_VIDEO) gives:
> >  No available video device
> >
> > What are the packages that I need to install to get SDL video device?
>
> What graphics do you have available? I've got it working ok using DirectFB
> and X11 should be ok as well.
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>

--00248c6a672e6d102204ca6f0b6a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m using the MM soc i.MX6 from freescale. My application doesn&#39;t r=
equire a full fledged desktop GUI so I&#39;m basing my work on=A0minimal=A0=
image. The application needs to play video &quot;Possibly full screen&quot;=
 using gstreamer and just draw some buttons over the video for control usin=
g SDL.<div>
<br>I have included libsdl -=A0libsdl-image -=A0libx11 and this is what was=
 installed:</div><div><div>root@imx6qsabrelite:~# rpm -qa |grep sdl</div><d=
iv>libsdl-1.2-0-1.2.15-r0.armv7a</div><div>libsdl-image-1.2-0-1.2.10-r3.arm=
v7a</div>
</div><div><br></div><div><div>root@imx6qsabrelite:~# rpm -qa |grep libx</d=
iv><div>libxau6-1.0.7-r0.armv7a</div><div>libxdmcp6-1.1.1-r0.armv7a</div><d=
iv>libxml2-2.7.8-r7.armv7a</div><div>libxcb1-1.8.1-r0.armv7a</div><div>
libx11-6-1.4.4-r3.armv7a</div><div>libxext6-1.3.1-r0.armv7a</div><div>libx1=
1-xcb1-1.4.4-r3.armv7a</div><div>libxfixes3-5.0-r0.armv7a</div><div>libxren=
der1-0.9.7-r0.armv7a</div><div>libxi6-1.4.5-r0.armv7a</div><div>libxxf86vm1=
-1.1.2-r0.armv7a</div>
<div>libxdamage1-1.1.3-r1.armv7a</div><div>libxtst6-1.2.1-r0.armv7a</div></=
div><div><br></div><div>I still get the same error message so I&#39;m not s=
ure what else I need to do to tell SDL to use HDMI video output?</div><div>
<br></div><div>If it easer to use DirectFB rather than libx11 I can do that=
. Is it only=A0directfb that I need to include? Is there any configuration =
parameters that I need to enable?</div><div><br></div><div>Thanks=A0in adva=
nce.=A0</div>
<div><br><div class=3D"gmail_quote">On Sun, Sep 23, 2012 at 9:09 PM, Chris =
Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" targe=
t=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 23 Sep 2012, at 20:07, Tarek El-=
Sherbiny wrote:<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m porting a program which uses SDL to openembedded Yocto-project=
. I have included libsdl to my image but SDL is failling to initialize SDL_=
Init(SDL_INIT_VIDEO) gives:<br>
&gt; =A0No available video device<br>
&gt;<br>
&gt; What are the packages that I need to install to get SDL video device?<=
br>
<br>
</div></div>What graphics do you have available? I&#39;ve got it working ok=
 using DirectFB and X11 should be ok as well.<br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
<br>
<br>
</blockquote></div><br></div>

--00248c6a672e6d102204ca6f0b6a--
