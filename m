Return-Path: <harpreet.bhatia30@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9E3BE00282
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 18:10:34 -0800 (PST)
Received: by mail-we0-f178.google.com with SMTP id t60so3332025wes.23
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 18:10:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0eQIiFXk3k6i9Ipko9DOaqH6G7riq/Fh5/JH8phgeP0=;
	b=o6d4JcLY0clDKIjNIDKFNLukpX8Fv2YGDDBpaJnMm7duO9bnm9o3E3kzAtxt9wvi7v
	y09+3d4gNxYn+N/RWU8/BvgcAycpZBy4akmxaXYIklXggf+pkbqdiGngvd8fU2e60PA5
	c5NGBXQIHIQ31XysDEb70HdqGsuSoZa9fNE99NprALuO66nBQjF72xmv5Cm23R1GJ/5r
	ChBYYfEAm2j0hWL0CvrUPSOSIcKWuwh+jzhSNlNEyCjbuVhRxTzVcDuZoSiV4/mbfnvI
	UzowweIR3teKvOsSWiABIU6GnDITyHiXAcTqjmE6fXbgePZuaZuM/uU1H91nOWq6Bnt6
	nffA==
MIME-Version: 1.0
X-Received: by 10.195.12.200 with SMTP id es8mr25906wjd.77.1390615832860; Fri,
	24 Jan 2014 18:10:32 -0800 (PST)
Received: by 10.194.121.37 with HTTP; Fri, 24 Jan 2014 18:10:32 -0800 (PST)
In-Reply-To: <3e7947cd46d543c2b85752f46dd91289@DM2PR03MB399.namprd03.prod.outlook.com>
References: <CA+_BiB3EVGC2e=T027_fwHhbG=HKydovjG9OFd3wqfpymyQapg@mail.gmail.com>
	<3e7947cd46d543c2b85752f46dd91289@DM2PR03MB399.namprd03.prod.outlook.com>
Date: Fri, 24 Jan 2014 18:10:32 -0800
Message-ID: <CA+_BiB0-JAixozXhOZX6SoCt6gqAa5dpZces0knY_prcfoAxrQ@mail.gmail.com>
From: Harpreet Singh <harpreet.bhatia30@gmail.com>
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need to customize /etc/network/interface
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
X-List-Received-Date: Sat, 25 Jan 2014 02:10:41 -0000
Content-Type: multipart/alternative; boundary=047d7bb04b3ebc9d2904f0c1fa11

--047d7bb04b3ebc9d2904f0c1fa11
Content-Type: text/plain; charset=ISO-8859-1

Hi Zhenhua,

Thanks for help.

I have a scenario where i have to customize "interface" according to my
recipe. Actually i need to customize interface file according to recipe
chosen.

In another words i need to select between two interfaces files during
build. Is there any option using bbapend, to choose one particular file
between two during build?

--
Regards

Harpreet Singh
VVDN Technologies


On Thu, Jan 23, 2014 at 6:02 PM, zhenhua.luo@freescale.com <
zhenhua.luo@freescale.com> wrote:

>  My suggestion is to create a bbappend file for init-ifupdown to override
> the default interfaces.
>
>
>
> $ tree meta-custom/recipes-core/init-ifupdown
>
> |-- files
>
> |   `-- interfaces
>
> `-- init-ifupdown_1.0.bbappend
>
>
>
>
>
> Best Regards,
>
>
>
> Zhenhua
>
>
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Harpreet Singh
> *Sent:* Friday, January 24, 2014 9:09 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Need to customize /etc/network/interface
>
>
>
> Hi
>
> I want to customize /etc/network/interface file according to requirement.
> I tried creating another reciepe file where i am installing my interface
> file to /etc/network/interface i.e. "install -m 0644
> ${WORKDIR}/scripts/interfaces123 ${D}${sysconfdir}/network/interfaces".
>
> But still in build this interface file is not getting updated. Looks kine
> during bitbake, this file is overwritten by standard file.
>
> Please help
>
>
> --
>
> *Regards*
>
>
>
> *Harpreet Singh*
>
> *9873064104*
>



-- 
*Regards*

*Harpreet Singh*
*9873064104*

--047d7bb04b3ebc9d2904f0c1fa11
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Zhenhua,<br><br></div>Thanks for help.<br><br=
></div><div>I have a scenario where i have to customize &quot;interface&quo=
t; according to my recipe. Actually i need to customize interface file acco=
rding to recipe chosen.<br>
<br></div><div>In another words i need to select between two interfaces fil=
es during build. Is there any option using bbapend, to choose one particula=
r file between two during build?<br><br>--<br></div><div>Regards<br><br>
</div><div>Harpreet Singh<br></div><div>VVDN Technologies=A0 <br></div><div=
><span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,&quot;sans-s=
erif&quot;;color:rgb(31,73,125)"></span></div></div><div class=3D"gmail_ext=
ra">
<br><br><div class=3D"gmail_quote">On Thu, Jan 23, 2014 at 6:02 PM, <a href=
=3D"mailto:zhenhua.luo@freescale.com">zhenhua.luo@freescale.com</a> <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:zhenhua.luo@freescale.com" target=3D"_blan=
k">zhenhua.luo@freescale.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">My suggestion is to creat=
e a bbappend file for init-ifupdown to override the default interfaces.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">$ tree meta-custom/recipe=
s-core/init-ifupdown<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">|-- files<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">|=A0=A0 `-- interfaces<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">`-- init-ifupdown_1.0.bba=
ppend<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Best Regards,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Zhenhua<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Harpreet Singh<br>
<b>Sent:</b> Friday, January 24, 2014 9:09 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Need to customize /etc/network/interface<u></u><u><=
/u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi <u></u><u></u></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I want to customize /=
etc/network/interface file according to requirement. I tried creating anoth=
er reciepe file where i am installing my interface file to /etc/network/int=
erface i.e. &quot;install -m 0644 ${WORKDIR}/scripts/interfaces123
 ${D}${sysconfdir}/network/interfaces&quot;.<u></u><u></u></p>
</div>
<p class=3D"MsoNormal">But still in build this interface file is not gettin=
g updated. Looks kine during bitbake, this file is overwritten by standard =
file.<br>
<br>
Please help<br clear=3D"all">
<u></u><u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><br>
-- <u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366ff">Regards</span></b><=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366ff">=A0</span></b><u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366ff">Harpreet Singh</spa=
n></b><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><b><span style=3D"color:#3366ff">9873064104</span></=
b><u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div><=
font color=3D"#3366ff"><strong>Regards</strong></font></div>
<div><font color=3D"#3366ff"><strong>=A0</strong></font></div>
<div><font color=3D"#3366ff"><strong>Harpreet Singh</strong></font></div>
<div><font color=3D"#3366ff"><strong>9873064104</strong></font></div></div>
</div>

--047d7bb04b3ebc9d2904f0c1fa11--
