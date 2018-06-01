Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 308BAE00D00; Fri,  1 Jun 2018 03:40:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FCC9E00CEE
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 03:40:46 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id b130-v6so22061092oif.12
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 03:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+VYf7uaQY1dOaPdHdgl2HGcOGeZWOfZI4fhfdvJLI1o=;
	b=Ls23IyT/yaL5fG7LPRQvLeCCM7ac0x4iClJ2ZKkbP34ujiFXctoy3j1gohCr/+Ypsv
	AkhWja5oRktLiNDG0SB6JXlC89RHFY9/XhEmaaqYSYt83suqVcKi2bA4Vg2KGyhGH0gm
	hOc9Krn+AEVc2jusv7RY3o+kQoGcoIibDC5aBRfb4B+rodSdFt5+QZmvvn/3Lq40l01l
	evHhBory53DXdlWDQvuyihj7qB2ypA4OGhhOJgZ6QrQCtD1Ylzetc0bE2F5OWDfuApvn
	TVWbCZichxrvkHvRfIIWMkLnZznglRAWioXmiRCWY3a75Lux3MD16YzQI8OiCKKTan3t
	LA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+VYf7uaQY1dOaPdHdgl2HGcOGeZWOfZI4fhfdvJLI1o=;
	b=ieCY8HD7o3Z3aRAxemHeZA1LFq68bCTYLF7r2LoJQiPNvFXOxtXrZmKOJ9VuBx5nZn
	WIT5KYskmoMwsUu+hD/2ydA8wBfOvDagGK2PiWY61RYdrA1j1IR3FU05thC6VQJZkUdC
	iejORUJrze2j4ZDneORLmB+/TLMwEIU7hVqEclIvIMQmUHYfwww1ShNKC+70sNwS/seZ
	gRaT6oayGS0IiNVlrMvCfzHZsLt4dsjYmBbNozpv9CzLC5wtWCbPHnDHQikgXb9pvzws
	zQg6iqhha0TGRzqig0O8qrx8yqIVDFhxkRd2WgAO2fVZBQOXc9R8wncH5C/mAFqj2Al1
	r7Ug==
X-Gm-Message-State: APt69E0MNdbpAHT2mLSKmPRvLFBuB/9A15tvo2OF49d+d7wwt0TPJXzS
	1rNoSJr3evUeX4alRNVBAwDa522TDpJs9A0rDkuwNg==
X-Google-Smtp-Source: ADUXVKJTLgxgd39jgCN2lbQiFRk2G+Zu9Z5K0uPPjcTQ+clUaF/Gh9+UWVwSVQQwjE64/SUp6s8tlsJY4MWqoZiIdj0=
X-Received: by 2002:aca:b184:: with SMTP id
	a126-v6mr2861279oif.67.1527849645500; 
	Fri, 01 Jun 2018 03:40:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 03:40:44 -0700 (PDT)
In-Reply-To: <CANNYZj8MwwuVSrepG-aSPhCRON4cWi9WV8j3XqZNS1MPbR-rkg@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAOT_U5YR_eNQMnKgaDS2EcYDh1smekajxdjNXB9Bs9zrZLDP3Q@mail.gmail.com>
	<CANNYZj8MwwuVSrepG-aSPhCRON4cWi9WV8j3XqZNS1MPbR-rkg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 12:40:44 +0200
Message-ID: <CAOT_U5ZL2GfpaHvGuCsEjzF9+RijOsYFTVKfPyQ3c36AzXzKvQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 10:40:48 -0000
Content-Type: multipart/alternative; boundary="00000000000063fa53056d9237f2"

--00000000000063fa53056d9237f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, much better phrasing:

> A single bitbake invocation always builds a single distro for a specific
target machine

Thanks

