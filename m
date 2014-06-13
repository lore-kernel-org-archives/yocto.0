Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D9A2E00BB3; Fri, 13 Jun 2014 13:28:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F780E00AFD
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 13:28:18 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id rp18so2984489iec.13
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 13:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=T8prgZ8kEWcH67IUdW1Cd2dyHyAXQ3Qrj91hpgF4fVA=;
	b=bGJZwCUiWIb+j1cEGPePVgf+sOqCIKbvBAR3elDLBXR2c8tRpg/aGxQOfLW/FNRqb+
	PX3izooLhqllbODCzdhZSr1U09MIla4GXxq66797R1NCFFzVhIZvXicApnoDQGx4XQKe
	2cFWo3w/dWdviDy59JwlcxstJhXi2wVINjdPhwa4zNOJ/bnml01jKMveGmtEJizQwwX3
	SCVumo5bwrfKFK3kD4Pk9DJIW+g7871WcxPdDwbT/yzY6FUpYfG4qML3DLKU1kVhbchL
	y3LacBFvQFSpsY2KMniuHKodmB6lNQJAQM1diEKrDLM5SJU25f8SJHgfTU5h7l4Ou5Qm
	Vb1g==
X-Received: by 10.50.50.141 with SMTP id c13mr7940839igo.0.1402691298114; Fri,
	13 Jun 2014 13:28:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Fri, 13 Jun 2014 13:27:58 -0700 (PDT)
In-Reply-To: <539B54CF.90603@dynamicdevices.co.uk>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
	<CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
	<539B54CF.90603@dynamicdevices.co.uk>
From: Chris Morgan <chmorgan@gmail.com>
Date: Fri, 13 Jun 2014 16:27:58 -0400
Message-ID: <CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Fri, 13 Jun 2014 20:28:32 -0000
Content-Type: multipart/alternative; boundary=047d7bdca2a88dc49f04fbbd8411

--047d7bdca2a88dc49f04fbbd8411
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 13, 2014 at 3:45 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

>
> On 28/05/2014 21:31, Khem Raj wrote:
> > On Tue, May 27, 2014 at 3:44 PM, Chris Morgan <chmorgan@gmail.com>
> wrote:
> >> Building a custom image with wayland and weston based on core-image,
> >> seeing issues with virtual/mesa and virtual/libgl being provided by
> >> multiple packages. Not sure if I'm doing something wrong here, like
> >> not specifying packages that provide those virtual targets?
> >>
> >>
> > you got to set PREFERRED_PROVIDERS for jpeg and virtual/libgl to be
> > either mesa or mesa-gl
>
> Did you find a solution to this Chris? I'm seeing the same thing with a
> meta-raspberrypi build of core-image-weston.
>
> The preferred provider seems set correctly by the RPi layer though
>
> (rpi-default-providers.inc)
> PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>
> Thanks,
>
> Alex
>
>

Hi Alex.

I haven't actually gotten back to this but I (or someone else I work with)
is going to be getting back to it in the next few weeks as we try to get
accelerated graphics on the bbb.

Chris

--047d7bdca2a88dc49f04fbbd8411
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jun 13, 2014 at 3:45 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D=
"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicde=
vices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D""><br>
On 28/05/2014 21:31, Khem Raj wrote:<br>
&gt; On Tue, May 27, 2014 at 3:44 PM, Chris Morgan &lt;<a href=3D"mailto:ch=
morgan@gmail.com">chmorgan@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Building a custom image with wayland and weston based on core-imag=
e,<br>
&gt;&gt; seeing issues with virtual/mesa and virtual/libgl being provided b=
y<br>
&gt;&gt; multiple packages. Not sure if I&#39;m doing something wrong here,=
 like<br>
&gt;&gt; not specifying packages that provide those virtual targets?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; you got to set PREFERRED_PROVIDERS for jpeg and virtual/libgl to be<br=
>
&gt; either mesa or mesa-gl<br>
<br>
</div>Did you find a solution to this Chris? I&#39;m seeing the same thing =
with a<br>
meta-raspberrypi build of core-image-weston.<br>
<br>
The preferred provider seems set correctly by the RPi layer though<br>
<br>
(rpi-default-providers.inc)<br>
PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;mesa-gl&quot;<br>
<br>
Thanks,<br>
<br>
Alex<br>
<br></blockquote><div><br></div><div><br></div><div>Hi Alex.</div><div><br>=
</div><div>I haven&#39;t actually gotten back to this but I (or someone els=
e I work with) is going to be getting back to it in the next few weeks as w=
e try to get accelerated graphics on the bbb.</div>

<div><br></div><div>Chris</div><div>=C2=A0</div></div><br></div></div>

--047d7bdca2a88dc49f04fbbd8411--
