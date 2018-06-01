Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43BD2E02BFF; Tue, 12 Jun 2018 11:02:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	HTML_MESSAGE, MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18EDEE02B63
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:02:46 -0700 (PDT)
Received: from [10.175.196.108] ([37.123.169.62]) by cmsmtp with ESMTPA
	id SncnfOZvn19K9Snd0fwXbN; Tue, 12 Jun 2018 20:02:46 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 1 Jun 2018 12:57:26 +0200
Message-Id: <145D4539-F47A-4F76-9291-64A755794D56@emagii.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CANNYZj9pM=rw7n+kOU6uqHGQ1r7XYFv9-na5nf-yKLW2H7AZ6w@mail.gmail.com>
	<CAOT_U5YR_eNQMnKgaDS2EcYDh1smekajxdjNXB9Bs9zrZLDP3Q@mail.gmail.com>
	<CANNYZj8MwwuVSrepG-aSPhCRON4cWi9WV8j3XqZNS1MPbR-rkg@mail.gmail.com>
	<CAOT_U5ZL2GfpaHvGuCsEjzF9+RijOsYFTVKfPyQ3c36AzXzKvQ@mail.gmail.com>
In-Reply-To: <CAOT_U5ZL2GfpaHvGuCsEjzF9+RijOsYFTVKfPyQ3c36AzXzKvQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfFJDno8hzsms64dt464LtZHGv1vOWxvxmewunHyM0JdzEplv0J5fFU8uL/TTd2a5qxzmAurxzCt1Yz9V9kl5DBMwYhWxZ2TwKgCnwZOi+fYK6lKw68xi
	T1iYlIFovYREgOeyerwa9yGEkX+5CbJeMB6chE4u39OvxgMDmliVkKNyBUnVmpOcLnlj7I9QwAA2wny21/1jn8jYkSjFpen1ACSrH6HXmYVklSdG3hK0N6wu
	mQGSR5JCwoA1wHXQ0XXn1QcSzqQYUEgkoDRNlJo13f4=
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
X-List-Received-Date: Tue, 12 Jun 2018 18:02:49 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-CF150E91-44A2-4E2E-9155-B9B33DA55C67
Content-Transfer-Encoding: 7bit

--Apple-Mail-CF150E91-44A2-4E2E-9155-B9B33DA55C67
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

In my current project they have defined bbclass files to allow variants of r=
ecipes.
The recipe would then contain  do_install_append_XYZ=E2=80=99s for each clas=
s.

BBCLASSEXTEND =3D =E2=80=9Dproduction rnd retail=E2=80=9D

would ensure you would get nginx-production, nginx-rnd, nginx-retail ipks.

This way you have one recipe generating three variants in the same build.

Don=E2=80=99t have the source in front of me  so I can=E2=80=99t share the b=
bclass (right now at least)

Best Regards,
Ulf Samuelsson
+46 722 427 437

> 1 juni 2018 kl. 12:40 skrev Alan Martinovic <alan.martinovic@senic.com>:
>=20
> Yes, much better phrasing:
>=20
> > A single bitbake invocation always builds a single distro for a specific=
 target machine
