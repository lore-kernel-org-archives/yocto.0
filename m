Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 142D6E00744; Thu,  4 Sep 2014 15:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F62E004F5
	for <yocto@yoctoproject.org>; Thu,  4 Sep 2014 15:02:34 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id f12so9918290qad.4
	for <yocto@yoctoproject.org>; Thu, 04 Sep 2014 15:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=bWcHCjJ48/A5/rMFgceh5fLAajSpdamlCyvUkxGlTTk=;
	b=fQXgKleB+qx/j6qENFcAb4bdumndCuAAXQuH+bvepzZypvp8Fm+Hrmd4+cEspPZ92H
	it57oRXXoO3NOc5ssqxQKv2+PCRYwzDT6Tw/YjoNtXGGEgr/BDxyqhaLrdeAkZOmuF6Z
	DTqhPZOZDp6E5Jw+IC5ssocjyT86ZRojipB3EDN7gUdfX/kL02I9wHbomBwfR6lINalE
	ii/bCDukBJy7sp89P6uX26dGtkq+W2fUbhLLvz73b3vvUjISaU5s3NyRk8daU5oBEKLc
	y77ZT+vLMzkR6bX0jIcapP01tSI0Zv8Sn9oY2z9JaxvkPKfMIBzcJ9smSvgycmc08DqH
	wikw==
X-Received: by 10.140.16.194 with SMTP id 60mr11415517qgb.105.1409868153277;
	Thu, 04 Sep 2014 15:02:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 4 Sep 2014 15:02:13 -0700 (PDT)
In-Reply-To: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 4 Sep 2014 19:02:13 -0300
Message-ID: <CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
To: "tomek82221 Gazeta.pl" <tomek82221@gazeta.pl>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Thu, 04 Sep 2014 22:02:46 -0000
Content-Type: multipart/alternative; boundary=001a11c0a65474f00305024482e1

--001a11c0a65474f00305024482e1
Content-Type: text/plain; charset=ISO-8859-1

Hi Gazeta,

On Thu, Sep 4, 2014 at 5:48 PM, tomek82221 Gazeta.pl <tomek82221@gazeta.pl>
wrote:

> Hi
> I'm build yocto 1.6, My hardware is beaglebone black I successfull
> build system image. But I can't see cape manager.
> I need them to use SPI - enable spidev -
> http://elinux.org/BeagleBone_Black_Enable_SPIDEV .
> What do i do to build yocto with a cape manager?
>

As far as I know, you have to use meta-beagleboard
<https://github.com/beagleboard/meta-beagleboard> (almost 1 year without
any new commit) as your BSP layer to get capemanager support with Yocto.
Take a look here
<https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/recipes-kernel/linux/linux-mainline_3.8.bb>.
The kernel version is 3.8.

Here we have good news of having capemanager support on mainline:
http://beagleboard.org/blog/2014-08-27-device-tree-overlay-support-lands-upstream/

Here you have a beaglebord.org linux repo with capemanager support:
https://github.com/beagleboard
I don't know if there is any WIP to get this kernel compiled by Yocto/OE.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c0a65474f00305024482e1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Gazeta,</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 4, 2014 at 5:48 PM, =
tomek82221 Gazeta.pl <span dir=3D"ltr">&lt;<a href=3D"mailto:tomek82221@gaz=
eta.pl" target=3D"_blank">tomek82221@gazeta.pl</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":4gk" class=3D"" style=3D"overflow:hidden">Hi<b=
r>
I&#39;m build yocto 1.6, My hardware is beaglebone black I successfull<br>
build system image. But I can&#39;t see cape manager.<br>
I need them to use SPI - enable spidev -<br>
<a href=3D"http://elinux.org/BeagleBone_Black_Enable_SPIDEV" target=3D"_bla=
nk">http://elinux.org/BeagleBone_Black_Enable_SPIDEV</a> .<br>
What do i do to build yocto with a cape manager?</div></blockquote></div><b=
r>As far as I know, you have to use <a href=3D"https://github.com/beagleboa=
rd/meta-beagleboard">meta-beagleboard</a>=A0(almost 1 year without any new =
commit) as your BSP layer to get capemanager support with Yocto. Take a loo=
k <a href=3D"https://github.com/beagleboard/meta-beagleboard/blob/dylan/com=
mon-bsp/recipes-kernel/linux/linux-mainline_3.8.bb">here</a>. The kernel ve=
rsion is 3.8.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Here we hav=
e good news of having capemanager support on mainline:</div><div class=3D"g=
mail_extra"><a href=3D"http://beagleboard.org/blog/2014-08-27-device-tree-o=
verlay-support-lands-upstream/">http://beagleboard.org/blog/2014-08-27-devi=
ce-tree-overlay-support-lands-upstream/</a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Here you ha=
ve a <a href=3D"http://beaglebord.org">beaglebord.org</a> linux repo with c=
apemanager support:</div><div class=3D"gmail_extra"><a href=3D"https://gith=
ub.com/beagleboard">https://github.com/beagleboard</a></div>

<div class=3D"gmail_extra">I don&#39;t know if there is any WIP to get this=
 kernel compiled by Yocto/OE.<br></div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr"><div>Re=
gards,</div>

<div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados=
<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&=
amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" targ=
et=3D"_blank">www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c0a65474f00305024482e1--
