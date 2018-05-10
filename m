Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BFC8E009F4; Thu, 10 May 2018 07:21:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8E62E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 07:21:57 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id g14-v6so3208535ioc.7
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 07:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GQ25zdEsl8mGsTa2jPWxdWCAjsfbn2YBwX2FeL4B/z0=;
	b=fKGqgEkpThM0oRxK/xuSe4MpGzULdHcIBore2uQ5FxsV/lyiKSMSRA4uX0Pmd4bDJT
	ssLFE7a5kGyFIEhDNmQzMoFsamvRs/yhoMCQwIBi/ELlzOd4WCnwIs2E/3w9ujqywu9B
	dDEKJwnwUrkZ5N8f8Q3En8dfQiR4ibVFt81Fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GQ25zdEsl8mGsTa2jPWxdWCAjsfbn2YBwX2FeL4B/z0=;
	b=j4ajt5dosTyt6NUyQxfs03Z28QtrrilD8lkR3m0V4dzFgZ3XpppmfepQuouocz7rJJ
	tHKgmvxXay37aBJ5vtdlFK/WXvOJlXkVTH61pX3wFqeE2eP6nqeIO9u/s1QrdiqCQBDt
	xwid38nppAIOtkQ3WF8x6bZyZ+FJNS4eT4vFjKzjRNXArg+1FNVWR5tSzoE53DpnqLkm
	/zKQxPPHMaI+Ag5vWU+xecPh/kPBijp7BbEZoXXP95ck09ahimE5lUlREPrQ0573pVOd
	H+MlzcRsp8z6UFVwQrjiQ63kSU0uJ5NNqAPNhGtCLwc2MiqmqbxGDYksWQ1r16vHGqs7
	94ww==
X-Gm-Message-State: ALKqPwdVKdztSPICuaHA4RKrovVuBcUy6+njeUVzePqLIhSs41y7VxYq
	Nv5cR4/Gq60H80B9iccO0Qv1C+xj5QIuwb3uL4TixQ==
X-Google-Smtp-Source: AB8JxZr3eAH3/BHFYWrWV3xSR6b0Bl+l+bGuyOFBLyR4hOY/zQPTHrfA0kL3cK9XXU3cwi3gy9RCWS2MMf2XXAvajtQ=
X-Received: by 2002:a6b:591:: with SMTP id
	139-v6mr1540904iof.282.1525962117182; 
	Thu, 10 May 2018 07:21:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP; Thu, 10 May 2018 07:21:56
	-0700 (PDT)
In-Reply-To: <CAALXFYy+xqUiiEp00fyUnbe9JnCp=pg4b4UQ32LFvcuMXv1b3Q@mail.gmail.com>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
	<da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
	<CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
	<f6a9d6bb-1b5f-d3b7-a6a9-03500b03fb3a@linux.intel.com>
	<CAALXFYxoKv8j+eB10t1sHBumgNCRxLmkejN_-trryR98sheHKA@mail.gmail.com>
	<CAALXFYy+xqUiiEp00fyUnbe9JnCp=pg4b4UQ32LFvcuMXv1b3Q@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 10 May 2018 16:21:56 +0200
Message-ID: <CAALXFYxSeEAO3-7iAFCngkc3QheUfQ=ZWFFUf_dd+LdO_7G9QQ@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Native curl and SSL CA certificates
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
X-List-Received-Date: Thu, 10 May 2018 14:21:59 -0000
Content-Type: multipart/alternative; boundary="000000000000efbff0056bdabdd4"

--000000000000efbff0056bdabdd4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok that's already fixed. I could manage it executing this in host machine
after building the image:

    $ bitbake package-index


