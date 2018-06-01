Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EA60E00C4B; Fri,  1 Jun 2018 02:15:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7345E00843
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 02:15:30 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id e15-v6so20555072iog.1
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 02:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CrR/unbzhHwIqrfyoGQm7OXXD7np6uxXQrI+wpmUSfo=;
	b=IZtXVKFBD9uzZaVktDBqi+Ps0qyL/8n/Zv60WdtIpOJ9X3sx4UZjS4gtIyJ7wzDSM/
	FFEpXNiRiqdFdZOL0SVESJZ3JSPUwEOM5OCbgJW5O19NeXOhFPVl1j5cZEUUudeHoNbL
	ASYZbleqHjB0XxLBREf8JWVLbsVLnokXDoNuY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CrR/unbzhHwIqrfyoGQm7OXXD7np6uxXQrI+wpmUSfo=;
	b=rwgMJlRYNTBN0TAfjx7MGS38z6920uNVq5BYDLzMcWk09v3PtDFwy4IyVypfjjm5xh
	Btn3bmB8VxkywKIbJ3cHEkbrPYeIiiyoc+1kfCfkUTRaaqOfSgINXgSq+OHHGxDtWO95
	SSe4MfL4xZGreHiELXlsJaSiP3u4Scx82bksxyjPuzqneq5NS2MP8o35XR5hpEaAo2l3
	u8n+mfEuJC3FeicYmIXkZm5OE5/niizG8jG4Vfvgtf2WwuUWNDc7cNhFbdWBdcDhW5+d
	MFTS3A+dryhwP4IZvJVH2BCzstI+kX6poiLNtYGQtdoKTimN6ZycL+irirkNitRBJjhD
	gX3g==
X-Gm-Message-State: APt69E1Nz5kI9JTiQ9iWAjCpPavHIPEjnn8C4SEQQ2MQnysr0XyKBUeg
	9OVUmkbloqVVPV3BMwRzNwLfKNnXd0/hBOy+OQBOAg==
X-Google-Smtp-Source: ADUXVKK8LI2zbYEQIQAOLewkf1HaC3/ydN48LTHbtkWzKDGeJTAYRqwLgXHhFKm/FbyciNcJ6d9+gXUNFmVfmq5rRCE=
X-Received: by 2002:a6b:1fc2:: with SMTP id
	f185-v6mr10246401iof.74.1527844529907; 
	Fri, 01 Jun 2018 02:15:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 02:15:29 -0700 (PDT)
In-Reply-To: <CAOT_U5ZDJ0ES90dHanbDJ6hc=LP7P+dGGAi==zgeM9z=e=qC2g@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
	<CAOT_U5ZDJ0ES90dHanbDJ6hc=LP7P+dGGAi==zgeM9z=e=qC2g@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Fri, 1 Jun 2018 11:15:29 +0200
Message-ID: <CAALXFYxr8u6ckz6sn0jtr4bzLtpo1k6+iekkmHCjNeeP5KCyvw@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 09:15:32 -0000
Content-Type: multipart/alternative; boundary="0000000000007a41fe056d910632"

--0000000000007a41fe056d910632
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You are right, my setup is not able to generate two different images at the
same time. To do that, I setup two different builds sharing the download
directory between them.

2018-06-01 11:11 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:

