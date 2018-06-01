Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64067E00D06; Fri,  1 Jun 2018 03:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8393DE00CD9
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 03:07:55 -0700 (PDT)
Received: by mail-ot0-f177.google.com with SMTP id n1-v6so28650610otf.7
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 03:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o5CH2vw/2VUufg8C0thW7yTGrQibgOeCTXLu7c/3klo=;
	b=huotMo1cXYCLc+MLjhuCooGADs1YzEAlkxVUcPe4Pt4mwTUVrMJXDiSPfOnk2YqnEM
	ZUDYufkm4epdwzW8GtU4+XcRst1MiTCj7vX4NsEFP4pcxjVFLkflU1Hk9eIdMJsoIk1f
	AQDb3UOWLS5RioW71XikgYjzJg9aGqCuskigarWHGV3tKxv9rc4rCvECDnI3MvCT27JW
	eLf5hZXNoovfDkreX29OUtwmaC+JM/Cm8ySwJBSf2tkFf84iHObdl63P2+VGaDC3OLfQ
	K5HWaVt73ILYqI5M7+jCLJenGLUSYkUMZCYnFPWR9yw23bGlhACc3mYbh9EAXtdsQusF
	9Cyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o5CH2vw/2VUufg8C0thW7yTGrQibgOeCTXLu7c/3klo=;
	b=kufPdpMQTo0TtPrKjAKXu7zXV4FL7wyCma4o+41PHYOkUFm1J38rTQWubSpmR7pE2x
	f66WZ9i4l2t7lV/VYQV9bpW5341XXOT2vkDPFxlNHFqXJNdhJUUTfKIvxHi57t1SwKhB
	CtKo69HzFqwm7vk8XIOb+MYi/NmgEU9be85nmnFaiMawo0eqlxfWFpN0qS9I0FN0OhJ/
	PYce+T5TEyKhMdmobGqSaCSOAARF8Z0Yw5gDtvRlYtQGFUsIYysY3Hto3tM2+FBv2gaQ
	b6kDvLfcVo15I8twckTKVazzrgDruH0n+FR7vCDg4b3M9rtBmS0W9hv2oRbORn/OYTxT
	mHjg==
X-Gm-Message-State: APt69E1XIm84lv0zR3hcZgpE5pxkBoar4wFzVU+20riw9CFDgjkJB5jb
	07WL/j5ZLUU0BVWmnvlsyMegWnbXPpG35ybCyJdx0Q==
X-Google-Smtp-Source: ADUXVKKV/klu5hCZe13OG7+3AArVJqPQUFi7bovajXzA2leo0uh/JrrXVd2+7ypKW/Pr58EhnlC/9frPidnv6/nxI+4=
X-Received: by 2002:a9d:bea:: with SMTP id 97-v6mr7194980oth.77.1527847674843; 
	Fri, 01 Jun 2018 03:07:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 03:07:54 -0700 (PDT)
In-Reply-To: <CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 12:07:54 +0200
Message-ID: <CAOT_U5YR_eNQMnKgaDS2EcYDh1smekajxdjNXB9Bs9zrZLDP3Q@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 10:07:57 -0000
Content-Type: multipart/alternative; boundary="000000000000ee2846056d91c1f4"

--000000000000ee2846056d91c1f4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Alexander,
you seem to have a good understanding on the concepts.
Would you say that:

> A build always builds a single distro

is somewhat of a rule?