2018-05-10 16:01 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> Once the image was build and cloned into the target device, this error
> appears when trying to update dnf database from target device:
>
>     $ dnf clean all
>     $ dnf update
>     DNF version: 2.7.5
>     cachedir: /var/cache/dnf
>     repo oe-remote-repo: 0x6235C65BD7C1F0D8 already imported
>     Cannot download 'https://storage.googleapis.com/my_repo': GPG
> verification is enabled, but GPG signature repomd.xml.asc is not availabl=
e:
> Status code: 403 for https://storage.googleapis.com/my_repo/repodata/
>     Failed to synchronize cache for repo 'oe-remote-repo', disabling.
>
> The "repodata" directory does not appear inside the package feed
> directory. I managed to generate that "repodata" directory executing this
> commands in my host machine:
>
>     $ bitbake createrepo-c-native -caddto_recipe_sysroot
>     $ oe-run-native createrepo-c-native createrepo_c
> /home/yocto/yocto/build/tmp/deploy/rpm
>
> After that, "repodata" directory appears in the package feed and
> "repomd.xml" file is inside available, but "repomd.xml.asc" is still not
> found.
>
> Do I am missing something?
>
> Thank you in advance!
>
>
> 2018-05-09 13:44 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:
>
>> Thank you very much for your explanation Mr. Alexander, it was really
>> helpfull to understand my issue.
>>
>> I fixed it removing completely my dnf bbappend recipe from my custom
>> layer and adding this variable to my distro.conf file:
>>
>>     PACKAGE_FEED_URIS =3D "https://storage.googleapis.com/my_repo/"
>>
>> After that, at the end of the build process the image contains a valid
>> /etc/yum.d/oe-remote-repo file and all the necesary stuff to manage it.
>> There is no need to copy "ca-certificates.crt" manually at all.
>>
>> Now its working as expected! :-)
>>
>>
>> 2018-05-09 8:56 GMT+02:00 Alexander Kanavin <
>> alexander.kanavin@linux.intel.com>:
>>
>>> On 05/09/2018 09:29 AM, Iv=C3=A1n Castell wrote:
>>>
>>>> But I am not fetching nor installing packages over the network during
>>>> image creation. I just build an image using local recipes (standard
>>>> procedure). One of those local recipes sets up a remote repository for=
 rpm
>>>> packages (adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final
>>>> image). The purpose of that remote repository is using it to update rp=
m
>>>> packages on target devices when they are running in production.
>>>>
>>>> In fact, I don't understand why yocto needs to synchronize that cache
>>>> for 'yocto-adv-rpm' repo during build time. It doesn't have any sense =
for
>>>> me. But the fact is that when the ca-certificates.crt is properly
>>>> installed, the build process ends fine. If that file is not properly
>>>> installed, the build process fails with the error reported in my previ=
ous
>>>> message.
>>>>
>>>
>>> During image creation dnf is run several times, and it picks up its own
>>> configuration from the target rootfs. It is definitely not recommended =
to
>>> change that configuration behind dnf's back via installed recipes.
>>>
>>> The supported way to configure remote repositories is via
>>> PACKAGE_FEED_URIS:
>>> https://www.yoctoproject.org/docs/latest/dev-manual/dev-manu
>>> al.html#using-runtime-package-management
>>>
>>> Alex
>>>
>>
>>
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

--000000000000efbff0056bdabdd4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Ok that&#39;s already fixed. I could manage it e=
xecuting this in host machine after building the image:</div><div><br></div=
><div>=C2=A0 =C2=A0 $ bitbake package-index</div></div><div><br></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-05-10 16:01=
 GMT+02:00 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"mailto:icaste=
