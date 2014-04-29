Return-Path: <pcjegan@gmail.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600D7E00B67
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 00:53:57 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hy4so3683526vcb.12
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 00:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nTq6wSfAamQMylOKYot9hIvD4BmUdDrmH/wwlcwu1uM=;
	b=SmBFTANBevLI0sfivlcdDm8JNDLK5xzFW2CHLEWvOKppGulubCt/oGUJAp15EHDi3B
	S/6scgAI/hevZEWZ2f6hOBahgfr0P70eP3wY80ns21lkm2VPQn1d7zJ8D95OqQFTh8L2
	dwxAZZZWmLzoYKa0yO2hppaF/REJXJIIGxz5tgdZEHm5Qw30jKdQ51uTDLsGhhUU3KmU
	u4IKkZi32QU8D1C1fbwH/+3v3Qmiu0hPVOk2MqIM0/XYpBckkhN8GMd+VIQ0sTjnN4jS
	E8MfceGBMIRhdP0QQxUaOQr+oFrwilJWW3hfw+ahKocXMiGFXzbimolOUCXldxJzB+pV
	sCfg==
X-Received: by 10.220.105.130 with SMTP id t2mr28208131vco.18.1398758037214;
	Tue, 29 Apr 2014 00:53:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.172.65 with HTTP; Tue, 29 Apr 2014 00:53:36 -0700 (PDT)
In-Reply-To: <535F3FFD.1080403@hostmobility.com>
References: <535F3FFD.1080403@hostmobility.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 29 Apr 2014 13:23:36 +0530
Message-ID: <CAAA4K6LApkJ=LVpGqrNQ_GGBuM9WJN8MuLEJrXyut8yGi7uZXA@mail.gmail.com>
To: Mirza Krak <mirza.krak@hostmobility.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: quilt-native fails on tar version 1.27.1
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
X-List-Received-Date: Tue, 29 Apr 2014 07:54:06 -0000
Content-Type: multipart/alternative; boundary=047d7b343752ef5b4804f829bb10

--047d7b343752ef5b4804f829bb10
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Only Yocto version 1.6 supports Ubuntu 14.04 LTS. I hope you are using
that. if you are using <1.6 Ubuntu 14.04 LTS is not in supported distros.

http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manual.html#detailed-su=
pported-distros
http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#detailed-su=
pported-distros
http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#detailed-su=
pported-distros

Also I found this,
https://lists.yoctoproject.org/pipermail/yocto/2013-October/016540.html
which makes ur problem a known issue.

HTH.

-JC


On Tue, Apr 29, 2014 at 11:30 AM, Mirza Krak <mirza.krak@hostmobility.com>w=
rote:

> Hi.
>
> I recently updated my Ubuntu PC to 14.04 LTS which broke yocto builds.
>
> From what I can see is that there seems to be an issue with the tar
> command and quilt-native recipe. But I am to newb to fix this. Do you guy=
s
> have any ideas?
>
> uname -a
> Linux mirza-hm 3.11.0-20-generic #34-Ubuntu SMP Tue Apr 1 20:40:25 UTC
> 2014 x86_64 x86_64 x86_64 GNU/Linux
>
> tar --version
> tar (GNU tar) 1.27.1
> Copyright (C) 2013 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.
> html>.
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.
>
> Written by John Gilmore and Jay Fenlason.
>
> Attached log.
>
> --
> Med V=C3=A4nliga H=C3=A4lsningar / Best Regards
>
> *******************************************************************
> Mirza Krak
> Host Mobility AB
> mirza.krak@hostmobility.com
> Anders Personsgatan 12, 416 64 G=C3=B6teborg
> Sweden
> http://www.hostmobility.com
> Direct: +46 31 31 32 704
> Phone: +46 31 31 32 700
> Fax: +46 31 80 67 51
> Mobile: +46 730 28 06 22
> *******************************************************************
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
JCP

--047d7b343752ef5b4804f829bb10
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"f=
ont-family:&#39;trebuchet ms&#39;,sans-serif"><br></div><div class=3D"gmail=
_default" style=3D"font-family:&#39;trebuchet ms&#39;,sans-serif">

Only Yocto version 1.6 supports Ubuntu 14.04 LTS. I hope you are using that=
. if you are using &lt;1.6 Ubuntu 14.04 LTS is not in supported distros.</d=
iv><div class=3D"gmail_default" style=3D"font-family:&#39;trebuchet ms&#39;=
,sans-serif">