> Thanks for the replay Iv=C3=A1n,
> am I reading correctly that this means that you create a single image
> file per build
> (which can be any of the given types)?
> You're setup doesn't allow for building the "developent" and
> "production" image at the same time?
>
> Be Well,
> Alan
>
>
>
> On Fri, Jun 1, 2018 at 11:04 AM, Iv=C3=A1n Castell <icastell@nayarsystems=
.com>
> wrote:
> > I can provide more details. My custom layer has these files related wit=
h
> > distro:
> >
> >     my_layer/conf/distro/include/common.conf
> >     my_layer/conf/distro/develop.conf
> >     my_layer/conf/distro/production.conf
> >     my_layer/conf/distro/integration.conf
> >
> > As an example of the previous files,
> > my_layer/conf/distro/include/develop.conf has this content:
> >
> >     require conf/distro/include/common.conf
> >     DISTRO =3D "my-distro-development"
> >     DISTRO_NAME =3D "OS Development"
> >     DISTRO_STAGE =3D "development"
> >     # And here more customizations as setting root password,
> PRSERV_HOST, or
> > PACKAGE_FEED_URIS
> >
> > In common.conf I define all features common to all my distros
> > (PACKAGE_CLASSES and so on)
> >
> > I have custom iptables rules, then I have different files for that rule=
s:
> >
> >     my/layer/recipes-extended/iptables/files/iptables.rules.development
> >     my/layer/recipes-extended/iptables/files/iptables.rules.production
> >     my/layer/recipes-extended/iptables/files/iptables.rules.integration
> >
> > I use a bbappend recipe for iptables, modifiying do_install_append task
> like
> > this:
> >
> >     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
> > ${D}/etc/iptables/iptables.rules
> >
> > I use a single image recipe to define all packages installed in my fina=
l
> > image (all of them have the same set if packages, but with different
> > customizations)
> >
> > Finally, I wrote a setup-build-env.sh script in my custom layer to
> configure
> > the build easily. That script creates
> > build-${DISTRO_STAGE}/conf/bblayers.conf and
> > build-${DISTRO_STAGE}/conf/local.conf files with the proper setup,
> setting
> > MACHINE, DISTRO and DL_DIR (shared by all distros) properly.
> >
> > Hope this helps!
> >
> >
> >
> >
> >
> > 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
> >>
> >> Hey,
> >> would really like to see your example.
> >> Am struggling to get creation of these types of images for a while now=
.
> >>
> >> So far have avoided diving into multiple distros because would like to
> >> have the option
> >> of building all the images at the same time (so they are basically the
> >> same distro).
> >>
> >> On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell <icastell@nayarsyste=
ms.com
> >
> >> wrote:
> >>>
> >>> I fixed this issue defining different distro.conf files in my custom
> >>> layer, adding a custom variable DISTRO_STAGE with the name of my dist=
ro
> >>> (production, rnd, retail, and so on), Then you setup DISTRO in your
> >>> local.conf to the proper value you want to use. Finally you can use
> that
> >>> DISTRO_STAGE variable in your custom .bb or .bbappend recipes to
> decide the
> >>> proper configuration files you want to install in your final image.
> That
> >>> works as expected. Hope this helps!
> >>>
> >>>
> >>>
> >>>
> >>> 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE <lefevre.da@gmail.com>:
> >>>>
> >>>> Hi,
> >>>>
> >>>> For the same MACHINE I create the following images:
> >>>> - myimage-production
> >>>> - myimage-rnd
> >>>> - myimage-retail
> >>>>
> >>>> The production one has production assisted tools for flashing
> peripheral
> >>>> HW, testing vital HW components, writing some serial numbers, etc.
> >>>>
> >>>> The rnd one has more packages than the retail one just to help rnd
> work
> >>>> and debugging in device, but none of the rnd image extra packages.
> >>>>
> >>>> The retail one has the final product image.
> >>>>
> >>>> I'm using web and FTP servers. I would like for the rnd version of t=
he
> >>>> image to have a different nginx configuration to set the root
> directory to a
> >>>> development folder, or set an alias.
> >>>>
> >>>> Furthermore, I'll have different variant of the device where only th=
e
> >>>> device SW changes but the platform is identical. So I'll end up with
> >>>> - myimage2-production
> >>>> - myimage2-rnd
> >>>> - myimage2-retail
> >>>>
> >>>> I know how to make MACHINE based configuration. How could I do this =
in
> >>>> my nginx.bbappend based on image name?
> >>>>
> >>>> Thanks,
> >>>> -Damien
> >>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>>>
> >>>
> >>>
> >>>
> >>> --
> >>>
> >>>
> >>>
> >>>
> >>> NOTA LEGAL
> >>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo a=
l
> mismo,
> >>> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivament=
e dirigida
> a su
> >>> destinatario y se encuentra protegido por Ley. Cualquier persona
> distinta de
> >>> su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n,
> copia o
> >>> impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=
=B3nico por
> error,
> >>> se ruega lo notifique de inmediato al remitente borrando el mensaje
> original
> >>> juntamente con sus ficheros anexos. Gracias.
> >>>
> >>> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL
> garantiza
> >>> la adopci=C3=B3n de las medidas necesarias para asegurar el tratamien=
to
> >>> confidencial de los datos de car=C3=A1cter personal. As=C3=AD mismo l=
e
> informamos de
> >>> la inclusi=C3=B3n de sus datos en un fichero bajo la responsabilidad =
de
> NAYAR
> >>> SYSTEMS SL, con la finalidad de poder atender los compromisos
> derivados de
> >>> la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede ejercer=
 sus
