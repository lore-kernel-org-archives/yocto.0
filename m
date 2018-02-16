Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14B88E00DD3; Fri, 16 Feb 2018 04:17:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A53F5E00D41
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 04:17:12 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id v186so1663136itc.5
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 04:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=RLhQ2pN8tI/wnr57U25dlGgb8p0n/myvQdaIdngmHGQ=;
	b=M/mf7hmquHUvXCgsTutslasRRXn++6J3q0DMINLCAmrMDRyd4hPzkmRe4oLpeX+U9T
	vK6kHGC/fJHG2+a2E+0Qo/8uoeNwAhWSqqd+KPhkFyr0gkb9r2pNOY6z5YKxt/pJhqFv
	761CTqPWrumGaJGJ0tjT2SE4Hy9bv8zliDN4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RLhQ2pN8tI/wnr57U25dlGgb8p0n/myvQdaIdngmHGQ=;
	b=GZNSk3fTUmKYlqn5zO9P8PckRVcAOinW5MQek2yoMvDDnCMNkGqtU3Z3SoizMvFaFN
	6TqLcxXhtT2mxpIxmo6aK32xVEGm1UNKB1UiIlakRr870VCkteXQBnW1cXXABKIqrNhy
	2krkZHJAzCmJS8QFWgrrZTRS/SodoITl+/XSCtKGuHpz78+c5U003gIj8yqBKpEgTkjj
	KFq086UU4KUOC9mL8uMPkk9nWWmBAIqbnZisI5IOIfttvQD/oroxQL2UuDNMFZ0Cd7va
	fkD+xV7VG/pHwE/U2MC4VGfANNyOJfkUlUrcSqcN7EpomGkV+QLd3RqJhCFvCbJDhOj2
	zLrw==
X-Gm-Message-State: APf1xPCNr7uOn4DqG3wc8ZhTGADfM3CXjS8wZMWXYe8NyDX/VOCW54HH
	55xirwjIqejBikQT9apmm4zHyb1fnnf5Y3xoH7vRtwk4
X-Google-Smtp-Source: AH8x2270AtAvvdvZbOjkYxJ5i7V9VLPBKa/FBgiVJ6W0SkVMP8nsAAMXXrd1N4JFWvKnUKnxHy/XAzzlnjfRG0K3DT0=
X-Received: by 10.36.158.198 with SMTP id p189mr8039268itd.128.1518783432088; 
	Fri, 16 Feb 2018 04:17:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Fri, 16 Feb 2018 04:17:11 -0800 (PST)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 16 Feb 2018 13:17:11 +0100
Message-ID: <CAALXFYxA90tPEHBfkutbJZ_wBHfShiQcoaqHbwLs9Q8NsZYRLQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Howto generate a Yocto image with spanish full-support by default
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
X-List-Received-Date: Fri, 16 Feb 2018 12:17:15 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d830f5fabf05655352e6"

--94eb2c05d830f5fabf05655352e6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello yocto mailing list.

I'm having troubles trying to setup a Yocto image with full support to
English and Spanish languages (Spanish as default).

The testing image I am building is based on the rocko branch, and my distro
is "systemd" based.

My current distro.conf yocto setup is this:

    GLIBC_GENERATE_LOCALES ?=3D "es_ES.UTF-8 en_US.UTF-8"
    IMAGE_LINGUAS ?=3D "es-es en-us"

With this setup I am getting an image with this locale settings:

    # locale
    LANG=3D
    LC_CTYPE=3D"POSIX"
    LC_NUMERIC=3D"POSIX"
    LC_TIME=3D"POSIX"
    LC_COLLATE=3D"POSIX"
    LC_MONETARY=3D"POSIX"
    LC_MESSAGES=3D"POSIX"
    LC_PAPER=3D"POSIX"
    LC_NAME=3D"POSIX"
    LC_ADDRESS=3D"POSIX"
    LC_TELEPHONE=3D"POSIX"
    LC_MEASUREMENT=3D"POSIX"
    LC_IDENTIFICATION=3D"POSIX"
    LC_ALL=3D

    # localectl
   System Locale: n/a
       VC Keymap: ES
      X11 Layout: es
       X11 Model: pc105
     X11 Options: terminate:ctrl_alt_bksp

    # locale -a
    C
    POSIX
    en_US
    es_ES

    # locale -m
    ES

    # locale charmap
    ANSI_X3.4-1968

    # rpm -qa | grep charmap
    glibc-charmap-es-2.26-r0.corei7_64

