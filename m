Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CB0FE00A0C; Fri,  1 Jun 2018 01:22:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65630E00A0C
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 01:22:01 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id t22-v6so18384159oih.6
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 01:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y8P4DDwpqZlyrt8HF6XDsempTuytu3SuU2tumNoNw2M=;
	b=tKglbAKDWP7pGyoKu3wBVYxVXEnMCDd6rq/tHTTjPMQ5axn6gVkAj5FDQaKckvOITU
	cXt7C7Ls/2SoY4/1ZcE0uUhZrQ0neA4lyQ0HY1V3mvEAV/VLOpHnSX0ebq8TNQxk0Yxd
	lIhcjda9tAKWPaM/EfdYrZWims0ndFN5OTIyWflS6mAvhlY9LTyM8Ew2PB3yLqx+9P7n
	AVt5PkD44N39r5Ag85qPCZ0Yy6WFRnCDcc0REznMpElXNatiDG/YODhFqVG8Fv+SPznS
	f219NDK1IazG8lwUOap/+naJS5aD4Bfp1LNXxrW3TQ6sfEv8bo4jy2G10v2kSv6LVPrY
	H7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y8P4DDwpqZlyrt8HF6XDsempTuytu3SuU2tumNoNw2M=;
	b=RHCdMrE+4CBfU+TjNR75u44qccnMl5qdjpGgFB2DJTblVt4ohx7XXv3+uK/Mpp8hYi
	srUNTnBf2pnHbvZvlLs6jsF5AYflPtsF7tZBt9wmzY/tWN676ubo6O0xFP4ApFmVopsI
	yk4Am72HqiUifXrJeWcW5GBWnMuSQCpgVnKmnETyKaNe0ZLhg08Tq7bwx4vv4KXTzZt2
	9C1okohZQcczkHGXZBYOHjIdSmDi8gGFoZy0JVvh5ZpEDIpH/HQ/Q4vJG4BQtZQBz3TE
	qHX52fmxrF4gYpTseqo0O75wBjLE6FH6tjFIJUkWGiRAn3EzYBlu7Tw5Bmuheeom4PN8
	ZZ1w==
X-Gm-Message-State: ALKqPwfT1so44WnU5jt0JM6/FOledgzAEmroFzhzFdEOJtMZVkqiNIf3
	qLAWM0Svsc+m0wGjjEm+BIlTlX+2j9DhEaoZcm205Q==
X-Google-Smtp-Source: ADUXVKJ1NWBbsst1iNNQWdhUxUkA+gwIks8ytP0W44rcRzzwKlHK1QmxWhVvkYnseDhCGQD9PoaLV/nOanaSiUV4q/s=
X-Received: by 2002:aca:ef08:: with SMTP id
	n8-v6mr5932500oih.329.1527841320441; 
	Fri, 01 Jun 2018 01:22:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 01:21:59 -0700 (PDT)
In-Reply-To: <CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 10:21:59 +0200
Message-ID: <CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Damien LEFEVRE <lefevre.da@gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 08:22:03 -0000
Content-Type: multipart/alternative; boundary="0000000000002dacf7056d9047b4"

--0000000000002dacf7056d9047b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey,
would really like to see your example.
Am struggling to get creation of these types of images for a while now.

So far have avoided diving into multiple distros because would like to have
the option
of building all the images at the same time (so they are basically the same
distro).

On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsystems.co=
m>
wrote:

> I fixed this issue defining different distro.conf files in my custom
> layer, adding a custom variable DISTRO_STAGE with the name of my distro
> (production, rnd, retail, and so on), Then you setup DISTRO in your
> local.conf to the proper value you want to use. Finally you can use that
> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to decide t=
he
> proper configuration files you want to install in your final image. That
> works as expected. Hope this helps!
>
>
>
>
> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>
>> Hi,
>>
>> For the same MACHINE I create the following images:
>> - myimage-production
>> - myimage-rnd
>> - myimage-retail
>>
>> The production one has production assisted tools for flashing peripheral
>> HW, testing vital HW components, writing some serial numbers, etc.
>>
>> The rnd one has more packages than the retail one just to help rnd work
>> and debugging in device, but none of the rnd image extra packages.
>>
>> The retail one has the final product image.
>>
>> I'm using web and FTP servers. I would like for the rnd version of the
>> image to have a different nginx configuration to set the root directory =
to
>> a development folder, or set an alias.
>>
>> Furthermore, I'll have different variant of the device where only the
>> device SW changes but the platform is identical. So I'll end up with
>> - myimage2-production
>> - myimage2-rnd
>> - myimage2-retail
>>
>> I know how to make MACHINE based configuration. How could I do this in
>> my nginx.bbappend based on image name?
>>
>> Thanks,
>> -Damien
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
>
>
>
>
> *NOTA LEGAL*
> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mi=
smo,
> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente di=
rigida a su
> destinatario y se encuentra protegido por Ley. Cualquier persona distinta
> de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n, copia
> o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3=
nico por
> error, se ruega lo notifique de inmediato al remitente borrando el mensaj=
e
> original juntamente con sus ficheros anexos. Gracias.
>
> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza
> la adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
> confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le in=
formamos de
> la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de N=
AYAR
> SYSTEMS SL, con la finalidad de poder atender los compromisos derivados d=
e
> la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus
> derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n=
 mediante un
> escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com
>
> *LEGAL NOTE*
> This email and any attachments to it contains is confidential information
> exclusively intended for the recipients. Any divulgation, copy or
> distribution to third parties is prohibited without written permission of
> NAYAR SYSTEMS SL. If you have received this e-mail in error, please notif=
y
> the sender immediately. In accordance with Law 15/1999 of 13 December on
> the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
> has adopted the necessary measures to ensure the confidential treatment o=
f
> personal information. We also inform you that you can exercise your acces=
s,
> rectification, cancellation and opposition rights by send us a mail to:
> info@nayarsystems.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000002dacf7056d9047b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey,<div>would really like to see your example.</div><div>=
Am struggling to get creation of these types of images for a while now.</di=
v><div><br></div><div>So far have avoided diving into multiple distros beca=
use would like to have the option</div><div>of building all the images at t=
he same time (so they are basically the same distro).</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 8:13=
 AM, Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nay=
arsystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">I fixed this issue defining different distro.conf files in my custo=
m layer, adding a custom variable DISTRO_STAGE with the name of my distro (=
production, rnd, retail, and so on), Then you setup DISTRO in your local.co=
nf to the proper value you want to use. Finally you can use that DISTRO_STA=
GE variable in your custom .bb or .bbappend recipes to decide the proper co=
nfiguration files you want to install in your final image. That works as ex=
pected. Hope this helps!</span><div style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration-style:initial;text-decoration-color:initial"><br>=
</div><br class=3D"m_-2730124559098635887gmail-Apple-interchange-newline"><=
br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><di=
v class=3D"h5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&=
lt;<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gma=
il.com</a>&gt;</span>:<br></div></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><=
div class=3D"h5"><div dir=3D"ltr">Hi,<div><br></div><div>For the same MACHI=
NE I create the following images:</div><div>- myimage-production</div><div>=
- myimage-rnd</div><div>- myimage-retail</div><div><br></div><div>The produ=
ction one has production assisted tools for flashing peripheral HW, testing=
 vital HW components, writing some serial numbers, etc.</div><div><br></div=
><div>The rnd one has more packages than the retail one just to help rnd wo=
rk and debugging in device, but none of the rnd image extra packages.=C2=A0=
</div><div><br></div><div>The retail one has the final product image.</div>=
<div><br></div><div>I&#39;m using web and FTP servers. I would like for the=
 rnd version of the image to have a different nginx configuration to set th=
e root directory to a development folder,=C2=A0<span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">or=
 set an alias.</span></div><div><br></div><div>Furthermore, I&#39;ll have d=
ifferent variant of the device where only the device SW changes but the pla=
tform is identical. So I&#39;ll end up with=C2=A0<br></div><div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;t=
ext-decoration-color:initial">- myimage2-production</div><div style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration-style:initial;text-deco=
ration-color:initial">- myimage2-rnd</div><div style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:in=
itial">- myimage2-retail</div><div><br></div><div>I know how to make MACHIN=
E based configuration. How could I do this in my=C2=A0nginx.bbappend based =
on image name?<br></div></div><div><span style=3D"color:rgb(34,34,34);font-=
family:arial,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline"><br></span></d=
iv><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">Thanks,</span></div><div><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">-Damien</span></div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><br><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_-27301=
24559098635887gmail_signature" data-smartmail=3D"gmail_signature"><br><img =
src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=
=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=3D"color:r=
gb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3ni=
co y, en su caso, cualquier fichero anexo al mismo, contiene informaci=C3=
=B3n de car=C3=A1cter confidencial exclusivamente dirigida a su destinatari=
o y se encuentra protegido por Ley. Cualquier persona distinta de su destin=
ataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o=
 impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3nic=
o por error, se ruega lo notifique de inmediato al remitente borrando el me=
nsaje original juntamente con sus ficheros anexos. Gracias.<br><br>De confo=
rmidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=
=C3=B3n de las medidas necesarias para asegurar el tratamiento confidencial=
 de los datos de car=C3=A1cter personal. As=C3=AD mismo le informamos de la=
 inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de NAYAR=
 SYSTEMS SL, con la finalidad de poder atender los compromisos derivados de=
 la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus =
derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n m=
ediante un escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rg=
b(17,85,204)" href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@=
nayarsystems.<wbr>com</a></span><br><br></font></span></div><div><span styl=
e=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;font-siz=
e:x-small"><u><b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:r=
gb(153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small">T=
his email and any attachments to it contains is confidential information ex=
clusively intended for the recipients. Any divulgation, copy or distributio=
n to third parties is prohibited without written permission of NAYAR SYSTEM=
S SL. If you have received this e-mail in error, please notify the sender i=
mmediately. In accordance with Law 15/1999 of 13 December on the Protection=
 of Personal Data, the NAYAR SYSTEMS SL guarantees that it has adopted the =
necessary measures to ensure the confidential treatment of personal informa=
tion. We also inform you that you can exercise your access, rectification, =
cancellation and opposition rights by send us a mail to:=C2=A0<a href=3D"ma=
ilto:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.com</a></sp=
an></div><br></div>
</font></span></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--0000000000002dacf7056d9047b4--
