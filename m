Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B003FE00D3D; Fri,  1 Jun 2018 03:18:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 164B7E00D33
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 03:18:40 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id k5-v6so22051610oiw.0
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 03:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SHXuet1/ksBq7AGFx9XpSRQ/OVKewVS1koXTiJhIRVM=;
	b=solisT4QuVbwupOXjbdSdnmx2M+uTLCpzl6oZDq8IEsmMrJU7uJdlLgDGet67dJQ2L
	eF4JrQZ2PIRShScNo9F8yllXsmT9vUxk4OULtBICzPeDyjOoXaeE2j8qVAysZxlTmXc6
	6lP9W4Yih9k1XnxZXn9JZQ2OfIMBfdcps6HKuytc8/df+OZKjinuRGFNxnLeMRWwrOn0
	yr9TgaH2heZc9jLFl+ojz2lGA99sAfQTAf+f+6MXytGQ2k9nlYoJtno3Y9J7F0Fq9FmF
	vh7ereBt1RsYZazPkEtm+u9VxdlAcMslYfZp+kqQiUzse7r1yl9In/q0sCSv9lBcWzmU
	QMUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SHXuet1/ksBq7AGFx9XpSRQ/OVKewVS1koXTiJhIRVM=;
	b=p/SSgPizYyGop1KvhQoXMWzDnli0MXuQ80XGQSaNuQzObMElwOpQ7dh/7OAv+Sv6EW
	TK3a/bHTUE9e8IVxayRr86Zlco92TlNjuyrjgYRP+5PQym+BXoMouYFhf6DcCIHyO5ha
	1NJZ7WiCMXXXIOQpQ5hM3nF5DHUr6EHfwFdrJDYT/SczgwtrwM9ffGK4so61nHrUzwb/
	aCPKOn1xPM/OPLfuS7owXb+Xcdm7IbmELdrgrdT6saVb1JmvUGrOeojs2OtqGlqldLaA
	0cpseHMgF7hnYwtsgUAfoSB8efRZPg/bSLRjMY6iugK1j5zSn8h7sFYkILJLxJyZcnZu
	66uA==
X-Gm-Message-State: APt69E1fn2nj2m1cOA03vHPWJv9KIt2gSX+a6dVXHQpmgGtYGwhfpHxr
	tZ1rO0HJPMzo0/xMTlt1pwWScIQ9zyfBC0MZWgo=
X-Google-Smtp-Source: ADUXVKLHyDwtCzrUJHl9yDKrEyC0eLeEtKZmiYh0EYMECMFi1bb76M6kt8L8Syq2DgUqJEULmsi73WFABVy0yZy+edA=
X-Received: by 2002:aca:5094:: with SMTP id
	e142-v6mr271926oib.190.1527848320136; 
	Fri, 01 Jun 2018 03:18:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 03:18:39 -0700 (PDT)
In-Reply-To: <CAOT_U5YR_eNQMnKgaDS2EcYDh1smekajxdjNXB9Bs9zrZLDP3Q@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAOT_U5YR_eNQMnKgaDS2EcYDh1smekajxdjNXB9Bs9zrZLDP3Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Jun 2018 13:18:39 +0300
Message-ID: <CANNYZj8MwwuVSrepG-aSPhCRON4cWi9WV8j3XqZNS1MPbR-rkg@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 10:18:42 -0000
Content-Type: multipart/alternative; boundary="000000000000647afb056d91e881"

--000000000000647afb056d91e881
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If a build is 'a single bitbake invocation', then yes - it builds for a
single distro and for a specific target machine, but it can build multiple
recipes (which includes multiple images, as images are defined with
recipes).

Alex


2018-06-01 13:07 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:

> Hey Alexander,
> you seem to have a good understanding on the concepts.
> Would you say that:
>
> > A build always builds a single distro
>
> is somewhat of a rule?
>
>
>
>
> On Fri, Jun 1, 2018 at 11:24 AM, Alexander Kanavin <alex.kanavin@gmail.co=
m
> > wrote:
>
>> I have to say defining multiple distros and then tweaking recipes
>> according to those definitions is not a good practice, as recipes should
>> generally only access DISTRO_FEATURES and otherwise be distro-agnostic. =
The
>> above iptables scenario should be handled with different image recipes,
>> which pull in (via packages) or create different configurations.
>>
>> Alex
>>
>> 2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>=
:
>>
>>> I can provide more details. My custom layer has these files related wit=
h
>>> distro:
>>>
>>>     my_layer/conf/distro/include/common.conf
>>>     my_layer/conf/distro/develop.conf
>>>     my_layer/conf/distro/production.conf
>>>     my_layer/conf/distro/integration.conf
>>>
>>> As an example of the previous files, my_layer/conf/distro/include/devel=
op.conf
>>> has this content:
>>>
>>>     require conf/distro/include/common.conf
>>>     DISTRO =3D "my-distro-development"
>>>     DISTRO_NAME =3D "OS Development"
>>>     DISTRO_STAGE =3D "development"
>>>     # And here more customizations as setting root password,
>>> PRSERV_HOST, or PACKAGE_FEED_URIS
>>>
>>> In common.conf I define all features common to all my distros
>>> (PACKAGE_CLASSES and so on)
>>>
>>> I have custom iptables rules, then I have different files for that rule=
s:
>>>
>>>     my/layer/recipes-extended/iptables/files/iptables.rules.development
>>>     my/layer/recipes-extended/iptables/files/iptables.rules.production
>>>     my/layer/recipes-extended/iptables/files/iptables.rules.integration
>>>
>>> I use a bbappend recipe for iptables, modifiying do_install_append task
>>> like this:
>>>
>>>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
>>> ${D}/etc/iptables/iptables.rules
>>>
>>> I use a single image recipe to define all packages installed in my fina=
l
>>> image (all of them have the same set if packages, but with different
>>> customizations)
>>>
>>> Finally, I wrote a setup-build-env.sh script in my custom layer to
>>> configure the build easily. That script creates
>>> build-${DISTRO_STAGE}/conf/bblayers.conf and build-${DISTRO_STAGE}/conf=
/
>>> local.conf files with the proper setup, setting MACHINE, DISTRO and
>>> DL_DIR (shared by all distros) properly.
>>>
>>> Hope this helps!
>>>
>>>
>>>
>>>
>>>
>>> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
>>>
>>>> Hey,
>>>> would really like to see your example.
>>>> Am struggling to get creation of these types of images for a while now=
.
>>>>
>>>> So far have avoided diving into multiple distros because would like to
>>>> have the option
>>>> of building all the images at the same time (so they are basically the
>>>> same distro).
>>>>
>>>> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsyste=
ms.com
>>>> > wrote:
>>>>
>>>>> I fixed this issue defining different distro.conf files in my custom
>>>>> layer, adding a custom variable DISTRO_STAGE with the name of my dist=
ro
>>>>> (production, rnd, retail, and so on), Then you setup DISTRO in your
>>>>> local.conf to the proper value you want to use. Finally you can use t=
hat
>>>>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to deci=
de the
>>>>> proper configuration files you want to install in your final image. T=
hat
>>>>> works as expected. Hope this helps!
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>>>>
>>>>>> Hi,
>>>>>>
>>>>>> For the same MACHINE I create the following images:
>>>>>> - myimage-production
>>>>>> - myimage-rnd
>>>>>> - myimage-retail
>>>>>>
>>>>>> The production one has production assisted tools for flashing
>>>>>> peripheral HW, testing vital HW components, writing some serial numb=
ers,
>>>>>> etc.
>>>>>>
>>>>>> The rnd one has more packages than the retail one just to help rnd
>>>>>> work and debugging in device, but none of the rnd image extra packag=
es.
>>>>>>
>>>>>> The retail one has the final product image.
>>>>>>
>>>>>> I'm using web and FTP servers. I would like for the rnd version of
>>>>>> the image to have a different nginx configuration to set the root di=
rectory
>>>>>> to a development folder, or set an alias.
>>>>>>
>>>>>> Furthermore, I'll have different variant of the device where only th=
e
>>>>>> device SW changes but the platform is identical. So I'll end up with
>>>>>> - myimage2-production
>>>>>> - myimage2-rnd
>>>>>> - myimage2-retail
>>>>>>
>>>>>> I know how to make MACHINE based configuration. How could I do this
>>>>>> in my nginx.bbappend based on image name?
>>>>>>
>>>>>> Thanks,
>>>>>> -Damien
>>>>>>
>>>>>> --
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
>>>>>
>>>>>
>>>>> --
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> *NOTA LEGAL*
>>>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo a=
l
>>>>> mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclus=
ivamente
>>>>> dirigida a su destinatario y se encuentra protegido por Ley. Cualquie=
r
>>>>> persona distinta de su destinataria tiene prohibida su reproducci=C3=
=B3n, uso,
>>>>> divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recib=
ido este correo
>>>>> electr=C3=B3nico por error, se ruega lo notifique de inmediato al rem=
itente
>>>>> borrando el mensaje original juntamente con sus ficheros anexos. Grac=
ias.
>>>>>
>>>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL
>>>>> garantiza la adopci=C3=B3n de las medidas necesarias para asegurar el
>>>>> tratamiento confidencial de los datos de car=C3=A1cter personal. As=
=C3=AD mismo le
>>>>> informamos de la inclusi=C3=B3n de sus datos en un fichero bajo la
>>>>> responsabilidad de NAYAR SYSTEMS SL, con la finalidad de poder atende=
r los
>>>>> compromisos derivados de la relaci=C3=B3n que mantenemos con usted. S=
i lo desea,
>>>>> puede ejercer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=
=C3=B3n y
>>>>> oposici=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:
>>>>> info@nayarsystems.com
>>>>>
>>>>> *LEGAL NOTE*
>>>>> This email and any attachments to it contains is confidential
>>>>> information exclusively intended for the recipients. Any divulgation,=
 copy