>=20
> Thanks=20
>=20
>> On Fri, Jun 1, 2018 at 12:18 PM, Alexander Kanavin <alex.kanavin@gmail.co=
m> wrote:
>> If a build is 'a single bitbake invocation', then yes - it builds for a s=
ingle distro and for a specific target machine, but it can build multiple re=
cipes (which includes multiple images, as images are defined with recipes).
>>=20
>> Alex
>>=20
>>=20
>> 2018-06-01 13:07 GMT+03:00 Alan Martinovic <alan.martinovic@senic.com>:
>>> Hey Alexander,
>>> you seem to have a good understanding on the concepts.
>>> Would you say that:
>>>=20
>>> > A build always builds a single distro
>>>=20
>>> is somewhat of a rule?
>>>=20
>>>=20
>>>=20
>>>=20
>>>> On Fri, Jun 1, 2018 at 11:24 AM, Alexander Kanavin <alex.kanavin@gmail.=
com> wrote:
>>>> I have to say defining multiple distros and then tweaking recipes accor=
ding to those definitions is not a good practice, as recipes should generall=
y only access DISTRO_FEATURES and otherwise be distro-agnostic. The above ip=
tables scenario should be handled with different image recipes, which pull i=
n (via packages) or create different configurations.
>>>>=20
>>>> Alex
>>>>=20
>>>> 2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <icastell@nayarsystems.com=
>:
>>>>> I can provide more details. My custom layer has these files related wi=
th distro:
>>>>>=20
>>>>>     my_layer/conf/distro/include/common.conf
>>>>>     my_layer/conf/distro/develop.conf
>>>>>     my_layer/conf/distro/production.conf
>>>>>     my_layer/conf/distro/integration.conf
>>>>>=20
>>>>> As an example of the previous files, my_layer/conf/distro/include/deve=
lop.conf has this content:
>>>>>=20
>>>>>     require conf/distro/include/common.conf
>>>>>     DISTRO =3D "my-distro-development"
>>>>>     DISTRO_NAME =3D "OS Development"
>>>>>     DISTRO_STAGE =3D "development"
>>>>>     # And here more customizations as setting root password, PRSERV_HO=
ST, or PACKAGE_FEED_URIS
>>>>>=20
>>>>> In common.conf I define all features common to all my distros (PACKAGE=
_CLASSES and so on)
>>>>>=20
>>>>> I have custom iptables rules, then I have different files for that rul=
es:
>>>>>=20
>>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.developmen=
t
>>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.production=

>>>>>     my/layer/recipes-extended/iptables/files/iptables.rules.integratio=
n
>>>>>=20
>>>>> I use a bbappend recipe for iptables, modifiying do_install_append tas=
k like this:
>>>>>=20
>>>>>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE} ${D}/etc=
/iptables/iptables.rules
>>>>>=20
>>>>> I use a single image recipe to define all packages installed in my fin=
al image (all of them have the same set if packages, but with different cust=
omizations)
>>>>>=20
>>>>> Finally, I wrote a setup-build-env.sh script in my custom layer to con=
figure the build easily. That script creates build-${DISTRO_STAGE}/conf/bbla=
yers.conf and build-${DISTRO_STAGE}/conf/local.conf files with the proper se=
tup, setting MACHINE, DISTRO and DL_DIR (shared by all distros) properly.
>>>>>=20
>>>>> Hope this helps!
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>=
:
>>>>>> Hey,
>>>>>> would really like to see your example.
>>>>>> Am struggling to get creation of these types of images for a while no=
w.
>>>>>>=20
>>>>>> So far have avoided diving into multiple distros because would like t=
o have the option
>>>>>> of building all the images at the same time (so they are basically th=
e same distro).
>>>>>>=20
>>>>>>> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsys=
tems.com> wrote:
>>>>>>> I fixed this issue defining different distro.conf files in my custom=
 layer, adding a custom variable DISTRO_STAGE with the name of my distro (pr=
oduction, rnd, retail, and so on), Then you setup DISTRO in your local.conf t=
o the proper value you want to use. Finally you can use that DISTRO_STAGE va=
riable in your custom .bb or .bbappend recipes to decide the proper configur=
ation files you want to install in your final image. That works as expected.=
 Hope this helps!
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
>>>>>>>> Hi,
>>>>>>>>=20
>>>>>>>> For the same MACHINE I create the following images:
>>>>>>>> - myimage-production
>>>>>>>> - myimage-rnd
>>>>>>>> - myimage-retail
>>>>>>>>=20
>>>>>>>> The production one has production assisted tools for flashing perip=
heral HW, testing vital HW components, writing some serial numbers, etc.
>>>>>>>>=20
>>>>>>>> The rnd one has more packages than the retail one just to help rnd w=
ork and debugging in device, but none of the rnd image extra packages.=20
>>>>>>>>=20
>>>>>>>> The retail one has the final product image.
>>>>>>>>=20
>>>>>>>> I'm using web and FTP servers. I would like for the rnd version of t=
he image to have a different nginx configuration to set the root directory t=
o a development folder, or set an alias.
>>>>>>>>=20
>>>>>>>> Furthermore, I'll have different variant of the device where only t=
he device SW changes but the platform is identical. So I'll end up with=20
>>>>>>>> - myimage2-production
>>>>>>>> - myimage2-rnd
>>>>>>>> - myimage2-retail
>>>>>>>>=20
>>>>>>>> I know how to make MACHINE based configuration. How could I do this=
 in my nginx.bbappend based on image name?
