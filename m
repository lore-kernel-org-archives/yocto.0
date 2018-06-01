Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 517F9E00D4A; Fri,  1 Jun 2018 02:04:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C03E00D2B
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 02:04:45 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id l6-v6so997015iti.2
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 02:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pn3UD3M8M210V/B7IZKctsdnw/5sy7/B859jAx+s3xs=;
	b=BCJYFKeVPycHk+jeW/pHxFw/Gm90MRszIiQYBIO86KijLuhuyxQZ2zzGIcFCXie55q
	rWQiQWijopvpOm07BlwkzU9AoQhQEeR22yiyo3prDqokibWdPVQXiVksVwdLUIeo9ssI
	wZRr8lnllfQOND2I33kXBJTrXG8l9eIdAnzaY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pn3UD3M8M210V/B7IZKctsdnw/5sy7/B859jAx+s3xs=;
	b=PONr5/blzDSGDJaHkFGy0Gxjn0F2ZLkS65+lnrvnQQTvTQmdodYAgTzXFc0swow/Ux
	nA2BRTQOW6PwvMJ/ARJJmB/Gk6npayyvPjtVyU6qFZVFNm/X1DNWngBIAw6x8b6A4P74
	7UXKcOaW2SRV99vnAHUOOVVgCdDmmkXkFZd39ZjVqfMSOnpq1sDbiDNi2rMPRg2zOu1j
	Dh5C0SDza2tKZwZDOvCANccdqIAW4PeR1CvPltz9ABmz4AZztJGZtMxGOeUEWP7isg8/
	oCRayS15DXGxp5gp6sfuaV0AK7L31diMycUI+PcJy4mkBa5FlxlGzrqh5LweHwtUcGoR
	irgQ==
X-Gm-Message-State: APt69E1dICaIodTqzseNz+yOtqpgbE4NCpVCWgqK1CManhUGnjMwnqzc
	YAsnBgCihmjXFZrCwvEx173ic892H8t2fsngHapoyw==
X-Google-Smtp-Source: ADUXVKL2VTQgG9sjgijLZ1Wv8B95XTL64SDfGkel21V9zeyJtMjZxk1z2PBKcGtY4EyMlK25qjmV/gxJJDV/vMiZEAo=
X-Received: by 2002:a24:3a0a:: with SMTP id
	m10-v6mr3588873itm.45.1527843884902; 
	Fri, 01 Jun 2018 02:04:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 02:04:44 -0700 (PDT)
In-Reply-To: <CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 1 Jun 2018 11:04:44 +0200
Message-ID: <CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 09:04:47 -0000
Content-Type: multipart/alternative; boundary="0000000000000852a4056d90e088"

--0000000000000852a4056d90e088
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I can provide more details. My custom layer has these files related with
distro:

    my_layer/conf/distro/include/common.conf
    my_layer/conf/distro/develop.conf
    my_layer/conf/distro/production.conf
    my_layer/conf/distro/integration.conf

As an example of the previous files,
my_layer/conf/distro/include/develop.conf has this content:

    require conf/distro/include/common.conf
    DISTRO =3D "my-distro-development"
    DISTRO_NAME =3D "OS Development"
    DISTRO_STAGE =3D "development"
    # And here more customizations as setting root password, PRSERV_HOST,
or PACKAGE_FEED_URIS

In common.conf I define all features common to all my distros
(PACKAGE_CLASSES and so on)

I have custom iptables rules, then I have different files for that rules:

    my/layer/recipes-extended/iptables/files/iptables.rules.development
    my/layer/recipes-extended/iptables/files/iptables.rules.production
    my/layer/recipes-extended/iptables/files/iptables.rules.integration

I use a bbappend recipe for iptables, modifiying do_install_append task
like this:

    install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
${D}/etc/iptables/iptables.rules

I use a single image recipe to define all packages installed in my final
image (all of them have the same set if packages, but with different
customizations)

Finally, I wrote a setup-build-env.sh script in my custom layer to
configure the build easily. That script creates
build-${DISTRO_STAGE}/conf/bblayers.conf
and build-${DISTRO_STAGE}/conf/local.conf files with the proper setup,
setting MACHINE, DISTRO and DL_DIR (shared by all distros) properly.

Hope this helps!





2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:

