Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19784E01363
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 22:57:27 -0700 (PDT)
Received: by mail-pa0-f50.google.com with SMTP id fb10so1062683pad.9
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 22:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=5WBNqCoaddKLphh7V3e3g8fizLDxR2FrpayI4fQUzSY=;
	b=Plcafc5poumXiUcIIEKyYGg3Zi9TEC9BKmMsa2azJ6m8zWyNVeLAGyvnVbuKQqLRh1
	0Y4RTEPrZd8R7xGaTWosakBqwIiqSEwLTo3rzUBpuuSw5878vidqeraMzNdMAgonG3Oe
	H88/XHLOK7QAq0VRRMlfVrXFs6bhp5R1Uvxaz18t/XEkqqaP69qawedVGKxJX7DVIGio
	bFdukDahCWXRYxDrZfLTxDRZ5rPlg2cQVqv1A9UWHYeZ+rgavuBLyVqxa/VhjP+TGnrr
	Xmq1nEBj1Rw+2e29KyC5PCiKW3qT9bw6NBRNfiaYuqXVaJ4RL78E13yBwWlgRVQwDYjg
	ReKw==
MIME-Version: 1.0
X-Received: by 10.66.216.129 with SMTP id oq1mr4270499pac.75.1374731847462;
	Wed, 24 Jul 2013 22:57:27 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 22:57:27 -0700 (PDT)
In-Reply-To: <B848B5A5-9108-4509-81BA-5FE014BB413C@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<B848B5A5-9108-4509-81BA-5FE014BB413C@gmail.com>
Date: Thu, 25 Jul 2013 06:57:27 +0100
X-Google-Sender-Auth: zF5gOrLAk8c2tMsBrL0xgkdIjyE
Message-ID: <CAOMwXhP8p2=qK2jC+cATw5LuMjydL2YT3PGk=qQUNgJuLOR52w@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Khem Raj <raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQnfW+giRJuvoT0URbHrwUu7AdxPcprm/ADbGaFgp+zTjB12XgY4O4Ns7gkHhjEVwgxwJ/Zy
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Thu, 25 Jul 2013 05:57:31 -0000
Content-Type: multipart/alternative; boundary=047d7b5d95496e02db04e24fb317

--047d7b5d95496e02db04e24fb317
Content-Type: text/plain; charset=ISO-8859-1

You seem to have missed this email:
https://lists.yoctoproject.org/pipermail/yocto/2013-July/017416.html


On Thu, Jul 25, 2013 at 6:47 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jul 24, 2013, at 12:47 AM, "Rifenbark, Scott M" <
> scott.m.rifenbark@intel.com> wrote:
>
> I am facing this issue, any clue?****
> ** **
> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
> ERROR: Failed to obtain CodeSourcery toolchain version: Execution of
> '/usr/bin/i686-pc-linux-gnu-gcc -v' failed: command not found****
> ** **
> This is what I have in my build/conf/local.conf:****
> ** **
> ...****
> TCMODE = "external-sourcery"****
> EXTERNAL_TOOLCHAIN = "/usr"****
> TARGET_PREFIX = "arm-none-linux-gnueabi-"****
> ...****
>
>
> what machine are you building for? it seems you are building for a x86
> target and expect arm cross toolchain to build it aint gonna work.
> chose a proper arm'ish machine and it should work.
>

--047d7b5d95496e02db04e24fb317
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You seem to have missed this email:=A0<a href=3D"https://l=
ists.yoctoproject.org/pipermail/yocto/2013-July/017416.html">https://lists.=
yoctoproject.org/pipermail/yocto/2013-July/017416.html</a></div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Jul 25, 2013 at 6:47 AM, Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<div style=3D"word-wrap:break-word"><div class=3D"im"><br><div><div>On Jul =
24, 2013, at 12:47 AM, &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto=
:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com=
</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><div style=3D"font-family:Helvetica;font-size=
:medium;font-style:normal;font-variant:normal;font-weight:normal;letter-spa=
cing:normal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">I am facing this issue, any clue?<u></u><u></u></div=
></div><div style=3D"font-family:Helvetica;font-size:medium;font-style:norm=
al;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height=
:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;=
Times New Roman&#39;,serif">ERROR: Failed to obtain CodeSourcery toolchain =
version: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; failed: c=
ommand not found<u></u><u></u></div>
</div><div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family=
:&#39;Times New Roman&#39;,serif">ERROR: Failed to obtain CodeSourcery tool=
chain version: Execution of &#39;/usr/bin/i686-pc-linux-gnu-gcc -v&#39; fai=
led: command not found<u></u><u></u></div>
</div></div><div style=3D"font-family:Helvetica;font-size:medium;font-style=
:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-h=
eight:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">This is what I have in my build/conf/local.conf:<u><=
/u><u></u></div></div><div style=3D"font-family:Helvetica;font-size:medium;=
font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:nor=
mal;line-height:normal;text-align:-webkit-auto;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif"><u></u>=A0<u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">...<u></u><u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<div><div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;=
Times New Roman&#39;,serif">TCMODE =3D &quot;external-sourcery&quot;<u></u>=
<u></u></div></div><div><div style=3D"margin:0in 0in 0.0001pt;font-size:12p=
t;font-family:&#39;Times New Roman&#39;,serif">
EXTERNAL_TOOLCHAIN =3D &quot;/usr&quot;<u></u><u></u></div></div><div><div =
style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times New =
Roman&#39;,serif">TARGET_PREFIX =3D &quot;arm-none-linux-gnueabi-&quot;<u><=
/u><u></u></div>
</div></div><div style=3D"font-family:Helvetica;font-size:medium;font-style=
:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-h=
eight:normal;text-align:-webkit-auto;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px">
<div style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font-family:&#39;Times=
 New Roman&#39;,serif">...<u></u><u></u></div></div><div style=3D"font-fami=
ly:Helvetica;font-size:medium;font-style:normal;font-variant:normal;font-we=
ight:normal;letter-spacing:normal;line-height:normal;text-align:-webkit-aut=
o;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px">
<br></div></blockquote></div><br></div><div>what machine are you building f=
or? it seems you are building for a x86 target and expect arm cross toolcha=
in to build it aint gonna work.</div><div>chose a proper arm&#39;ish machin=
e and it should work.</div>
</div></blockquote></div><br></div>

--047d7b5d95496e02db04e24fb317--
