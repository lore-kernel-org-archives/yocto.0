Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41CC1E00CA9; Fri,  1 Jun 2018 02:24:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 644DDE00C99
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 02:24:19 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id c128-v6so12698245oig.11
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 02:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jkZpDw3gIjI//46iDuj8B40rt413ic2RD7CdZ3D6n6U=;
	b=PTc7ewciXOGolRZ1LUBMVpkmbCflGGFxDeodn6WXBlu6KDJsORnrwxkY/qyBlO/aJd
	+T6HDYDTNFhifleqiT0paBVEQI+stpnFtNUmYuBB56RJ72NydFBlFzV3TbUqO8RSvyn2
	rE42Z2UCVgF+p8kHVZQsCTD/Nj4HXB5ESQwSKNGZbngZlzBMlJ+knEuObQ703b3fqphc
	qEzMaxbp2WzXfuUSptCJU3XEt1Cv4m5r9apFaI0s3I0fQob3TyjKtCrWyKhFVm6yKV1g
	mByBtx/K2CstYfpnq+HSQ75UgC+JHq3MlGsYBVESp2BHiDWhEZwWuz8KB8qDFq5fuRKe
	An4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jkZpDw3gIjI//46iDuj8B40rt413ic2RD7CdZ3D6n6U=;
	b=EptKvLmWGmkO9DJwP73ch2+kwYJZbehfN3x5KLeHImX9DEtEoD6XCHDRuwsoRSq0T7
	NNJjOdJnok+lo4uDu0n8ItBeEy8lBdfDp+kjzb99sWWmy+roJDwwKM1aLS9Yii5DF0H0
	mQ7POwQbrzWqX1ATqdb0iS4L/FtERW1MZrH58nLjR4SVaJe2Yw6X8zJwekYjVxZthxvq
	HqKJg9wvTEEtCm3ADoYxaNgwlASWM8ReNHwc9dQfM5pSNNlq8ggvkQIspbKypFVy63Za
	kNLZr47gAjqmUqucKdt2OpoLyEn5VF9Y43pQA9l0uZtNaMAQy3MWXTbipisQPrkKgHUD
	2cvQ==
X-Gm-Message-State: ALKqPwdBcTUAq+gAMKjhT8Wz3YSZ+xIPraPut8bcMr2SosZYtdNM+apV
	qViRl/M2jNpt2Uqzx9ccF0jzQpjmSh3M1eCbTEM=
X-Google-Smtp-Source: ADUXVKKTilMvqJwWJCQVQNuDdVO36OEp/glz8eJO6Ys4f+5RNNLAQZfJVIvARQJSt1EhWuEWaOxpveqYh4ShHhVHAP8=
X-Received: by 2002:aca:47c6:: with SMTP id
	u189-v6mr6188422oia.100.1527845059248; 
	Fri, 01 Jun 2018 02:24:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 02:24:18 -0700 (PDT)
In-Reply-To: <CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Jun 2018 12:24:18 +0300
Message-ID: <CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 09:24:23 -0000
Content-Type: multipart/alternative; boundary="00000000000007479d056d9126d9"

--00000000000007479d056d9126d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have to say defining multiple distros and then tweaking recipes according
to those definitions is not a good practice, as recipes should generally
only access DISTRO_FEATURES and otherwise be distro-agnostic. The above
iptables scenario should be handled with different image recipes, which
pull in (via packages) or create different configurations.

Alex