<br></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms, sa=
ns-serif"><a href=3D"http://www.yoctoproject.org/docs/1.6/ref-manual/ref-ma=
nual.html#detailed-supported-distros">http://www.yoctoproject.org/docs/1.6/=
ref-manual/ref-manual.html#detailed-supported-distros</a></font><br>

</div><div class=3D"gmail_default" style><font face=3D"trebuchet ms, sans-s=
erif"><a href=3D"http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual=
.html#detailed-supported-distros">http://www.yoctoproject.org/docs/1.5/ref-=
manual/ref-manual.html#detailed-supported-distros</a><br>

</font></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms,=
 sans-serif"><a href=3D"http://www.yoctoproject.org/docs/1.4/ref-manual/ref=
-manual.html#detailed-supported-distros">http://www.yoctoproject.org/docs/1=
.4/ref-manual/ref-manual.html#detailed-supported-distros</a><br>

</font></div><div class=3D"gmail_default" style><font face=3D"trebuchet ms,=
 sans-serif"><br></font></div><div class=3D"gmail_default" style><font face=
=3D"trebuchet ms, sans-serif">Also I found this,</font></div><div class=3D"=
gmail_default" style>

<font face=3D"trebuchet ms, sans-serif"><a href=3D"https://lists.yoctoproje=
ct.org/pipermail/yocto/2013-October/016540.html">https://lists.yoctoproject=
.org/pipermail/yocto/2013-October/016540.html</a><br></font></div><div clas=
s=3D"gmail_default" style>

which makes ur problem a known issue.</div><div class=3D"gmail_default" sty=
le><br></div><div class=3D"gmail_default" style>HTH.</div><div class=3D"gma=
il_default" style><br></div><div class=3D"gmail_default" style>-JC</div></d=
iv>
<div class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Tue, Apr 29, 2014 at 11:30 AM, Mirza =
Krak <span dir=3D"ltr">&lt;<a href=3D"mailto:mirza.krak@hostmobility.com" t=
arget=3D"_blank">mirza.krak@hostmobility.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">

Hi.<br>
<br>
I recently updated my Ubuntu PC to 14.04 LTS which broke yocto builds.<br>
<br>
From what I can see is that there seems to be an issue with the tar command=
 and quilt-native recipe. But I am to newb to fix this. Do you guys have an=
y ideas?<br>
<br>
uname -a<br>
Linux mirza-hm 3.11.0-20-generic #34-Ubuntu SMP Tue Apr 1 20:40:25 UTC 2014=
 x86_64 x86_64 x86_64 GNU/Linux<br>
<br>
tar --version<br>
tar (GNU tar) 1.27.1<br>
Copyright (C) 2013 Free Software Foundation, Inc.<br>
License GPLv3+: GNU GPL version 3 or later &lt;<a href=3D"http://gnu.org/li=
censes/gpl.html" target=3D"_blank">http://gnu.org/licenses/gpl.<u></u>html<=
/a>&gt;.<br>
This is free software: you are free to change and redistribute it.<br>
There is NO WARRANTY, to the extent permitted by law.<br>
<br>
Written by John Gilmore and Jay Fenlason.<br>
<br>
Attached log.<br>
<br>
-- <br>
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards<br>
<br>
******************************<u></u>******************************<u></u>*=
******<br>
Mirza Krak<br>
Host Mobility AB<br>
<a href=3D"mailto:mirza.krak@hostmobility.com" target=3D"_blank">mirza.krak=
@hostmobility.com</a><br>
Anders Personsgatan 12, 416 64 G=C3=B6teborg<br>
Sweden<br>
<a href=3D"http://www.hostmobility.com" target=3D"_blank">http://www.hostmo=
bility.com</a><br>
Direct: <a href=3D"tel:%2B46%2031%2031%2032%20704" value=3D"+46313132704" t=
arget=3D"_blank">+46 31 31 32 704</a><br>
Phone: <a href=3D"tel:%2B46%2031%2031%2032%20700" value=3D"+46313132700" ta=
rget=3D"_blank">+46 31 31 32 700</a><br>
Fax: <a href=3D"tel:%2B46%2031%2080%2067%2051" value=3D"+4631806751" target=
=3D"_blank">+46 31 80 67 51</a><br>
Mobile: <a href=3D"tel:%2B46%20730%2028%2006%2022" value=3D"+46730280622" t=
arget=3D"_blank">+46 730 28 06 22</a><br>
******************************<u></u>******************************<u></u>*=
******<br>
<br>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--047d7b343752ef5b4804f829bb10--
