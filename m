Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id F2F51E01305
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 13:21:30 -0800 (PST)
Received: by mail-ee0-f51.google.com with SMTP id d17so923948eek.10
	for <yocto@yoctoproject.org>; Wed, 13 Feb 2013 13:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=WvegoE2mYcCtnrRWEMIdWda9jVoUagpfxPBZjv5XimY=;
	b=EM4kcax2e+4Gapxc8ugssnf2hNGt5+3fLNRChb89A5D+DaAwAfJQPtRi7X7CHbpVL/
	PxC5PcY01Wgqin5+ubulvpWwqN3BHTrbsX/juCQeHXkcNiYMvb1AYfoGwiVz8P9iaPGs
	z7nSH8X4hVS7ElBTHITHWEjb5dKs85HuiY4XY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=WvegoE2mYcCtnrRWEMIdWda9jVoUagpfxPBZjv5XimY=;
	b=BM+Wf4/d94HvILS9CQ4E75JsX7MJjlxU0ZK+vFKdLnxDT67kfJ4l//UIX/A84T71qF
	lwVZFjbVB6h2ePgm9mwv+/LraU4NiaozEQJbJpDkcTk9N96abc1jtr0gYd/WMLikHpsE
	G9jWv+Z160aHyt5SbkT0H3ZacSCMBWRlp/RQz8sAh5fdAnVagL/KOGX1eogMHaf+KHNl
	fWDOoTUgmIyyYObQqt/ZMYW1c3SVx28MEMtpW1igtJn80WwXO88BcaaGqGa0y/kqXTx/
	sL+G2w924BOfikIuzTpGzwKXjH/a/S0NPf6Vsw2Jz0G1fW/oiglLeaJzp9U6ytOfXcmK
	/DyA==
MIME-Version: 1.0
X-Received: by 10.14.207.200 with SMTP id n48mr8796096eeo.4.1360790488912;
	Wed, 13 Feb 2013 13:21:28 -0800 (PST)
Received: by 10.223.197.195 with HTTP; Wed, 13 Feb 2013 13:21:28 -0800 (PST)
In-Reply-To: <1360781741.1460.YahooMailClassic@web140005.mail.bf1.yahoo.com>
References: <1360781741.1460.YahooMailClassic@web140005.mail.bf1.yahoo.com>
Date: Wed, 13 Feb 2013 13:21:28 -0800
Message-ID: <CA+gsK-rXpPD5YEPer-eObj7Kr4wuwP79mthG8hSHi2+=1X_G_w@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Andre Bella <scancool@yahoo.com>
X-Gm-Message-State: ALoCoQkNhyAlUZK3FwtG/Ute3IWFnshOM9YJ8mGnyStTR1nhykEEMLS1bliCMjTlC6yuofJUyYKH
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: hob error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 13 Feb 2013 21:21:31 -0000
Content-Type: multipart/alternative; boundary=047d7b343b1cb492f104d5a1b9ff

--047d7b343b1cb492f104d5a1b9ff
Content-Type: text/plain; charset=ISO-8859-1

Hi Andre,

You may want to send the content for layer.conf and bblayers.conf.

However, you may have a typo if you copied and pasted the error message:

${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which
triggered exception Exception: variable BBPATH reference itself!

It says "soucers" where it should be "sources", I suppose.

Rudi


On Wed, Feb 13, 2013 at 10:55 AM, Andre Bella <scancool@yahoo.com> wrote:

> Hello,
> I'm getting this error when I run hob,
>
> Error
> Unable to parse
> /home/andre/fsl-community-bsd/sources/meta-fsl-arm-extra/conf/layer.conf:Failture
> expanding variable BBPATH, expression was
> ${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl-arm which
> triggered exception Exception: variable BBPATH reference itself!
>
> what I'm trying to do is is add nano, vlc and gstreamer to the rootfs.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b343b1cb492f104d5a1b9ff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Andre,<div><br></div><div style>You may want to send th=
e content for layer.conf and bblayers.conf.</div><div style><br></div><div =
style>However, you may have a typo if you copied and pasted the error messa=
ge:</div>
<div style><br></div><div style><span style=3D"font-family:arial,sans-serif=
;font-size:13px">${BBPATH}:/home/andre/fsl-</span><span style=3D"font-famil=
y:arial,sans-serif;font-size:13px">community-bsp/soucers/meta-</span><span =
style=3D"font-family:arial,sans-serif;font-size:13px">fsl-arm which trigger=
ed exception Exception: variable BBPATH reference itself!</span><br>
</div><div style><span style=3D"font-family:arial,sans-serif;font-size:13px=
"><br></span></div><div style><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">It says &quot;soucers&quot; where it should be &quot;sources=
&quot;, I suppose.</span></div>
<div style><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">Rudi</span></div></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">
On Wed, Feb 13, 2013 at 10:55 AM, Andre Bella <span dir=3D"ltr">&lt;<a href=
=3D"mailto:scancool@yahoo.com" target=3D"_blank">scancool@yahoo.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit">Hello,<br>I&#39;m getting this error when=
 I run hob, <br><br>Error<br>Unable to parse /home/andre/fsl-community-bsd/=
sources/meta-fsl-arm-extra/conf/layer.conf:Failture expanding variable BBPA=
TH, expression was ${BBPATH}:/home/andre/fsl-community-bsp/soucers/meta-fsl=
-arm which triggered exception Exception: variable BBPATH reference itself!=
<br>
<br>what I&#39;m trying to do is is add nano, vlc and gstreamer to the root=
fs.<br><br></td></tr></tbody></table><br>__________________________________=
_____________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>--=A0<br=
><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif</b></font>=
<div><font face=3D"arial, helvetica, sans-serif">Director of Embedded Solut=
ions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b343b1cb492f104d5a1b9ff--
