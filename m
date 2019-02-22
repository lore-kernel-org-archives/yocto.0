Return-Path: <ccvk.chaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4954E00CE6; Fri, 22 Feb 2019 14:11:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ccvk.chaitanya[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD51FE00BAB
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 14:11:07 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id 98so3226685oty.1
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 14:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=F7EuZNxy2J19IFxFDbvuk/YsX2snXX4pmQ21oYlm9WQ=;
	b=KJYHqEAfvuZ3GQPCXzN3qdFXI55TbB5TxNk5S8PvY913CU8vHXCLrj/zQ77td7qjwN
	0HLqXL+3NUOX9GzC9jg1TRgaHJk4oBOww+mqTeSfjFATgbrA0CIeUxepM5I50jaN4Tkd
	uGGbrS2pD24e5bPHbM3B7isxNo4XIJLJnX5sMnBL23vHpiD2wh0b7Xssg0dgsQApoQ0C
	NFP+LO8F+ldgzKhd2LgabfL7AlZJKaVmpwYsoYcBMKtkn6C0FY+6WbPeJd+XU08ApTqB
	eYJQtp9eCSBQzZI3bD2K2LVO3Yk1DkZB83gD+U6c80fss0eAuDxrlvb6d3RlQ2twoDjc
	CWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=F7EuZNxy2J19IFxFDbvuk/YsX2snXX4pmQ21oYlm9WQ=;
	b=VxebfJxU9BDsqNRrYXgbQEX10SUuk5bKLEE649qpdT6OEiIkhQm9KcigCvD+y1bvoa
	k/v3J6tQmtjHooPRomzxwdd/e6lazbqjKmgwlva0OGiZm4t1XbIvLXrWR2z9KudkTuhp
	NHLbKh4MEgmlwU8qiIJJrz+4Y9RbHZIY1yEDAXD1XlqW33kRNpYUhJkXsH5SjnQqlvN/
	BpSU5F93lutXGH3hwNvfTztV+FWZGmbAyryaszzy+A3Z4MxxSjXQNSDxJ4LouA+k3XuN
	/8EL9TEBpSfmTxkO+6V5ufstvM59zpj1e08JNS8qXoeKa6koLEttVWbhn5sd/CaVl/WL
	Lbww==
X-Gm-Message-State: AHQUAuZUQjHhRbiVJUEj8gQTrDfEUEtFhXRcXzHtlY1URC4QfZr1znFn
	3J2JCqpJ4TnHCcTxOGi/ByM1yYfcEfIRm+toEKUCXw3+
X-Google-Smtp-Source: AHgI3IYCVdTGBuB3V+5eEp5We4YuQelZsDRQmKH1/zI9eTKI4NYgRgJGZPTMVmGXRTQpaRfL+JKwyy+XC+cfYwAWyjs=
X-Received: by 2002:a05:6830:1317:: with SMTP id
	p23mr4213318otq.55.1550873466873; 
	Fri, 22 Feb 2019 14:11:06 -0800 (PST)
MIME-Version: 1.0
References: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
	<TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
In-Reply-To: <TYAPR01MB2031B0D1EF1448ED96F21032927F0@TYAPR01MB2031.jpnprd01.prod.outlook.com>
From: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Date: Fri, 22 Feb 2019 17:10:56 -0500
Message-ID: <CALVd-wNod6oxi=t3KCiDg2HKO6nqBNWt+3avaBTTV=3x3yAT3w@mail.gmail.com>
To: Stephen Lawrence <stephen.lawrence@renesas.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to Install Third party rpm packages
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
X-List-Received-Date: Fri, 22 Feb 2019 22:11:09 -0000
Content-Type: multipart/alternative; boundary="00000000000015adf3058282deb8"

--00000000000015adf3058282deb8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stephen,

Thank you for pointing the documentation.
In custom image recipe I will add IMAGE_INSTALL +=3D "custom-package.rpm" b=
ut
how do I add this "custom-package.rpm" to my YOCTO build system.
Do I need to write a recipe where I fetch this package?

I apologize for the dumb questions.

Thanks,
Chaitanya


On Fri, Feb 22, 2019 at 10:47 AM Stephen Lawrence <
stephen.lawrence@renesas.com> wrote:

> Hi,
>
>
>
> Take a look at the section 3.2 =E2=80=9CCustomizing Images=E2=80=9D in th=
e Development
> Tasks Manual. You can find it and the other manuals here:
>
> https://www.yoctoproject.org/docs/
>
>
>
> If you are building the package in Yocto as well the simplest is to add i=
t
> to the image with IMAGE_INSTALL, but the manual also discusses other
> methods such as runtime package management.
>
>
>
> Select Yocto Project 2.5.x from the drop down at the top of the page to
> get the manuals for that version.
>
>
>
> Regards
>
>
>
> Steve
>
>
>
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> *=
On
> Behalf Of *chaitanya cherukuri
> *Sent:* 22 February 2019 15:17
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] How to Install Third party rpm packages
>
>
>
> Hello All,
>
>
>
> I 'm new to YOCTO. I am using YOCTO version 2.5.
>
> I would like to install third party rpm package to my image. Currently I'=
m
> installing rpm package on my target machine using rpm command
>
>   rpm -ivh --prefix=3D/opt/ example.rpm
>
>
>
> Is there any way that I can do this in a recipe, so that my final image
> has the rpm installed.
>
>
>
> Any help would be appreciated.
>
>
>
> Thank you,
>
> Chaithu
>
>
>
>
>