>>>>> or distribution to third parties is prohibited without written permis=
sion
>>>>> of NAYAR SYSTEMS SL. If you have received this e-mail in error, pleas=
e
>>>>> notify the sender immediately. In accordance with Law 15/1999 of 13
>>>>> December on the Protection of Personal Data, the NAYAR SYSTEMS SL
>>>>> guarantees that it has adopted the necessary measures to ensure the
>>>>> confidential treatment of personal information. We also inform you th=
at you
>>>>> can exercise your access, rectification, cancellation and opposition =
rights
>>>>> by send us a mail to: info@nayarsystems.com
>>>>>
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
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

--000000000000647afb056d91e881
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If a build is &#39;a single bitbake invocation&#39;, =
then yes - it builds for a single distro and for a specific target machine,=
 but it can build multiple recipes (which includes multiple images, as imag=
es are defined with recipes).</div><div><br></div><div>Alex<br></div><br></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-06-01 13=
:07 GMT+03:00 Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.=
martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;letter-spacin=
g:normal;text-align:left;text-indent:0px;text-transform:none;white-space:no=
wrap;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline">Hey Ale=
xander,</span><br><div><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;letter-spacing:normal;text-align:left;text-inden=
t:0px;text-transform:none;white-space:nowrap;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline">you seem to have a good understanding on t=
he concepts.</span></div><div><span style=3D"font-size:12.8px;white-space:n=
owrap">Would you say that:</span></div><div><br></div><div><span style=3D"f=
ont-size:12.8px;white-space:nowrap">&gt; A build always builds a single dis=
tro</span></div><div><span style=3D"font-size:12.8px;white-space:nowrap"><b=
r></span></div><div><span style=3D"font-size:12.8px;white-space:nowrap">is =
somewhat of a rule?</span></div><div><span style=3D"font-size:12.8px;white-=
space:nowrap"><br></span></div><div><span style=3D"font-size:12.8px;white-s=
pace:nowrap"><br></span></div><div><span style=3D"font-size:12.8px;white-sp=
ace:nowrap"><br></span></div></div><div class=3D"HOEnZb"><div class=3D"h5">=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 20=
18 at 11:24 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:a=
lex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I have t=
o say defining multiple distros and then tweaking recipes according to thos=
e definitions is not a good practice, as recipes should generally only acce=
ss DISTRO_FEATURES and otherwise be distro-agnostic. The above iptables sce=
nario should be handled with different image recipes, which pull in (via pa=
ckages) or create different configurations.</div><div><br></div><div>Alex<b=
r></div></div><div class=3D"m_7472730988948613251HOEnZb"><div class=3D"m_74=
72730988948613251h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell@nayarsy=
stems.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
">I can provide more details. My custom layer has these files related with =
distro:<div><br></div><div>=C2=A0 =C2=A0 my_layer/conf/distro/include/c<wbr=
>ommon.conf</div><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my_layer/conf=
/distro/develop.c<wbr>onf</span><br></div><div><span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline"><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;flo=
at:none;display:inline">=C2=A0 =C2=A0 my_layer/conf/distro/productio<wbr>n.=
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
grati<wbr>on.conf</span><br></span></span></div><div><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline"><br></span></span><=
/span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-st=
yle:initial;text-decoration-color:initial;float:none;display:inline"><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">As an example of the previous=
 files, my_layer/conf/distro/include/d<wbr>evelop.conf has this content:</s=
