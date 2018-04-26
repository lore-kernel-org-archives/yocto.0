Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D3EE00994; Thu, 26 Apr 2018 07:17:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75325E00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 07:17:23 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id d11-v6so23344917iof.11
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 07:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=Z4GQa2ocsrvpFKbluwn8XyRVbRQvm/S6b1JnO1utfbo=;
	b=FyzYXQ4MyBKmyAHFIlzWm7tErBo0nH1OWAwiYAnzFnsS2CBT8gd8W7iv3HtYzdg9/2
	aTF8wTtw/sf/flfNffcDy8c/tj4xE1K7hQpjV6OB45xngZuxS0McWWu1SyL8PI391CuN
	ph/PXx+DFSviyWPPPQfFGDqofcKt4p5tAOQcY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Z4GQa2ocsrvpFKbluwn8XyRVbRQvm/S6b1JnO1utfbo=;
	b=He3lVeArnAmXDl/A+eovX+CthZAx3q7HaDDxEa0h4X73DXrJRtnbpkxqWpg3S1JmtZ
	2L+LoWq9b1dxLoc5WFH5SWvC009MER0+Z0ZDirVWuR4Zl3BEoDc7aDDEIEBPPFm799XW
	yY/TyQSabrnAsKMI7wP9ljjDPLVZj6gtRXOlGic/2Rt7LjElPtLFJE36hHixQejegVVX
	q4ZbKgq4HSfq/YuM6hJ4euh8dVARvjwCg1zcsxeWIP8EE9wg0d69qHUPUUQ+S/FwOlQo
	7nBIl67IlcNbf8Lf/st146oX54vQqU55Vdkvx8wkeFw3XJP4YXodQwNSYr2WWIH3gebT
	22tw==
X-Gm-Message-State: ALQs6tBb45cejjPGlJ2/U1SGA6JVnfOU3kbDl2lIjkCXYz2GY1CA061h
	IVLzS3MnNFWlMPQtUN8QqGKA83eG73jTtoEgHx0VGc8v
X-Google-Smtp-Source: AB8JxZpeDOWdpetopJetw6HKsC+634SY4UMWLAcY1oYuddSg3dPskqCH7BgtsP0a4Eobua4/urJ4+3ReLzMg7CYCudw=
X-Received: by 2002:a6b:2755:: with SMTP id
	n82-v6mr36613434ion.74.1524752242981; 
	Thu, 26 Apr 2018 07:17:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Thu, 26 Apr 2018 07:17:22
	-0700 (PDT)
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Thu, 26 Apr 2018 16:17:22 +0200
Message-ID: <CAALXFYx=x-_pzn8=qVHWBxB-q7XFTvWQdkewGbFtysdEBQHHdQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Generation of images when using repository of signed rpm packages
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
X-List-Received-Date: Thu, 26 Apr 2018 14:17:26 -0000
Content-Type: multipart/alternative; boundary="000000000000d0c1df056ac10bb1"

--000000000000d0c1df056ac10bb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello forum.

I have two questions related with the generation of images when the distro
is configured to use a repository of rpm packages signed with gpg.

First question: after running the "bitbake my-image.bb" command, the build
process stops with this message of error:

ERROR: myimage-1.0-r0 do_rootfs: [log_check] myimage: found 1 error message
in the logfile:
[log_check] Failed to synchronize cache for repo 'yocto-rpm', disabling.

Surprisingly, this error is only raised when the http server (that serving
the rpm packages, i.e. nginx) is stopped (not listening). If the http
server is started (listening), then the error message doesn't appear and
the generation of the image works fine. I don't understand why the build
process needs syncronizing with the rpm repository to build the image.

Second question: I am using dnf client to manage rpm packages. My layer
creates a dnf_%.bbappend file to include this configuration file in the
image built:

$ cat yocto-rpm.repo
[yocto-rpm]
name=3DRocko Yocto Repo
baseurl=3Dhttp://<HTTP_SERVER_IP>/rpm
enabled=3D1
gpgcheck=3D1

If the variable gpgcheck=3D0, then the image is build fine even if the http
server is stopped. How is that possible? Is yocto analyzing content of a
file installed on the final image to define how the build process is
managed?

Thank you in advance for your time! :)



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

--000000000000d0c1df056ac10bb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello forum.</div><div><div><br></div><div>I have two=
 questions related with the generation of images when the distro is configu=
red to use a repository of rpm packages signed with gpg.</div><div><br></di=
v><div>First question: after running the &quot;bitbake <a href=3D"http://my=
-image.bb">my-image.bb</a>&quot; command, the build process stops with this=
 message of error:</div><div><br></div><div>ERROR: myimage-1.0-r0 do_rootfs=
: [log_check] myimage: found 1 error message in the logfile:</div><div>[log=
_check] Failed to synchronize cache for repo &#39;yocto-rpm&#39;, disabling=
.</div><div><br></div><div>Surprisingly, this error is only raised when the=
 http server (that serving the rpm packages, i.e. nginx) is stopped (not li=
stening). If the http server is started (listening), then the error message=
 doesn&#39;t appear and the generation of the image works fine. I don&#39;t=
 understand why the build process needs syncronizing with the rpm repositor=
y to build the image.</div><div><br></div><div>Second question: I am using =
dnf client to manage rpm packages. My layer creates a dnf_%.bbappend file t=
o include this configuration file in the image built:</div><div><br></div><=
div>$ cat yocto-rpm.repo</div><div>[yocto-rpm]</div><div>name=3DRocko Yocto=
 Repo</div><div>baseurl=3Dhttp://&lt;HTTP_SERVER_IP&gt;/rpm</div><div>enabl=
ed=3D1</div><div>gpgcheck=3D1</div><div><br></div><div>If the variable gpgc=
heck=3D0, then the image is build fine even if the http server is stopped. =
How is that possible? Is yocto analyzing content of a file installed on the=
 final image to define how the build process is managed?</div><div><br></di=
v><div>Thank you in advance for your time! :)</div></div><div><br></div><di=
v><br></div><div><br></div>-- <br><div class=3D"gmail_signature"><br><img s=
rc=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font size=
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

--000000000000d0c1df056ac10bb1--