>>>>>>>>=20
>>>>>>>> Thanks,
>>>>>>>> -Damien
>>>>>>>>=20
>>>>>>>> --=20
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> --=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> NOTA LEGAL
>>>>>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo a=
l mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivame=
nte dirigida a su destinatario y se encuentra protegido por Ley. Cualquier p=
ersona distinta de su destinataria tiene prohibida su reproducci=C3=B3n, uso=
, divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recibido e=
ste correo electr=C3=B3nico por error, se ruega lo notifique de inmediato al=
 remitente borrando el mensaje original juntamente con sus ficheros anexos. G=
racias.
>>>>>>>=20
>>>>>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garan=
tiza la adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento=
 confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le info=
rmamos de la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilid=
ad de NAYAR SYSTEMS SL, con la finalidad de poder atender los compromisos de=
rivados de la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede eje=
rcer sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=
=B3n mediante un escrito a la siguiente direcci=C3=B3n: info@nayarsystems.co=
m
>>>>>>>=20
>>>>>>> LEGAL NOTE
>>>>>>> This email and any attachments to it contains is confidential inform=
ation exclusively intended for the recipients. Any divulgation, copy or dist=
ribution to third parties is prohibited without written permission of NAYAR S=
YSTEMS SL. If you have received this e-mail in error, please notify the send=
er immediately. In accordance with Law 15/1999 of 13 December on the Protect=
ion of Personal Data, the NAYAR SYSTEMS SL guarantees that it has adopted th=
e necessary measures to ensure the confidential treatment of personal inform=
ation. We also inform you that you can exercise your access, rectification, c=
ancellation and opposition rights by send us a mail to: info@nayarsystems.co=
m
>>>>>>>=20
>>>>>>>=20
>>>>>>> --=20
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> --=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> NOTA LEGAL
>>>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al=
 mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamen=
te dirigida a su destinatario y se encuentra protegido por Ley. Cualquier pe=
rsona distinta de su destinataria tiene prohibida su reproducci=C3=B3n, uso,=
 divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha recibido es=
te correo electr=C3=B3nico por error, se ruega lo notifique de inmediato al r=
emitente borrando el mensaje original juntamente con sus ficheros anexos. Gr=
acias.
>>>>>=20
>>>>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garanti=
za la adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento c=
onfidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo le inform=
amos de la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad=
 de NAYAR SYSTEMS SL, con la finalidad de poder atender los compromisos deri=
vados de la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejerc=
er sus derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=
=B3n mediante un escrito a la siguiente direcci=C3=B3n: info@nayarsystems.co=
m
>>>>>=20
>>>>> LEGAL NOTE
>>>>> This email and any attachments to it contains is confidential informat=
ion exclusively intended for the recipients. Any divulgation, copy or distri=
bution to third parties is prohibited without written permission of NAYAR SY=
STEMS SL. If you have received this e-mail in error, please notify the sende=
r immediately. In accordance with Law 15/1999 of 13 December on the Protecti=
on of Personal Data, the NAYAR SYSTEMS SL guarantees that it has adopted the=
 necessary measures to ensure the confidential treatment of personal informa=