The image built with that setup doesn't work as expected. When I press =C3=
=91
(enye) key on the ssh console, I get this:

    root@hostname:~#
    (arg: 1)

As you can see, '=C3=B1' character is not printed on the console.

After a lot of tests, I have been able to fix this creating these two files=
:


    $ cat /etc/locale.conf
    LANG=3Des_ES.UTF-8
    LANGUAGE=3Des:en

    $ cat /etc/profile.d/locale.sh
    LC_ALL=3Des_ES
    LANG=3Des_ES
    LANGUAGE=3Des_ES

After rebooting, I get this localectl settings:

    # localectl
   System Locale: LANG=3Des_ES.UTF-8
                  LANGUAGE=3Des:en
       VC Keymap: ES
      X11 Layout: es
       X11 Model: pc105
     X11 Options: terminate:ctrl_alt_bksp

And the '=C3=91' key works as expected:

    root@iwill:~# =C3=B1=C3=B1=C3=B1=C3=B1=C3=B1

I don't know how to fix this issue without having to make manual changes to
the generated image.
I would like the generated image with Spanish support available once the
.wic image is burned into my USB memory stick.

Is that posible? How should be managed?

Thanks in advance for your time! :-)


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

--94eb2c05d830f5fabf05655352e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello yocto mailing list.=C2=A0</div><=
div><br></div><div>I&#39;m having troubles trying to setup a Yocto image wi=
th full support to English and Spanish languages (Spanish as default).=C2=
=A0</div><div><br></div><div>The testing image I am building is based on th=
e rocko branch, and my distro is &quot;systemd&quot; based.=C2=A0</div><div=
><br></div><div>My current distro.conf yocto setup is this:</div><div><br><=
/div><div><div>=C2=A0 =C2=A0 GLIBC_GENERATE_LOCALES ?=3D &quot;es_ES.UTF-8 =
en_US.UTF-8&quot;<br></div><div>=C2=A0 =C2=A0 IMAGE_LINGUAS ?=3D &quot;es-e=
s en-us&quot;</div><div><br></div></div><div>With this setup I am getting a=
n image with this locale settings:</div><div><br></div><div><div>=C2=A0 =C2=
=A0 # locale</div><div>=C2=A0 =C2=A0 LANG=3D</div><div>=C2=A0 =C2=A0 LC_CTY=
PE=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC_NUMERIC=3D&quot;POSIX&quo=
t;</div><div>=C2=A0 =C2=A0 LC_TIME=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=
=A0 LC_COLLATE=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC_MONETARY=3D&q=
uot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC_MESSAGES=3D&quot;POSIX&quot;</di=
v><div>=C2=A0 =C2=A0 LC_PAPER=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 L=
C_NAME=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC_ADDRESS=3D&quot;POSIX=
&quot;</div><div>=C2=A0 =C2=A0 LC_TELEPHONE=3D&quot;POSIX&quot;</div><div>=
=C2=A0 =C2=A0 LC_MEASUREMENT=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC=
_IDENTIFICATION=3D&quot;POSIX&quot;</div><div>=C2=A0 =C2=A0 LC_ALL=3D</div>=
<div><br></div><div>=C2=A0 =C2=A0 # localectl</div><div>=C2=A0 =C2=A0System=
 Locale: n/a</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0VC Keymap: ES</div><div>=
=C2=A0 =C2=A0 =C2=A0 X11 Layout: es</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0X1=
1 Model: pc105</div><div>=C2=A0 =C2=A0 =C2=A0X11 Options: terminate:ctrl_al=
t_bksp</div></div><div><br></div><div><div>=C2=A0 =C2=A0 # locale -a</div><=
div>=C2=A0 =C2=A0 C</div><div>=C2=A0 =C2=A0 POSIX</div><div>=C2=A0 =C2=A0 e=
n_US</div><div>=C2=A0 =C2=A0 es_ES</div></div><div><br></div><div><div>=C2=
=A0 =C2=A0 # locale -m</div><div>=C2=A0 =C2=A0 ES</div></div><div><br></div=
><div><div>=C2=A0 =C2=A0 # locale charmap</div><div>=C2=A0 =C2=A0 ANSI_X3.4=
-1968</div></div><div><br></div><div><div>=C2=A0 =C2=A0 # rpm -qa | grep ch=
armap</div><div>=C2=A0 =C2=A0 glibc-charmap-es-2.26-r0.corei7_64<br></div><=
/div><div><br></div><div>The image built with that setup doesn&#39;t work a=
s expected. When I press =C3=91 (enye) key on the ssh console, I get this:<=
br></div><div><br></div><div><div>=C2=A0 =C2=A0 root@hostname:~#=C2=A0</div=
><div>=C2=A0 =C2=A0 (arg: 1)=C2=A0</div></div><div><br></div><div><span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">As you can see, &#39;=C3=B1&#39; <span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>character<span>=C2=A0</span></span>is not printed on the console.</span><b=
r></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline"><br></span></div><div>After a lot of=
 tests, I have been able to fix this creating these two files:<br></div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br=