2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> I can provide more details. My custom layer has these files related with
> distro:
>
>     my_layer/conf/distro/include/common.conf
>     my_layer/conf/distro/develop.conf
>     my_layer/conf/distro/production.conf
>     my_layer/conf/distro/integration.conf
>
> As an example of the previous files, my_layer/conf/distro/include/develop=
.conf
> has this content:
>
>     require conf/distro/include/common.conf
>     DISTRO =3D "my-distro-development"
>     DISTRO_NAME =3D "OS Development"
>     DISTRO_STAGE =3D "development"
>     # And here more customizations as setting root password, PRSERV_HOST,
> or PACKAGE_FEED_URIS
>
> In common.conf I define all features common to all my distros
> (PACKAGE_CLASSES and so on)
>
> I have custom iptables rules, then I have different files for that rules:
>
>     my/layer/recipes-extended/iptables/files/iptables.rules.development
>     my/layer/recipes-extended/iptables/files/iptables.rules.production
>     my/layer/recipes-extended/iptables/files/iptables.rules.integration
>
> I use a bbappend recipe for iptables, modifiying do_install_append task
> like this:
>
>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
> ${D}/etc/iptables/iptables.rules
>
> I use a single image recipe to define all packages installed in my final
> image (all of them have the same set if packages, but with different
> customizations)
>
> Finally, I wrote a setup-build-env.sh script in my custom layer to
> configure the build easily. That script creates
> build-${DISTRO_STAGE}/conf/bblayers.conf and build-${DISTRO_STAGE}/conf/
> local.conf files with the proper setup, setting MACHINE, DISTRO and
> DL_DIR (shared by all distros) properly.
>
> Hope this helps!
>
>
>
>
>
> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
>
>> Hey,
>> would really like to see your example.
>> Am struggling to get creation of these types of images for a while now.
>>
>> So far have avoided diving into multiple distros because would like to
>> have the option
>> of building all the images at the same time (so they are basically the
>> same distro).
>>
>> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsystems=
.com>
>> wrote:
>>
>>> I fixed this issue defining different distro.conf files in my custom
>>> layer, adding a custom variable DISTRO_STAGE with the name of my distro
>>> (production, rnd, retail, and so on), Then you setup DISTRO in your
>>> local.conf to the proper value you want to use. Finally you can use tha=
t
>>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to decide=
 the
>>> proper configuration files you want to install in your final image. Tha=
t
>>> works as expected. Hope this helps!
>>>
>>>
>>>
>>>
>>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>>
>>>> Hi,
>>>>
>>>> For the same MACHINE I create the following images:
>>>> - myimage-production
>>>> - myimage-rnd
>>>> - myimage-retail
>>>>
>>>> The production one has production assisted tools for flashing
>>>> peripheral HW, testing vital HW components, writing some serial number=
s,
>>>> etc.
>>>>
>>>> The rnd one has more packages than the retail one just to help rnd wor=
k
>>>> and debugging in device, but none of the rnd image extra packages.
>>>>
>>>> The retail one has the final product image.
>>>>
>>>> I'm using web and FTP servers. I would like for the rnd version of the
>>>> image to have a different nginx configuration to set the root director=
y to
>>>> a development folder, or set an alias.
>>>>
>>>> Furthermore, I'll have different variant of the device where only the
>>>> device SW changes but the platform is identical. So I'll end up with
>>>> - myimage2-production
>>>> - myimage2-rnd
>>>> - myimage2-retail
>>>>
>>>> I know how to make MACHINE based configuration. How could I do this in
>>>> my nginx.bbappend based on image name?
>>>>
>>>> Thanks,
>>>> -Damien
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>>
>>> --
>>>
>>>
>>>
>>>
>>> *NOTA LEGAL*
>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al =
mismo,
>>> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente =
dirigida a su
>>> destinatario y se encuentra protegido por Ley. Cualquier persona distin=
ta
>>> de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n, copia
>>> o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=
=B3nico por
>>> error, se ruega lo notifique de inmediato al remitente borrando el mens=
aje
>>> original juntamente con sus ficheros anexos. Gracias.
>>>
>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiz=
a
>>> la adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
>>> confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le =
informamos de
>>> la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad de=
 NAYAR
>>> SYSTEMS SL, con la finalidad de poder atender los compromisos derivados=
 de