ll@nayarsystems.com" target=3D"_blank">icastell@nayarsystems.com</a>&gt;</s=
pan>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Once the imag=
e was build and cloned into the target device, this error appears when tryi=
ng to update dnf database from target device:</div><div><br></div><div>=C2=
=A0 =C2=A0 $ dnf clean all</div><div>=C2=A0 =C2=A0 $ dnf update</div><div>=
=C2=A0 =C2=A0 DNF version: 2.7.5</div><div>=C2=A0 =C2=A0 cachedir: /var/cac=
he/dnf</div><div>=C2=A0 =C2=A0 repo oe-remote-repo: 0x6235C65BD7C1F0D8 alre=
ady imported</div><div>=C2=A0 =C2=A0 Cannot download &#39;<a href=3D"https:=
//storage.googleapis.com/my_repo" target=3D"_blank">https://storage.googlea=
pis.<wbr>com/my_repo</a>&#39;: GPG verification is enabled, but GPG signatu=
re repomd.xml.asc is not available: Status code: 403 for <a href=3D"https:/=
/storage.googleapis.com/my_repo/repodata/" target=3D"_blank">https://storag=
e.googleapis.<wbr>com/my_repo/repodata/</a></div><div>=C2=A0 =C2=A0 Failed =
to synchronize cache for repo &#39;oe-remote-repo&#39;, disabling.</div><di=
v><br></div><div>The &quot;repodata&quot; directory does not appear inside =
the package feed directory. I managed to generate that &quot;repodata&quot;=
 directory executing this commands in my host machine:</div><div><br></div>=
<div>=C2=A0 =C2=A0 $ bitbake createrepo-c-native -caddto_recipe_sysroot</di=
v><div>=C2=A0 =C2=A0 $ oe-run-native createrepo-c-native createrepo_c /home=
/yocto/yocto/build/tmp/<wbr>deploy/rpm</div><div><br></div><div>After that,=
 &quot;repodata&quot; directory appears in the package feed and &quot;repom=
d.xml&quot; file is inside available, but &quot;repomd.xml.asc&quot; is sti=
ll not found.</div><div><br></div><div>Do I am missing something?</div><div=
><br></div><div>Thank you in advance!</div><div><br></div></div><div class=
=3D"gmail_extra"><div><div class=3D"h5"><br><div class=3D"gmail_quote">2018=
-05-09 13:44 GMT+02:00 Iv=C3=A1n Castell <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:icastell@nayarsystems.com" target=3D"_blank">icastell@nayarsystems.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">Thank you very much for your explanation Mr. Alexa=
nder, it was really helpfull to understand my issue.=C2=A0</span><br></div>=
<div><br></div><div>I fixed it removing completely my dnf bbappend recipe f=
rom my custom layer and adding <span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial;float:none;display:inline">this variable=C2=
=A0</span>to my distro.conf file:<br></div><div><div><br></div><div>=C2=A0 =
=C2=A0 PACKAGE_FEED_URIS =3D &quot;<a href=3D"https://storage.googleapis.co=
m/my_repo/" style=3D"color:rgb(17,85,204);font-family:arial,sans-serif;font=
-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;background-c=
olor:rgb(255,255,255)" target=3D"_blank">https://storage.googleapis.co<wbr>=
m/my_repo/</a>&quot;</div><div><br></div><div>After that, at the end of the=
 build process the image contains a valid /etc/yum.d/oe-remote-repo file an=
d all the necesary stuff to manage it. There is no need to copy=C2=A0<span =
style=3D"font-size:12.8px">&quot;ca-certificates.crt&quot; manually at all.=
</span></div><div><br></div></div><div><span style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">Now its wo=
rking as expected! :-)</span><br></div><div><div class=3D"m_133454428335781=
7868h5"><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline"><br></span></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">2018-05-09 8:56 GMT+02:00 Alexander =
Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.int=
el.com" target=3D"_blank">alexander.kanavin@linux.intel<wbr>.com</a>&gt;</s=
pan>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><span>On 05/09/2018 09:29 AM, Iv=C3=
=A1n Castell wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
But I am not fetching nor installing packages over the network during image=
 creation. I just build an image using local recipes (standard procedure). =
One of those local recipes sets up a remote repository for rpm packages (ad=
ding /etc/yum.repos.d/yocto-adv-rpm<wbr>.repo to the final image). The purp=
ose of that remote repository is using it to update rpm packages on target =
devices when they are running in production.<br>
<br>
In fact, I don&#39;t understand why yocto needs to synchronize that cache f=
or &#39;yocto-adv-rpm&#39; repo during build time. It doesn&#39;t have any =
sense for me. But the fact is that when the ca-certificates.crt is properly=
 installed, the build process ends fine. If that file is not properly insta=
