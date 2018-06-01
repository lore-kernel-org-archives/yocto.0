Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 907CDE00D91; Fri,  1 Jun 2018 02:11:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E1BE00D82
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 02:11:45 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id f79-v6so7972848oib.7
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2018 02:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=bdADxBRLKyYp6q430uivrfb6invFmq3WCNNpnOHsoP0=;
	b=r7bR4T5yI3S0Oeyz5LwbWOMA2gT30jjhue1Rd/SjnNACYn4UlebKvn8k0Bb1ZLGwKZ
	JFoaczQnFsgL7Ei5NLaCn4sNY8xJ4kc4w1X+7oMXCWc9BXpoxV1mDETSc+UNHLTi7+r3
	kg1zVDzncvEVqMjH47zq5noZ7BBjyl0c2pt6rRpMwTlWXfDtKTMl5IFycNllywSWRGJB
	0umLgS9/jMiegmCCBzqfwMWxPsRMSCe206d5KQG5JAJ/uyBx9A90daEXPrZP76A4TaFC
	AOKRK/sfYXcHYEzJKn2xgNdfbUcrjBdcZnm67uRPIbxb1sy5QitmOVClPvEU4CJHB+rn
	+YVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bdADxBRLKyYp6q430uivrfb6invFmq3WCNNpnOHsoP0=;
	b=GBS23QPLiF+zdPTg82kHS7F7jCvq+SCgPlmhG1Z04I6qvfH1NVciTn7XGvE3c9fyVo
	jKdBtTfwAH4liR9FYfLDARgcZng7SMXkTgddFx7YwSFZRt1MMK+Zsf9Al15No9soViKR
	28bcaFs373jzTbNNoNMyAFP3yXQqdrFvjWa9/TfLdULEWNN1MaQSTl/zoWX++MJ829JI
	vyWf/R3mTeDeQ3DL8GpS4N9uEpboxSMq+9FgV0rZaSpuXxQoQ2ZmVG9CALIkBh557o0F
	V2SMSjwXiLmsKu7/gU07KmadKdpwmYIOs35nwPxlEAWcZjQhi2Xe1y3u1uSd6aPruFcV
	rzQw==
X-Gm-Message-State: APt69E3EMrWyi8StXWLAkbb2eXzAnJi2+PxNsIl0vP+19fJ58d2TgQsW
	RPC0NAzZzSaCs68Qu2eGkS3ZtFzrr02d2CQLBXHb1CQF
X-Google-Smtp-Source: ADUXVKLTjLEozdic0t6xsWd7GUPZJunZcKnDHWsOx5S+7L/BYtxic7EnxvoTh5a56vjPytU+k6KcuqpmG/A/yCV52SI=
X-Received: by 2002:aca:3103:: with SMTP id x3-v6mr5955145oix.74.1527844304610;
	Fri, 01 Jun 2018 02:11:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP;
	Fri, 1 Jun 2018 02:11:44 -0700 (PDT)
In-Reply-To: <CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
References: <CA+FhBv94MKe=hP1om41-5knfLXxCQM92GKPLQaw=f8Pz-=RV7Q@mail.gmail.com>
	<CAALXFYw-Q1WONVURHULA98NpZxTKVU7Zcj_Safz_aKYDvrgLOQ@mail.gmail.com>
	<CAOT_U5br6OWEGHDCSi3iBXDXPgNJjHym0N+i4b54s3bmoh=sJg@mail.gmail.com>
	<CAALXFYx480=TatMdNyCdo5=F9W2dOxEx85PnTYMfN04TCHG_QQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 1 Jun 2018 11:11:44 +0200
Message-ID: <CAOT_U5ZDJ0ES90dHanbDJ6hc=LP7P+dGGAi==zgeM9z=e=qC2g@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Jun 2018 09:11:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the replay Iv=C3=A1n,
am I reading correctly that this means that you create a single image
file per build
(which can be any of the given types)?
You're setup doesn't allow for building the "developent" and
"production" image at the same time?

Be Well,
Alan



On Fri, Jun 1, 2018 at 11:04 AM, Iv=C3=A1n Castell <icastell@nayarsystems.c=
om> wrote:
> I can provide more details. My custom layer has these files related with
> distro:
>
>     my_layer/conf/distro/include/common.conf
>     my_layer/conf/distro/develop.conf
>     my_layer/conf/distro/production.conf
>     my_layer/conf/distro/integration.conf
>
> As an example of the previous files,
> my_layer/conf/distro/include/develop.conf has this content:
>
>     require conf/distro/include/common.conf
>     DISTRO =3D "my-distro-development"
>     DISTRO_NAME =3D "OS Development"
>     DISTRO_STAGE =3D "development"
>     # And here more customizations as setting root password, PRSERV_HOST,=
 or
