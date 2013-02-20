Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f176.google.com (mail-ea0-f176.google.com
	[209.85.215.176]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 04059E0034C
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 08:16:40 -0800 (PST)
Received: by mail-ea0-f176.google.com with SMTP id a13so3422242eaa.7
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 08:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=enLQRFL839e8DD0BCagJXDrSrthYDz1BtO+x20zdlwE=;
	b=LHdjWpZgSfJcH2XaiCVK+rmQTUmyiGW8l1qKBj3X0OZPNJ53YJftdms/RviGXMD1ZZ
	PioMQmVsgCiajpRTXthexhqesZrZSm4wDxKCHKOzkUjL4FGWSmj2L/xVmmuGHqomgBC+
	dByAHp5pg2fVTsIrS+lfu4/gu1ENu74PNLeJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=enLQRFL839e8DD0BCagJXDrSrthYDz1BtO+x20zdlwE=;
	b=cHaAwSB3vRfrmhPmwWS9bpKxv9RLXDDCF+fhCnjhoea/8bpQ6oGetBglo+Ya/YMAgP
	5XE4HvR5tL/tl1g2aMeq8WoysZ+6Cvr9+0CydYa+41xxsNLaekjSPhNBv6epayzaMe3q
	RqaIavSTSqWU0vCUeGNWlPA+G6dk8g6ciOgOKZDeN36N08+TJ4xFIYEMLVzvPbD6yI86
	3SxBq+fTb09DNvVRsLeUkKa02eOZhoZitZrxtoH3GmrGvxjRLMfzq/YGC3b7L7wGJL4P
	jFDutbpdRdORqPrJwp0g95hbSzfUPUXMtieRZfu/PNvhOlre5eMP7SQ7EdtNUXcbYCEp
	/SOg==
MIME-Version: 1.0
X-Received: by 10.14.0.135 with SMTP id 7mr70222738eeb.5.1361376981900; Wed,
	20 Feb 2013 08:16:21 -0800 (PST)
Received: by 10.223.151.15 with HTTP; Wed, 20 Feb 2013 08:16:21 -0800 (PST)
In-Reply-To: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
References: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
Date: Wed, 20 Feb 2013 08:16:21 -0800
Message-ID: <CA+gsK-r_Oq3DvdoC1aT5gErTkKXYJ+gewMZDouusE+4oHicdtQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQnLor175Czj9ilEgeFwWmR82wQlR5HCHJmlFbP4KOc/XhsOpTVua+BqiAxR9QuXLRO3FdX0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 20 Feb 2013 16:16:41 -0000
Content-Type: multipart/alternative; boundary=047d7b6050de695d2b04d62a47ec

--047d7b6050de695d2b04d62a47ec
Content-Type: text/plain; charset=ISO-8859-1

Satya,

Simply look at the u-boot recipes in meta/recipes-bsp/u-boot such as
u-boot_2012.04.01.bb. You can simply copy it and name it
u-boot_2013.01.bband then modify SRCREV to the revision that
corresponds to the tag 2013.01
or 2013.01.01 in git.denx.de:

for 2013.01: 3a9d879f6f64585b819af728b53be0a05037fe0d<http://git.denx.de/?p=u-boot.git;a=commit;h=3a9d879f6f64585b819af728b53be0a05037fe0d>
for 2013.01.01:
e8ae0fa5edd152b2b29c470b88429be4cdcd2c46<http://git.denx.de/?p=u-boot.git;a=commit;h=e8ae0fa5edd152b2b29c470b88429be4cdcd2c46>

Do the same for u-boot-mkimage and include the u-boot version with your bsp.

Rudi


On Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla <
swaroop.damarla@gmail.com> wrote:

> Hi Guys,
>
> I need support for uboot on Tamonten board but the version on it is
> v2012.04 but I came to know that v2012.10 or v2013.01 supports the
> Tamontenboard through some guys here..
>
> It would be great if you can tell me how can I accomplish v2013.01 or
> v2012.10 into the build system and make it available so that I can compile
> the and get uImage
>
> (Tamonten board is a derivative of harmony board with some changes and has
> arm cortexa9 processor without neon extentions )
>
> I am kind of new to add new .bb files and help is really appreciated as I
> am not able to figure out how to add
>
> Greetings & Regards,
> Swaroop
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

--047d7b6050de695d2b04d62a47ec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Satya,<div><br></div><div style>Simply look at the u-boot =
recipes in meta/recipes-bsp/u-boot such as <a href=3D"http://u-boot_2012.04=
.01.bb">u-boot_2012.04.01.bb</a>. You can simply copy it and name it <a hre=
f=3D"http://u-boot_2013.01.bb">u-boot_2013.01.bb</a> and then modify SRCREV=
 to the revision that corresponds to the tag 2013.01 or 2013.01.01 in <a hr=
ef=3D"http://git.denx.de">git.denx.de</a>:</div>
<div style><br></div><div style>for 2013.01:=A0<a class=3D"" href=3D"http:/=
/git.denx.de/?p=3Du-boot.git;a=3Dcommit;h=3D3a9d879f6f64585b819af728b53be0a=
05037fe0d" style=3D"color:rgb(0,0,0);text-decoration:none;font-family:monos=
pace;font-size:12px">3a9d879f6f64585b819af728b53be0a05037fe0d</a></div>
<div style>for 2013.01.01:=A0<a class=3D"" href=3D"http://git.denx.de/?p=3D=
u-boot.git;a=3Dcommit;h=3De8ae0fa5edd152b2b29c470b88429be4cdcd2c46" style=
=3D"color:rgb(0,0,0);text-decoration:none;font-family:monospace;font-size:1=
2px">e8ae0fa5edd152b2b29c470b88429be4cdcd2c46</a></div>
<div style><br></div><div style>Do the same for u-boot-mkimage and include =
the u-boot version with your bsp.</div><div style><br></div><div style>Rudi=
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Wed, Feb 20, 2013 at 5:17 AM, Satya Swaroop Damarla <span dir=3D"ltr">&lt=
;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroop.dam=
arla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Guys,<div><br></div><div=
>I need support for uboot on Tamonten board but the version on it is v2012.=
04 but I came to know that v2012.10 or v2013.01 supports the Tamontenboard =
through some guys here..</div>

<div><br></div><div>It would be great if you can tell me how can I accompli=
sh v2013.01 or v2012.10 into the build system and make it available so that=
 I can compile the and get uImage</div><div><br></div>
<div>(Tamonten board is a derivative of harmony board with some changes and=
 has arm cortexa9 processor without neon extentions )</div><div><br></div><=
div>I am kind of new to add new .bb files and help is really appreciated as=
 I am not able to figure out how to add</div>

<div><br></div><div>Greetings &amp; Regards,</div><div>Swaroop</div></div>
<br>_______________________________________________<br>
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

--047d7b6050de695d2b04d62a47ec--
