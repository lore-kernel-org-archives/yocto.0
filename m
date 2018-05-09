Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9197BE00C76; Tue,  8 May 2018 23:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69763E009AC
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 23:34:45 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id c3-v6so19254042itj.4
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 23:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hoq13FJZZDMdVrOQ7GdTiOkF6JmnXr/uItVJofjqx0Y=;
	b=d+yDx44vHDjd+AoCJqnSKCsN1waTWNc75eVDXQGXyYb78/L3FPf3mt7etwABSMkFrc
	/mVjOnD4BdDMOpy4a4/IbsnzXf42Ve3n7RzRoTh38+inO9WAyzbtifFbck95M61ZdE7q
	+qud/uuuP/GzmB9ZThBICbyuiQrGT+TC3OLms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hoq13FJZZDMdVrOQ7GdTiOkF6JmnXr/uItVJofjqx0Y=;
	b=dEm/xZ23TH17gBjbyfo9Z4IrnXmZbYq9EyaOJKZHc7pTKnmFgFuHftpoOq3DGcBs5Z
	OY2CMqnFY2MlV1sMTyKguCbs7eDXRXBX9PChlbXezNcb2EhDDulWU8K1EBLy+CDDh66s
	REOCjeRkfM6e4KA9UtiGcrP4w9zXfWu3sfqhR1i73cQpGcnWNJZJWGv1+VJUi9sYW2bw
	jwloeX5XMvHJaOo2wPaeGKvO1YfFXdCShtmp/eo+H1zgQqQn+7FeY0qBdu/Hy57EJmgH
	VKqLRUUltFOAg9sPPH0Sfguo4UKiq9bl6jzjittWy/d7VlW4p/raLJvcrjJOiNpSVLw/
	SH7A==
X-Gm-Message-State: ALKqPwfRQOFhEcOe1uDYks0CyY8AQoc2Pxof+kWdOCwXrlkCcT0FUKIO
	C7t3MSZAYRJva6z6CZ6R6oavfhdN7G4GRL/C3HYd1w==
X-Google-Smtp-Source: AB8JxZpu7MSeHclKfgfQKA6o5C4vVJZGgECGKM2XGHqaMCCgI2DCYwgxjSjaxz+sypGhiM2AWTvs+gw1+c39yXk5jVg=
X-Received: by 2002:a24:25d0:: with SMTP id
	g199-v6mr1632803itg.26.1525847684462; 
	Tue, 08 May 2018 23:34:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b04:0:0:0:0:0 with HTTP;
	Tue, 8 May 2018 23:34:44 -0700 (PDT)
In-Reply-To: <CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
References: <CAALXFYw5fYE+JBAO4hrXFO-L3wyE6DRzP-yFWbPvKX6S1eRePw@mail.gmail.com>
	<da5f1fde-171e-09cb-f51c-13a6e147c3ed@linux.intel.com>
	<CAALXFYwpsMmKzyO47CzFxj_3FMT+zZja4OdTNtFfoD4=QT0Ehw@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Wed, 9 May 2018 08:34:44 +0200
Message-ID: <CAALXFYyLw3uZmZZFs5US=2XgyGZ2XJgaEHnmwA9XL2bhL=wh7Q@mail.gmail.com>
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
X-List-Received-Date: Wed, 09 May 2018 06:34:46 -0000
Content-Type: multipart/alternative; boundary="00000000000036c6f4056bc01997"

--00000000000036c6f4056bc01997
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to provide all the details, this is the bbappend I add to my custom
layer:

$ cat recipes-devtools/dnf/dnf_%.bbappend

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D " \
    file://yocto-adv-rpm.repo \
"

do_install_append () {
    install -d ${D}/etc/yum.repos.d
    install -m 0600 ${WORKDIR}/yocto-adv-rpm.repo
${D}/etc/yum.repos.d/yocto-adv-rpm.repo
}

FILES_${PN} +=3D "/etc/yum.repos.d"

The contets of yocto-adv-rpm.repo are in the previous message.


2018-05-09 8:29 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:

> But I am not fetching nor installing packages over the network during
> image creation. I just build an image using local recipes (standard
> procedure). One of those local recipes sets up a remote repository for rp=
m
> packages (adding /etc/yum.repos.d/yocto-adv-rpm.repo to the final image).
> The purpose of that remote repository is using it to update rpm packages =
on
> target devices when they are running in production.
>
> In fact, I don't understand why yocto needs to synchronize that cache for
> 'yocto-adv-rpm' repo during build time. It doesn't have any sense for me.
> But the fact is that when the ca-certificates.crt is properly installed,
> the build process ends fine. If that file is not properly installed, the
> build process fails with the error reported in my previous message.
>
>
> 2018-05-08 21:15 GMT+02:00 Alexander Kanavin <alexander.kanavin@linux.
> intel.com>:
>
>> On 05/08/2018 05:55 PM, Iv=C3=A1n Castell wrote:
>>
>>> Is this a bug related with curl or ca-certificates recipe? What should
>>> be the right way to fix it?
>>>
>>
>> Fetching and installing packages over the network during image creation
>> is not supported or tested in YP. You need to build them locally, with
>> recipes.
>>
>>
>> Alex
>>
>
>
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

--00000000000036c6f4056bc01997
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just to provide all the details, this is the bbappend=
 I add to my custom layer:</div><div><br></div><div><div>$ cat recipes-devt=
ools/dnf/dnf_%.bbappend</div><div><br></div><div>FILESEXTRAPATHS_prepend :=
=3D &quot;${THISDIR}/files:&quot;</div><div><br></div><div>SRC_URI +=3D &qu=
ot; \</div><div>=C2=A0 =C2=A0 file://yocto-adv-rpm.repo \</div><div>&quot;<=
/div><div><br></div><div>do_install_append () {</div><div>=C2=A0 =C2=A0 ins=
tall -d ${D}/etc/yum.repos.d</div><div>=C2=A0 =C2=A0 install -m 0600 ${WORK=
DIR}/yocto-adv-rpm.repo ${D}/etc/yum.repos.d/yocto-adv-rpm.repo</div><div>}=
</div><div><br></div><div>FILES_${PN} +=3D &quot;/etc/yum.repos.d&quot;</di=
v></div><div><br></div><div>The contets of yocto-adv-rpm.repo are in the pr=
evious message.</div><div><br></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">2018-05-09 8:29 GMT+02:00 Iv=C3=A1n Castell <span =
dir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_bla=
nk">icastell@nayarsystems.com</a>&gt;</span>:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><div>But I am not fetching nor installing packages ov=
er the network during image creation. I just build an image using local rec=
ipes (standard procedure). One of those local recipes sets up a remote repo=
sitory for rpm packages (adding /etc/yum.repos.d/yocto-adv-<wbr>rpm.repo to=
 the final image). The purpose of that remote repository is using it to upd=
ate rpm packages on target devices when they are running in production.</di=
v><div><br></div><div>In fact, I don&#39;t understand why yocto needs to sy=
nchronize that cache for &#39;yocto-adv-rpm&#39; repo during build time. It=
 doesn&#39;t have any sense for me. But the fact is that when the ca-certif=
icates.crt is properly installed, the build process ends fine. If that file=
 is not properly installed, the build process fails with the error reported=
 in my previous message.=C2=A0=C2=A0<br></div><div><div class=3D"h5"><div><=
br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-05-=
08 21:15 GMT+02:00 Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:alexander.kanavin@linux.intel.com" target=3D"_blank">alexander.kanavin@li=
nux.<wbr>intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span>=
On 05/08/2018 05:55 PM, Iv=C3=A1n Castell wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Is this a bug related with curl or ca-certificates recipe? What should be t=
he right way to fix it?<br>
</blockquote>
<br></span>
Fetching and installing packages over the network during image creation is =
not supported or tested in YP. You need to build them locally, with recipes=
.<br>
<br>
<br>
Alex<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div></div></div>
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

--00000000000036c6f4056bc01997--