--=20
--
Chaitanya

--00000000000015adf3058282deb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif;color:#3d85c6">Hi Stephen,</div><div class=3D"gmail_defaul=
t" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6"><br></div><=
div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;c=
olor:#3d85c6">Thank you for pointing the documentation.</div><div class=3D"=
gmail_default" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6"=
>In custom=C2=A0image=C2=A0recipe I will add IMAGE_INSTALL=C2=A0+=3D &quot;=
custom-package.rpm&quot; but how do I add this &quot;custom-package.rpm&quo=
t; to my YOCTO build system.</div><div class=3D"gmail_default" style=3D"fon=
t-family:comic sans ms,sans-serif;color:#3d85c6">Do I need to write a recip=
e where I fetch this package?</div><div class=3D"gmail_default" style=3D"fo=
nt-family:comic sans ms,sans-serif;color:#3d85c6"><br></div><div class=3D"g=
mail_default" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6">=
I apologize=C2=A0for the dumb questions.</div><div class=3D"gmail_default" =
style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;colo=
r:#3d85c6">Thanks,</div><div class=3D"gmail_default" style=3D"font-family:c=
omic sans ms,sans-serif;color:#3d85c6">Chaitanya</div><div class=3D"gmail_d=
efault" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6"><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Fri, Feb 22, 2019 at 10:47 AM Stephen Lawrence &lt;<a href=3D"mailto=
:stephen.lawrence@renesas.com" target=3D"_blank">stephen.lawrence@renesas.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">





<div lang=3D"EN-GB">
<div class=3D"gmail-m_5734109972580351645gmail-m_8591016642994994278WordSec=
tion1">
<p class=3D"MsoNormal"><span>Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Take a look at the section 3.2 =E2=80=9CCustom=
izing Images=E2=80=9D in the Development Tasks Manual. You can find it and =
the other manuals here:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><a href=3D"https://www.yoctoproject.org/docs/"=
 target=3D"_blank">https://www.yoctoproject.org/docs/</a><u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>If you are building the package in Yocto as we=
ll the simplest is to add it to the image with IMAGE_INSTALL, but the manua=
l also discusses other methods such as runtime package management.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Select Yocto Project 2.5.x from the drop down =
at the top of the page to get the manuals for that version.<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Regards<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span>Steve<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_bl=
ank">yocto-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:yocto-bounces=
@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>&gt;
<b>On Behalf Of </b>chaitanya cherukuri<br>
<b>Sent:</b> 22 February 2019 15:17<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] How to Install Third party rpm packages<u></u><u></=
u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">Hello All,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">I &#39;m new to YOCTO. I am using YOCTO version 2.5=
.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">I would like to install third party rpm package to =
my image. Currently I&#39;m installing rpm package on my target machine usi=
ng rpm command<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">=C2=A0 rpm -ivh --prefix=3D/opt/ example.rpm<u></u>=
<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">Is there any way that I can do this in a recipe, so=
 that my final image has the rpm installed.<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">Any help=C2=A0would be appreciated.<u></u><u></u></=
span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">Thank you,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
;color:rgb(61,133,198)">Chaithu<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>

</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_5734109972580351645gmail_signature"><div dir=3D"ltr"><spa=
n style=3D"color:rgb(61,133,198)"><span style=3D"font-family:&quot;comic sa=
ns ms&quot;,sans-serif">--<br>Chaitanya</span></span><br></div></div>

--00000000000015adf3058282deb8--