> Hey,
> would really like to see your example.
> Am struggling to get creation of these types of images for a while now.
>
> So far have avoided diving into multiple distros because would like to
> have the option
> of building all the images at the same time (so they are basically the
> same distro).
>
> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsystems.=
com>
> wrote:
>
>> I fixed this issue defining different distro.conf files in my custom
>> layer, adding a custom variable DISTRO_STAGE with the name of my distro
>> (production, rnd, retail, and so on), Then you setup DISTRO in your
>> local.conf to the proper value you want to use. Finally you can use that
>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to decide =
the
>> proper configuration files you want to install in your final image. That
>> works as expected. Hope this helps!
>>
>>
>>
>>
>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>
>>> Hi,
>>>
>>> For the same MACHINE I create the following images:
>>> - myimage-production
>>> - myimage-rnd
>>> - myimage-retail
>>>
>>> The production one has production assisted tools for flashing periphera=
l
>>> HW, testing vital HW components, writing some serial numbers, etc.
>>>
>>> The rnd one has more packages than the retail one just to help rnd work
>>> and debugging in device, but none of the rnd image extra packages.
>>>
>>> The retail one has the final product image.
>>>
>>> I'm using web and FTP servers. I would like for the rnd version of the
>>> image to have a different nginx configuration to set the root directory=
 to
>>> a development folder, or set an alias.
>>>
>>> Furthermore, I'll have different variant of the device where only the
>>> device SW changes but the platform is identical. So I'll end up with
>>> - myimage2-production
>>> - myimage2-rnd
>>> - myimage2-retail
>>>
>>> I know how to make MACHINE based configuration. How could I do this in
>>> my nginx.bbappend based on image name?
>>>
>>> Thanks,
>>> -Damien
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>>
>>
>>
>>
>> *NOTA LEGAL*
>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al m=
ismo,
>> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente d=
irigida a su
>> destinatario y se encuentra protegido por Ley. Cualquier persona distint=
a
>> de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n, copia
>> o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=
=B3nico por
>> error, se ruega lo notifique de inmediato al remitente borrando el mensa=
je
>> original juntamente con sus ficheros anexos. Gracias.
>>
>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza
>> la adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
>> confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le i=
nformamos de
>> la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de =
NAYAR
>> SYSTEMS SL, con la finalidad de poder atender los compromisos derivados =
de
>> la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer su=
s
>> derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3=
n mediante un
>> escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com
>>
>> *LEGAL NOTE*
>> This email and any attachments to it contains is confidential informatio=
n
>> exclusively intended for the recipients. Any divulgation, copy or
>> distribution to third parties is prohibited without written permission o=
f
>> NAYAR SYSTEMS SL. If you have received this e-mail in error, please noti=
fy
>> the sender immediately. In accordance with Law 15/1999 of 13 December on
>> the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
>> has adopted the necessary measures to ensure the confidential treatment =
of
>> personal information. We also inform you that you can exercise your acce=
ss,
>> rectification, cancellation and opposition rights by send us a mail to:
>> info@nayarsystems.com
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
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

--0000000000000852a4056d90e088
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I can provide more details. My custom layer has these file=
s related with distro:<div><br></div><div>=C2=A0 =C2=A0 my_layer/conf/distr=
o/include/common.conf</div><div><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my_=
layer/conf/distro/develop.conf</span><br></div><div><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">=C2=A0 =C2=A0 my_layer/conf/distro/production.=
conf</span><br></span></div><div><span style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline">=C2=A0 =C2=A0 my_layer/conf/distro/inte=
gration.conf</span><br></span></span></div><div><span style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline"><br></span></span></span=
></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);fo=
nt-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline">As an example of the previous file=
s, my_layer/conf/distro/include/develop.conf has this content:</span></span=
></span></span></div><div><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline"><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline"><br></span></span></span></div><div><span styl=
e=3D"text-align:start;text-indent:0px;background-color:rgb(255,255,255);tex=
t-decoration-style:initial;text-decoration-color:initial;float:none;display=
:inline"><span style=3D"text-align:start;text-indent:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><span style=3D"text-align:start;text-indent:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><div>=C2=A0 =C2=A0 require c=
onf/distro/include/common.conf</div><div>=C2=A0 =C2=A0 DISTRO =3D &quot;my-=
distro-development&quot;</div><div>=C2=A0 =C2=A0 DISTRO_NAME =3D &quot;OS D=
evelopment&quot;</div><div>=C2=A0 =C2=A0 DISTRO_STAGE =3D &quot;development=
&quot;</div><div>=C2=A0 =C2=A0 # And here more customizations as setting ro=
ot password, PRSERV_HOST, or PACKAGE_FEED_URIS<br></div><div><br></div><div=
>In common.conf I define all features common to all my distros (PACKAGE_CLA=
SSES and so on)</div><div><br></div><div>I have custom iptables rules, then=
 I have different files for that rules:</div><div><br></div><div>=C2=A0 =C2=