lled, the build process fails with the error reported in my previous messag=
e.<br>
</blockquote>
<br></span>
During image creation dnf is run several times, and it picks up its own con=
figuration from the target rootfs. It is definitely not recommended to chan=
ge that configuration behind dnf&#39;s back via installed recipes.<br>
<br>
The supported way to configure remote repositories is via PACKAGE_FEED_URIS=
:<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.h=
tml#using-runtime-package-management" rel=3D"noreferrer" target=3D"_blank">=
https://www.yoctoproject.org/d<wbr>ocs/latest/dev-manual/dev-manu<wbr>al.ht=
ml#using-runtime-package-<wbr>management</a><br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div></div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><span c=
lass=3D"">-- <br><div class=3D"m_1334544283357817868gmail_signature" data-s=
martmail=3D"gmail_signature"><br><img src=3D"http://www.nayarsystems.com/do=
cs/FIRMAS/icastell.jpg"><br><font size=3D"2"><b></b></font><br><div><span><=
font size=3D"1"><span style=3D"color:rgb(153,153,153)"><br><u><b>NOTA LEGAL=
</b></u><br>Este correo electr=C3=B3nico y, en su caso, cualquier fichero a=
nexo al mismo, contiene informaci=C3=B3n de car=C3=A1cter confidencial excl=
usivamente dirigida a su destinatario y se encuentra protegido por Ley. Cua=
lquier persona distinta de su destinataria tiene prohibida su reproducci=C3=
=B3n, uso, divulgaci=C3=B3n, copia o impresi=C3=B3n total o parcial. Si ha =
recibido este correo electr=C3=B3nico por error, se ruega lo notifique de i=
nmediato al remitente borrando el mensaje original juntamente con sus fiche=
ros anexos. Gracias.<br><br>De conformidad con lo establecido en la LOPD, N=
AYAR SYSTEMS SL garantiza la adopci=C3=B3n de las medidas necesarias para a=
segurar el tratamiento confidencial de los datos de car=C3=A1cter personal.=
 As=C3=AD mismo le informamos de la inclusi=C3=B3n de sus datos en un fiche=
ro bajo la responsabilidad de NAYAR SYSTEMS SL, con la finalidad de poder a=
tender los compromisos derivados de la relaci=C3=B3n que mantenemos con ust=
ed. Si lo desea, puede ejercer sus derechos de acceso, rectificaci=C3=B3n, =
cancelaci=C3=B3n y oposici=C3=B3n mediante un escrito a la siguiente direcc=
i=C3=B3n:=C2=A0<a style=3D"color:rgb(17,85,204)" href=3D"mailto:info@nayars=
ystems.com" target=3D"_blank">info@nayarsystems.<wbr>com</a></span><br><br>=
</font></span></div><div><span style=3D"color:rgb(153,153,153);font-family:=
arial,helvetica,sans-serif;font-size:x-small"><u><b>LEGAL NOTE</b></u></spa=
n></div><div><span style=3D"color:rgb(153,153,153);font-family:arial,helvet=
ica,sans-serif;font-size:x-small">This email and any attachments to it cont=
ains is confidential information exclusively intended for the recipients. A=
ny divulgation, copy or distribution to third parties is prohibited without=
 written permission of NAYAR SYSTEMS SL. If you have received this e-mail i=
n error, please notify the sender immediately. In accordance with Law 15/19=
99 of 13 December on the Protection of Personal Data, the NAYAR SYSTEMS SL =
guarantees that it has adopted the necessary measures to ensure the confide=
ntial treatment of personal information. We also inform you that you can ex=
ercise your access, rectification, cancellation and opposition rights by se=
nd us a mail to:=C2=A0<a href=3D"mailto:info@nayarsystems.com" target=3D"_b=
lank">info@nayarsystems.com</a></span></div><br></div>
</span></div>
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

--000000000000efbff0056bdabdd4--