On Fri, Jun 1, 2018 at 12:18 PM, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> If a build is 'a single bitbake invocation', then yes - it builds for a
> single distro and for a specific target machine, but it can build multipl=
e
> recipes (which includes multiple images, as images are defined with
> recipes).
>
> Alex
>
>
> 2018-06-01 13:07 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:
>
>> Hey Alexander,
>> you seem to have a good understanding on the concepts.
>> Would you say that:
>>
>> > A build always builds a single distro
>>
>> is somewhat of a rule?
>>
>>
>>
>>
>> On Fri, Jun 1, 2018 at 11:24 AM, Alexander Kanavin <
>> alex.kanavin@gmail.com> wrote:
>>
>>> I have to say defining multiple distros and then tweaking recipes
>>> according to those definitions is not a good practice, as recipes shoul=
d
>>> generally only access DISTRO_FEATURES and otherwise be distro-agnostic.=
 The
>>> above iptables scenario should be handled with different image recipes,
>>> which pull in (via packages) or create different configurations.
>>>
>>> Alex
>>>
>>> 2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <icastell@nayarsystems.com=
>:
>>>
>>>> I can provide more details. My custom layer has these files related
>>>> with distro:
>>>>
>>>>     my_layer/conf/distro/include/common.conf
>>>>     my_layer/conf/distro/develop.conf
>>>>     my_layer/conf/distro/production.conf
>>>>     my_layer/conf/distro/integration.conf
>>>>
>>>> As an example of the previous files, my_layer/conf/distro/include/deve=
lop.conf
>>>> has this content:
>>>>
>>>>     require conf/distro/include/common.conf
>>>>     DISTRO =3D "my-distro-development"
>>>>     DISTRO_NAME =3D "OS Development"
>>>>     DISTRO_STAGE =3D "development"
>>>>     # And here more customizations as setting root password,
>>>> PRSERV_HOST, or PACKAGE_FEED_URIS
>>>>
>>>> In common.conf I define all features common to all my distros
>>>> (PACKAGE_CLASSES and so on)
>>>>
>>>> I have custom iptables rules, then I have different files for that
>>>> rules:
>>>>
>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.developmen=
t
>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.production
>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.integratio=
n
>>>>
>>>> I use a bbappend recipe for iptables, modifiying do_install_append tas=
k
>>>> like this:
>>>>
>>>>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
>>>> ${D}/etc/iptables/iptables.rules
>>>>
>>>> I use a single image recipe to define all packages installed in my
>>>> final image (all of them have the same set if packages, but with diffe=
rent
>>>> customizations)
>>>>
>>>> Finally, I wrote a setup-build-env.sh script in my custom layer to
>>>> configure the build easily. That script creates
>>>> build-${DISTRO_STAGE}/conf/bblayers.conf and
>>>> build-${DISTRO_STAGE}/conf/local.conf files with the proper setup,
>>>> setting MACHINE, DISTRO and DL_DIR (shared by all distros) properly.
>>>>
>>>> Hope this helps!
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>=
:
>>>>
>>>>> Hey,
>>>>> would really like to see your example.
>>>>> Am struggling to get creation of these types of images for a while no=
w.
>>>>>
>>>>> So far have avoided diving into multiple distros because would like t=
o
>>>>> have the option
>>>>> of building all the images at the same time (so they are basically th=
e
>>>>> same distro).
>>>>>
>>>>> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <
>>>>> icastell@nayarsystems.com> wrote:
>>>>>
>>>>>> I fixed this issue defining different distro.conf files in my custom
>>>>>> layer, adding a custom variable DISTRO_STAGE with the name of my dis=
tro
>>>>>> (production, rnd, retail, and so on), Then you setup DISTRO in your
>>>>>> local.conf to the proper value you want to use. Finally you can use =
that
>>>>>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to dec=
ide the
>>>>>> proper configuration files you want to install in your final image. =
That
>>>>>> works as expected. Hope this helps!
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>>>>>
>>>>>>> Hi,
>>>>>>>
>>>>>>> For the same MACHINE I create the following images:
>>>>>>> - myimage-production
>>>>>>> - myimage-rnd
>>>>>>> - myimage-retail
>>>>>>>
>>>>>>> The production one has production assisted tools for flashing
>>>>>>> peripheral HW, testing vital HW components, writing some serial num=
bers,
>>>>>>> etc.
>>>>>>>
>>>>>>> The rnd one has more packages than the retail one just to help rnd
>>>>>>> work and debugging in device, but none of the rnd image extra packa=
ges.
>>>>>>>
>>>>>>> The retail one has the final product image.
>>>>>>>
>>>>>>> I'm using web and FTP servers. I would like for the rnd version of
>>>>>>> the image to have a different nginx configuration to set the root d=
irectory
>>>>>>> to a development folder, or set an alias.
>>>>>>>
>>>>>>> Furthermore, I'll have different variant of the device where only
>>>>>>> the device SW changes but the platform is identical. So I'll end up=
 with
