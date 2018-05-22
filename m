Return-Path: <techieth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21315E00903; Tue, 22 May 2018 05:27:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techieth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC19E0086B;
	Tue, 22 May 2018 05:27:48 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id a137-v6so16165789wme.1;
	Tue, 22 May 2018 05:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=bA0+qypR8AXhaWH1r+J5Ntat+DKdZV358f8Qv6n6GDo=;
	b=fPzLs105JVTXqJh2YFvXdLuVJL/d9dEPapHKkWdV64b8cdUpzR62MkcjcVb7M3MmHw
	+uoRYETj7+znMiBe77bss80CeR+0BufiAoRK2MSrvKRgcH4N7TTLpvI/tHkcGTeDIfoT
	Bo9E6jwkXyey9+rDlxxFN21wdlwrfXIiq3JWZVDo3qabD3Vp4OTOYEHOdZznPlGKmhGV
	JK5Rs5VcgsJkjVq2RDGyJ7ALqFa8sxnYFV1nZHthHqdqjtiubnu+3VWE4aLLmpGYTw9v
	EmWZc3gB/wClha9CdPnq9Gu86stCOascLJbQ2zrGaFL0hQGtBivCxsWqaJEVGoNt8FoN
	+2Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=bA0+qypR8AXhaWH1r+J5Ntat+DKdZV358f8Qv6n6GDo=;
	b=pQbay8EaoPemnSHGH9FC3xBrOe4L7yhmBJNrVgqds3LyjUSKV7aPqmjMmLBA2+TknJ
	PYZIwXn1eU40NHtoCGqs99l2mowlCRvJzpTWeu1cRNKJn7RveMxo9VIt5q52qadRCHzm
	TTKUJ0YVms33252hdw9lE+haNaM0TTyQhgxi8F3iY3t8Hlc8EPKPnBG2FrDtYXVh9Hkm
	tBcBfuTx8aK6Kk7hTkzgB8q2F4FVDP4uG9uIdlNBgAblGo6PuQtI6ccvc8CpHptsDQqN
	qY8BtsTLz097pYrXCsTCOlPCDYyZubOi3JH8TR/38dxNllLnyUSmFO4p5ytRKz+aiSl8
	C/PA==
X-Gm-Message-State: ALKqPwfT/cRHzWcVYl4aO6HGyKgCLnBRjD8FaVr+Weo/QOm4hEyMHjV0
	zU36Zce3yzPDyToAJmVxn7PwVQCuhPrIGf38f3d42g==
X-Google-Smtp-Source: AB8JxZp1duLZ3zf5Dny8NiH4B6CiPtsXA9la5FZq/duVQFOj2yFuJEc7X9t1tcQuineOntyLrO7V0mmBtlBbniJyJ1I=
X-Received: by 2002:a1c:6d90:: with SMTP id
	b16-v6mr1023718wmi.138.1526992067176; 
	Tue, 22 May 2018 05:27:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.227.70 with HTTP; Tue, 22 May 2018 05:27:46 -0700 (PDT)
In-Reply-To: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
References: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
From: techi eth <techieth@gmail.com>
Date: Tue, 22 May 2018 17:57:46 +0530
Message-ID: <CAJw2sSCX0A-M1k-12zVY8DSkkhFkhmnv6h==V84fuSsS4VW1Nw@mail.gmail.com>
To: yocto@yoctoproject.org, yocto-builds@yoctoproject.org
Subject: Re: Yocto SDK & Toolchain Deploy Issue
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
X-List-Received-Date: Tue, 22 May 2018 12:27:49 -0000
Content-Type: multipart/alternative; boundary="000000000000bd2dc0056cca8be5"

--000000000000bd2dc0056cca8be5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Can anyone give me hint on above point. I think it will be something basic
while populating SDK's.
Please let  me know if any information needed.

Thanks



On Tue, May 22, 2018 at 9:53 AM, techi eth <techieth@gmail.com> wrote:

> I would like to use SDK=E2=80=99s & tool chain generated from Yocto to so=
me other
> PC. I see following difficulty while using.
>
>
>
> 1)      Path in *environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi=
*
>  is hard code. Is it possible to have that is configurable.
>
> 2)      If I change path in *environment-setup-cortexa8hf-vfp-neon-poky-l=
inux-
> gnueabi script *than also it raise error while recognizing compiler*.*
>
>
>
> Please let me know hint for using tool chain generated from one machine t=
o
> other machine at any path.
>
>

--000000000000bd2dc0056cca8be5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Can anyone give me hint on above po=
int.

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">I think it will be something basic while populati=
ng SDK&#39;s.</span>

</div><div>Please let=C2=A0 me know if any information needed.=C2=A0</div><=
div><br></div><div>Thanks</div><div><br></div><div><br></div></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, May 22, 2018 at 9=
:53 AM, techi eth <span dir=3D"ltr">&lt;<a href=3D"mailto:techieth@gmail.co=
m" target=3D"_blank">techieth@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr">

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;color:rgb(34,34,34)=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;font-=
size:11pt;font-family:Calibri,sans-serif">I would like to use SDK=E2=80=99s=
 &amp; tool chain generated from Yocto to some other PC. I see following di=
fficulty while using.<span></span></p><p class=3D"MsoNormal" style=3D"margi=
n:0in 0in 0.0001pt;color:rgb(34,34,34);font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;font-size:11pt;font-family:Calibri,sans-se=
rif"><span>=C2=A0</span></p><p class=3D"m_2332626359070911922gmail-m_389920=
9230007378221gmail-MsoListParagraph" style=3D"color:rgb(34,34,34);font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;margin:0in 0in =
0.0001pt 0.5in;font-size:11pt;font-family:Calibri,sans-serif"><span><span>1=
)<span style=3D"font-style:normal;font-variant:normal;font-weight:normal;fo=
nt-stretch:normal;font-size:7pt;line-height:normal;font-family:&quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<span>=C2=A0</span></span></=
span></span>Path in<span>=C2=A0</span><b>environment-setup-<wbr>cortexa8hf-=
vfp-neon-poky-<wbr>linux-gnueabi</b><span>=C2=A0</span>is hard code. Is it =
possible to have that is configurable.<span></span></p><p class=3D"m_233262=
6359070911922gmail-m_3899209230007378221gmail-MsoListParagraph" style=3D"co=
lor:rgb(34,34,34);font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;margin:0in 0in 0.0001pt 0.5in;font-size:11pt;font-family:Calibr=
i,sans-serif"><span><span>2)<span style=3D"font-style:normal;font-variant:n=
ormal;font-weight:normal;font-stretch:normal;font-size:7pt;line-height:norm=
al;font-family:&quot;Times New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<=
span>=C2=A0</span></span></span></span>If I change path in<span>=C2=A0</spa=
n><b>environment-setup-<wbr>cortexa8hf-vfp-neon-poky-<wbr>linux- gnueabi sc=
ript<span>=C2=A0</span></b>than also it raise error while recognizing compi=
ler<b>.</b><span></span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in =
0.0001pt;color:rgb(34,34,34);font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;font-size:11pt;font-family:Calibri,sans-serif"><span=
>=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;c=
olor:rgb(34,34,34);font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;font-size:11pt;font-family:Calibri,sans-serif">Please let me k=
now hint for using tool chain generated from one machine to other machine a=
t any path.</p>

<br></div>
</blockquote></div><br></div>

--000000000000bd2dc0056cca8be5--