>>> la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer s=
us
>>> derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=
=B3n mediante un
>>> escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com
>>>
>>> *LEGAL NOTE*
>>> This email and any attachments to it contains is confidential
>>> information exclusively intended for the recipients. Any divulgation, c=
opy
>>> or distribution to third parties is prohibited without written permissi=
on
>>> of NAYAR SYSTEMS SL. If you have received this e-mail in error, please
>>> notify the sender immediately. In accordance with Law 15/1999 of 13
>>> December on the Protection of Personal Data, the NAYAR SYSTEMS SL
>>> guarantees that it has adopted the necessary measures to ensure the
>>> confidential treatment of personal information. We also inform you that=
 you
>>> can exercise your access, rectification, cancellation and opposition ri=
ghts
>>> by send us a mail to: info@nayarsystems.com
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
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

--00000000000007479d056d9126d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have to say defining multiple distros and then twea=
king recipes according to those definitions is not a good practice, as reci=
pes should generally only access DISTRO_FEATURES and otherwise be distro-ag=
nostic. The above iptables scenario should be handled with different image =
recipes, which pull in (via packages) or create different configurations.</=
div><div><br></div><div>Alex<br></div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_=
blank">icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr">I can provide more details. My custom layer has th=
ese files related with distro:<div><br></div><div>=C2=A0 =C2=A0 my_layer/co=
nf/distro/include/<wbr>common.conf</div><div><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">=C2=
=A0 =C2=A0 my_layer/conf/distro/develop.<wbr>conf</span><br></div><div><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my_layer/conf=
/distro/<wbr>production.conf</span><br></span></div><div><span style=3D"col=
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
al;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 m=
y_layer/conf/distro/<wbr>integration.conf</span><br></span></span></div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline"><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine"><br></span></span></span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,=
34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">As an=
 example of the previous files, my_layer/conf/distro/include/<wbr>develop.c=
onf has this content:</span></span></span></span></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><br></span><=
/span></span></div><div><span style=3D"text-align:start;text-indent:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline"><span style=3D"text-align:start;=
text-indent:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"text-align:start;text-indent:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline"><div>=C2=A0 =C2=A0 require conf/distro/include/common.<wbr>conf</di=
v><div>=C2=A0 =C2=A0 DISTRO =3D &quot;my-distro-development&quot;</div><div=
>=C2=A0 =C2=A0 DISTRO_NAME =3D &quot;OS Development&quot;</div><div>=C2=A0 =
=C2=A0 DISTRO_STAGE =3D &quot;development&quot;</div><div>=C2=A0 =C2=A0 # A=
nd here more customizations as setting root password, PRSERV_HOST, or PACKA=
GE_FEED_URIS<br></div><div><br></div><div>In common.conf I define all featu=
res common to all my distros (PACKAGE_CLASSES and so on)</div><div><br></di=
v><div>I have custom iptables rules, then I have different files for that r=
ules:</div><div><br></div><div>=C2=A0 =C2=A0 my/layer/recipes-extended/<wbr=
>iptables/files/iptables.rules.<wbr>development<br></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">=C2=A0 =C2=A0 my/layer/</span>recipes-extended/<wbr>iptables=
/files/iptables.rules.<wbr>production<br></div><div><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">=C2=A0 =C2=A0 my/layer/</span>recipes-extended/<wbr>iptables/files/iptab=
les.rules.<wbr>integration<br></div><div><br></div><div>I use a bbappend re=
cipe for iptables, modifiying=C2=A0do_install_append=C2=A0<wbr>task like th=
is:</div><div><br></div><div>=C2=A0 =C2=A0 install -m 0600 ${WORKDIR}/iptab=
les.rules.${<wbr>DISTRO_STAGE} ${D}/etc/iptables/iptables.<wbr>rules<br></d=
iv><div><br></div><div>I use a single image recipe to define all packages i=
nstalled in my final image (all of them have the same set if packages, but =
with different customizations)</div><div><br></div><div>Finally, I wrote a =
setup-build-env.sh script in my custom layer to configure the build easily.=
 That script creates <span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">build-${DISTRO_STAGE}/conf/<=