> >>> derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=
=B3n mediante un
> >>> escrito a la siguiente direcci=C3=B3n: info@nayarsystems.com
> >>>
> >>> LEGAL NOTE
> >>> This email and any attachments to it contains is confidential
> information
> >>> exclusively intended for the recipients. Any divulgation, copy or
> >>> distribution to third parties is prohibited without written permissio=
n
> of
> >>> NAYAR SYSTEMS SL. If you have received this e-mail in error, please
> notify
> >>> the sender immediately. In accordance with Law 15/1999 of 13 December
> on the
> >>> Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it
> has
> >>> adopted the necessary measures to ensure the confidential treatment o=
f
> >>> personal information. We also inform you that you can exercise your
> access,
> >>> rectification, cancellation and opposition rights by send us a mail t=
o:
> >>> info@nayarsystems.com
> >>>
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>
> >
> >
> >
> > --
> >
> >
> >
> >
> > NOTA LEGAL
> > Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al =
mismo,
> > contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente =
dirigida a
> su
> > destinatario y se encuentra protegido por Ley. Cualquier persona
> distinta de
> > su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia
> o
> > impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3=
nico por
> error,
> > se ruega lo notifique de inmediato al remitente borrando el mensaje
> original
> > juntamente con sus ficheros anexos. Gracias.
> >
> > De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiz=
a
> la
> > adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento
> confidencial
> > de los datos de car=C3=A1cter personal. As=C3=AD mismo le informamos de=
 la
> inclusi=C3=B3n
> > de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL,
> con
> > la finalidad de poder atender los compromisos derivados de la relaci=C3=
=B3n
> que
> > mantenemos con usted. Si lo desea, puede ejercer sus derechos de acceso=
,
> > rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escri=
to a la siguiente
> > direcci=C3=B3n: info@nayarsystems.com
> >
> > LEGAL NOTE
> > This email and any attachments to it contains is confidential informati=
on
> > exclusively intended for the recipients. Any divulgation, copy or
> > distribution to third parties is prohibited without written permission =
of
> > NAYAR SYSTEMS SL. If you have received this e-mail in error, please
> notify
> > the sender immediately. In accordance with Law 15/1999 of 13 December o=
n
> the
> > Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it ha=
s
> > adopted the necessary measures to ensure the confidential treatment of
> > personal information. We also inform you that you can exercise your
> access,
> > rectification, cancellation and opposition rights by send us a mail to:
> > info@nayarsystems.com
> >
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

