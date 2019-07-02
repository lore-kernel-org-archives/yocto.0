Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B724E00C09; Tue,  2 Jul 2019 01:39:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.50 listed in list.dnswl.org]
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
	[209.85.167.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9618E00736
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 01:39:39 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id d11so10795995lfb.4
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 01:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=310dAvYuMICbNeoVukjMtQDSulQrXj62kfKAzjBsk1E=;
	b=ee46QQYrCSaJk3Eb/jPWmO3D8Sx6eyVYR9tsInc79/tO7y7Zu/aWRHJW9djq+uK/JI
	PEPezF10KGokhTwvyAOCpPU3zV8n3iOOvNiuLYTkffjidftdZUAGefJMNYCjEF7wTWKU
	LtcIZMIt2tRWm/0uMgi+wiN15y7hyYCyjl8kHXQ9P3X5AMMw8OenrHK3VsrUS51kqZ3A
	DOH4rQY4tMSgTIJhaoZ3nBId17pVmjJd5KcUEFeaD0uxCHjTfZHpXbnXpETuSVS4wwhT
	8izHgLadinuk7Df032QDlr9zoQ4+5jfQy+bRNJwkOpFuTx0cMUDlXgL3i2tlPeBGknLH
	cGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=310dAvYuMICbNeoVukjMtQDSulQrXj62kfKAzjBsk1E=;
	b=hxBHHKcgGwUMAtmpV0CK999HW0Otj004oXyJNjfOFTOJBkCX7OCJTiwTS4cw/X5caV
	5RQxlD//ZzO7Mmlh3ukyuKvs4ueLbY+BERisRqAozLnycGqmn3UO52Gin5nH2T4pI3ZE
	cw20PePezeLB0m+y0ogZ62irLrQUEYKM0LDP8cTWfcDVuzAFAaetETAuvRZR8DPAnjm1
	BhpbY+ye8N3RUEuqhgIR8CzIHnSEJB5rD9mjO7id4b7cGQqr4+MnnvOJ5OGTKmfzKHr+
	ncGMOLZ6Q5s2dmSPBUk/5KdJeDieuXaEkeFmlJqo0eFSfY3GWWIFjqY43ZTS0N4m+wLE
	y8BA==
X-Gm-Message-State: APjAAAWSz7Bhd7OmeYSvRFeLMCnbCHAVfPofmwldv6nLq78rMcZXR5b6
	KjlhTWkHqmMoqwEg26F04Qj7KEF/2ajbu0BBtAg=
X-Google-Smtp-Source: APXvYqw2Lfo5mzp8KZHFR9s4QORE6Ffnpx/rQX52jAwwSZHmJaESjfLLSv521t6VkITwXUTjVK7mOTI0GzNThsEUMpM=
X-Received: by 2002:ac2:52b7:: with SMTP id r23mr364064lfm.120.1562056778671; 
	Tue, 02 Jul 2019 01:39:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
	<CAAx3WaCNkhNS38tsYaycsiNzeJYN_YjXoGak4Yd1QxSUWQmYPA@mail.gmail.com>
	<CAA=hcWSr42PPkOiUkz0sG3F7Nxp4eWEi4mGVn85Pgg4yt6Az-g@mail.gmail.com>
In-Reply-To: <CAA=hcWSr42PPkOiUkz0sG3F7Nxp4eWEi4mGVn85Pgg4yt6Az-g@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 2 Jul 2019 10:39:27 +0200
Message-ID: <CAAx3WaD_iMtz_J0HYf0NULAxVSSNppVo6gtUx530pvqvb5qzag@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Allow choose of U-Boot config for machine
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
X-List-Received-Date: Tue, 02 Jul 2019 08:39:41 -0000
Content-Type: multipart/alternative; boundary="000000000000696987058caeafe1"

--000000000000696987058caeafe1
Content-Type: text/plain; charset="UTF-8"

Since UBOOT_CONFIG is a standard property, I suggest you to read the
following links:

   -
   https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-UBOOT_CONFIG
   -
   https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-UBOOT_MACHINE

Please not that the links I provided refers to the latest documentation,
you should check the docs for your YP version.

About testing, I have no idea about how to test uboot without the target
board. If you are planning to use a commercial solution which is supported
by Yocto, you should be safe enough for now.

Gabriele

Il giorno mar 2 lug 2019 alle ore 09:40 JH <jupiter.hce@gmail.com> ha
scritto:

> Thanks Gabriele, you are right, it did not work in command line but it
> did not complain after UBOOT_CONFIG = "nand" to local.conf, how can I
> am sure it is built to boot from nand? I don't have a board to try
> yet.
>
> Thank you very much.
>
> Kind regards,
>
> - jh
>
>
> On 7/2/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > Hi,
> >
> > you must use double quotes around nand, so:
> > UBOOT_CONFIG = "nand"
> >
> > However I cannot guarantee this line will be the solution, I usually use
> a
> > customized uboot.
> >
> > Gabriele
> >
> > Il giorno mar 2 lug 2019 alle ore 04:07 JH <jupiter.hce@gmail.com> ha
> > scritto:
> >
> >> Hi,
> >>
> >> The imx6ullevk.conf defined sdcard for booting on imx6 EVK:
> >>
> >> imx6ullevk.conf
> >>
> >> UBOOT_CONFIG ??= "sd"
> >> UBOOT_CONFIG[sd] = "mx6ull_14x14_evk_config,sdcard"
> >> UBOOT_CONFIG[mfgtool] = "mx6ull_14x14_evk_config"
> >>
> >> I need to change it for a customized board referenced from imx6 EVK
> >> but booting from NAND, there are some blogs said it can be done to add
> >> UBOOT_CONFIG=nand either in local.conf or command line. I tried it did
> >> not work:
> >>
> >> ERROR: Unable to start bitbake server (None)
> >> --- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---
> >> ERROR: local.conf:34: unparsed line: 'UBOOT_CONFIG=nand'
> >>
> >> What should be a proper process to overwrite imx6ullevk.conf
> >> UBOOT_CONFIG from sdcard to nand?
> >>
> >> Thank you.
> >>
> >> Kind regards,
> >>
> >> - JH
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
>

--000000000000696987058caeafe1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Since UBOOT_CONFIG is a standard property, I suggest =
you to read the following links:</div><div><ul><li><a href=3D"https://www.y=
octoproject.org/docs/latest/mega-manual/mega-manual.html#var-UBOOT_CONFIG">=
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-U=
BOOT_CONFIG</a></li><li><a href=3D"https://www.yoctoproject.org/docs/latest=
/mega-manual/mega-manual.html#var-UBOOT_MACHINE">https://www.yoctoproject.o=
rg/docs/latest/mega-manual/mega-manual.html#var-UBOOT_MACHINE</a></li></ul>=
<div>Please not that the links I provided refers to the latest documentatio=
n, you should check the docs for your YP version.</div><div><br></div><div>=
About testing, I have no idea about how to test uboot without the target bo=
ard. If you are planning to use a commercial solution which is supported by=
 Yocto, you should be safe enough for now. <br></div><div><br></div><div>Ga=
briele<br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Il giorno mar 2 lug 2019 alle ore 09:40 JH &lt;<a hre=
f=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; ha scritto=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks Gabriel=
e, you are right, it did not work in command line but it<br>
did not complain after UBOOT_CONFIG =3D &quot;nand&quot; to local.conf, how=
 can I<br>
am sure it is built to boot from nand? I don&#39;t have a board to try<br>
yet.<br>
<br>
Thank you very much.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
<br>
On 7/2/19, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com"=
 target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; you must use double quotes around nand, so:<br>
&gt; UBOOT_CONFIG =3D &quot;nand&quot;<br>
&gt;<br>
&gt; However I cannot guarantee this line will be the solution, I usually u=
se a<br>
&gt; customized uboot.<br>
&gt;<br>
&gt; Gabriele<br>
&gt;<br>
&gt; Il giorno mar 2 lug 2019 alle ore 04:07 JH &lt;<a href=3D"mailto:jupit=
er.hce@gmail.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; ha<br>
&gt; scritto:<br>
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; The imx6ullevk.conf defined sdcard for booting on imx6 EVK:<br>
&gt;&gt;<br>
&gt;&gt; imx6ullevk.conf<br>
&gt;&gt;<br>
&gt;&gt; UBOOT_CONFIG ??=3D &quot;sd&quot;<br>
&gt;&gt; UBOOT_CONFIG[sd] =3D &quot;mx6ull_14x14_evk_config,sdcard&quot;<br=
>
&gt;&gt; UBOOT_CONFIG[mfgtool] =3D &quot;mx6ull_14x14_evk_config&quot;<br>
&gt;&gt;<br>
&gt;&gt; I need to change it for a customized board referenced from imx6 EV=
K<br>
&gt;&gt; but booting from NAND, there are some blogs said it can be done to=
 add<br>
&gt;&gt; UBOOT_CONFIG=3Dnand either in local.conf or command line. I tried =
it did<br>
&gt;&gt; not work:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: Unable to start bitbake server (None)<br>
&gt;&gt; --- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086=
 ---<br>
&gt;&gt; ERROR: local.conf:34: unparsed line: &#39;UBOOT_CONFIG=3Dnand&#39;=
<br>
&gt;&gt;<br>
&gt;&gt; What should be a proper process to overwrite imx6ullevk.conf<br>
&gt;&gt; UBOOT_CONFIG from sdcard to nand?<br>
&gt;&gt;<br>
&gt;&gt; Thank you.<br>
&gt;&gt;<br>
&gt;&gt; Kind regards,<br>
&gt;&gt;<br>
&gt;&gt; - JH<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000696987058caeafe1--
