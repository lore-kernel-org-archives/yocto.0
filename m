Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 433E4E00CDF; Thu, 31 May 2018 23:13:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C3CE00843
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:13:46 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id c3-v6so533809itj.4
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=siZDPCNDCG1Rxz7CU0mxxwgqnEY9O8NJ6FUqImoTw6c=;
	b=Ptk1Pw1y14FVw/49LHmSeAfobCO2ewd1uMeBjpUdqrGdpUxZ2hXVsq2ZO8RLu6c2Dt
	A5qx0h0DPktPuRhWA6hFHQbCfsRe/uLWzFUzH9+Uh1i+yf+pCSF9iIZdkNJ0RZUJTD1T
	SDaGfOPNbENPFnik1U0U+aD2hf++h+hU+h/Qc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=siZDPCNDCG1Rxz7CU0mxxwgqnEY9O8NJ6FUqImoTw6c=;
	b=diwg7w0t51lbptP9whNWNfwiK6PGfJlUiDPM4wPiSbZRu/o4tsM7ZU9rKl3m5gZYdk
	DEIIPj4EHWmuQJSr+7f5ugVgZcLUnL158GE2M/2e+sqRTYeuGeHx/hMnVHrgV6OVRITg
	4cYseilAmi5J8Jqe2llyw2YOoRhICo5iLLdz9mR4/7phjjpddCJYZXkkDiUokCzqygj6
	LoFb0u4meSjUQo0LUPnf8qEBcxJ9S6RIX/rlqFkLnf/W+HgUTjo3kiQp/3sU4E0MgYv4
	JgLiG4suZCQgNjqXgzxCc7uKyjSq2bOwdTAuFofygvnagT3XDckuDlthfZ+vFRTi9FmG
	B/7w==
X-Gm-Message-State: APt69E0mywt8PxDN8wzNC/Y8e1m1g3BlO0ySajJ9ZEeUblMzfg7VhlNX
	CNQBz11n0Qw0BPOwOGEM09UPdsQLxDApwskqMVg/bQ==
X-Google-Smtp-Source: ADUXVKI15CDmju6U4oMjQeLlgtD6F29dr3Q9WyLbkgJ38apwJ5U/uI4gE6qXAf7qG5CG1Ury3s+EjSIonlUTQ8m2Cak=
X-Received: by 2002:a24:3a0a:: with SMTP id
	m10-v6mr3132306itm.45.1527833626129; 
	Thu, 31 May 2018 23:13:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP; Thu, 31 May 2018 23:13:45
	-0700 (PDT)
In-Reply-To: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 1 Jun 2018 08:13:45 +0200
Message-ID: <CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image specific configuration files
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
X-List-Received-Date: Fri, 01 Jun 2018 06:13:48 -0000
Content-Type: multipart/alternative; boundary="0000000000008fd340056d8e7cf8"

--0000000000008fd340056d8e7cf8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I fixed this issue defining different distro.conf files in my custom layer,
adding a custom variable DISTRO_STAGE with the name of my distro
(production, rnd, retail, and so on), Then you setup DISTRO in your
local.conf to the proper value you want to use. Finally you can use that
DISTRO_STAGE variable in your custom .bb or .bbappend recipes to decide the
proper configuration files you want to install in your final image. That
works as expected. Hope this helps!




2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:

> Hi,
>
> For the same MACHINE I create the following images:
> - myimage-production
> - myimage-rnd
> - myimage-retail
>
> The production one has production assisted tools for flashing peripheral
> HW, testing vital HW components, writing some serial numbers, etc.
>
> The rnd one has more packages than the retail one just to help rnd work
> and debugging in device, but none of the rnd image extra packages.
>
> The retail one has the final product image.
>
> I'm using web and FTP servers. I would like for the rnd version of the
> image to have a different nginx configuration to set the root directory t=
o
> a development folder, or set an alias.
>
> Furthermore, I'll have different variant of the device where only the
> device SW changes but the platform is identical. So I'll end up with
> - myimage2-production
> - myimage2-rnd
> - myimage2-retail
>
> I know how to make MACHINE based configuration. How could I do this in
> my nginx.bbappend based on image name?
>
> Thanks,
> -Damien
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20




*NOTA LEGAL*
Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mism=
o,
contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente diri=
gida a su
destinatario y se encuentra protegido por Ley. Cualquier persona distinta
de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia
o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3ni=
co por
error, se ruega lo notifique de inmediato al remitente borrando el mensaje
original juntamente con sus ficheros anexos. Gracias.