pan></span></span></span></div><div><span style=3D"color:rgb(34,34,34);font=
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
isplay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-=
color:initial;float:none;display:inline"><br></span></span></span></div><di=
v><span style=3D"text-align:start;text-indent:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><span style=3D"text-align:start;text-indent:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline"><span style=3D"text-align:start;tex=
t-indent:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><div>=C2=A0 =C2=
=A0 require conf/distro/include/common.con<wbr>f</div><div>=C2=A0 =C2=A0 DI=
STRO =3D &quot;my-distro-development&quot;</div><div>=C2=A0 =C2=A0 DISTRO_N=
AME =3D &quot;OS Development&quot;</div><div>=C2=A0 =C2=A0 DISTRO_STAGE =3D=
 &quot;development&quot;</div><div>=C2=A0 =C2=A0 # And here more customizat=
ions as setting root password, PRSERV_HOST, or PACKAGE_FEED_URIS<br></div><=
div><br></div><div>In common.conf I define all features common to all my di=
stros (PACKAGE_CLASSES and so on)</div><div><br></div><div>I have custom ip=
tables rules, then I have different files for that rules:</div><div><br></d=
iv><div>=C2=A0 =C2=A0 my/layer/recipes-extended/ipta<wbr>bles/files/iptable=
s.rules.deve<wbr>lopment<br></div><div><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=
=A0 my/layer/</span>recipes-extended/ipta<wbr>bles/files/iptables.rules.pro=
d<wbr>uction<br></div><div><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my/layer=
/</span>recipes-extended/ipta<wbr>bles/files/iptables.rules.inte<wbr>gratio=
n<br></div><div><br></div><div>I use a bbappend recipe for iptables, modifi=
ying=C2=A0do_install_append=C2=A0t<wbr>ask like this:</div><div><br></div><=
div>=C2=A0 =C2=A0 install -m 0600 ${WORKDIR}/iptables.rules.${DI<wbr>STRO_S=
TAGE} ${D}/etc/iptables/iptables.rul<wbr>es<br></div><div><br></div><div>I =
use a single image recipe to define all packages installed in my final imag=
e (all of them have the same set if packages, but with different customizat=
ions)</div><div><br></div><div>Finally, I wrote a setup-build-env.sh script=
 in my custom layer to configure the build easily. That script creates <spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float=
