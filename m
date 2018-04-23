Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D063E0090A; Mon, 23 Apr 2018 08:38:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A21AFE00843
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:38:54 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id p3-v6so11037137itc.0
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 08:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Kp/ipcJrL51YwghxM6KPjoiyyXIuuGsyrZ81Gdv5oFE=;
	b=177+rqATttKH3CIRe8Bgj2+GRYzVnqZjxch/p20XIbVCZ/kUEt0NnHAxjNLxGw2oFz
	blJrVOT7h/NjIeUEHWUKONyVOeVoMAUnV0ZtadT4Z30jKP1h7Sh5waLNuoHbWcFWX+AS
	ZqyptD6HHS8r927t/If7iAW/DR7HW5rhTmMTYr6Avm2cCQz2oqEkKYH5SUp+c2bRRJsR
	K0LOp0AVDdpoeylUpk/Yr8kiBU0hl+BeLxpBM7eKR7NlISPYl7JPmuMEWoBLgauUZSem
	qZI8JN0MLBm5qoB+kG2faIfwGUXmklVIit3ACbFDsk8piBPHMbKDlLDPbtDXTGvQ0Z0o
	QD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Kp/ipcJrL51YwghxM6KPjoiyyXIuuGsyrZ81Gdv5oFE=;
	b=j9m0pibN6wW0zngz1EeAENRsFyclZywrEhfOkP40dWxQ5fjpidJTDg9moQECUOaqPB
	m5cX1sBWj+oWiUb42g+0HhIEw/hN7W3ZiaPStQ6Mf3nVyK6ibAd+TxcDtXIhrr/5Ppjx
	C8ulio2Tfuey7VfcI2NYfk/FKauaEZMnJz6G6i3r08sYl5bxYTLsUK80VRkwb14QrMnG
	wvlM+F0hOyX4ZrINTqY0MnvIvcWm3LWjhj6Tgq8csX0qBbi7YJQh+clBYeHjN4RB7zLa
	RqoW/YL/oQGNezQ9fdC88Lq67Gzo7NRmoqZo4+KICRxO7VF6WnhHoeqRiRVy6gXCQy+m
	NPow==
X-Gm-Message-State: ALQs6tBeBwgkC3jFOWW/EsgGXWpmn2qe31pqZal7mestB2rtEnGtGJe/
	WeOBtSGA2n+8YLRyOAD5WAStnfHcq4JCKLt5iv6Vxw==
X-Google-Smtp-Source: AB8JxZpxu+lxopfQFhUmv1YEOstQty65iMeN95K6dNzakwxG1zyFNWibUWdIBXVveLz0I1YxpBXsU4MtU5VfcsB7z50=
X-Received: by 2002:a24:b803:: with SMTP id
	m3-v6mr14192203ite.131.1524497933842; 
	Mon, 23 Apr 2018 08:38:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Mon, 23 Apr 2018 08:38:33 -0700 (PDT)
In-Reply-To: <CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
	<CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Apr 2018 16:38:33 +0100
Message-ID: <CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
To: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
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
X-List-Received-Date: Mon, 23 Apr 2018 15:38:56 -0000
Content-Type: multipart/alternative; boundary="000000000000ced252056a85d585"

--000000000000ced252056a85d585
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very curious as to what book said that, because *any* example of that
happening is a bug in the recipe itself.  I wouldn't listen to it: the YP
autobuilder has a shared sstate for three distributions * four
architectures * two libc implementations and doesn't have problems.

Ross

On 23 April 2018 at 16:23, Iv=C3=A1n Castell <icastell@nayarsystems.com> wr=
ote:

> Thanks a lot for all your replies. I am working on a solution trying to
> get the best option of all your answers. I will come back after deciding =
my
> solution to share it with the community.
>
>
> Related with that shared state cache, I found some information on a e-boo=
k
> (search the text on google to find the source):
>
> "Sharing a shared state cache is possible; however, it needs to be
> approached with care. Not all changes are detected by the shared state
> cache implementation, and when this happens, some or all of the cache nee=
ds
> to be invalidated. This can cause problems when the state cache is being
> shared. The recommendation in this case depends on the use case. Develope=
rs
> working on Yocto metadata should keep the shared state cache as default,
> separated per project. However, validation and testing engineers, kernel
> and bootloader developers, and application developers would probably
> benefit from a well-maintained shared state cache."
>
>
> After reading that I'm not sure to use it because I don't understand what
> kind of "problems" can be found, and if they can be easily detected or no=
t.
>
>
> Does some of you have any experience using a shared sstate cache?
>
>
>
>
>
> 2018-04-23 17:10 GMT+02:00 Burton, Ross <ross.burton@intel.com>:
>
>> On 20 April 2018 at 11:47, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
>> > But can you share state between distros? Isn't the purpose of distros =
to
>> > use different options (variable settings) so the state would always be
>> > different?
>>
>> If the input to the recipe is different then the hashes would be
>> different so the content won't conflict.  You can definitely share
>> sstate between DISTROs.
>>
>> Ross
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
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