></div><div><div>=C2=A0 =C2=A0 $ cat /etc/locale.conf</div><div>=C2=A0 =C2=
=A0 LANG=3Des_ES.UTF-8</div><div>=C2=A0 =C2=A0 LANGUAGE=3Des:en</div><div><=
br></div><div>=C2=A0 =C2=A0 $ cat /etc/profile.d/locale.sh</div><div>=C2=A0=
 =C2=A0 LC_ALL=3Des_ES</div><div>=C2=A0 =C2=A0 LANG=3Des_ES</div><div>=C2=
=A0 =C2=A0 LANGUAGE=3Des_ES</div></div><div><br></div><div>After rebooting,=
 I get this localectl settings:</div><div><br></div><div><div>=C2=A0 =C2=A0=
 # localectl</div><div>=C2=A0 =C2=A0System Locale: LANG=3Des_ES.UTF-8</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 LANGUAG=
E=3Des:en</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0VC Keymap: ES</div><div>=C2=
=A0 =C2=A0 =C2=A0 X11 Layout: es</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0X11 M=
odel: pc105</div><div>=C2=A0 =C2=A0 =C2=A0X11 Options: terminate:ctrl_alt_b=
ksp</div></div><div><br></div><div>And the &#39;=C3=91&#39; key works as ex=
pected:<br></div><div><br></div><div>=C2=A0 =C2=A0 root@iwill:~# =C3=B1=C3=
=B1=C3=B1=C3=B1=C3=B1<br></div><div><br></div><div>I don&#39;t know how to =
fix this issue without having to make manual changes to the generated image=
.=C2=A0</div><div>I would like the generated image with Spanish support ava=
ilable once the .wic image is burned into my USB memory stick.=C2=A0</div><=
div><br></div><div>Is that posible? How should be managed?=C2=A0<br></div><=
div><br></div><div>Thanks in advance for your time! :-)</div><br clear=3D"a=
ll"><div><br></div>-- <br><div class=3D"gmail_signature"><br><img src=3D"ht=
tp://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b=
></b></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,15=
3,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en =
su caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de car=
=C3=A1cter confidencial exclusivamente dirigida a su destinatario y se encu=
entra protegido por Ley. Cualquier persona distinta de su destinataria tien=
e prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=
=B3n total o parcial. Si ha recibido este correo electr=C3=B3nico por error=
, se ruega lo notifique de inmediato al remitente borrando el mensaje origi=
nal juntamente con sus ficheros anexos. Gracias.<br><br>De conformidad con =
lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de l=
as medidas necesarias para asegurar el tratamiento confidencial de los dato=
s de car=C3=A1cter personal. As=C3=AD mismo le informamos de la inclusi=C3=
=B3n de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL=
, con la finalidad de poder atender los compromisos derivados de la relaci=
=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer sus derechos d=
e acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un=
 escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,20=
4)" href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsyste=
ms.com</a></span><br><br></font></span></div><div><span style=3D"color:rgb(=
153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small"><u><=
b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:rgb(153,153,153)=
;font-family:arial,helvetica,sans-serif;font-size:x-small">This email and a=
ny attachments to it contains is confidential information exclusively inten=
ded for the recipients. Any divulgation, copy or distribution to third part=
ies is prohibited without written permission of NAYAR SYSTEMS SL. If you ha=
ve received this e-mail in error, please notify the sender immediately. In =
accordance with Law 15/1999 of 13 December on the Protection of Personal Da=
ta, the NAYAR SYSTEMS SL guarantees that it has adopted the necessary measu=
res to ensure the confidential treatment of personal information. We also i=
nform you that you can exercise your access, rectification, cancellation an=
d opposition rights by send us a mail to:=C2=A0<a href=3D"mailto:info@nayar=
systems.com" target=3D"_blank">info@nayarsystems.com</a></span></div><br></=
div>
</div>

--94eb2c05d830f5fabf05655352e6--