--0000000000007a41fe056d910632
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You are right, my setup is not able to generate two differ=
ent images at the same time. To do that, I setup two different builds shari=
ng the download directory between them.=C2=A0</div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2018-06-01 11:11 GMT+02:00 Alan Martinovi=
c <span dir=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=
=3D"_blank">alan.martinovic@senic.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Thanks for the replay Iv=C3=A1n,<br>
am I reading correctly that this means that you create a single image<br>
file per build<br>
(which can be any of the given types)?<br>
You&#39;re setup doesn&#39;t allow for building the &quot;developent&quot; =
and<br>
&quot;production&quot; image at the same time?<br>
<br>
Be Well,<br>
Alan<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
On Fri, Jun 1, 2018 at 11:04 AM, Iv=C3=A1n Castell &lt;<a href=3D"mailto:ic=
astell@nayarsystems.com">icastell@nayarsystems.com</a>&gt; wrote:<br>
&gt; I can provide more details. My custom layer has these files related wi=
th<br>
&gt; distro:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0my_layer/conf/distro/include/<wbr>common.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0my_layer/conf/distro/develop.<wbr>conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0my_layer/conf/distro/<wbr>production.conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0my_layer/conf/distro/<wbr>integration.conf<br>
&gt;<br>
&gt; As an example of the previous files,<br>
&gt; my_layer/conf/distro/include/<wbr>develop.conf has this content:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0require conf/distro/include/common.<wbr>conf<br>
&gt;=C2=A0 =C2=A0 =C2=A0DISTRO =3D &quot;my-distro-development&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0DISTRO_NAME =3D &quot;OS Development&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0DISTRO_STAGE =3D &quot;development&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0# And here more customizations as setting root pass=
word, PRSERV_HOST, or<br>
&gt; PACKAGE_FEED_URIS<br>
&gt;<br>
&gt; In common.conf I define all features common to all my distros<br>
&gt; (PACKAGE_CLASSES and so on)<br>
&gt;<br>
&gt; I have custom iptables rules, then I have different files for that rul=
es:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0my/layer/recipes-extended/<wbr>iptables/files/iptab=
les.rules.<wbr>development<br>
&gt;=C2=A0 =C2=A0 =C2=A0my/layer/recipes-extended/<wbr>iptables/files/iptab=
les.rules.<wbr>production<br>
&gt;=C2=A0 =C2=A0 =C2=A0my/layer/recipes-extended/<wbr>iptables/files/iptab=
les.rules.<wbr>integration<br>
&gt;<br>
&gt; I use a bbappend recipe for iptables, modifiying do_install_append tas=
k like<br>
&gt; this:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0600 ${WORKDIR}/iptables.rules.${<wbr>DI=
STRO_STAGE}<br>
&gt; ${D}/etc/iptables/iptables.<wbr>rules<br>
&gt;<br>
&gt; I use a single image recipe to define all packages installed in my fin=
al<br>
&gt; image (all of them have the same set if packages, but with different<b=
r>
&gt; customizations)<br>
&gt;<br>
&gt; Finally, I wrote a setup-build-env.sh script in my custom layer to con=
figure<br>
&gt; the build easily. That script creates<br>
&gt; build-${DISTRO_STAGE}/conf/<wbr>bblayers.conf and<br>
&gt; build-${DISTRO_STAGE}/conf/<wbr>local.conf files with the proper setup=
, setting<br>
&gt; MACHINE, DISTRO and DL_DIR (shared by all distros) properly.<br>
&gt;<br>
&gt; Hope this helps!<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; 2018-06-01 10:21 GMT+02:00 Alan Martinovic &lt;<a href=3D"mailto:alan.=
martinovic@senic.com">alan.martinovic@senic.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; Hey,<br>
&gt;&gt; would really like to see your example.<br>
&gt;&gt; Am struggling to get creation of these types of images for a while=
 now.<br>