On Fri, Jun 1, 2018 at 11:24 AM, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> I have to say defining multiple distros and then tweaking recipes
> according to those definitions is not a good practice, as recipes should
> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. T=
he
> above iptables scenario should be handled with different image recipes,
> which pull in (via packages) or create different configurations.
>
> Alex
>
> 2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:
>
>> I can provide more details. My custom layer has these files related with
>> distro:
>>
>>     my_layer/conf/distro/include/common.conf
>>     my_layer/conf/distro/develop.conf
>>     my_layer/conf/distro/production.conf
>>     my_layer/conf/distro/integration.conf
>>
>> As an example of the previous files, my_layer/conf/distro/include/develo=
p.conf
>> has this content:
>>
>>     require conf/distro/include/common.conf
>>     DISTRO =3D "my-distro-development"
>>     DISTRO_NAME =3D "OS Development"
>>     DISTRO_STAGE =3D "development"
>>     # And here more customizations as setting root password, PRSERV_HOST=
,
>> or PACKAGE_FEED_URIS
>>
>> In common.conf I define all features common to all my distros
>> (PACKAGE_CLASSES and so on)
>>
>> I have custom iptables rules, then I have different files for that rules=
:
>>
>>     my/layer/recipes-extended/iptables/files/iptables.rules.development
>>     my/layer/recipes-extended/iptables/files/iptables.rules.production
>>     my/layer/recipes-extended/iptables/files/iptables.rules.integration
>>
>> I use a bbappend recipe for iptables, modifiying do_install_append task
>> like this:
>>
>>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
>> ${D}/etc/iptables/iptables.rules
>>
>> I use a single image recipe to define all packages installed in my final
>> image (all of them have the same set if packages, but with different
>> customizations)
>>
>> Finally, I wrote a setup-build-env.sh script in my custom layer to
>> configure the build easily. That script creates
>> build-${DISTRO_STAGE}/conf/bblayers.conf and build-${DISTRO_STAGE}/conf/
>> local.conf files with the proper setup, setting MACHINE, DISTRO and
>> DL_DIR (shared by all distros) properly.
>>
>> Hope this helps!
>>
>>
>>
>>
>>
>> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
>>
>>> Hey,
>>> would really like to see your example.
>>> Am struggling to get creation of these types of images for a while now.
>>>
>>> So far have avoided diving into multiple distros because would like to
>>> have the option
>>> of building all the images at the same time (so they are basically the
>>> same distro).
>>>
>>> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsystem=
s.com>
>>> wrote:
>>>
>>>> I fixed this issue defining different distro.conf files in my custom
>>>> layer, adding a custom variable DISTRO_STAGE with the name of my distr=
o
>>>> (production, rnd, retail, and so on), Then you setup DISTRO in your
>>>> local.conf to the proper value you want to use. Finally you can use th=
at
>>>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to decid=
e the
>>>> proper configuration files you want to install in your final image. Th=
at
>>>> works as expected. Hope this helps!
>>>>
>>>>
>>>>
>>>>
>>>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>>>
>>>>> Hi,
>>>>>
>>>>> For the same MACHINE I create the following images:
>>>>> - myimage-production
>>>>> - myimage-rnd
>>>>> - myimage-retail
>>>>>
>>>>> The production one has production assisted tools for flashing
>>>>> peripheral HW, testing vital HW components, writing some serial numbe=
rs,
>>>>> etc.
>>>>>
>>>>> The rnd one has more packages than the retail one just to help rnd
>>>>> work and debugging in device, but none of the rnd image extra package=
s.
>>>>>
>>>>> The retail one has the final product image.
>>>>>
>>>>> I'm using web and FTP servers. I would like for the rnd version of th=
e
>>>>> image to have a different nginx configuration to set the root directo=
ry to
>>>>> a development folder, or set an alias.
>>>>>
>>>>> Furthermore, I'll have different variant of the device where only the
>>>>> device SW changes but the platform is identical. So I'll end up with
>>>>> - myimage2-production
>>>>> - myimage2-rnd
>>>>> - myimage2-retail
>>>>>
>>>>> I know how to make MACHINE based configuration. How could I do this i=
n
>>>>> my nginx.bbappend based on image name?
>>>>>
>>>>> Thanks,
>>>>> -Damien
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>
>>>>
>>>> --
>>>>
>>>>
>>>>
>>>>
>>>> *NOTA LEGAL*
>>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al
>>>> mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusi=
vamente
>>>> dirigida a su destinatario y se encuentra protegido por Ley. Cualquier
>>>> persona distinta de su destinataria tiene prohibida su reproducci=C3=
=B3n, uso,
>>>> divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recibi=
do este correo
>>>> electr=C3=B3nico por error, se ruega lo notifique de inmediato al remi=
tente
>>>> borrando el mensaje original juntamente con sus ficheros anexos. Graci=
as.
>>>>
>>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL
>>>> garantiza la adopci=C3=B3n de las medidas necesarias para asegurar el
>>>> tratamiento confidencial de los datos de car=C3=A1cter personal. As=C3=
=AD mismo le
>>>> informamos de la inclusi=C3=B3n de sus datos en un fichero bajo la
>>>> responsabilidad de NAYAR SYSTEMS SL, con la finalidad de poder atender=
 los
