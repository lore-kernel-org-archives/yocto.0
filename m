Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73C2CE00E84; Fri,  2 Mar 2018 00:52:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20058E00DC6
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 00:52:38 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id e30so9993620ioc.3
	for <yocto@yoctoproject.org>; Fri, 02 Mar 2018 00:52:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iJhGdCvNOKsvDoVizH3sOxZpHR9FgoOhHgW5I9E5tqs=;
	b=U0wZKAL0DbXNyttmlRL+mTvhsdds0jgtC+Tz2+NM+sXrV2+fW+YjyiVfU6D4Ffs/PH
	L+DChWaaSuLZdt0pl6irhgle0WnkvVul6t/4juVgifbDv7Z6TmGHzpajGe6yF5AtWA/h
	09A/MD2mZw+t28jkbmVYst4YWO7wkg8yH8QWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iJhGdCvNOKsvDoVizH3sOxZpHR9FgoOhHgW5I9E5tqs=;
	b=Pu8CFgePsiFGCDlwGyHO2KslCjlHU3FVspB+cTfJoE6Iy3DlJj0oMwHZac7ScTFUwc
	WhZLafiaTnQ5teDJl+b3SFLPBkksC3rOPJi299icLQI2XhFn6o8VhcNaqcSm+1sE953P
	cvdIgsB+/tk0PChA+m56NXMQd2cWJ8JBAtOGkx7BLhCm1ky6T5PYlJ3TRI4N1rjn1foU
	HeoDCsVewCzGam3spOcB55VOTVGYTXna9QqA4CQWhnKHOiIkLh+Hm78WjGBiaLCD66VV
	U0Hgcacbg2lNr1ZDrG7jsUotwJ507iHYXEYVNRgiLgbr5mutZlYwFLp9z5+3fEL84OOy
	PQ+Q==
X-Gm-Message-State: APf1xPARw2yvE+aCjxb1/xVxq2RMxmIMduFuW/C1AIHNWFI5/hoRr9lK
	L0LExI3sW7lglLZlQZxbaUD4BxLQKdGEtGffzlOGnw==
X-Google-Smtp-Source: AG47ELuahsQwSMqmI0woUSCSB0bjhOvOumD2fqv3RXM6wcvn1NhuDjbu1mstxxA+Tg5dkk+ClV6O9nT4T/OCr2ofMbQ=
X-Received: by 10.107.173.12 with SMTP id w12mr5251173ioe.282.1519980757943;
	Fri, 02 Mar 2018 00:52:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Fri, 2 Mar 2018 00:52:37 -0800 (PST)
In-Reply-To: <a41363bb-bfcf-cf81-9fdb-52d365d18d45@intel.com>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
	<c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
	<CAALXFYyVio5UzkZUVS1xAPnkgfTt-7rTO+0ApEnKD4F2Gd1OSw@mail.gmail.com>
	<a41363bb-bfcf-cf81-9fdb-52d365d18d45@intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 2 Mar 2018 09:52:37 +0100
Message-ID: <CAALXFYx90SYoFULnTPJw5ZKraNJEvDdntPhfqzNCXTePL_ifGA@mail.gmail.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Fri, 02 Mar 2018 08:52:40 -0000
Content-Type: multipart/alternative; boundary="001a114468f624975405666a19c4"

--001a114468f624975405666a19c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

First of all, thank you for your support Mr. Anuj.

I extracted "initrd" image contents:

$ binwalk initrd

DECIMAL       HEXADECIMAL     DESCRIPTION
------------------------------------------------------------
--------------------
0             0x0             ASCII cpio archive (SVR4 with no CRC), file
name: "kernel", file name length: "0x00000007", file size: "0x00000000"
120           0x78            ASCII cpio archive (SVR4 with no CRC), file
name: "kernel/x86", file name length: "0x0000000B", file size: "0x00000000"
244           0xF4            ASCII cpio archive (SVR4 with no CRC), file
name: "kernel/x86/microcode", file name length: "0x00000015", file size:
"0x00000000"
376           0x178           ASCII cpio archive (SVR4 with no CRC), file
name: "kernel/x86/microcode/.enuineIntel.align.0123456789abc", file name
length: "0x00000036", file size: "0x00000000"
540           0x21C           ASCII cpio archive (SVR4 with no CRC), file
name: "kernel/x86/microcode/GenuineIntel.bin", file name length:
"0x00000026", file size: "0x00183400"
1586864       0x1836B0        ASCII cpio archive (SVR4 with no CRC), file
name: "TRAILER!!!", file name length: "0x0000000B", file size: "0x00000000"
1587200       0x183800        gzip compressed data, maximum compression,
from Unix, last modified: 2018-02-28 14:29:13