=A0 my/layer/recipes-extended/iptables/files/iptables.rules.development<br>=
</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline">=C2=A0 =C2=A0 my/layer/</span>recipes-=
extended/iptables/files/iptables.rules.production<br></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">=C2=A0 =C2=A0 my/layer/</span>recipes-extended/iptables/file=
s/iptables.rules.integration<br></div><div><br></div><div>I use a bbappend =
recipe for iptables, modifiying=C2=A0do_install_append=C2=A0task like this:=
</div><div><br></div><div>=C2=A0 =C2=A0 install -m 0600 ${WORKDIR}/iptables=
.rules.${DISTRO_STAGE} ${D}/etc/iptables/iptables.rules<br></div><div><br><=
/div><div>I use a single image recipe to define all packages installed in m=
y final image (all of them have the same set if packages, but with differen=
t customizations)</div><div><br></div><div>Finally, I wrote a setup-build-e=
nv.sh script in my custom layer to configure the build easily. That script =
creates <span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline">build-${DISTRO_STAGE}/conf/</span>bblayer=
s.conf and <span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline">build-${DISTRO_STAGE}/conf/</span>loca=
l.conf files with the proper setup, setting=C2=A0MACHINE, DISTRO and DL_DIR=
 (shared by all distros) properly.</div><div><br></div><div>Hope this helps=
!</div><div><br></div></span></span></span></div><div><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline"><br></span></span>=
</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline"><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><br></span></span></span></div><div><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:i=
nitial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial;float:none;display:inline"><br></span></sp=
an></span></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2018-06-01 10:21 GMT+02:00 Alan Martinovic <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@s=
enic.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>Hey,<div>would really like to see your example.</div><div>Am struggling to=
 get creation of these types of images for a while now.</div><div><br></div=
><div>So far have avoided diving into multiple distros because would like t=
o have the option</div><div>of building all the images at the same time (so=
 they are basically the same distro).</div></div><div class=3D"HOEnZb"><div=
 class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell@nayarsyst=
ems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">I fixed this issue defining different distr=
o.conf files in my custom layer, adding a custom variable DISTRO_STAGE with=
 the name of my distro (production, rnd, retail, and so on), Then you setup=
 DISTRO in your local.conf to the proper value you want to use. Finally you=
 can use that DISTRO_STAGE variable in your custom .bb or .bbappend recipes=
 to decide the proper configuration files you want to install in your final=
 image. That works as expected. Hope this helps!</span><div style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration-style:initial;text-decora=
tion-color:initial"><br></div><br class=3D"m_3506388698913286638m_-27301245=
59098635887gmail-Apple-interchange-newline"><br></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote"><div><div class=3D"m_35063886989132866=
38h5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a=
>&gt;</span>:<br></div></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=
=3D"m_3506388698913286638h5"><div dir=3D"ltr">Hi,<div><br></div><div>For th=
e same MACHINE I create the following images:</div><div>- myimage-productio=
n</div><div>- myimage-rnd</div><div>- myimage-retail</div><div><br></div><d=
iv>The production one has production assisted tools for flashing peripheral=
 HW, testing vital HW components, writing some serial numbers, etc.</div><d=
iv><br></div><div>The rnd one has more packages than the retail one just to=
 help rnd work and debugging in device, but none of the rnd image extra pac=
kages.=C2=A0</div><div><br></div><div>The retail one has the final product =
image.</div><div><br></div><div>I&#39;m using web and FTP servers. I would =
like for the rnd version of the image to have a different nginx configurati=
on to set the root directory to a development folder,=C2=A0<span style=3D"c=
olor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">or set an alias.</span></div><div><br></div><div>Furthermore, I&#=
39;ll have different variant of the device where only the device SW changes=
 but the platform is identical. So I&#39;ll end up with=C2=A0<br></div><div=
