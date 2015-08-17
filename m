Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D33E00AA8; Mon, 17 Aug 2015 00:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBB4DE0049B
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 00:57:11 -0700 (PDT)
Received: by lbcbn3 with SMTP id bn3so76496713lbc.2
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 00:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=MTz8lLFKmKp1MSuqbKb/Cv5kIoHL99sAJtW1RQPjBbA=;
	b=RqB6d+fPjmNaVT33R8A45Ici7EcNDHwjFi+3AEIigu+Fkf81wsJOIGnDzZ/0osKjZc
	uJ/WDvCbRVizhIuaVXqXDA0NJUrtDEaoOtbJ+QRXBEZeAIqkJMi8FG3S8Z+rIAdrJ7L6
	2aDUsaR6BRFP2cJIv5QqUXRjUx9ztXwtHiCX4F5hRS/FU99AiVc34uAKVa+ymgrEFbJ4
	gsk3jaV5rtkBnVfeKi1uWEJ3guDS2wVCdohGv6kOUIE5uBgcV5xEUS1CBurlfqBd4CNy
	qYpVInhIU9V+viNn8qa3VroZo3AsWUpmHtTn+N0D11xWmmLVd7Djo8B/IDNwSu5itCft
	MI2Q==
X-Gm-Message-State: ALoCoQkw93PIL3o00ve9d6iyRU2FowcxOG0FDYsc8XZsfGJiH0jZi2aUQFF+YxIE08eC4/3dOq84
MIME-Version: 1.0
X-Received: by 10.152.37.2 with SMTP id u2mr127240laj.70.1439798229500; Mon,
	17 Aug 2015 00:57:09 -0700 (PDT)
Received: by 10.112.91.67 with HTTP; Mon, 17 Aug 2015 00:57:09 -0700 (PDT)
X-Originating-IP: [109.198.133.168]
In-Reply-To: <2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
Date: Mon, 17 Aug 2015 09:57:09 +0200
Message-ID: <CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Mon, 17 Aug 2015 07:57:18 -0000
Content-Type: multipart/alternative; boundary=089e0158b5e2049fec051d7d267e

--089e0158b5e2049fec051d7d267e
Content-Type: text/plain; charset=UTF-8

Hello,

On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas <
> javier@osg.samsung.com <javascript:;>> wrote:
> >
> > This patch adds to the README a section that explains the RPi can
> different
> > graphics stacks and that the user can choose by manually changing
> providers.
> >
> > Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com
> <javascript:;>>
> >
> > ---
> >
> > Changes in v2: None
> >
> > README | 9 +++++++++
> > 1 file changed, 9 insertions(+)
> >
> > diff --git a/README b/README
> > index 678c0eb4a4e3..0569b353870c 100644
> > --- a/README
> > +++ b/README
> > @@ -25,6 +25,7 @@ Contents:
> >     2.K. Boot to U-Boot
> >     2.L. Image with Initramfs
> >     2.M. Device tree support
> > +    2.O. Graphic stacks
> > 3. Extra apps
> >     3.A. omxplayer
> > 4. Source code and mirrors
> > @@ -195,6 +196,14 @@ kernels.
> > NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always
> disabled for
> >       older kernel versions.
> >
> > +2.O. Graphic stacks
> > +===================
> > +The Raspberry Pi boards can use one of two graphics stacks: The userland
> > +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
> > +is used since the vc4 is still experimental. But this can be changed by
> > +modifying the defaults for the kernel, egl, gles2, libgl and mesa
> providers.
> > +This is explained in the conf/machine/include/rpi-default-providers.inc
> file.
> > +
>
> you may want to add pointer to the commented out code that you have added
> to select them
> in rpi-default-providers.inc
>

It would be nice to have some detailed info on what and where to comment
out the configuration.

--
Andrei Gherzan


-- 
--
Andrei Gherzan

--089e0158b5e2049fec051d7d267e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,<br><br>On Thursday, August 13, 2015, Khem Raj &lt;<a href=3D"mailto:=
raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
&gt; On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas &lt;<a href=3D"=
javascript:;" onclick=3D"_e(event, &#39;cvml&#39;, &#39;javier@osg.samsung.=
com&#39;)">javier@osg.samsung.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This patch adds to the README a section that explains the RPi can diff=
erent<br>
&gt; graphics stacks and that the user can choose by manually changing prov=
iders.<br>
&gt;<br>
&gt; Signed-off-by: Javier Martinez Canillas &lt;<a href=3D"javascript:;" o=
nclick=3D"_e(event, &#39;cvml&#39;, &#39;javier@osg.samsung.com&#39;)">javi=
er@osg.samsung.com</a>&gt;<br>
&gt;<br>
&gt; ---<br>
&gt;<br>
&gt; Changes in v2: None<br>
&gt;<br>
&gt; README | 9 +++++++++<br>
&gt; 1 file changed, 9 insertions(+)<br>
&gt;<br>
&gt; diff --git a/README b/README<br>
&gt; index 678c0eb4a4e3..0569b353870c 100644<br>
&gt; --- a/README<br>
&gt; +++ b/README<br>
&gt; @@ -25,6 +25,7 @@ Contents:<br>
&gt;=C2=A0 =C2=A0 =C2=A02.K. Boot to U-Boot<br>
&gt;=C2=A0 =C2=A0 =C2=A02.L. Image with Initramfs<br>
&gt;=C2=A0 =C2=A0 =C2=A02.M. Device tree support<br>
&gt; +=C2=A0 =C2=A0 2.O. Graphic stacks<br>
&gt; 3. Extra apps<br>
&gt;=C2=A0 =C2=A0 =C2=A03.A. omxplayer<br>
&gt; 4. Source code and mirrors<br>
&gt; @@ -195,6 +196,14 @@ kernels.<br>
&gt; NOTE: KERNEL_DEVICETREE is default enabled for kernel &gt;=3D 3.18 and=
 always disabled for<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0older kernel versions.<br>
&gt;<br>
&gt; +2.O. Graphic stacks<br>
&gt; +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt; +The Raspberry Pi boards can use one of two graphics stacks: The userl=
and<br>
&gt; +user-space driver or the vc4 DRM/KMS kernel driver. By default userla=
nd<br>
&gt; +is used since the vc4 is still experimental. But this can be changed =
by<br>
&gt; +modifying the defaults for the kernel, egl, gles2, libgl and mesa pro=
viders.<br>
&gt; +This is explained in the conf/machine/include/rpi-default-providers.i=
nc file.<br>
&gt; +<br>
<br>
you may want to add pointer to the commented out code that you have added t=
o select them<br>
in rpi-default-providers.inc<br></blockquote><div><br></div><div>It would b=
e nice to have some detailed info on what and where to comment out the conf=
iguration.</div><div><br></div><div>--</div><div>Andrei Gherzan=C2=A0</div>=
<br><br>-- <br><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei G=
herzan</div></div></div><br>

--089e0158b5e2049fec051d7d267e--