$ dd if=3Dinitrd bs=3D1587200 skip=3D1 | gunzip | cpio -idm

Now I have the initrd filesystem available. I can confirm there is a bug in
that filesystem because the "init" script uses "sleep" but that tool is not
installed on it.

# Prints a message and start a endless loop
fatal() {
    echo $1 >/dev/console
    echo >/dev/console

    if [ -n "$bootparam_init_fatal_sh" ]; then
        sh
    else
    while [ "true" ]; do
        sleep 3600
    done
    fi
}

As you pointed, that "init" script is located into
poky/meta/recipes-core/initrdscripts/initramfs-framework/init. In that init
script there are two calls to "fatal" function. Maybe this information can
be useful to discover what is happening.

I have tested adding suggested "init_fatal_sh" bootarg but I don't get any
shell to debug the problem.



2018-03-02 9:15 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com>:

> On 03/02/2018 03:41 PM, Iv=C3=A1n Castell wrote:
> >
> > 2018-03-02 0:41 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com
> > <mailto:anuj.mittal@intel.com>>:
> >
> >     Hi,
> >
> >     On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:
> >     >
> >     > Is this the proper way to install the generated image in the hard
> >     disk?
> >     > Maybe I am doing something wrong?
> >
> >     Does the image boot up if you select 'boot'?
> >
> >
> > I tested selecting 'boot' option and it happens exactly the same: a
> > black screen appears when booting with default options, and when adding
> > "noapic", the screen is flooded of "sleep: command not found" messages.
> >
> >
> >
> >     Do you eventually get options to select storage media after all
> >     these 'not found' messages if you select 'install'?
> >
> >
> > After waiting more than 5 minutes, the "sleep: command not found"
> > message continues flooding the screen.
> >
> >
> >
> >     Can you share the logs?
> >
> >
> > If I could, I would do it, but I have no way to get those logs out of
> > the box without a terminal available.
>
> The error is probably coming from
> meta/recipes-core/initrdscripts/initramfs-framework/init.
>
> You can pass a boot parameter 'init_fatal_sh' and that should help you
> drop to a shell and debug this problem further.
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

--001a114468f624975405666a19c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration-style:initial;text-decoration-color:initial"><br class=3D"gmail=
-Apple-interchange-newline">First of all, thank you for your support Mr. An=
uj.=C2=A0</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration-style:initial;text-decoration-color:initial"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;t=
ext-decoration-color:initial">I extracted=C2=A0<span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">&q=
uot;initrd&quot; image=C2=A0</span>contents:</div><div style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-=
color:initial"><br></div><div style=3D"color:rgb(34,34,34);font-family:aria=
l,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;text-decoration-style:initial;text-decoration-color:initial">$ binwalk =
initrd=C2=A0<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;text-decoration-style:initial;text-decoration-color:initial"><div><br></di=
v><div>DECIMAL=C2=A0 =C2=A0 =C2=A0 =C2=A0HEXADECIMAL=C2=A0 =C2=A0 =C2=A0DES=
CRIPTION</div><div>------------------------------<wbr>---------------------=
---------<wbr>--------------------</div><div>0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00x0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ASCI=
I cpio archive (SVR4 with no CRC), file name: &quot;kernel&quot;, file name=
 length: &quot;0x00000007&quot;, file size: &quot;0x00000000&quot;</div><di=
v>120=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x78=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ASCII cpio archive (SVR4 with no CRC), file name: &quot;k=
ernel/x86&quot;, file name length: &quot;0x0000000B&quot;, file size: &quot=
;0x00000000&quot;</div><div>244=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00xF=
4=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ASCII cpio archive (SVR4 with no=
 CRC), file name: &quot;kernel/x86/microcode&quot;, file name length: &quot=
;0x00000015&quot;, file size: &quot;0x00000000&quot;</div><div>376=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x178=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0ASCII cpio archive (SVR4 with no CRC), file name: &quot;kernel/x86/mi=
crocode/.<wbr>enuineIntel.align.<wbr>0123456789abc&quot;, file name length:=
 &quot;0x00000036&quot;, file size: &quot;0x00000000&quot;</div><div>540=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00x21C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0ASCII cpio archive (SVR4 with no CRC), file name: &quot;kernel/x8=