>>>> compromisos derivados de la relaci=C3=B3n que mantenemos con usted. Si=
 lo desea,
>>>> puede ejercer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=
=B3n y
>>>> oposici=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:
>>>> info@nayarsystems.com
>>>>
>>>> *LEGAL NOTE*
>>>> This email and any attachments to it contains is confidential
>>>> information exclusively intended for the recipients. Any divulgation, =
copy
>>>> or distribution to third parties is prohibited without written permiss=
ion
>>>> of NAYAR SYSTEMS SL. If you have received this e-mail in error, please
>>>> notify the sender immediately. In accordance with Law 15/1999 of 13
>>>> December on the Protection of Personal Data, the NAYAR SYSTEMS SL
>>>> guarantees that it has adopted the necessary measures to ensure the
>>>> confidential treatment of personal information. We also inform you tha=
t you
>>>> can exercise your access, rectification, cancellation and opposition r=
ights
>>>> by send us a mail to: info@nayarsystems.com
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
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

--000000000000ee2846056d91c1f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;letter-spacing:normal;text-align:left;text-indent:0px;=
text-transform:none;white-space:nowrap;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">Hey Alexander,</span><br><div><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;letter-spacing=
:normal;text-align:left;text-indent:0px;text-transform:none;white-space:now=
rap;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">you seem=
 to have a good understanding on the concepts.</span></div><div><span style=
=3D"font-size:12.8px;white-space:nowrap">Would you say that:</span></div><d=
iv><br></div><div><span style=3D"font-size:12.8px;white-space:nowrap">&gt; =
A build always builds a single distro</span></div><div><span style=3D"font-=
size:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"font-s=
ize:12.8px;white-space:nowrap">is somewhat of a rule?</span></div><div><spa=
n style=3D"font-size:12.8px;white-space:nowrap"><br></span></div><div><span=
 style=3D"font-size:12.8px;white-space:nowrap"><br></span></div><div><span =
style=3D"font-size:12.8px;white-space:nowrap"><br></span></div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 2018 at =
11:24 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.ka=
navin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I have to say =
defining multiple distros and then tweaking recipes according to those defi=
nitions is not a good practice, as recipes should generally only access DIS=
TRO_FEATURES and otherwise be distro-agnostic. The above iptables scenario =
should be handled with different image recipes, which pull in (via packages=
) or create different configurations.</div><div><br></div><div>Alex<br></di=
v></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=
=3D"_blank">icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">I can provide more details. My custom layer =
has these files related with distro:<div><br></div><div>=C2=A0 =C2=A0 my_la=
yer/conf/distro/include/c<wbr>ommon.conf</div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">=C2=A0 =C2=A0 my_layer/conf/distro/develop.c<wbr>onf</span><br></div><div=
><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:=
small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my_layer=
/conf/distro/productio<wbr>n.conf</span><br></span></div><div><span style=
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
color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =
=C2=A0 my_layer/conf/distro/integrati<wbr>on.conf</span><br></span></span><=
/div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font=
-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><br></span></span></span></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
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
ine">As an example of the previous files, my_layer/conf/distro/include/d<wb=
r>evelop.conf has this content:</span></span></span></span></div><div><span=
 style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><b=