>>>>>>> - myimage2-production
>>>>>>> - myimage2-rnd
>>>>>>> - myimage2-retail
>>>>>>>
>>>>>>> I know how to make MACHINE based configuration. How could I do this
>>>>>>> in my nginx.bbappend based on image name?
>>>>>>>
>>>>>>> Thanks,
>>>>>>> -Damien
>>>>>>>
>>>>>>> --
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>>
>>>>>>
>>>>>>
>>>>>> --
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> *NOTA LEGAL*
>>>>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo =
al
>>>>>> mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclu=
sivamente
>>>>>> dirigida a su destinatario y se encuentra protegido por Ley. Cualqui=
er
>>>>>> persona distinta de su destinataria tiene prohibida su reproducci=C3=
=B3n, uso,
>>>>>> divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha reci=
bido este correo
>>>>>> electr=C3=B3nico por error, se ruega lo notifique de inmediato al re=
mitente
>>>>>> borrando el mensaje original juntamente con sus ficheros anexos. Gra=
cias.
>>>>>>
>>>>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL
>>>>>> garantiza la adopci=C3=B3n de las medidas necesarias para asegurar e=
l
>>>>>> tratamiento confidencial de los datos de car=C3=A1cter personal. As=
=C3=AD mismo le
>>>>>> informamos de la inclusi=C3=B3n de sus datos en un fichero bajo la
>>>>>> responsabilidad de NAYAR SYSTEMS SL, con la finalidad de poder atend=
er los
>>>>>> compromisos derivados de la relaci=C3=B3n que mantenemos con usted. =
Si lo desea,
>>>>>> puede ejercer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=
=C3=B3n y
>>>>>> oposici=C3=B3n mediante un escrito a la siguiente direcci=C3=B3n:
>>>>>> info@nayarsystems.com
>>>>>>
>>>>>> *LEGAL NOTE*
>>>>>> This email and any attachments to it contains is confidential
>>>>>> information exclusively intended for the recipients. Any divulgation=
, copy
>>>>>> or distribution to third parties is prohibited without written permi=
ssion
>>>>>> of NAYAR SYSTEMS SL. If you have received this e-mail in error, plea=
se
>>>>>> notify the sender immediately. In accordance with Law 15/1999 of 13
>>>>>> December on the Protection of Personal Data, the NAYAR SYSTEMS SL
>>>>>> guarantees that it has adopted the necessary measures to ensure the
>>>>>> confidential treatment of personal information. We also inform you t=
hat you
>>>>>> can exercise your access, rectification, cancellation and opposition=
 rights
>>>>>> by send us a mail to: info@nayarsystems.com
>>>>>>
>>>>>>
>>>>>> --
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
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
>

--00000000000063fa53056d9237f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, much better phrasing:<div><br></div><div>&gt;=C2=A0<s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.=
8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:nowrap;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">A <span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline">single bitbake invoca=
tion</span> always builds a single distro=C2=A0<span style=3D"color:rgb(34,=
34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-sp=
ace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline">f=
or a specific target machine</span></span></div><div><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:norma=
l;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:nowrap;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inl=
ine"><br></span></div><div><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:nowrap;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial;float:none;display:inline">Thanks=C2=A0</span></=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri,=
 Jun 1, 2018 at 12:18 PM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><=