/span>bbl<wbr>ayers.conf and <span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">build-${DISTRO_STAGE=
}/conf/</span>loc<wbr>al.conf files with the proper setup, setting=C2=A0MAC=
HINE, DISTRO and DL_DIR (shared by all distros) properly.</div><div><br></d=
iv><div>Hope this helps!</div><div><br></div></span></span></span></div><di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline"><span style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine"><br></span></span></span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline"><span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline"><br></span></span></span></div>=
<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline"><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline"><br></span></span></span></div></div><div class=3D"HOEnZb"><div cla=
ss=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-06=
-01 10:21 GMT+02:00 Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto=
:alan.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hey,<div>wo=
uld really like to see your example.</div><div>Am struggling to get creatio=
n of these types of images for a while now.</div><div><br></div><div>So far=
 have avoided diving into multiple distros because would like to have the o=
ption</div><div>of building all the images at the same time (so they are ba=
sically the same distro).</div></div><div class=3D"m_7096927316469470777HOE=
nZb"><div class=3D"m_7096927316469470777h5"><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castel=
l <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=
=3D"_blank">icastell@nayarsystems.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">I fixed this =
issue defining different distro.conf files in my custom layer, adding a cus=
tom variable DISTRO_STAGE with the name of my distro (production, rnd, reta=
il, and so on), Then you setup DISTRO in your local.conf to the proper valu=
e you want to use. Finally you can use that DISTRO_STAGE variable in your c=
ustom .bb or .bbappend recipes to decide the proper configuration files you=
 want to install in your final image. That works as expected. Hope this hel=
ps!</span><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decora=
tion-style:initial;text-decoration-color:initial"><br></div><br class=3D"m_=
7096927316469470777m_3506388698913286638m_-2730124559098635887gmail-Apple-i=
nterchange-newline"><br></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote"><div><div class=3D"m_7096927316469470777m_3506388698913286638h=
5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&lt;<a href=
=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>=
&gt;</span>:<br></div></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=
=3D"m_7096927316469470777m_3506388698913286638h5"><div dir=3D"ltr">Hi,<div>=
<br></div><div>For the same MACHINE I create the following images:</div><di=
v>- myimage-production</div><div>- myimage-rnd</div><div>- myimage-retail</=
div><div><br></div><div>The production one has production assisted tools fo=
r flashing peripheral HW, testing vital HW components, writing some serial =
numbers, etc.</div><div><br></div><div>The rnd one has more packages than t=
he retail one just to help rnd work and debugging in device, but none of th=
e rnd image extra packages.=C2=A0</div><div><br></div><div>The retail one h=
as the final product image.</div><div><br></div><div>I&#39;m using web and =
FTP servers. I would like for the rnd version of the image to have a differ=
ent nginx configuration to set the root directory to a development folder,=
=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">or set an alias.</span></div><div><br></div=
><div>Furthermore, I&#39;ll have different variant of the device where only=
 the device SW changes but the platform is identical. So I&#39;ll end up wi=
th=C2=A0<br></div><div><div style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration-style:initial;text-decoration-color:initial">- myimage2-p=
roduction</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration-style:initial;text-decoration-color:initial">- myimage2-rnd</div>=
<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial">- myimage2-retail</div><div><br></d=
iv><div>I know how to make MACHINE based configuration. How could I do this=
 in my=C2=A0nginx.bbappend based on image name?<br></div></div><div><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">Thanks,<=