:none;display:inline">build-${DISTRO_STAGE}/conf/</span>bbl<wbr>ayers.conf =
and <span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">build-${DISTRO_STAGE}/conf/</span>loc<wbr>al.=
conf files with the proper setup, setting=C2=A0MACHINE, DISTRO and DL_DIR (=
shared by all distros) properly.</div><div><br></div><div>Hope this helps!<=
/div><div><br></div></span></span></span></div><div><span style=3D"color:rg=
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
l;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline"><br></span></span></=
span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34=
);font-family:arial,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline"><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline"><br></span></span></span></div><div><span style=3D"color=
:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline"><br></span></span=
></span></div></div><div class=3D"m_7472730988948613251m_536147415239330704=
9HOEnZb"><div class=3D"m_7472730988948613251m_5361474152393307049h5"><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-06-01 10:21 GMT+02=
:00 Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic=
@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span>:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hey,<div>would really like =
to see your example.</div><div>Am struggling to get creation of these types=
 of images for a while now.</div><div><br></div><div>So far have avoided di=
ving into multiple distros because would like to have the option</div><div>=
of building all the images at the same time (so they are basically the same=
 distro).</div></div><div class=3D"m_7472730988948613251m_53614741523933070=
49m_7096927316469470777HOEnZb"><div class=3D"m_7472730988948613251m_5361474=
152393307049m_7096927316469470777h5"><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_bl=
ank">icastell@nayarsystems.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">I fixed this issue=
 defining different distro.conf files in my custom layer, adding a custom v=
ariable DISTRO_STAGE with the name of my distro (production, rnd, retail, a=
nd so on), Then you setup DISTRO in your local.conf to the proper value you=
 want to use. Finally you can use that DISTRO_STAGE variable in your custom=
 .bb or .bbappend recipes to decide the proper configuration files you want=
 to install in your final image. That works as expected. Hope this helps!</=
span><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-=
style:initial;text-decoration-color:initial"><br></div><br class=3D"m_74727=
30988948613251m_5361474152393307049m_7096927316469470777m_35063886989132866=
38m_-2730124559098635887gmail-Apple-interchange-newline"><br></div><div cla=
ss=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_7472=
730988948613251m_5361474152393307049m_7096927316469470777m_3506388698913286=
638h5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</=
a>&gt;</span>:<br></div></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div clas=
s=3D"m_7472730988948613251m_5361474152393307049m_7096927316469470777m_35063=
88698913286638h5"><div dir=3D"ltr">Hi,<div><br></div><div>For the same MACH=
INE I create the following images:</div><div>- myimage-production</div><div=
>- myimage-rnd</div><div>- myimage-retail</div><div><br></div><div>The prod=
uction one has production assisted tools for flashing peripheral HW, testin=
g vital HW components, writing some serial numbers, etc.</div><div><br></di=
v><div>The rnd one has more packages than the retail one just to help rnd w=
ork and debugging in device, but none of the rnd image extra packages.=C2=
=A0</div><div><br></div><div>The retail one has the final product image.</d=
iv><div><br></div><div>I&#39;m using web and FTP servers. I would like for =
the rnd version of the image to have a different nginx configuration to set=
 the root directory to a development folder,=C2=A0<span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>or set an alias.</span></div><div><br></div><div>Furthermore, I&#39;ll hav=
