Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B3DE0090A; Mon, 23 Apr 2018 08:23:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDEB5E00843
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:23:02 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id e78-v6so6349678iod.0
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d17o8J2jNVclvb5+rqzLwwLKtNF6+s0cMULG58Cxt4Q=;
	b=i5UM8+7LukrcSSUO/qGof+0ZfNlZG+iOZnFoGB3uQrF+KwdGv19dR4kQLkuJFtreMr
	idh2BbRmao3M/qoJqzfIBeeukO0/YPyInNLu+X/9ZWrCP4tyUlEkdbF/H3CJHcYIkP0a
	c7ncT+M4/pnTNKxYblWN8ZywgpZysXBUK3DMo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d17o8J2jNVclvb5+rqzLwwLKtNF6+s0cMULG58Cxt4Q=;
	b=l6avXfAd0tavXsnkgKmRddk3mY+msmaaVQOkITDXImjLQyUqqPYSL/sbwpnjK1VgYA
	8nGPZL04yCdxvHlUEttCSPjtjESVDwW2U9XwCtYQesZhF4eBsYoaBan96E0JOtJ0Xk6T
	aL6ZsULP0RlZO4gsYw67fi+9ZeEdZYbDkYcQvQVedYw5iD+lvknC3B1mqccPzCFUjjx8
	jy8JeHYNzLgEdd/RDzl0mgkgxt+TCdzuObKJo53RlQ/+RfWCgjdKXTrY6fTfgE7tVIE2
	/kzqv1SBUAjO+4k/wyXay+Tjzo49AIwYiX/lAw6YcaOxIMuj/ixisq6oHeOhzvzl7ssH
	8LFQ==
X-Gm-Message-State: ALQs6tALpB0K1HppYARV+qhjIAPwstEn+rruatY+6mITfxELIhtI3ZQW
	wc9ifE4sonfjQ/HIpvCgPNs5gFO/kVmj+PUD9G6O9w==
X-Google-Smtp-Source: AB8JxZrk5iagOCkmeMGEbfEElPqbosdHi2UsLdZiqlpfgXa8PrncHizQZ7CGxA+4jVKdpmNGvy1hOgrRIDKM1gV6qfc=
X-Received: by 2002:a6b:2755:: with SMTP id
	n82-v6mr23081335ion.74.1524496981851; 
	Mon, 23 Apr 2018 08:23:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Mon, 23 Apr 2018 08:23:01
	-0700 (PDT)
In-Reply-To: <CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 23 Apr 2018 17:23:01 +0200
Message-ID: <CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Mon, 23 Apr 2018 15:23:06 -0000
Content-Type: multipart/alternative; boundary="00000000000010c76a056a859ddc"

--00000000000010c76a056a859ddc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for all your replies. I am working on a solution trying to get
the best option of all your answers. I will come back after deciding my
solution to share it with the community.


Related with that shared state cache, I found some information on a e-book
(search the text on google to find the source):

"Sharing a shared state cache is possible; however, it needs to be
approached with care. Not all changes are detected by the shared state
cache implementation, and when this happens, some or all of the cache needs
to be invalidated. This can cause problems when the state cache is being
shared. The recommendation in this case depends on the use case. Developers
working on Yocto metadata should keep the shared state cache as default,
separated per project. However, validation and testing engineers, kernel
and bootloader developers, and application developers would probably
benefit from a well-maintained shared state cache."


After reading that I'm not sure to use it because I don't understand what
kind of "problems" can be found, and if they can be easily detected or not.


Does some of you have any experience using a shared sstate cache?





2018-04-23 17:10 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> On 20 April 2018 at 11:47, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
> > But can you share state between distros? Isn't the purpose of distros t=
o
> > use different options (variable settings) so the state would always be
> > different?
>
> If the input to the recipe is different then the hashes would be
> different so the content won't conflict.  You can definitely share
> sstate between DISTROs.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
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

--00000000000010c76a056a859ddc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,5=
1,51);font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial">Thanks a lot for all your replies. I am working =
on a solution trying to get the best option of all your answers. I will com=
e back after deciding my solution to share it with the community.</p><p sty=
le=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-family:Arial=
,sans-serif;font-size:14px;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al"><br></p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51)=
;font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial">Related with that shared state cache, I found some in=
formation on a e-book (search the text on google to find the source):<br></=
p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-fami=
ly:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial">&quot;Sharing a shared state cache is possible; however, it nee=
ds to be approached with care. Not=C2=A0all changes are detected by the sha=
red state cache implementation, and when this happens,=C2=A0some or all of =
the cache needs to be invalidated. This can cause problems when the state=
=C2=A0cache is being shared.=C2=A0The recommendation in this case depends o=
n the use case. Developers working on Yocto=C2=A0metadata should keep the s=
hared state cache as default, separated per project.=C2=A0However, validati=
on and testing engineers, kernel and bootloader developers, and application=
=C2=A0developers would probably benefit from a well-maintained shared state=
 cache.&quot;</p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,5=
1,51);font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial"><br></p><p style=3D"margin:10px 0px 0px;padding:=
0px;color:rgb(51,51,51);font-family:Arial,sans-serif;font-size:14px;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-=
style:initial;text-decoration-color:initial">After reading that I&#39;m not=
 sure to use it because I don&#39;t understand what kind of &quot;problems&=
quot; can be found, and if they can be easily detected or not.<br></p><p st=
yle=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-family:Aria=
l,sans-serif;font-size:14px;font-variant-ligatures:normal;font-variant-caps=
:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:=
0px;text-transform:none;white-space:normal;word-spacing:0px;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial"><br></p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51=
);font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial">Does some of you have any experience using a shared =
sstate cache?</p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,5=
1,51);font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial"><br></p><br class=3D"gmail-Apple-interchange-new=
line"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2=
018-04-23 17:10 GMT+02:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;<=
/span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 20 April 2018=
 at 11:47, Uwe Geuder &lt;<a href=3D"mailto:jrswdnan22@snkmail.com">jrswdna=
n22@snkmail.com</a>&gt; wrote:<br>
&gt; But can you share state between distros? Isn&#39;t the purpose of dist=
ros to<br>
&gt; use different options (variable settings) so the state would always be=
<br>
&gt; different?<br>
<br>
</span>If the input to the recipe is different then the hashes would be<br>
different so the content won&#39;t conflict.=C2=A0 You can definitely share=
<br>
sstate between DISTROs.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
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

--00000000000010c76a056a859ddc--