div>If a build is &#39;a single bitbake invocation&#39;, then yes - it buil=
ds for a single distro and for a specific target machine, but it can build =
multiple recipes (which includes multiple images, as images are defined wit=
h recipes).</div><div><br></div><div>Alex<br></div><br></div><div class=3D"=
HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">2018-06-01 13:07 GMT+03:00 Alan Martinovic <span dir=3D"ltr">&lt;<=
a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.martinov=
ic@senic.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;letter-spacing:normal;text-align:left;text-indent:0px;text-transfo=
rm:none;white-space:nowrap;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">Hey Alexander,</span><br><div><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;letter-spacing:normal;text=
-align:left;text-indent:0px;text-transform:none;white-space:nowrap;word-spa=
cing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">you seem to have a g=
ood understanding on the concepts.</span></div><div><span style=3D"font-siz=
e:12.8px;white-space:nowrap">Would you say that:</span></div><div><br></div=
><div><span style=3D"font-size:12.8px;white-space:nowrap">&gt; A build alwa=
ys builds a single distro</span></div><div><span style=3D"font-size:12.8px;=
white-space:nowrap"><br></span></div><div><span style=3D"font-size:12.8px;w=
hite-space:nowrap">is somewhat of a rule?</span></div><div><span style=3D"f=
ont-size:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"fo=
nt-size:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"fon=
t-size:12.8px;white-space:nowrap"><br></span></div></div><div class=3D"m_-8=
649852102808283125HOEnZb"><div class=3D"m_-8649852102808283125h5"><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 11:=
24 AM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanav=
in@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I have to say def=
ining multiple distros and then tweaking recipes according to those definit=
ions is not a good practice, as recipes should generally only access DISTRO=
_FEATURES and otherwise be distro-agnostic. The above iptables scenario sho=
uld be handled with different image recipes, which pull in (via packages) o=
r create different configurations.</div><div><br></div><div>Alex<br></div><=
/div><div class=3D"m_-8649852102808283125m_7472730988948613251HOEnZb"><div =
class=3D"m_-8649852102808283125m_7472730988948613251h5"><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2018-06-01 12:04 GMT+03:00 Iv=C3=A1n=
 Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com"=
 target=3D"_blank">icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div dir=3D"ltr">I can provide more details. My custom =
layer has these files related with distro:<div><br></div><div>=C2=A0 =C2=A0=
 my_layer/conf/distro/include/c<wbr>ommon.conf</div><div><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial;float:none;display:=
inline">=C2=A0 =C2=A0 my_layer/conf/distro/develop.c<wbr>onf</span><br></di=
v><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font=
-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline">=C2=A0 =C2=A0 my=
_layer/conf/distro/productio<wbr>n.conf</span><br></span></div><div><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">=C2=
=A0 =C2=A0 my_layer/conf/distro/integrati<wbr>on.conf</span><br></span></sp=
an></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline"><span sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline"><br></span></span></span></div><div><span style=3D"color:r=
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
ext-decoration-color:initial;float:none;display:inline"><span style=3D"colo=
r:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:i=
nline">As an example of the previous files, my_layer/conf/distro/include/d<=
wbr>evelop.conf has this content:</span></span></span></span></div><div><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><span style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial;float:none;display:inline">=
<br></span></span></span></div><div><span style=3D"text-align:start;text-in=
dent:0px;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline"><span style=3D"text-=
align:start;text-indent:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><=
span style=3D"text-align:start;text-indent:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline"><div>=C2=A0 =C2=A0 require conf/distro/include/common.con=
<wbr>f</div><div>=C2=A0 =C2=A0 DISTRO =3D &quot;my-distro-development&quot;=
</div><div>=C2=A0 =C2=A0 DISTRO_NAME =3D &quot;OS Development&quot;</div><d=
iv>=C2=A0 =C2=A0 DISTRO_STAGE =3D &quot;development&quot;</div><div>=C2=A0 =
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
e;display:inline"><br></span></span></span></div></div><div class=3D"m_-864=
9852102808283125m_7472730988948613251m_5361474152393307049HOEnZb"><div clas=
s=3D"m_-8649852102808283125m_7472730988948613251m_5361474152393307049h5"><d=
iv class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-06-01 10:21 GM=
T+02:00 Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martin=
ovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hey,<div>would really l=
ike to see your example.</div><div>Am struggling to get creation of these t=
ypes of images for a while now.</div><div><br></div><div>So far have avoide=
d diving into multiple distros because would like to have the option</div><=
div>of building all the images at the same time (so they are basically the =
same distro).</div></div><div class=3D"m_-8649852102808283125m_747273098894=
8613251m_5361474152393307049m_7096927316469470777HOEnZb"><div class=3D"m_-8=
649852102808283125m_7472730988948613251m_5361474152393307049m_7096927316469=
470777h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri,=
 Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D=