><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;white-space:normal;word-spacing:0px;text-decoration-styl=
e:initial;text-decoration-color:initial">- myimage2-production</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration-style:initia=
l;text-decoration-color:initial">- myimage2-rnd</div><div style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;text-decoration-style:initial;text-decorati=
on-color:initial">- myimage2-retail</div><div><br></div><div>I know how to =
make MACHINE based configuration. How could I do this in my=C2=A0nginx.bbap=
pend based on image name?<br></div></div><div><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><br=
></span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline">Thanks,</span></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">-Damien</span></div></div>
<br></div></div><span class=3D"m_3506388698913286638HOEnZb"><font color=3D"=
#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_3506388698913286638HO=
EnZb"><font color=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><=
div class=3D"m_3506388698913286638m_-2730124559098635887gmail_signature" da=
ta-smartmail=3D"gmail_signature"><br><img src=3D"http://www.nayarsystems.co=
m/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></b></font><br><div><sp=
an><font size=3D"1"><span style=3D"color:rgb(153,153,153)"><br><u><b>NOTA L=
EGAL</b></u><br>Este correo electr=C3=B3nico y, en su caso, cualquier fiche=
ro anexo al mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial =
exclusivamente dirigida a su destinatario y se encuentra protegido por Ley.=
 Cualquier persona distinta de su destinataria tiene prohibida su reproducc=
i=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si=
 ha recibido este correo electr=C3=B3nico por error, se ruega lo notifique =
de inmediato al remitente borrando el mensaje original juntamente con sus f=
icheros anexos. Gracias.<br><br>De conformidad con lo establecido en la LOP=
D, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de las medidas necesarias pa=
ra asegurar el tratamiento confidencial de los datos de car=C3=A1cter perso=
nal. As=C3=AD mismo le informamos de la inclusi=C3=B3n de sus datos en un f=
ichero bajo la responsabilidad de NAYAR SYSTEMS SL, con la finalidad de pod=
er atender los compromisos derivados de la relaci=C3=B3n que mantenemos con=
 usted. Si lo desea, puede ejercer sus derechos de acceso, rectificaci=C3=
=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escrito a la siguiente =
direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,204)" href=3D"mailto:info@=
nayarsystems.com" target=3D"_blank">info@nayarsystems.c<wbr>om</a></span><b=
r><br></font></span></div><div><span style=3D"color:rgb(153,153,153);font-f=
amily:arial,helvetica,sans-serif;font-size:x-small"><u><b>LEGAL NOTE</b></u=
></span></div><div><span style=3D"color:rgb(153,153,153);font-family:arial,=
helvetica,sans-serif;font-size:x-small">This email and any attachments to i=
t contains is confidential information exclusively intended for the recipie=
nts. Any divulgation, copy or distribution to third parties is prohibited w=
ithout written permission of NAYAR SYSTEMS SL. If you have received this e-=
mail in error, please notify the sender immediately. In accordance with Law=
 15/1999 of 13 December on the Protection of Personal Data, the NAYAR SYSTE=
MS SL guarantees that it has adopted the necessary measures to ensure the c=
onfidential treatment of personal information. We also inform you that you =
can exercise your access, rectification, cancellation and opposition rights=
 by send us a mail to:=C2=A0<a href=3D"mailto:info@nayarsystems.com" target=
=3D"_blank">info@nayarsystems.com</a></span></div><br></div>
</font></span></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><br><img =
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
nayarsystems.com</a></span><br><br></font></span></div><div><span style=3D"=
color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-s=
mall"><u><b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:rgb(15=
3,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small">This e=
mail and any attachments to it contains is confidential information exclusi=
vely intended for the recipients. Any divulgation, copy or distribution to =
third parties is prohibited without written permission of NAYAR SYSTEMS SL.=
 If you have received this e-mail in error, please notify the sender immedi=
ately. In accordance with Law 15/1999 of 13 December on the Protection of P=
ersonal Data, the NAYAR SYSTEMS SL guarantees that it has adopted the neces=
sary measures to ensure the confidential treatment of personal information.=
 We also inform you that you can exercise your access, rectification, cance=
llation and opposition rights by send us a mail to:=C2=A0<a href=3D"mailto:=
info@nayarsystems.com" target=3D"_blank">info@nayarsystems.com</a></span></=
div><br></div>
</div>

--0000000000000852a4056d90e088--