tion. We also inform you that you can exercise your access, rectification, c=
ancellation and opposition rights by send us a mail to: info@nayarsystems.co=
m
>>>>>=20
>>>>>=20
>>>>> --=20
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>=20
>>>>=20
>>>=20
>>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-CF150E91-44A2-4E2E-9155-B9B33DA55C67
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">In my current project they have defined bbc=
lass files to allow variants of recipes.<div>The recipe would then contain &=
nbsp;do_install_append_XYZ=E2=80=99s for each class.</div><div><br></div><di=
v><div>BBCLASSEXTEND =3D =E2=80=9Dproduction rnd retail=E2=80=9D</div><div><=
br>would ensure you would get nginx-production, nginx-rnd, nginx-retail ipks=
.</div><div><br></div><div>This way you have one recipe generating three var=
iants in the same build.</div><div><br></div><div>Don=E2=80=99t have the sou=
rce in front of me &nbsp;so I can=E2=80=99t share the bbclass (right now at l=
east)</div><div><br><div id=3D"AppleMailSignature">Best Regards,<div>Ulf Sam=
uelsson</div><div>+46 722 427 437</div></div><div><br>1 juni 2018 kl. 12:40 s=
krev Alan Martinovic &lt;<a href=3D"mailto:alan.martinovic@senic.com">alan.m=
artinovic@senic.com</a>&gt;:<br><br></div><blockquote type=3D"cite"><div><di=
v dir=3D"ltr">Yes, much better phrasing:<div><br></div><div>&gt;&nbsp;<span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:nowrap;word-spacing:0px;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">A <span style=3D"color:rgb(34,34,34);font-family:arial,sans-s=
erif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">single bitbake invocation</span> alwa=
ys builds a single distro&nbsp;<span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">for a specific target m=
achine</span></span></div><div><span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:nowrap;word-spac=
ing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline"><br></span></div><div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.=
8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal=
;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:nowrap;word-spacing:0px;background-color:rgb(255=
,255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">Thanks&nbsp;</span></div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 12:18 PM, Alexander=
 Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>If a build is 'a single bitbake invoc=
ation', then yes - it builds for a single distro and for a specific target m=
achine, but it can build multiple recipes (which includes multiple images, a=
s images are defined with recipes).</div><div><br></div><div>Alex<br></div><=
br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra">=
<br><div class=3D"gmail_quote">2018-06-01 13:07 GMT+03:00 Alan Martinovic <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_=
blank">alan.martinovic@senic.com</a>&gt;</span>:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;letter-spacing:normal;text-align:left;text-indent:0=
px;text-transform:none;white-space:nowrap;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">Hey Alexander,</span><br><div><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;letter-spacing:n=
ormal;text-align:left;text-indent:0px;text-transform:none;white-space:nowrap=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">you seem to h=
ave a good understanding on the concepts.</span></div><div><span style=3D"fo=
nt-size:12.8px;white-space:nowrap">Would you say that:</span></div><div><br>=
</div><div><span style=3D"font-size:12.8px;white-space:nowrap">&gt; A build a=
lways builds a single distro</span></div><div><span style=3D"font-size:12.8p=
x;white-space:nowrap"><br></span></div><div><span style=3D"font-size:12.8px;=
white-space:nowrap">is somewhat of a rule?</span></div><div><span style=3D"f=
ont-size:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"fon=
t-size:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"font-=
size:12.8px;white-space:nowrap"><br></span></div></div><div class=3D"m_-8649=
852102808283125HOEnZb"><div class=3D"m_-8649852102808283125h5"><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 11:24 AM=
, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alex.kanavin@gma=
il.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I have to say defining mul=
tiple distros and then tweaking recipes according to those definitions is no=
t a good practice, as recipes should generally only access DISTRO_FEATURES a=
nd otherwise be distro-agnostic. The above iptables scenario should be handl=
ed with different image recipes, which pull in (via packages) or create diff=
erent configurations.</div><div><br></div><div>Alex<br></div></div><div clas=
s=3D"m_-8649852102808283125m_7472730988948613251HOEnZb"><div class=3D"m_-864=
9852102808283125m_7472730988948613251h5"><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">2018-06-01 12:04 GMT+03:00 Iv=C3=A1n Castell <span di=
r=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_blank"=
>icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr">I can provide more details. My custom layer has these files=
 related with distro:<div><br></div><div>&nbsp; &nbsp; my_layer/conf/distro/=
include/c<wbr>ommon.conf</div><div><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline">&nbsp; &nbsp; my_lay=
er/conf/distro/develop.c<wbr>onf</span><br></div><div><span style=3D"color:r=
gb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial;float:none;display:inline"><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sma=
ll;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">&nbsp; &nbsp; my_layer/conf/distro/productio<wbr>n.conf<=
/span><br></span></div><div><span style=3D"color:rgb(34,34,34);font-family:a=
rial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:=
0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><span style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline"><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline">&nbsp; &nbsp; my_layer/conf/distro/integrati<wbr>on.conf</span=
><br></span></span></div><div><span style=3D"color:rgb(34,34,34);font-family=
:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-d=
ecoration-color:initial;float:none;display:inline"><span style=3D"color:rgb(=
34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline"><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline"><br></span></span></span></div><div><span style=3D"color:rg=
b(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decorati=
on-style:initial;text-decoration-color:initial;float:none;display:inline"><s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backg=
round-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial;float:none;display:inline">As an example o=
f the previous files, my_layer/conf/distro/include/d<wbr>evelop.conf has thi=
s content:</span></span></span></span></div><div><span style=3D"color:rgb(34=
,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline"><span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial;float:none;display:inline"><br></span></span></span></div><div><span=
 style=3D"text-align:start;text-indent:0px;background-color:rgb(255,255,255)=
;text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline"><span style=3D"text-align:start;text-indent:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline"><span style=3D"text-align:start;text-indent:0px=
;background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline"><div>&nbsp; &nbsp; require con=
f/distro/include/common.con<wbr>f</div><div>&nbsp; &nbsp; DISTRO =3D "my-dis=
tro-development"</div><div>&nbsp; &nbsp; DISTRO_NAME =3D "OS Development"</d=
iv><div>&nbsp; &nbsp; DISTRO_STAGE =3D "development"</div><div>&nbsp; &nbsp;=
 # And here more customizations as setting root password, PRSERV_HOST, or PA=
CKAGE_FEED_URIS<br></div><div><br></div><div>In common.conf I define all fea=
tures common to all my distros (PACKAGE_CLASSES and so on)</div><div><br></d=
iv><div>I have custom iptables rules, then I have different files for that r=
ules:</div><div><br></div><div>&nbsp; &nbsp; my/layer/recipes-extended/ipta<=
wbr>bles/files/iptables.rules.deve<wbr>lopment<br></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:in=
line">&nbsp; &nbsp; my/layer/</span>recipes-extended/ipta<wbr>bles/files/ipt=
ables.rules.prod<wbr>uction<br></div><div><span style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">&nbsp; &nbsp;=
 my/layer/</span>recipes-extended/ipta<wbr>bles/files/iptables.rules.inte<wb=
r>gration<br></div><div><br></div><div>I use a bbappend recipe for iptables,=
 modifiying&nbsp;do_install_append&nbsp;t<wbr>ask like this:</div><div><br><=
/div><div>&nbsp; &nbsp; install -m 0600 ${WORKDIR}/iptables.rules.${DI<wbr>S=
TRO_STAGE} ${D}/etc/iptables/iptables.rul<wbr>es<br></div><div><br></div><di=
v>I use a single image recipe to define all packages installed in my final i=
mage (all of them have the same set if packages, but with different customiz=
ations)</div><div><br></div><div>Finally, I wrote a setup-build-env.sh scrip=
t in my custom layer to configure the build easily. That script creates <spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">build-${DISTRO_STAGE}/conf/</span>bbl<wbr>ayers.conf and <s=
pan style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:smal=
l;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">build-${DISTRO_STAGE}/conf/</span>loc<wbr>al.conf files w=
ith the proper setup, setting&nbsp;MACHINE, DISTRO and DL_DIR (shared by all=
 distros) properly.</div><div><br></div><div>Hope this helps!</div><div><br>=
</div></span></span></span></div><div><span style=3D"color:rgb(34,34,34);fon=
t-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initia=
l;text-decoration-color:initial;float:none;display:inline"><span style=3D"co=
lor:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
hite-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-de=
coration-style:initial;text-decoration-color:initial;float:none;display:inli=
ne"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline"><br></span></span></span></div><div><span style=3D"=
color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:40=
0;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial;float:none;display:in=
line"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline"><br></span></span></span></d=
iv><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font=
-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-family:=
arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial;float:none;display:inline"><span style=3D"color:rgb(3=
4,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial;float:none;display:inline"><br><=
/span></span></span></div></div><div class=3D"m_-8649852102808283125m_747273=
0988948613251m_5361474152393307049HOEnZb"><div class=3D"m_-86498521028082831=
25m_7472730988948613251m_5361474152393307049h5"><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">2018-06-01 10:21 GMT+02:00 Alan Martinovic <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_b=
lank">alan.martinovic@senic.com</a>&gt;</span>:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr">Hey,<div>would really like to see your example.</div><=
div>Am struggling to get creation of these types of images for a while now.<=
/div><div><br></div><div>So far have avoided diving into multiple distros be=
cause would like to have the option</div><div>of building all the images at t=
he same time (so they are basically the same distro).</div></div><div class=3D=
"m_-8649852102808283125m_7472730988948613251m_5361474152393307049m_709692731=
6469470777HOEnZb"><div class=3D"m_-8649852102808283125m_7472730988948613251m=
_5361474152393307049m_7096927316469470777h5"><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D=
"_blank">icastell@nayarsystems.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-famil=
y:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">I fixed this issue defin=
ing different distro.conf files in my custom layer, adding a custom variable=
 DISTRO_STAGE with the name of my distro (production, rnd, retail, and so on=
), Then you setup DISTRO in your local.conf to the proper value you want to u=
se. Finally you can use that DISTRO_STAGE variable in your custom .bb or .bb=
append recipes to decide the proper configuration files you want to install i=
n your final image. That works as expected. Hope this helps!</span><div styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;text=
-decoration-color:initial"><br></div><br class=3D"m_-8649852102808283125m_74=
72730988948613251m_5361474152393307049m_7096927316469470777m_350638869891328=
6638m_-2730124559098635887gmail-Apple-interchange-newline"><br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_-864=
9852102808283125m_7472730988948613251m_5361474152393307049m_7096927316469470=
777m_3506388698913286638h5">2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">lef=
evre.da@gmail.com</a>&gt;</span>:<br></div></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div><div class=3D"m_-8649852102808283125m_7472730988948613251m_536147415=
2393307049m_7096927316469470777m_3506388698913286638h5"><div dir=3D"ltr">Hi,=
<div><br></div><div>For the same MACHINE I create the following images:</div=
><div>- myimage-production</div><div>- myimage-rnd</div><div>- myimage-retai=
l</div><div><br></div><div>The production one has production assisted tools f=
or flashing peripheral HW, testing vital HW components, writing some serial n=
umbers, etc.</div><div><br></div><div>The rnd one has more packages than the=
 retail one just to help rnd work and debugging in device, but none of the r=
nd image extra packages.&nbsp;</div><div><br></div><div>The retail one has t=
he final product image.</div><div><br></div><div>I'm using web and FTP serve=
rs. I would like for the rnd version of the image to have a different nginx c=
onfiguration to set the root directory to a development folder,&nbsp;<span s=
tyle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline">or set an alias.</span></div><div><br></div><div>Furthermore, I=
'll have different variant of the device where only the device SW changes bu=
t the platform is identical. So I'll end up with&nbsp;<br></div><div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;text-decoration-style:initial;te=
xt-decoration-color:initial">- myimage2-production</div><div style=3D"color:=
rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;text-decoration-style:initial;text-decoration=
-color:initial">- myimage2-rnd</div><div style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;text-decoration-style:initial;text-decoration-color:initial">- my=
image2-retail</div><div><br></div><div>I know how to make MACHINE based conf=
iguration. How could I do this in my&nbsp;nginx.bbappend based on image name=
?<br></div></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,s=
ans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline"><br></span></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">Thanks,</span></div><div><span style=3D"color:rgb(34,34,34);font-f=
amily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatu=
res:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline">-Damien</span></div>=
</div>
<br></div></div><span class=3D"m_-8649852102808283125m_7472730988948613251m_=
5361474152393307049m_7096927316469470777m_3506388698913286638HOEnZb"><font c=
olor=3D"#888888">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br=
>
<br></font></span></blockquote></div><span class=3D"m_-8649852102808283125m_=
7472730988948613251m_5361474152393307049m_7096927316469470777m_3506388698913=
286638HOEnZb"><font color=3D"#888888"><br><br clear=3D"all"><div><br></div>-=
- <br><div class=3D"m_-8649852102808283125m_7472730988948613251m_53614741523=
93307049m_7096927316469470777m_3506388698913286638m_-2730124559098635887gmai=
l_signature" data-smartmail=3D"gmail_signature"><br><img src=3D"http://www.n=
ayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></b></font=
><br><div><span><font size=3D"1"><span style=3D"color:rgb(153,153,153)"><br>=
<u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3nico y, en su caso, cual=
quier fichero anexo al mismo, contiene informaci=C3=B3n de car=C3=A1cter con=
fidencial exclusivamente dirigida a su destinatario y se encuentra protegido=
 por Ley. Cualquier persona distinta de su destinataria tiene prohibida su r=
eproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=B3n total o parc=
ial. Si ha recibido este correo electr=C3=B3nico por error, se ruega lo noti=
fique de inmediato al remitente borrando el mensaje original juntamente con s=
us ficheros anexos. Gracias.<br><br>De conformidad con lo establecido en la L=
OPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de las medidas necesarias p=
ara asegurar el tratamiento confidencial de los datos de car=C3=A1cter perso=
nal. As=C3=AD mismo le informamos de la inclusi=C3=B3n de sus datos en un fi=
chero bajo la responsabilidad de NAYAR SYSTEMS SL, con la finalidad de poder=
 atender los compromisos derivados de la relaci=C3=B3n que mantenemos con us=
ted. Si lo desea, puede ejercer sus derechos de acceso, rectificaci=C3=B3n, c=
ancelaci=C3=B3n y oposici=C3=B3n mediante un escrito a la siguiente direcci=C3=
=B3n:&nbsp;<a style=3D"color:rgb(17,85,204)" href=3D"mailto:info@nayarsystem=
s.com" target=3D"_blank">info@nayarsystems.c<wbr>om</a></span><br><br></font=
></span></div><div><span style=3D"color:rgb(153,153,153);font-family:arial,h=
elvetica,sans-serif;font-size:x-small"><u><b>LEGAL NOTE</b></u></span></div>=
<div><span style=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-=
serif;font-size:x-small">This email and any attachments to it contains is co=
nfidential information exclusively intended for the recipients. Any divulgat=
ion, copy or distribution to third parties is prohibited without written per=
mission of NAYAR SYSTEMS SL. If you have received this e-mail in error, plea=
se notify the sender immediately. In accordance with Law 15/1999 of 13 Decem=
ber on the Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that=
 it has adopted the necessary measures to ensure the confidential treatment o=
f personal information. We also inform you that you can exercise your access=
, rectification, cancellation and opposition rights by send us a mail to:&nb=
sp;<a href=3D"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsyst=
ems.com</a></span></div><br></div>
</font></span></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br=
>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><=
div class=3D"m_-8649852102808283125m_7472730988948613251m_536147415239330704=
9m_7096927316469470777gmail_signature" data-smartmail=3D"gmail_signature"><b=
r><img src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><fon=
t size=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=3D"co=
lor:rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3=
nico y, en su caso, cualquier fichero anexo al mismo, contiene informaci=C3=B3=
n de car=C3=A1cter confidencial exclusivamente dirigida a su destinatario y s=
e encuentra protegido por Ley. Cualquier persona distinta de su destinataria=
 tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=B3n, copia o impres=
i=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3nico por er=
ror, se ruega lo notifique de inmediato al remitente borrando el mensaje ori=
ginal juntamente con sus ficheros anexos. Gracias.<br><br>De conformidad con=
 lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza la adopci=C3=B3n de l=
as medidas necesarias para asegurar el tratamiento confidencial de los datos=
 de car=C3=A1cter personal. As=C3=AD mismo le informamos de la inclusi=C3=B3=
n de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL, co=
n la finalidad de poder atender los compromisos derivados de la relaci=C3=B3=
n que mantenemos con usted. Si lo desea, puede ejercer sus derechos de acces=
o, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escrito=
 a la siguiente direcci=C3=B3n:&nbsp;<a style=3D"color:rgb(17,85,204)" href=3D=
"mailto:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.c<wbr>om<=
/a></span><br><br></font></span></div><div><span style=3D"color:rgb(153,153,=
153);font-family:arial,helvetica,sans-serif;font-size:x-small"><u><b>LEGAL N=
OTE</b></u></span></div><div><span style=3D"color:rgb(153,153,153);font-fami=
ly:arial,helvetica,sans-serif;font-size:x-small">This email and any attachme=
nts to it contains is confidential information exclusively intended for the r=
ecipients. Any divulgation, copy or distribution to third parties is prohibi=
ted without written permission of NAYAR SYSTEMS SL. If you have received thi=
s e-mail in error, please notify the sender immediately. In accordance with L=
aw 15/1999 of 13 December on the Protection of Personal Data, the NAYAR SYST=
EMS SL guarantees that it has adopted the necessary measures to ensure the c=
onfidential treatment of personal information. We also inform you that you c=
an exercise your access, rectification, cancellation and opposition rights b=
y send us a mail to:&nbsp;<a href=3D"mailto:info@nayarsystems.com" target=3D=
"_blank">info@nayarsystems.com</a></span></div><br></div>
</div>
</div></div><br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br=
>
<br></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></blockquote><blockquote type=3D"cite"><div><span>-- </span><br><span>=
_______________________________________________</span><br><span>yocto mailin=
g list</span><br><span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a></span><br><span><a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></=
div></blockquote></div></div></body></html>=

--Apple-Mail-CF150E91-44A2-4E2E-9155-B9B33DA55C67--