> PACKAGE_FEED_URIS
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
> I use a bbappend recipe for iptables, modifiying do_install_append task l=
ike
> this:
>
>     install -m 0600 ${WORKDIR}/iptables.rules.${DISTRO_STAGE}
> ${D}/etc/iptables/iptables.rules
>
> I use a single image recipe to define all packages installed in my final
> image (all of them have the same set if packages, but with different
> customizations)
>
> Finally, I wrote a setup-build-env.sh script in my custom layer to config=
ure
> the build easily. That script creates
> build-${DISTRO_STAGE}/conf/bblayers.conf and
> build-${DISTRO_STAGE}/conf/local.conf files with the proper setup, settin=
g
> MACHINE, DISTRO and DL_DIR (shared by all distros) properly.
>
> Hope this helps!
>
>
>
>
>
> 2018-06-01 10:21 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
>>
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
>>>
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
>>>>
>>>> Hi,
>>>>
>>>> For the same MACHINE I create the following images:
>>>> - myimage-production
>>>> - myimage-rnd
>>>> - myimage-retail
>>>>
>>>> The production one has production assisted tools for flashing peripher=
al
>>>> HW, testing vital HW components, writing some serial numbers, etc.
>>>>
>>>> The rnd one has more packages than the retail one just to help rnd wor=
k
>>>> and debugging in device, but none of the rnd image extra packages.
>>>>
>>>> The retail one has the final product image.
>>>>
>>>> I'm using web and FTP servers. I would like for the rnd version of the
>>>> image to have a different nginx configuration to set the root director=
y to a
>>>> development folder, or set an alias.
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
>>>
>>>
>>>
>>> --
>>>
>>>
>>>
>>>
>>> NOTA LEGAL
>>> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al =
mismo,
>>> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente =
dirigida a su
>>> destinatario y se encuentra protegido por Ley. Cualquier persona distin=
ta de
>>> su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia o
>>> impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3=
nico por error,
>>> se ruega lo notifique de inmediato al remitente borrando el mensaje ori=
ginal
>>> juntamente con sus ficheros anexos. Gracias.
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
>>> LEGAL NOTE
>>> This email and any attachments to it contains is confidential informati=
on
>>> exclusively intended for the recipients. Any divulgation, copy or
>>> distribution to third parties is prohibited without written permission =
of
>>> NAYAR SYSTEMS SL. If you have received this e-mail in error, please not=
ify
>>> the sender immediately. In accordance with Law 15/1999 of 13 December o=
n the
>>> Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it ha=
s
>>> adopted the necessary measures to ensure the confidential treatment of
>>> personal information. We also inform you that you can exercise your acc=
ess,
>>> rectification, cancellation and opposition rights by send us a mail to:
>>> info@nayarsystems.com
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>
>
>
> --
>
>
>
>
> NOTA LEGAL
> Este correo electr=C3=B3nico y, en su caso, cualquier fichero anexo al mi=
smo,
> contiene informaci=C3=B3n de car=C3=A1cter confidencial exclusivamente di=
rigida a su
> destinatario y se encuentra protegido por Ley. Cualquier persona distinta=
 de
> su destinataria tiene prohibida su reproducci=C3=B3n, uso, divulgaci=C3=
=B3n, copia o
> impresi=C3=B3n total o parcial. Si ha recibido este correo electr=C3=B3ni=
co por error,
> se ruega lo notifique de inmediato al remitente borrando el mensaje origi=
nal
> juntamente con sus ficheros anexos. Gracias.
>
> De conformidad con lo establecido en la LOPD, NAYAR SYSTEMS SL garantiza =
la
> adopci=C3=B3n de las medidas necesarias para asegurar el tratamiento conf=
idencial
> de los datos de car=C3=A1cter personal. As=C3=AD mismo le informamos de l=
a inclusi=C3=B3n
> de sus datos en un fichero bajo la responsabilidad de NAYAR SYSTEMS SL, c=
on
> la finalidad de poder atender los compromisos derivados de la relaci=C3=
=B3n que
> mantenemos con usted. Si lo desea, puede ejercer sus derechos de acceso,
> rectificaci=C3=B3n, cancelaci=C3=B3n y oposici=C3=B3n mediante un escrito=
 a la siguiente
> direcci=C3=B3n: info@nayarsystems.com
>
> LEGAL NOTE
> This email and any attachments to it contains is confidential information
> exclusively intended for the recipients. Any divulgation, copy or
> distribution to third parties is prohibited without written permission of
> NAYAR SYSTEMS SL. If you have received this e-mail in error, please notif=
y
> the sender immediately. In accordance with Law 15/1999 of 13 December on =
the
> Protection of Personal Data, the NAYAR SYSTEMS SL guarantees that it has
> adopted the necessary measures to ensure the confidential treatment of
> personal information. We also inform you that you can exercise your acces=
s,
> rectification, cancellation and opposition rights by send us a mail to:
> info@nayarsystems.com
>