r></span></span></span></div><div><span style=3D"text-align:start;text-inde=
nt:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline"><span style=3D"text-al=
ign:start;text-indent:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><sp=
an style=3D"text-align:start;text-indent:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline"><div>=C2=A0 =C2=A0 require conf/distro/include/common.con<w=
br>f</div><div>=C2=A0 =C2=A0 DISTRO =3D &quot;my-distro-development&quot;</=
div><div>=C2=A0 =C2=A0 DISTRO_NAME =3D &quot;OS Development&quot;</div><div=
>=C2=A0 =C2=A0 DISTRO_STAGE =3D &quot;development&quot;</div><div>=C2=A0 =
=C2=A0 # And here more customizations as setting root password, PRSERV_HOST=
, or PACKAGE_FEED_URIS<br></div><div><br></div><div>In common.conf I define=
 all features common to all my distros (PACKAGE_CLASSES and so on)</div><di=
v><br></div><div>I have custom iptables rules, then I have different files =
for that rules:</div><div><br></div><div>=C2=A0 =C2=A0 my/layer/recipes-ext=
ended/ipta<wbr>bles/files/iptables.rules.deve<wbr>lopment<br></div><div><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline">=C2=A0 =C2=A0 my/layer/</span>recipes-extended/ipta<=
wbr>bles/files/iptables.rules.prod<wbr>uction<br></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displ=
ay:inline">=C2=A0 =C2=A0 my/layer/</span>recipes-extended/ipta<wbr>bles/fil=
es/iptables.rules.inte<wbr>gration<br></div><div><br></div><div>I use a bba=
ppend recipe for iptables, modifiying=C2=A0do_install_append=C2=A0t<wbr>ask=
 like this:</div><div><br></div><div>=C2=A0 =C2=A0 install -m 0600 ${WORKDI=
R}/iptables.rules.${DI<wbr>STRO_STAGE} ${D}/etc/iptables/iptables.rul<wbr>e=
s<br></div><div><br></div><div>I use a single image recipe to define all pa=
ckages installed in my final image (all of them have the same set if packag=
es, but with different customizations)</div><div><br></div><div>Finally, I =
wrote a setup-build-env.sh script in my custom layer to configure the build=
 easily. That script creates <span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">build-${DISTRO_STAGE=
}/conf/</span>bbl<wbr>ayers.conf and <span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">build-${DIST=
RO_STAGE}/conf/</span>loc<wbr>al.conf files with the proper setup, setting=
=C2=A0MACHINE, DISTRO and DL_DIR (shared by all distros) properly.</div><di=
v><br></div><div>Hope this helps!</div><div><br></div></span></span></span>=
</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline"><br></span></span></span></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline"><br></span></span></s=
pan></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34)=
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
e;display:inline"><br></span></span></span></div></div><div class=3D"m_5361=
474152393307049HOEnZb"><div class=3D"m_5361474152393307049h5"><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">2018-06-01 10:21 GMT+02:00 Ala=
n Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.=
com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span>:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">Hey,<div>would really like to see =
your example.</div><div>Am struggling to get creation of these types of ima=
ges for a while now.</div><div><br></div><div>So far have avoided diving in=
to multiple distros because would like to have the option</div><div>of buil=
ding all the images at the same time (so they are basically the same distro=
).</div></div><div class=3D"m_5361474152393307049m_7096927316469470777HOEnZ=
b"><div class=3D"m_5361474152393307049m_7096927316469470777h5"><div class=
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
</div><br class=3D"m_5361474152393307049m_7096927316469470777m_350638869891=
3286638m_-2730124559098635887gmail-Apple-interchange-newline"><br></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m=
_5361474152393307049m_7096927316469470777m_3506388698913286638h5">2018-06-0=
1 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&lt;<a href=3D"mailto:lef=
evre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a>&gt;</span>:<b=
r></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_536147415=
2393307049m_7096927316469470777m_3506388698913286638h5"><div dir=3D"ltr">Hi=
,<div><br></div><div>For the same MACHINE I create the following images:</d=
iv><div>- myimage-production</div><div>- myimage-rnd</div><div>- myimage-re=
tail</div><div><br></div><div>The production one has production assisted to=
ols for flashing peripheral HW, testing vital HW components, writing some s=
erial numbers, etc.</div><div><br></div><div>The rnd one has more packages =
than the retail one just to help rnd work and debugging in device, but none=
 of the rnd image extra packages.=C2=A0</div><div><br></div><div>The retail=
 one has the final product image.</div><div><br></div><div>I&#39;m using we=
