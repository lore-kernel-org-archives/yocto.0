Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1DFCE00C1B; Mon, 11 Feb 2019 00:36:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60884E00BCC
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 00:36:08 -0800 (PST)
Received: by mail-ed1-f65.google.com with SMTP id y56so8071988edd.11
	for <yocto@yoctoproject.org>; Mon, 11 Feb 2019 00:36:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=MvI7wdmMw+OAvC8IjOSynpi5ZROV68c8ll4k0QoGd6I=;
	b=GBN8NX8mQolbTRx+5vmTqivoKI25qMLysN/0J7MWb1CR8RReWTp6apptHf/C51qELR
	Ial9QjPKeA+YKexVHcXbdUzWbPNzaU+HmDXQxk8dHs/iKP8pEun4S0SKtK9oGONwsdG1
	dUopIS7o1VBAVYG4fOdcwDFScB+asAA/wPf26aS+i03TurTCejUNs9Wnx/QcD15ZnUAF
	cntxKQZpAb6y9bjTj0zgyCLcJqyV4wNtIAuCii7DL+6mvOxWKjcqh9QuTgvdfaF0r8ey
	80qMIch+bnS5TELRiMHkaGEMm+hLfXbXtfCcR+RaY4XkqvFGjytUdT957JoFYjtLu0Y0
	CzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=MvI7wdmMw+OAvC8IjOSynpi5ZROV68c8ll4k0QoGd6I=;
	b=o3yOuml8DCz2juIwi86iV2ULTiJPXH8nlBQWUtjvruTwPzPMV9uF7bW1ZSBXSTXCfV
	lJiwoMkEG3ksXHBakXgjTszaqBAsA+J2JSj8fCJhV2Oo8ZwEAf4UpC0K1VRNNAbh6VPC
	I4n7IgSGRC/HZN8p6Eoh/Uk+I7IieY04IthM0iIH5MzG+4/KycdvEIyG4ZJ611wQr3jw
	VO9tN2W3xhBbSr8ELNSpbT1FzODRR9C7HNX0KwzWZfvAzNmSgoSPUtwFdnGNmvi6+I61
	rSVxCOTJ/ENRImuq8t8YZnbTp441czWCZXQDb2lwDg0Kh3Gh9hs3Gg31mbpK9taLWpK/
	C7xA==
X-Gm-Message-State: AHQUAubESEzLoS025GUKBjMFWsfJn9/6atr8t90ytq1hvpK5AeZoimI4
	XL1hnPklqhFu5DrMNvSowkzq5wHCcOXpcIUIIGn8Dx7Y
X-Google-Smtp-Source: AHgI3IabRAzWX8hj84y+xEPSu9XhfQLMKFLf8pKD8u6I9+y1tbM4DYzI+0uSvEKmOoiDsxQ8qQKcj5xv9Ce3VudcbFs=
X-Received: by 2002:a17:906:b749:: with SMTP id
	fx9mr26808203ejb.38.1549874167190; 
	Mon, 11 Feb 2019 00:36:07 -0800 (PST)
MIME-Version: 1.0
References: <CAA984JVuDni0rnaCEgAmP6egiv+3MP=SdAjLh0Aec2KJRBLKtw@mail.gmail.com>
In-Reply-To: <CAA984JVuDni0rnaCEgAmP6egiv+3MP=SdAjLh0Aec2KJRBLKtw@mail.gmail.com>
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Mon, 11 Feb 2019 09:35:56 +0100
Message-ID: <CAA984JXf-z19N8CgZjBROD7ow78Cr1TKXZ1kz47ZqCbQX-688g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Fixing devtool issue with kernel bbhappen do_patch recipe
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
X-List-Received-Date: Mon, 11 Feb 2019 08:36:09 -0000
Content-Type: multipart/alternative; boundary="0000000000002eb59405819a331d"

--0000000000002eb59405819a331d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

If you need more details about how to reproduce just ask, or if that's not
the correct mailing list, I'll be happy to post my message wherever it
belongs.

Regards,

Yann

On Mon, Jan 28, 2019 at 1:26 PM Yann CARDAILLAC <yann.cardaillac@smile.fr>
wrote:

> Hi all,
>
> We found a possible bug with boucman_work as mentionned in the IRC.
>
> It seems that when using the SDK there's an issue with the generated file
> workspace/appends/linux-yocto_4.18.bbappend (or equivalent depending on
> kernel and distro).
>
> In the do_patch rule, if some script are intended to be applied in anothe=
r
> language than python it will fail. I had the case with my BSP (phytec). W=
e
> had to change the rule with :
>
> do_patch[noexec] =3D "1"
>
> so that the rule is not executed which was what was probably intended wit=
h
> the former :
>
> do_patch() {
>     :
> }
>
> Here's the patch we would use to fix that. It patch the scipt
> scripts/lib/devtool/standard.py so that it properly generate the bbappend
> file. Please, do not hesitate to give me any feedback on my patch.
>
> Regards,
>
> --
> [image: SMILE] <http://www.smile.eu/>
>
> 20 rue des Jardins
> 92600 Asni=C3=A8res-sur-Seine
> *Yann CARDAILLAC*
> Ing=C3=A9nieur Linux Embarqu=C3=A9
>
> [image: email] yann.cardaillac@smile.fr
> [image: url] http://www.smile.eu
>
> [image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
> <https://www.facebook.com/smileopensource> [image: LinkedIn]
> <https://www.linkedin.com/company/smile> [image: Github]
> <https://github.com/Smile-SA>
>
>
> [image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=
=A9cessaire
>


--=20
[image: SMILE] <http://www.smile.eu/>

20 rue des Jardins
92600 Asni=C3=A8res-sur-Seine
*Yann CARDAILLAC*
Ing=C3=A9nieur Linux Embarqu=C3=A9

[image: email] yann.cardaillac@smile.fr
[image: url] http://www.smile.eu

[image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
<https://www.facebook.com/smileopensource> [image: LinkedIn]
<https://www.linkedin.com/company/smile> [image: Github]
<https://github.com/Smile-SA>


[image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=A9c=
essaire

--0000000000002eb59405819a331d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>If you need more details=
 about how to reproduce just ask, or if that&#39;s not the correct mailing =
list, I&#39;ll be happy to post my message wherever it belongs. <br></div><=
div><br></div><div>Regards,</div><div><br></div><div>Yann<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Jan 28, 2019 at 1:26 PM Yann CARDAILLAC &lt;<a href=3D"mailto:yann.cardaill=
ac@smile.fr">yann.cardaillac@smile.fr</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br><=
/div><div>We found a possible bug with boucman_work as mentionned in the IR=
C.<br></div><div><br></div><div>It seems that when using the SDK there&#39;=
s an issue with the generated file workspace/appends/linux-yocto_4.18.bbapp=
end (or equivalent depending on kernel and distro).<br></div><div><br></div=
><div>In the do_patch rule, if some script are intended to be applied in an=
other language than python it will fail. I had the case with my BSP (phytec=
). We had to change the rule with :<br></div><div><br></div><div>do_patch[n=
oexec] =3D &quot;1&quot;<br><br></div><div>so that the rule is not executed=
 which was what was probably intended with the former :</div><div><br></div=
><div>do_patch() {<br>=C2=A0=C2=A0=C2=A0 :<br>}<br><br></div><div>Here&#39;=
s the patch we would use to fix that. It patch the scipt scripts/lib/devtoo=
l/standard.py so that it properly generate the bbappend file. Please, do no=
t hesitate to give me any feedback on my patch. <br></div><div><br></div><d=
iv>Regards,<br></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail-m_3701=
538337207754993gmail_signature"><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width: 100%; height: auto;" src=3D"ht=
tp://ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"S=
MILE">
                </a><br><br>
                    <p>20 rue des Jardins<br>
92600 Asni=C3=A8res-sur-Seine</p>
            </td>
            <td style=3D"border-left:1px solid rgb(59,127,254);padding-left=
:20px;font-size:13px;color:rgb(255,128,84)">
                <div style=3D"color:rgb(255,128,84);font-size:14px">
                    <b>Yann CARDAILLAC</b>
                </div>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    Ing=C3=A9nieur Linux Embarqu=C3=A9<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right: 5px;" src=3D"http://ftp.smile.fr/client/Communication/signature/img=
/mail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right: 5px;" src=3D"http://ftp.smile.fr/cl=
ient/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=
=3D"12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h: 100%; height: auto;"></a></span>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <br>
   =20
    <br>
    <div style=3D"color:rgb(163,172,181);font-size:10px">
        <img src=3D"http://ftp.smile.fr/client/Communication/signature/img/=
eco.png" alt=3D"eco" width=3D"13" height=3D"11">
            Pour la plan=C3=A8te, n&#39;imprimez ce mail que si c&#39;est n=
=C3=A9cessaire
    </div>
    </font>
</div></div></div></div></div></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width: 100%; height: auto;" src=3D"ht=
tp://ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"S=
MILE">
                </a><br><br>
                    <p>20 rue des Jardins<br>
92600 Asni=C3=A8res-sur-Seine</p>
            </td>
            <td style=3D"border-left:1px solid rgb(59,127,254);padding-left=
:20px;font-size:13px;color:rgb(255,128,84)">
                <div style=3D"color:rgb(255,128,84);font-size:14px">
                    <b>Yann CARDAILLAC</b>
                </div>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    Ing=C3=A9nieur Linux Embarqu=C3=A9<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right: 5px;" src=3D"http://ftp.smile.fr/client/Communication/signature/img=
/mail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right: 5px;" src=3D"http://ftp.smile.fr/cl=
ient/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=
=3D"12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width: 100%; height: auto;"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h: 100%; height: auto;"></a></span>
                </div>
            </td>
        </tr>
        </tbody>
    </table>
    <br>
   =20
    <br>
    <div style=3D"color:rgb(163,172,181);font-size:10px">
        <img src=3D"http://ftp.smile.fr/client/Communication/signature/img/=
eco.png" alt=3D"eco" width=3D"13" height=3D"11">
            Pour la plan=C3=A8te, n&#39;imprimez ce mail que si c&#39;est n=
=C3=A9cessaire
    </div>
    </font>
</div></div></div></div>

--0000000000002eb59405819a331d--