"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell@nayarsystems.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">I fixed this issue defining different distro.co=
nf files in my custom layer, adding a custom variable DISTRO_STAGE with the=
 name of my distro (production, rnd, retail, and so on), Then you setup DIS=
TRO in your local.conf to the proper value you want to use. Finally you can=
 use that DISTRO_STAGE variable in your custom .bb or .bbappend recipes to =
decide the proper configuration files you want to install in your final ima=
ge. That works as expected. Hope this helps!</span><div style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial"><br></div><br class=3D"m_-8649852102808283125m_747273098894=
8613251m_5361474152393307049m_7096927316469470777m_3506388698913286638m_-27=
30124559098635887gmail-Apple-interchange-newline"><br></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_-8649852102=
808283125m_7472730988948613251m_5361474152393307049m_7096927316469470777m_3=
506388698913286638h5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span dir=3D=
"ltr">&lt;<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lefevre=
.da@gmail.com</a>&gt;</span>:<br></div></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div><div class=3D"m_-8649852102808283125m_7472730988948613251m_5361474152=
393307049m_7096927316469470777m_3506388698913286638h5"><div dir=3D"ltr">Hi,=
<div><br></div><div>For the same MACHINE I create the following images:</di=
v><div>- myimage-production</div><div>- myimage-rnd</div><div>- myimage-ret=
ail</div><div><br></div><div>The production one has production assisted too=
ls for flashing peripheral HW, testing vital HW components, writing some se=
rial numbers, etc.</div><div><br></div><div>The rnd one has more packages t=
han the retail one just to help rnd work and debugging in device, but none =
of the rnd image extra packages.=C2=A0</div><div><br></div><div>The retail =
one has the final product image.</div><div><br></div><div>I&#39;m using web=
 and FTP servers. I would like for the rnd version of the image to have a d=
ifferent nginx configuration to set the root directory to a development fol=
der,=C2=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline">or set an alias.</span></div><div><br><=
/div><div>Furthermore, I&#39;ll have different variant of the device where =
only the device SW changes but the platform is identical. So I&#39;ll end u=
p with=C2=A0<br></div><div><div style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration-style:initial;text-decoration-color:initial">- myimag=
e2-production</div><div style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;te=
xt-decoration-style:initial;text-decoration-color:initial">- myimage2-rnd</=
div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;text-decoration-s=
tyle:initial;text-decoration-color:initial">- myimage2-retail</div><div><br=
></div><div>I know how to make MACHINE based configuration. How could I do =
this in my=C2=A0nginx.bbappend based on image name?<br></div></div><div><sp=
an style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline"><br></span></div><div><span style=3D"color:rgb(34,34=
,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline">Than=
ks,</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:st=
art;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decor=
ation-color:initial;float:none;display:inline">-Damien</span></div></div>
<br></div></div><span class=3D"m_-8649852102808283125m_7472730988948613251m=
_5361474152393307049m_7096927316469470777m_3506388698913286638HOEnZb"><font=
 color=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_-8649852102808283125m=
_7472730988948613251m_5361474152393307049m_7096927316469470777m_35063886989=
13286638HOEnZb"><font color=3D"#888888"><br><br clear=3D"all"><div><br></di=
v>-- <br><div class=3D"m_-8649852102808283125m_7472730988948613251m_5361474=
152393307049m_7096927316469470777m_3506388698913286638m_-273012455909863588=
7gmail_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"http:/=
/www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></b=
></font><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,153,15=
3)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en su c=
aso, cualquier fichero anexo al mismo, contiene informaci=C3=B3n de car=C3=
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
<div class=3D"m_-8649852102808283125m_7472730988948613251m_5361474152393307=
049m_7096927316469470777gmail_signature" data-smartmail=3D"gmail_signature"=
><br><img src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br>=
<font size=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=
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
</div></div></blockquote></div><br></div>

--00000000000063fa53056d9237f2--
