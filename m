Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D58DE009A7; Mon, 26 Mar 2018 01:52:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B97EE00823
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 01:52:39 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id z7-v6so11711939iti.1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 01:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oPw2S35AFzR81XL8NNKepMBbE+6fjBnipMEWZJEFCf8=;
	b=GA2XRTswigbF1yGCGc1lj54nzCgYIQIdLv0k9LL/7qBjikIpXFAwQaciKkpnA50OUD
	LPRUqltDMQQl3SP0AYoPkU1Ykz6437ksxYVjboThuTnEh16ZavS2DvNx8R2aJ7Hn9Kbd
	JH3kI1MUntrM4IsYUUwI+4vbNWj6nqnXJe8HY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oPw2S35AFzR81XL8NNKepMBbE+6fjBnipMEWZJEFCf8=;
	b=dWQBBNB0zDQVOh3I6Kn49iSNgFdkSqJySox31uW/Luxa1s84w6Eo4bFhf2lBno6tnr
	Fqx3N0L9POotRKb9aPuBI4jIpDVtbjtqe/n9otN5+94YdkNQOWzobZ0yy2fG6Pkc3F5E
	CdP6jNwmpKXejEgVoAs7f0WLm0vrKv2LxdxFg15owBcA7LeZ2YKxlwKYDXUemu3zEQxV
	400zKBPp18NuvXkFjtDd4nRPBbNDt2rYmJzwX/NrWdLdVaovxtfEpOeQyMgq7Ys/jkLf
	3E4LffpKehMUcD6mIrx4YOltxsU1TdcrdJt7+i6bxo83kzrT+dJkfxuOcz4X3Z3X11KY
	hYWw==
X-Gm-Message-State: AElRT7EyZD46vsEe2e5g5wOrHycNHNy++licMLBFX7tGEUA3adUc1gPA
	UaEHWjfLSAMwCREAjV3NoTSSy5coREEq3VQ+j4W/1Q==
X-Google-Smtp-Source: AG47ELuc4DPvzvTDjmi/QgVgksRsi0+xQt4t/kysMZSTUSFy66VsVIDarnaKxqE7Vn8cTeZkIY/IJyqn1Z10EYBVseY=
X-Received: by 2002:a24:b541:: with SMTP id
	j1-v6mr23086044iti.128.1522054359229; 
	Mon, 26 Mar 2018 01:52:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.102.100 with HTTP; Mon, 26 Mar 2018 01:52:38 -0700 (PDT)
In-Reply-To: <CAB2nKc-C89ztFiKymJo=8n4AxY6fN4b_zXwxeQJCKb1nkZy4uQ@mail.gmail.com>
References: <CAALXFYzFPJE9PAgNsGU+tOeGrPHB-ZxM4sobbTS1fsD6==e8CA@mail.gmail.com>
	<CAB2nKc-C89ztFiKymJo=8n4AxY6fN4b_zXwxeQJCKb1nkZy4uQ@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 26 Mar 2018 10:52:38 +0200
Message-ID: <CAALXFYzqUW1PTC74m7BQ38LSMF587vCdU8g4g0+CY4BkiNTT7A@mail.gmail.com>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How to check list of installed packages to stop the build process conditionally
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
X-List-Received-Date: Mon, 26 Mar 2018 08:52:41 -0000
Content-Type: multipart/alternative; boundary="000000000000693dbc05684ce5bf"

--000000000000693dbc05684ce5bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes! That's exactly what I was looking for. Thank you very much, Mr.
Vincent! :-)

2018-03-26 10:08 GMT+02:00 Vincent Prince <vincent.prince.fr@gmail.com>:

> Hi,
>
> Maybe you can say A conflicts B and B conflicts A with following variable=
 :
> https://www.yoctoproject.org/docs/current/mega-manual/mega-
> manual.html#var-RCONFLICTS
>
> Best regards,
> Vincent
>
> 2018-03-26 9:54 GMT+02:00 Iv=C3=A1n Castell <icastell@nayarsystems.com>:
>
>> Hello forum.
>>
>> My layer provides two custom recipes A and B with exactly the same
>> functionality. To get a working image, one of these two recipes must be
>> included on the generated image (A_installed XOR B_installed).
>>
>> So I need the build process being able to check the list of installed
>> packages, stopping the build process in case any of these two packages i=
s
>> included.
>>
>> Does yocto provides some mechanism to manage this issue?
>>
>> Thank you in advance!
>>
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

--000000000000693dbc05684ce5bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">Yes! That&#39;s exactly what I w=
as looking for. Thank you very much, Mr. Vincent! :-)</span><br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-26 10:08 GMT+0=
2:00 Vincent Prince <span dir=3D"ltr">&lt;<a href=3D"mailto:vincent.prince.=
fr@gmail.com" target=3D"_blank">vincent.prince.fr@gmail.com</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,=C2=A0<div><br></div=
><div>Maybe you can say A conflicts B and B conflicts A with following vari=
able :</div><div><a href=3D"https://www.yoctoproject.org/docs/current/mega-=
manual/mega-manual.html#var-RCONFLICTS" target=3D"_blank">https://www.yocto=
project.org/<wbr>docs/current/mega-manual/mega-<wbr>manual.html#var-RCONFLI=
CTS</a><br></div><div><br></div><div>Best regards,</div><div>Vincent</div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div cl=
ass=3D"h5">2018-03-26 9:54 GMT+02:00 Iv=C3=A1n Castell <span dir=3D"ltr">&l=
t;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_blank">icastell@n=
ayarsystems.com</a>&gt;</span>:<br></div></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div><div class=3D"h5"><div dir=3D"ltr">Hello forum.<div><br></div><div>=
My layer provides two custom recipes A and B with exactly the same function=
ality. To get a working image, one of these two recipes must be included on=
 the generated image=C2=A0<span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">(A_installed XOR B_inst=
alled).</span></div><div><br></div><div>So I need the build process being a=
ble to check the list of installed packages, stopping the build process in =
case any of these two packages is included.</div><div><br></div><div>Does y=
octo provides some mechanism to manage this issue?</div><div><br></div><div=
>Thank you in advance!=C2=A0</div><div><br></div><div><div><br></div>
</div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
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

--000000000000693dbc05684ce5bf--