/span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">-Damien</span></div></div>
<br></div></div><span class=3D"m_7096927316469470777m_3506388698913286638HO=
EnZb"><font color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_7096927316469470777m_=
3506388698913286638HOEnZb"><font color=3D"#888888"><br><br clear=3D"all"><d=
iv><br></div>-- <br><div class=3D"m_7096927316469470777m_350638869891328663=
8m_-2730124559098635887gmail_signature" data-smartmail=3D"gmail_signature">=
<br><img src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><=
font size=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=
=3D"color:rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo ele=
ctr=C3=B3nico y, en su caso, cualquier fichero anexo al mismo, contiene inf=
ormaci=C3=B3n de car=C3=A1cter confidencial exclusivamente dirigida a su de=
stinatario y se encuentra protegido por Ley. Cualquier persona distinta de =
su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n=
, copia o impresi=C3=B3n total o parcial. Si ha recibido este correo electr=
=C3=B3nico por error, se ruega lo notifique de inmediato al remitente borra=
ndo el mensaje original juntamente con sus ficheros anexos. Gracias.<br><br=
>De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza l=
a adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento conf=
idencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le informam=
os de la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad =
de NAYAR SYSTEMS SL, con la finalidad de poder atender los compromisos deri=
vados de la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejer=
cer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=
=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D=
"color:rgb(17,85,204)" href=3D"mailto:info@nayarsystems.com" target=3D"_bla=
nk">info@nayarsystems.c<wbr>om</a></span><br><br></font></span></div><div><=
span style=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif=
;font-size:x-small"><u><b>LEGAL NOTE</b></u></span></div><div><span style=
=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;font-size=
:x-small">This email and any attachments to it contains is confidential inf=
ormation exclusively intended for the recipients. Any divulgation, copy or =
distribution to third parties is prohibited without written permission of N=
AYAR SYSTEMS SL. If you have received this e-mail in error, please notify t=
he sender immediately. In accordance with Law 15/1999 of 13 December on the=
 Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it has a=
dopted the necessary measures to ensure the confidential treatment of perso=
nal information. We also inform you that you can exercise your access, rect=
ification, cancellation and opposition rights by send us a mail to:=C2=A0<a=
 href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.=
com</a></span></div><br></div>
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
<div class=3D"m_7096927316469470777gmail_signature" data-smartmail=3D"gmail=
_signature"><br><img src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastel=
l.jpg"><br><font size=3D"2"><b></b></font><br><div><span><font size=3D"1"><=
span style=3D"color:rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este =
correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mismo, co=
ntiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente dirigi=
da a su destinatario y se encuentra protegido por Ley. Cualquier persona di=
stinta de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulg=
aci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recibido este cor=
reo electr=C3=B3nico por error, se ruega lo notifique de inmediato al remit=
ente borrando el mensaje original juntamente con sus ficheros anexos. Graci=
as.<br><br>De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL g=
arantiza la adopci=C3=B3n de las medidas necesarias para asegurar el tratam=
iento confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo l=
e informamos de la inclusi=C3=B3n de sus datos en un fichero bajo la respon=
sabilidad de NAYAR SYSTEMS SL, con la finalidad de poder atender los compro=
misos derivados de la relaci=C3=B3n que mantenemos con usted. Si lo desea, =
puede ejercer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n =
y oposici=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:=C2=A0<a=
 style=3D"color:rgb(17,85,204)" href=3D"mailto:info@nayarsystems.com" targe=
t=3D"_blank">info@nayarsystems.<wbr>com</a></span><br><br></font></span></d=
iv><div><span style=3D"color:rgb(153,153,153);font-family:arial,helvetica,s=
ans-serif;font-size:x-small"><u><b>LEGAL NOTE</b></u></span></div><div><spa=
n style=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;fo=
nt-size:x-small">This email and any attachments to it contains is confident=
ial information exclusively intended for the recipients. Any divulgation, c=
opy or distribution to third parties is prohibited without written permissi=
on of NAYAR SYSTEMS SL. If you have received this e-mail in error, please n=
otify the sender immediately. In accordance with Law 15/1999 of 13 December=
 on the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that i=
t has adopted the necessary measures to ensure the confidential treatment o=
f personal information. We also inform you that you can exercise your acces=
s, rectification, cancellation and opposition rights by send us a mail to:=
=C2=A0<a href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayar=
systems.com</a></span></div><br></div>
</div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--00000000000007479d056d9126d9--