e different variant of the device where only the device SW changes but the =
platform is identical. So I&#39;ll end up with=C2=A0<br></div><div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration-style:initial=
;text-decoration-color:initial">- myimage2-production</div><div style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:non=
e;white-space:normal;word-spacing:0px;text-decoration-style:initial;text-de=
coration-color:initial">- myimage2-rnd</div><div style=3D"color:rgb(34,34,3=
4);font-family:arial,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:=
initial">- myimage2-retail</div><div><br></div><div>I know how to make MACH=
INE based configuration. How could I do this in my=C2=A0nginx.bbappend base=
d on image name?<br></div></div><div><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline"><br></span><=
/div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline">Thanks,</span></div><div><span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">-Damien</span></div></div>
<br></div></div><span class=3D"m_7472730988948613251m_5361474152393307049m_=
7096927316469470777m_3506388698913286638HOEnZb"><font color=3D"#888888">-- =
<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_7472730988948613251m_=
5361474152393307049m_7096927316469470777m_3506388698913286638HOEnZb"><font =
color=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div class=3D=
"m_7472730988948613251m_5361474152393307049m_7096927316469470777m_350638869=
8913286638m_-2730124559098635887gmail_signature" data-smartmail=3D"gmail_si=
gnature"><br><img src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.j=
pg"><br><font size=3D"2"><b></b></font><br><div><span><font size=3D"1"><spa=
n style=3D"color:rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este cor=
reo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mismo, conti=
ene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente dirigida =
a su destinatario y se encuentra protegido por Ley. Cualquier persona disti=
nta de su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recibido este correo=
 electr=C3=B3nico por error, se ruega lo notifique de inmediato al remitent=
e borrando el mensaje original juntamente con sus ficheros anexos. Gracias.=
<br><br>De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL gara=
ntiza la adopci=C3=B3n de las medidas necesarias para asegurar el tratamien=
to confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le i=
nformamos de la inclusi=C3=B3n de sus datos en un fichero bajo la responsab=
ilidad de NAYAR SYSTEMS SL, con la finalidad de poder atender los compromis=
os derivados de la relaci=C3=B3n que mantenemos con usted. Si lo desea, pue=
de ejercer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y o=
posici=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:=C2=A0<a st=
yle=3D"color:rgb(17,85,204)" href=3D"mailto:info@nayarsystems.com" target=
=3D"_blank">info@nayarsystems.c<wbr>om</a></span><br><br></font></span></di=
v><div><span style=3D"color:rgb(153,153,153);font-family:arial,helvetica,sa=
ns-serif;font-size:x-small"><u><b>LEGAL NOTE</b></u></span></div><div><span=
 style=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;fon=
t-size:x-small">This email and any attachments to it contains is confidenti=
al information exclusively intended for the recipients. Any divulgation, co=
py or distribution to third parties is prohibited without written permissio=
n of NAYAR SYSTEMS SL. If you have received this e-mail in error, please no=
tify the sender immediately. In accordance with Law 15/1999 of 13 December =
on the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it=
 has adopted the necessary measures to ensure the confidential treatment of=
 personal information. We also inform you that you can exercise your access=
, rectification, cancellation and opposition rights by send us a mail to:=
=C2=A0<a href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayar=
systems.com</a></span></div><br></div>
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
<div class=3D"m_7472730988948613251m_5361474152393307049m_70969273164694707=
77gmail_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"http:=
//www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></=
b></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,153,1=
53)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en su =
caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de car=C3=
=A1cter confidencial exclusivamente dirigida a su destinatario y se encuent=
ra protegido por Ley. Cualquier persona distinta de su destinataria tiene p=
rohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=B3=
n total o parcial. Si ha recibido este correo electr=C3=B3nico por error, s=
e ruega lo notifique de inmediato al remitente borrando el mensaje original=
 juntamente con sus ficheros anexos. Gracias.<br><br>De conformidad con lo =
establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de las =
medidas necesarias para asegurar el tratamiento confidencial de los datos d=
e car=C3=A1cter personal. As=C3=AD mismo le informamos de la inclusi=C3=B3n=
 de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL, co=
n la finalidad de poder atender los compromisos derivados de la relaci=C3=
=B3n que mantenemos con usted. Si lo desea, puede ejercer sus derechos de a=
cceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un es=
crito a la siguiente direcci=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,204)"=
 href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.=
c<wbr>om</a></span><br><br></font></span></div><div><span style=3D"color:rg=
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
</div></div></blockquote></div><br></div>

--000000000000647afb056d91e881--