--000000000000ced252056a85d585
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Very curious as to what book said that, because *any* exam=
ple of that happening is a bug in the recipe itself.=C2=A0 I wouldn&#39;t l=
isten to it: the YP autobuilder has a shared sstate for three distributions=
 * four architectures * two libc implementations and doesn&#39;t have probl=
ems.<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On 23 April 2018 at 16:23, Iv=C3=A1n Castell <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:icastell@nayarsystems.com" target=3D"_blan=
k">icastell@nayarsystems.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr"><p style=3D"margin:10px 0px 0px;padding:0px;colo=
r:rgb(51,51,51);font-family:Arial,sans-serif;font-size:14px;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial">Thanks a lot for all your replies. I a=
m working on a solution trying to get the best option of all your answers. =
I will come back after deciding my solution to share it with the community.=
</p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-fa=
mily:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial"><br></p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb=
(51,51,51);font-family:Arial,sans-serif;font-size:14px;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial">Related with that shared state cache, I fou=
nd some information on a e-book (search the text on google to find the sour=
ce):<br></p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51)=
;font-family:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial">&quot;Sharing a shared state cache is possible; howev=
er, it needs to be approached with care. Not=C2=A0all changes are detected =
by the shared state cache implementation, and when this happens,=C2=A0some =
or all of the cache needs to be invalidated. This can cause problems when t=
he state=C2=A0cache is being shared.=C2=A0The recommendation in this case d=
epends on the use case. Developers working on Yocto=C2=A0metadata should ke=
ep the shared state cache as default, separated per project.=C2=A0However, =
validation and testing engineers, kernel and bootloader developers, and app=
lication=C2=A0developers would probably benefit from a well-maintained shar=
ed state cache.&quot;</p><p style=3D"margin:10px 0px 0px;padding:0px;color:=
rgb(51,51,51);font-family:Arial,sans-serif;font-size:14px;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial"><br></p><p style=3D"margin:10px 0px 0px;=
padding:0px;color:rgb(51,51,51);font-family:Arial,sans-serif;font-size:14px=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial">After reading that I&#=
39;m not sure to use it because I don&#39;t understand what kind of &quot;p=
roblems&quot; can be found, and if they can be easily detected or not.<br><=
/p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(51,51,51);font-fam=
ily:Arial,sans-serif;font-size:14px;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial"><br></p><p style=3D"margin:10px 0px 0px;padding:0px;color:rgb(=
51,51,51);font-family:Arial,sans-serif;font-size:14px;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">Does some of you have any experience using a=
 shared sstate cache?</p><p style=3D"margin:10px 0px 0px;padding:0px;color:=
rgb(51,51,51);font-family:Arial,sans-serif;font-size:14px;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;background-color:rgb(255,255,255);text-decoration-style:init=
ial;text-decoration-color:initial"><br></p><br class=3D"m_-4965975751575860=
688gmail-Apple-interchange-newline"><br></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote"><div><div class=3D"h5">2018-04-23 17:10 GMT+02=
:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.=
com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br></div></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><span>On 20 April 20=
18 at 11:47, Uwe Geuder &lt;<a href=3D"mailto:jrswdnan22@snkmail.com" targe=
t=3D"_blank">jrswdnan22@snkmail.com</a>&gt; wrote:<br>
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
<span class=3D"m_-4965975751575860688HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></div></div><span class=3D""><div class=3D"m_-496597575157586=
0688HOEnZb"><div class=3D"m_-4965975751575860688h5">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></span></blockquote></div><span class=3D"HOEnZb"><font color=3D=
"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div class=3D"m_-4965=
975751575860688gmail_signature" data-smartmail=3D"gmail_signature"><br><img=
 src=3D"http://www.nayarsystems.com/docs/FIRMAS/icastell.jpg"><br><font siz=
e=3D"2"><b></b></font><br><div><span><font size=3D"1"><span style=3D"color:=
rgb(153,153,153)"><br><u><b>NOTA LEGAL</b></u><br>Este correo electr=C3=B3n=
ico y, en su caso, cualquier fichero anexo al mismo, contiene informaci=C3=
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
nayarsystems.<wbr>com</a></span><br><br></font></span></div><div><span styl=
e=3D"color:rgb(153,153,153);font-family:arial,helvetica,sans-serif;font-siz=
e:x-small"><u><b>LEGAL NOTE</b></u></span></div><div><span style=3D"color:r=
gb(153,153,153);font-family:arial,helvetica,sans-serif;font-size:x-small">T=
his email and any attachments to it contains is confidential information ex=
clusively intended for the recipients. Any divulgation, copy or distributio=
n to third parties is prohibited without written permission of NAYAR SYSTEM=
S SL. If you have received this e-mail in error, please notify the sender i=
mmediately. In accordance with Law 15/1999 of 13 December on the Protection=
 of Personal Data, the NAYAR SYSTEMS SL guarantees that it has adopted the =
necessary measures to ensure the confidential treatment of personal informa=
tion. We also inform you that you can exercise your access, rectification, =
cancellation and opposition rights by send us a mail to:=C2=A0<a href=3D"ma=
ilto:info@nayarsystems.com" target=3D"_blank">info@nayarsystems.com</a></sp=
an></div><br></div>
</font></span></div>
</blockquote></div><br></div>

--000000000000ced252056a85d585--