b and FTP servers. I would like for the rnd version of the image to have a =
different nginx configuration to set the root directory to a development fo=
lder,=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial;float:none;display:inline">or set an alias.</span></div><div><br>=
</div><div>Furthermore, I&#39;ll have different variant of the device where=
 only the device SW changes but the platform is identical. So I&#39;ll end =
up with=C2=A0<br></div><div><div style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;text-decoration-style:initial;text-decoration-color:initial">- myima=
ge2-production</div><div style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;t=
ext-decoration-style:initial;text-decoration-color:initial">- myimage2-rnd<=
/div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-=
style:initial;text-decoration-color:initial">- myimage2-retail</div><div><b=
r></div><div>I know how to make MACHINE based configuration. How could I do=
 this in my=C2=A0nginx.bbappend based on image name?<br></div></div><div><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline"><br></span></div><div><span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline">Tha=
nks,</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">-Damien</span></div></div>
<br></div></div><span class=3D"m_5361474152393307049m_7096927316469470777m_=
3506388698913286638HOEnZb"><font color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_5361474152393307049m_=
7096927316469470777m_3506388698913286638HOEnZb"><font color=3D"#888888"><br=
><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_536147415239330704=
9m_7096927316469470777m_3506388698913286638m_-2730124559098635887gmail_sign=
ature" data-smartmail=3D"gmail_signature"><br><img src=3D"http://www.nayars=
ystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></b></font><br=
><div><span><font size=3D"1"><span style=3D"color:rgb(153,153,153)"><br><u>=
<b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en su caso, cualqu=
ier fichero anexo al mismo, contiene informaci=C3=B3n de car=C3=A1cter conf=
idencial exclusivamente dirigida a su destinatario y se encuentra protegido=
 por Ley. Cualquier persona distinta de su destinataria tiene prohibida su =
reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=B3n total o pa=
rcial. Si ha recibido este correo electr=C3=B3nico por error, se ruega lo n=
otifique de inmediato al remitente borrando el mensaje original juntamente =
con sus ficheros anexos. Gracias.<br><br>De conformidad con lo establecido =
en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de las medidas nece=
sarias para asegurar el tratamiento confidencial de los datos de car=C3=A1c=
ter personal. As=C3=AD mismo le informamos de la inclusi=C3=B3n de sus dato=
s en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL, con la finalid=
ad de poder atender los compromisos derivados de la relaci=C3=B3n que mante=
nemos con usted. Si lo desea, puede ejercer sus derechos de acceso, rectifi=
caci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escrito a la sig=
uiente direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,204)" href=3D"mailt=
o:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.c<wbr>om</a></=
span><br><br></font></span></div><div><span style=3D"color:rgb(153,153,153)=
;font-family:arial,helvetica,sans-serif;font-size:x-small"><u><b>LEGAL NOTE=
</b></u></span></div><div><span style=3D"color:rgb(153,153,153);font-family=
:arial,helvetica,sans-serif;font-size:x-small">This email and any attachmen=
ts to it contains is confidential information exclusively intended for the =
recipients. Any divulgation, copy or distribution to third parties is prohi=
bited without written permission of NAYAR SYSTEMS SL. If you have received =
this e-mail in error, please notify the sender immediately. In accordance w=
ith Law 15/1999 of 13 December on the Protection of Personal Data, the NAYA=
R SYSTEMS SL guarantees that it has adopted the necessary measures to ensur=
e the confidential treatment of personal information. We also inform you th=
at you can exercise your access, rectification, cancellation and opposition=
 rights by send us a mail to:=C2=A0<a href=3D"mailto:info@nayarsystems.com"=
 target=3D"_blank">info@nayarsystems.com</a></span></div><br></div>
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
<div class=3D"m_5361474152393307049m_7096927316469470777gmail_signature" da=
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
</div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000ee2846056d91c1f4--
