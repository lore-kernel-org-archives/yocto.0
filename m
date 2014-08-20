Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 584F5E007C1; Wed, 20 Aug 2014 09:44:24 -0700 (PDT)
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
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18BDE004F5
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 09:44:21 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id x3so8083497qcv.15
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 09:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OE7GIy2w52GSjCoIODlUjBn0N21R4PpaFxDByF3rC6Q=;
	b=I9te50imK2tMfKLdcYQz3wyhIMpCTsYVFSznhYW0wIXTJcih83ymXYNB+WLEU7SrV2
	QOYosRzMQLljj5yjuezcj8PY+Up0MV0DcXs4FIRDl4E/Jo1pkHNVshd+DOzrUk9CYxT/
	dMRRB5Ffhy1i4k3aquuju08YKdm8iEUDv7ZuMRoZjL7hByd0/uqPal1AxFxLcCoR1dAo
	ddA0e5RTsujHPWLMQ6hena6C9jkC1H6eeL7M7EPyUsIs6v1+cFyFLxc8aX5ycCZlRFG2
	pb6i/OcQI+o/CauJ/ZE0B9t9QBW3tqUJRJh5u85pFXdKhpYuSLE+WM501TQ9jQ8Yh2vd
	121w==
X-Received: by 10.140.41.38 with SMTP id y35mr75529464qgy.69.1408553060196;
	Wed, 20 Aug 2014 09:44:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Wed, 20 Aug 2014 09:44:00 -0700 (PDT)
In-Reply-To: <8BA102866B954649B8DC5B24C0BE5A1A1266FD6C@MEITNER.lust.de>
References: <8BA102866B954649B8DC5B24C0BE5A1A1266FD6C@MEITNER.lust.de>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 20 Aug 2014 13:44:00 -0300
Message-ID: <CAMCfZKEH_cfdTdxV91ASGv4JxtEpXYYbnhHoK=nhv5xM=Ph5wA@mail.gmail.com>
To: "Mengeringhausen, Paul" <paul.mengeringhausen@andron.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boot Logo support
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
X-List-Received-Date: Wed, 20 Aug 2014 16:44:24 -0000
Content-Type: multipart/alternative; boundary=001a11c135cecceb8c0501125049

--001a11c135cecceb8c0501125049
Content-Type: text/plain; charset=ISO-8859-1

Paul,


On Wed, Aug 20, 2014 at 3:48 AM, Mengeringhausen, Paul <
paul.mengeringhausen@andron.de> wrote:

> Hello!
>
>
>
> I have a custom board with imx233 Freescale Processor running linux from a
> Yocto Denzil distribution. I want to display a custom bootlogo at system
> boot, everything was fine until I disabled "framebuffer console support" in
> the kernel options.
>
> I had to disable this because I don't need the console in my application,
> I am writing directly to the framebuffer when my userspace application has
> loaded and the blinking cursor of the console is bothering. Additionally
> the console welcome message is overwriting the bootlogo, that's also not
> nice.
>
> Is there an easy way to display the kernel bootlogo without having to
> enable the console on my fb device?
>
>
>
> Thanks,
>
> Greetings,
>
> Paul
>
>
If you are using sysVinit take a look at your /etc/inittab and comment the
line of getty for tty1.
You can use a bbappend to deploy your custom /etc/inittab file.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c135cecceb8c0501125049
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Paul,</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 20, 2014 at 3:48 AM, Mengeringhausen, Paul <span dir=3D"ltr">&l=
t;<a href=3D"mailto:paul.mengeringhausen@andron.de" target=3D"_blank">paul.=
mengeringhausen@andron.de</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div lang=3D"DE" link=3D"blue" vlink=3D"purp=
le"><div><p class=3D"MsoNormal">Hello!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a custom board with imx2=
33 Freescale Processor running linux from a Yocto Denzil distribution. I wa=
nt to display a custom bootlogo at system boot, everything was fine until I=
 disabled &ldquo;framebuffer console support&rdquo;
 in the kernel options.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I had to disable this because I=
 don&rsquo;t need the console in my application, I am writing directly to t=
he framebuffer when my userspace application has loaded and the blinking cu=
rsor of the console is bothering. Additionally
 the console welcome message is overwriting the bootlogo, that&rsquo;s also=
 not nice.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there an easy way to display=
 the kernel bootlogo without having to enable the console on my fb device?<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Greetings,<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Paul<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u><u></u></span></p>
</div>
</div>

</blockquote></div><div class=3D"gmail_extra"><br></div>If you are using sy=
sVinit take a look at your /etc/inittab and comment the line of getty for t=
ty1.</div><div class=3D"gmail_extra">You can use a bbappend to deploy your =
custom /etc/inittab file.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<=
br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www=
.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&a=
mp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarca=
dos.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c135cecceb8c0501125049--