6/microcode/<wbr>GenuineIntel.bin&quot;, file name length: &quot;0x00000026=
&quot;, file size: &quot;0x00183400&quot;</div><div>1586864=C2=A0 =C2=A0 =
=C2=A0 =C2=A00x1836B0=C2=A0 =C2=A0 =C2=A0 =C2=A0 ASCII cpio archive (SVR4 w=
ith no CRC), file name: &quot;TRAILER!!!&quot;, file name length: &quot;0x0=
000000B&quot;, file size: &quot;0x00000000&quot;</div><div>1587200=C2=A0 =
=C2=A0 =C2=A0 =C2=A00x183800=C2=A0 =C2=A0 =C2=A0 =C2=A0 gzip compressed dat=
a, maximum compression, from Unix, last modified: 2018-02-28 14:29:13</div>=
</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration=
-style:initial;text-decoration-color:initial"><br></div><div style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;text-decoration-style:initial;text-decor=
ation-color:initial">$ dd if=3Dinitrd bs=3D1587200 skip=3D1 | gunzip | cpio=
 -idm<br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration-style:initial;text-decoration-color:initial"><br></div><div style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;t=
ext-decoration-color:initial">Now I have the initrd filesystem available. I=
 can confirm there is a bug in that filesystem because the &quot;init&quot;=
 script uses &quot;sleep&quot; but that tool is not installed on it.</div><=
div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;text-decoration-style:=
initial;text-decoration-color:initial"><br></div><div style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;text-decoration-style:initial;text-decoration-c=
olor:initial"><div># Prints a message and start a endless loop</div><div>fa=
tal() {</div><div>=C2=A0 =C2=A0 echo $1 &gt;/dev/console</div><div>=C2=A0 =
=C2=A0 echo &gt;/dev/console</div><div><br></div><div>=C2=A0 =C2=A0 if [ -n=
 &quot;$bootparam_init_fatal_sh&quot; ]; then</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sh</div><div>=C2=A0 =C2=A0 else</div><div>=C2=A0 =C2=A0 while [ =
&quot;true&quot; ]; do</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sleep 3600</di=
v><div>=C2=A0 =C2=A0 done</div><div>=C2=A0 =C2=A0 fi</div><div>}</div></div=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial"><br></div><div style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial">As you pointed, that &quot;init&quot; script is located int=
o poky/meta/recipes-core/initrdscripts/initramfs-framework/init. In that in=
it script there are two calls to &quot;fatal&quot; function. Maybe this inf=
ormation can be useful to discover what is happening.</div><div><br></div><=
div>I have tested adding suggested &quot;init_fatal_sh&quot; bootarg but I =
don&#39;t get any shell to debug the problem.</div><div><br></div><br></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-02 9:15 =
GMT+01:00 Anuj Mittal <span dir=3D"ltr">&lt;<a href=3D"mailto:anuj.mittal@i=
ntel.com" target=3D"_blank">anuj.mittal@intel.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span class=3D"">On 03/02/2018 03:41 PM, Iv=C3=A1n=
 Castell wrote:<br>
&gt;<br>
&gt; 2018-03-02 0:41 GMT+01:00 Anuj Mittal &lt;<a href=3D"mailto:anuj.mitta=
l@intel.com">anuj.mittal@intel.com</a><br>
</span>&gt; &lt;mailto:<a href=3D"mailto:anuj.mittal@intel.com">anuj.mittal=
@intel.com</a>&gt;<wbr>&gt;:<br>
<span class=3D"">&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 03/01/2018 07:20 PM, Iv=C3=A1n Castell wrote:<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Is this the proper way to install the generate=
d image in the hard<br>
&gt;=C2=A0 =C2=A0 =C2=A0disk?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Maybe I am doing something wrong?<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Does the image boot up if you select &#39;boot&#39;=
?<br>
&gt;<br>
&gt;<br>
&gt; I tested selecting &#39;boot&#39; option and it happens exactly the sa=
me: a<br>
&gt; black screen appears when booting with default options, and when addin=
g<br>
&gt; &quot;noapic&quot;, the screen is flooded of &quot;sleep: command not =
found&quot; messages.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Do you eventually get=C2=A0options to select storag=
e media after all<br>
&gt;=C2=A0 =C2=A0 =C2=A0these &#39;not found&#39; messages if=C2=A0you sele=
ct &#39;install&#39;?<br>
&gt;<br>
&gt;<br>
&gt; After waiting more than 5 minutes, the &quot;sleep: command not found&=
quot;<br>
&gt; message continues flooding the screen.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Can you share the logs?<br>
&gt;<br>
&gt;<br>
&gt; If I could, I would do it, but I have no way to get those logs out of<=
br>
&gt; the box without a terminal available.<br>
<br>
</span>The error is probably coming from<br>
meta/recipes-core/<wbr>initrdscripts/initramfs-<wbr>framework/init.<br>
<br>
You can pass a boot parameter &#39;init_fatal_sh&#39; and that should help =
you<br>
drop to a shell and debug this problem further.<br>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"htt=
p://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b>=
</b></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,153=
,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en s=
u caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de car=
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

--001a114468f624975405666a19c4--