De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la
adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le info=
rmamos de
la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAY=
AR
SYSTEMS SL, con la finalidad de poder atender los compromisos derivados de
la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus
derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n m=
ediante un
escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com

*LEGAL NOTE*
This email and any attachments to it contains is confidential information
exclusively intended for the recipients. Any divulgation, copy or
distribution to third parties is prohibited without written permission of
NAYAR SYSTEMS SL. If you have received this e-mail in error, please notify
the sender immediately. In accordance with Law 15/1999 of 13 December on
the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
has adopted the necessary measures to ensure the confidential treatment of
personal information. We also inform you that you can exercise your access,
rectification, cancellation and opposition rights by send us a mail to:
info@nayarsystems.com

--0000000000008fd340056d8e7cf8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">I fixed this issue defining diff=
erent distro.conf files in my custom layer, adding a custom variable DISTRO=
_STAGE with the name of my distro (production, rnd, retail, and so on), The=
n you setup DISTRO in your local.conf to the proper value you want to use. =
Finally you can use that DISTRO_STAGE variable in your custom .bb or .bbapp=
end recipes to decide the proper configuration files you want to install in=
 your final image. That works as expected. Hope this helps!</span><div styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;=
text-decoration-color:initial"><br></div><br class=3D"gmail-Apple-interchan=
ge-newline"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br=
></div><div>For the same MACHINE I create the following images:</div><div>-=
 myimage-production</div><div>- myimage-rnd</div><div>- myimage-retail</div=
><div><br></div><div>The production one has production assisted tools for f=
lashing peripheral HW, testing vital HW components, writing some serial num=
bers, etc.</div><div><br></div><div>The rnd one has more packages than the =
retail one just to help rnd work and debugging in device, but none of the r=
nd image extra packages.=C2=A0</div><div><br></div><div>The retail one has =
the final product image.</div><div><br></div><div>I&#39;m using web and FTP=
 servers. I would like for the rnd version of the image to have a different=
 nginx configuration to set the root directory to a development folder,=C2=
=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">or set an alias.</span></div><div><br></div><d=
iv>Furthermore, I&#39;ll have different variant of the device where only th=
e device SW changes but the platform is identical. So I&#39;ll end up with=
=C2=A0<br></div><div><div style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
text-decoration-style:initial;text-decoration-color:initial">- myimage2-pro=
duction</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-dec=
oration-style:initial;text-decoration-color:initial">- myimage2-rnd</div><d=
iv style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;text-decoration-style:i=
nitial;text-decoration-color:initial">- myimage2-retail</div><div><br></div=
><div>I know how to make MACHINE based configuration. How could I do this i=
n my=C2=A0nginx.bbappend based on image name?<br></div></div><div><span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">Thanks,</s=
pan></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">-Damien</span></div></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"h=
ttp://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><=
b></b></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,1=
53,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en=
 su caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de ca=
r=C3=A1cter confidencial exclusivamente dirigida a su destinatario y se enc=
uentra protegido por Ley. Cualquier persona distinta de su destinataria tie=
ne prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=
=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3nico por er=
ror, se ruega lo notifique de inmediato al remitente borrando el mensaje or=
iginal juntamente con sus ficheros anexos. Gracias.<br><br>De conformidad c=
on lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n d=
e las medidas necesarias para asegurar el tratamiento confidencial de los d=
atos de car=C3=A1cter personal. As=C3=AD mismo le informamos de la inclusi=
=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS=
 SL, con la finalidad de poder atender los compromisos derivados de la rela=
ci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus derechos=
 de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante =
un escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,=
204)" href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsys=
tems.com</a></span><br><br></font></span></div><div><span style=3D"color:rg=
b(153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small"><u=
><b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:rgb(153,153,15=
3);font-family:arial,helvetica,sans-serif;font-size:x-small">This email and=
 any attachments to it contains is confidential information exclusively int=
ended for the recipients. Any divulgation, copy or distribution to third pa=
rties is prohibited without written permission of NAYAR SYSTEMS SL. If you =
have received this e-mail in error, please notify the sender immediately. I=
n accordance with Law 15/1999 of 13 December on the Protection of Personal =
Data, the NAYAR SYSTEMS SL guarantees that it has adopted the necessary mea=
sures to ensure the confidential treatment of personal information. We also=
 inform you that you can exercise your access, rectification, cancellation =
and opposition rights by send us a mail to:=C2=A0<a href=3D"mailto:info@nay=
arsystems.com" target=3D"_blank">info@nayarsystems.com</a></span></div><br>=
</div>
</div>

--0000000000008fd340056d8e7cf8--