&gt;&gt;<br>
&gt;&gt; So far have avoided diving into multiple distros because would lik=
e to<br>
&gt;&gt; have the option<br>
&gt;&gt; of building all the images at the same time (so they are basically=
 the<br>
&gt;&gt; same distro).<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Jun 1, 2018 at 8:13 AM, Iv=C3=A1n Castell &lt;<a href=3D"m=
ailto:icastell@nayarsystems.com">icastell@nayarsystems.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I fixed this issue defining different distro.conf files in my =
custom<br>
&gt;&gt;&gt; layer, adding a custom variable DISTRO_STAGE with the name of =
my distro<br>
&gt;&gt;&gt; (production, rnd, retail, and so on), Then you setup DISTRO in=
 your<br>
&gt;&gt;&gt; local.conf to the proper value you want to use. Finally you ca=
n use that<br>
&gt;&gt;&gt; DISTRO_STAGE variable in your custom .bb or .bbappend recipes =
to decide the<br>
&gt;&gt;&gt; proper configuration files you want to install in your final i=
mage. That<br>
&gt;&gt;&gt; works as expected. Hope this helps!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; 2018-06-01 7:46 GMT+02:00 Damien LEFEVRE &lt;<a href=3D"mailto=
:lefevre.da@gmail.com">lefevre.da@gmail.com</a>&gt;:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; For the same MACHINE I create the following images:<br>
&gt;&gt;&gt;&gt; - myimage-production<br>
&gt;&gt;&gt;&gt; - myimage-rnd<br>
&gt;&gt;&gt;&gt; - myimage-retail<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The production one has production assisted tools for flash=
ing peripheral<br>
&gt;&gt;&gt;&gt; HW, testing vital HW components, writing some serial numbe=
rs, etc.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The rnd one has more packages than the retail one just to =
help rnd work<br>
&gt;&gt;&gt;&gt; and debugging in device, but none of the rnd image extra p=
ackages.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The retail one has the final product image.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I&#39;m using web and FTP servers. I would like for the rn=
d version of the<br>
&gt;&gt;&gt;&gt; image to have a different nginx configuration to set the r=
oot directory to a<br>
&gt;&gt;&gt;&gt; development folder, or set an alias.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Furthermore, I&#39;ll have different variant of the device=
 where only the<br>
&gt;&gt;&gt;&gt; device SW changes but the platform is identical. So I&#39;=
ll end up with<br>
&gt;&gt;&gt;&gt; - myimage2-production<br>
&gt;&gt;&gt;&gt; - myimage2-rnd<br>
&gt;&gt;&gt;&gt; - myimage2-retail<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I know how to make MACHINE based configuration. How could =
I do this in<br>
&gt;&gt;&gt;&gt; my nginx.bbappend based on image name?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt; -Damien<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/li=
stinfo/yocto</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt;&gt;&gt; NOTA LEGAL=
<br>
&gt;&gt;&gt; Este correo electr=C3=B3nico y, en su caso, cualquier fichero =
anexo al mismo,<br>
&gt;&gt;&gt; contiene informaci=C3=B3n de car=C3=A1cter confidencial exclus=
ivamente dirigida a su<br>
&gt;&gt;&gt; destinatario y se encuentra protegido por Ley. Cualquier perso=
na distinta de<br>
&gt;&gt;&gt; su destinataria tiene prohibida su reproducci=C3=B3n, uso, div=
ulgaci=C3=B3n, copia o<br>
&gt;&gt;&gt; impresi=C3=B3n total o parcial. Si ha recibido este correo ele=
ctr=C3=B3nico por error,<br>
&gt;&gt;&gt; se ruega lo notifique de inmediato al remitente borrando el me=
nsaje original<br>
&gt;&gt;&gt; juntamente con sus ficheros anexos. Gracias.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL=
 garantiza<br>
