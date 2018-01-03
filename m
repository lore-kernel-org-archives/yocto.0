Return-Path: <imdibene@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6861BE00DAB; Wed,  3 Jan 2018 15:42:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (imdibene[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B155E00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 15:42:49 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id o73so12873vkd.2
	for <yocto@yoctoproject.org>; Wed, 03 Jan 2018 15:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=j6nHM6b8qPExT2M3RcNRyoDijdgV9G0T1L7gUDaRFws=;
	b=r7Tfj3MsSxLQjLxHmAGjcgB6AngODSX6K/skzuHB+l2IiYsSzmJBi+rasi4EA1aqe7
	bqFUzn2ZliRbQk8ABQ9gxqz6tZww+6tsFBciZzPtPvyJSLjsnG/7kxug6aSe/F1DSR2J
	768HBPQw5QnO0h6mTzhxcsWE1rQawln0BrHltoconnV6k4ELomSOBuXM8UjFZkQcibbN
	NyMs6OvHo50nwxAvO48bu+r5uW7GyC8Gwh8WHnu/o+/SyRIbvupCGu9ulRn3KxEZiP88
	KofmYs5Dwm5URsyjq65SK1mka9lzwTbSwOcQoTBjmiDmkpLLF2R8JeD/K892JMb1XFpd
	lemg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=j6nHM6b8qPExT2M3RcNRyoDijdgV9G0T1L7gUDaRFws=;
	b=A5/Q1dGYTMNmzHdvL2HZMTlgEw0U/jHlhracP16WmdAeWSj6ef4ZgWEiXzk6JUJdGE
	XnfGl9YlkMnepzNMwEbB7vyKRj8ndmiViZb3Jhk0uSccwuzc/PAN+HnfEgsUoCrWwfyW
	qyvrBRRJt4QrF0Hq+Fw6C1OW04BHdyh9EomW+yeUC1poHYpOWixHNh84BGKPVejRwVjY
	hDAR0d6f+kAndm/TOU2XEuPaC4M5dXNNMf2hCrcNhH//FFIO1gVD5B5U3FtfSdHS+YZP
	WPFFCJtLXK9T4dP378n8UM6Hngn5laU/N9vHh0psQJfBK9ymidLa62UCVinwLw1N3f4b
	VMzA==
X-Gm-Message-State: AKGB3mJO2iTjblVOb64xtr+f7hrxqTbJq4L4rEV3s40ZjaEChzTxcafW
	id1LDDXSdwHbcydE6o0pDScGPMoEubqEdlseL7c=
X-Google-Smtp-Source: ACJfBouDvIB3xH5mMCxaPYpofapGwx9FTbXwDe6YyvLG+UkOkvkiww+4N/RUXhbnXxyCSVG/ynvaDSd1ZavyEPgkk1I=
X-Received: by 10.31.14.143 with SMTP id 137mr2838525vko.88.1515022968396;
	Wed, 03 Jan 2018 15:42:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.27.33 with HTTP; Wed, 3 Jan 2018 15:42:47 -0800 (PST)
In-Reply-To: <CAOLNbFaCAMRPySoNmdGD8ZKkwU9aO+UaJ_gOSaL2NfR9-AnJBg@mail.gmail.com>
References: <CAOLNbFaCAMRPySoNmdGD8ZKkwU9aO+UaJ_gOSaL2NfR9-AnJBg@mail.gmail.com>
From: =?UTF-8?Q?Ismael_Mart=C3=ADnez_Dibene?= <imdibene@gmail.com>
Date: Wed, 3 Jan 2018 17:42:47 -0600
Message-ID: <CAHLCdmdQtH86+BxV2tX=XAEogSKTCXXwm4Jhy_fYt64YVjghZQ@mail.gmail.com>
To: Rail Shafigulin <rail@esenciatech.com>
Cc: yocto@yoctoproject.org
Subject: Re: verifying prerequisites for a software
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
X-List-Received-Date: Wed, 03 Jan 2018 23:42:50 -0000
Content-Type: multipart/alternative; boundary="001a1145527cdb9fb90561e7c508"

--001a1145527cdb9fb90561e7c508
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

apt-cache depends <package-name> gives you the prerequisites of your packag=
e

dpkg is your friend to check for installed packages

That above is for debian like distros, for redhat, use rpm -qa or rpm -ql


On Wed, Jan 3, 2018 at 5:16 PM, Rail Shafigulin <rail@esenciatech.com>
wrote:

> I haven't worked with Yocto a lot, so forgive me if the question seems
> a bit trivial.
>
> I'm working with a Zynq FPGA from Xilinx. I'm trying to build a Linux
> image for it. Xilinx is using its own distro called Petalinux. They do
> provide a layer called meta-petalinux for building it.
>
> I need to include libsoc, https://github.com/jackmitch/libso, into the
> image. However it has a number of prerequisites before it can be
> built,https://github.com/jackmitch/libsoc#manually-building. How do I
> verify that all of these prerequisites are installed (part of my
> image) prior to building libsoc?
>
> Any help is appreciated.
>
> --
> Rail Shafigulin
> Software Engineer
> Esencia Technologies
>
> --
>
>
>
>
> *ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
> Santa Clara CA 95054
> ________________________________________________________
>
> Phone: +1 408 736 8284 Fax: +1 408 519 3475
> http://www.esenciatech.com | http://www.lnttechservices.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20

Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards / Saludos / Atenciosamente
Ismael Mart=C3=ADnez Dibene
imdibene@gmail.com

--001a1145527cdb9fb90561e7c508
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre><code>apt-cache depends &lt;package-name&gt; gives yo=
u the prerequisites of your package<br></code></pre><pre><code>dpkg is your=
 friend to check for installed packages<br><br></code></pre><pre><code>That=
 above is for debian like distros, for redhat, use rpm -qa or rpm -ql<br></=
code></pre></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Jan 3, 2018 at 5:16 PM, Rail Shafigulin <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rail@esenciatech.com" target=3D"_blank">rail@esenciatech.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I haven&#39;t worked=
 with Yocto a lot, so forgive me if the question seems<br>
a bit trivial.<br>
<br>
I&#39;m working with a Zynq FPGA from Xilinx. I&#39;m trying to build a Lin=
ux<br>
image for it. Xilinx is using its own distro called Petalinux. They do<br>
provide a layer called meta-petalinux for building it.<br>
<br>
I need to include libsoc, <a href=3D"https://github.com/jackmitch/libso" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/jackmitch/<wbr>libso<=
/a>, into the<br>
image. However it has a number of prerequisites before it can be<br>
built,<a href=3D"https://github.com/jackmitch/libsoc#manually-building" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>jackmitch/libsoc#=
manually-<wbr>building</a>. How do I<br>
verify that all of these prerequisites are installed (part of my<br>
image) prior to building libsoc?<br>
<br>
Any help is appreciated.<br>
<br>
--<br>
Rail Shafigulin<br>
Software Engineer<br>
Esencia Technologies<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
<br>
<br>
<br>
*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,<br>
Santa Clara CA 95054<br>
______________________________<wbr>__________________________<br>
<br>
Phone: <a href=3D"tel:%2B1%20408%20736%208284" value=3D"+14087368284">+1 40=
8 736 8284</a> Fax: <a href=3D"tel:%2B1%20408%20519%203475" value=3D"+14085=
193475">+1 408 519 3475</a><br>
<a href=3D"http://www.esenciatech.com" rel=3D"noreferrer" target=3D"_blank"=
>http://www.esenciatech.com</a> | <a href=3D"http://www.lnttechservices.com=
" rel=3D"noreferrer" target=3D"_blank">http://www.lnttechservices.com</a><b=
r>
<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div><br>Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards / Saludos / A=
tenciosamente</div><div>Ismael Mart=C3=ADnez Dibene<br></div><div><a href=
=3D"mailto:imdibene@gmail.com" target=3D"_blank">imdibene@gmail.com</a></di=
v></div></div></div>
</div>

--001a1145527cdb9fb90561e7c508--