&gt;&gt;&gt; la adopci=C3=B3n de las medidas necesarias para asegurar el tr=
atamiento<br>
&gt;&gt;&gt; confidencial de los datos de car=C3=A1cter personal. As=C3=AD =
mismo le informamos de<br>
&gt;&gt;&gt; la inclusi=C3=B3n de sus datos en un fichero bajo la responsab=
ilidad de NAYAR<br>
&gt;&gt;&gt; SYSTEMS SL, con la finalidad de poder atender los compromisos =
derivados de<br>
&gt;&gt;&gt; la relaci=C3=B3n que mantenemos con usted. Si lo desea, puede =
ejercer sus<br>
&gt;&gt;&gt; derechos de acceso, rectificaci=C3=B3n, cancelaci=C3=B3n y opo=
sici=C3=B3n mediante un<br>
&gt;&gt;&gt; escrito a la siguiente direcci=C3=B3n: <a href=3D"mailto:info@=
nayarsystems.com">info@nayarsystems.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; LEGAL NOTE<br>
&gt;&gt;&gt; This email and any attachments to it contains is confidential =
information<br>
&gt;&gt;&gt; exclusively intended for the recipients. Any divulgation, copy=
 or<br>
&gt;&gt;&gt; distribution to third parties is prohibited without written pe=
rmission of<br>
&gt;&gt;&gt; NAYAR SYSTEMS SL. If you have received this e-mail in error, p=
lease notify<br>
&gt;&gt;&gt; the sender immediately. In accordance with Law 15/1999 of 13 D=
ecember on the<br>
&gt;&gt;&gt; Protection of Personal Data, the NAYAR SYSTEMS SL guarantees t=
hat it has<br>
&gt;&gt;&gt; adopted the necessary measures to ensure the confidential trea=
tment of<br>
&gt;&gt;&gt; personal information. We also inform you that you can exercise=
 your access,<br>
&gt;&gt;&gt; rectification, cancellation and opposition rights by send us a=
 mail to:<br>
&gt;&gt;&gt; <a href=3D"mailto:info@nayarsystems.com">info@nayarsystems.com=
</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; NOTA LEGAL<br>
&gt; Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al=
 mismo,<br>
&gt; contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente=
 dirigida a su<br>
&gt; destinatario y se encuentra protegido por Ley. Cualquier persona disti=
nta de<br>
&gt; su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=
=C3=B3n, copia o<br>
&gt; impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=
=B3nico por error,<br>
&gt; se ruega lo notifique de inmediato al remitente borrando el mensaje or=
iginal<br>
&gt; juntamente con sus ficheros anexos. Gracias.<br>
&gt;<br>
&gt; De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garanti=
za la<br>
&gt; adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento c=
onfidencial<br>
&gt; de los datos de car=C3=A1cter personal. As=C3=AD mismo le informamos d=
e la inclusi=C3=B3n<br>
&gt; de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL=
, con<br>
&gt; la finalidad de poder atender los compromisos derivados de la relaci=
=C3=B3n que<br>
&gt; mantenemos con usted. Si lo desea, puede ejercer sus derechos de acces=
o,<br>
&gt; rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escr=
ito a la siguiente<br>
&gt; direcci=C3=B3n: <a href=3D"mailto:info@nayarsystems.com">info@nayarsys=
tems.com</a><br>
&gt;<br>
&gt; LEGAL NOTE<br>
&gt; This email and any attachments to it contains is confidential informat=
ion<br>
&gt; exclusively intended for the recipients. Any divulgation, copy or<br>
&gt; distribution to third parties is prohibited without written permission=
 of<br>
&gt; NAYAR SYSTEMS SL. If you have received this e-mail in error, please no=
tify<br>
&gt; the sender immediately. In accordance with Law 15/1999 of 13 December =
on the<br>
&gt; Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it h=
as<br>
&gt; adopted the necessary measures to ensure the confidential treatment of=
<br>
&gt; personal information. We also inform you that you can exercise your ac=
cess,<br>
&gt; rectification, cancellation and opposition rights by send us a mail to=
:<br>
&gt; <a href=3D"mailto:info@nayarsystems.com">info@nayarsystems.com</a><br>
&gt;<br>
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

--0000000000007a41fe056d910632--
