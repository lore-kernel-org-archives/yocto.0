Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 376C9E00B92; Thu, 14 Feb 2019 03:01:16 -0800 (PST)
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
	*      [209.85.208.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B947EE00B92
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 03:01:14 -0800 (PST)
Received: by mail-ed1-f68.google.com with SMTP id r15so4628954eds.9
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 03:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=idSX9rcrC9ClTZdGamHNyGdBkYlur1iTKG4feNpyE1w=;
	b=jGOeylAfmV+1Zp9t8u/8Sw0YTkHXB4q+H19DSRIMvg3Y01Rcqcm87tFd7LS0ygTiqM
	ncgFcRrs/+C1Id4C1lbFOsH4S+SLbmVNZPNO4BngTuG1n6jbCatkCPD9VgVQz2PtlwVL
	86W8pJv2T2ngDQJIm6qnplxxELf+c/chBFD4YCrcRjPF5FqIARDkDRD/7ecKjtISwSKT
	O6cu/y39y4EUEOqc8mP0Y30G22rL+6YvwRw8faJxp8RCOOAzjaEG7c5t0C+/8gnLEjyh
	fmphjXCO5vTPZzOXNYRsXZ80WwdaZcOLF6rf5xuI4+GpYzDAennzGB72wQrC70QgqZYO
	ERPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=idSX9rcrC9ClTZdGamHNyGdBkYlur1iTKG4feNpyE1w=;
	b=m74/NuVqS/SCDIOsKKG7M+TQd5807XfyTTo71ukIQjtMvIUczIeHuvFflEF84JIvs4
	hFravdYxdpM8xh3aVgQsKYkxaxPInC63dCdY41njrbbaWpAk7ugtFkQLxLQmwUbWcDnQ
	MW5ahS1wzKATg1S/DZ1eTdjQqRETXgGPtnMpcq0XP6IlKrEXEz2qX5N9d9OsSHxSL5Pj
	HH0c4qt1cKmF3/vUi8rbjW8KoBNDXbez/KdzyN34RQqsmaK4n45vRrE8Ct3HYEAGvSG8
	6ipkchd9zUQxbFra6gDwEwwxcxi3eQztFSiqd1NModBVWo+BuGxJLZZtVdSy61GgY8e2
	G6dA==
X-Gm-Message-State: AHQUAubZfGUFXdAdxgG0MAlQh2W2CAyuYE9vz9l3ohdnUmP/n/rbhJSZ
	BXjvth2i4Kxqnh4OXgQ7QNbW+FiBHzgR7Q0zDKnI2liz
X-Google-Smtp-Source: AHgI3IYdXxJCmy4f5gEX3QF9tzimijfRenD7g97ti8CpD8QXnvhW0UxOfpYeSgJUXukcYAkeQOIUdJ8d3SZmwrq8AV8=
X-Received: by 2002:a50:92cb:: with SMTP id l11mr2546187eda.25.1550142073564; 
	Thu, 14 Feb 2019 03:01:13 -0800 (PST)
MIME-Version: 1.0
References: <CAA984JVuDni0rnaCEgAmP6egiv+3MP=SdAjLh0Aec2KJRBLKtw@mail.gmail.com>
	<CAA984JXf-z19N8CgZjBROD7ow78Cr1TKXZ1kz47ZqCbQX-688g@mail.gmail.com>
In-Reply-To: <CAA984JXf-z19N8CgZjBROD7ow78Cr1TKXZ1kz47ZqCbQX-688g@mail.gmail.com>
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Thu, 14 Feb 2019 12:01:02 +0100
Message-ID: <CAA984JVWM0t2-L8SQSWG8Z5JP9aXA-Vz=-EeYSYpczHaT-w2nA@mail.gmail.com>
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
X-List-Received-Date: Thu, 14 Feb 2019 11:01:16 -0000
X-Groupsio-MsgNum: 44101
Content-Type: multipart/mixed; boundary="000000000000a5bdcc0581d8933d"

--000000000000a5bdcc0581d8933d
Content-Type: multipart/alternative; boundary="000000000000a5bdc80581d8933b"

--000000000000a5bdc80581d8933b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

A colleague gave a first look to my patch, and gave me advice about how to
improve it.

Here's a new version.

Regards,

On Mon, Feb 11, 2019 at 9:35 AM Yann CARDAILLAC <yann.cardaillac@smile.fr>
wrote:

> Hi,
>
> If you need more details about how to reproduce just ask, or if that's no=
t
> the correct mailing list, I'll be happy to post my message wherever it
> belongs.
>
> Regards,
>
> Yann
>
> On Mon, Jan 28, 2019 at 1:26 PM Yann CARDAILLAC <yann.cardaillac@smile.fr=
>
> wrote:
>
>> Hi all,
>>
>> We found a possible bug with boucman_work as mentionned in the IRC.
>>
>> It seems that when using the SDK there's an issue with the generated fil=
e
>> workspace/appends/linux-yocto_4.18.bbappend (or equivalent depending on
>> kernel and distro).
>>
>> In the do_patch rule, if some script are intended to be applied in
>> another language than python it will fail. I had the case with my BSP
>> (phytec). We had to change the rule with :
>>
>> do_patch[noexec] =3D "1"
>>
>> so that the rule is not executed which was what was probably intended
>> with the former :
>>
>> do_patch() {
>>     :
>> }
>>
>> Here's the patch we would use to fix that. It patch the scipt
>> scripts/lib/devtool/standard.py so that it properly generate the bbappen=
d
>> file. Please, do not hesitate to give me any feedback on my patch.
>>
>> Regards,
>>
>> --
>> [image: SMILE] <http://www.smile.eu/>
>>
>> 20 rue des Jardins
>> 92600 Asni=C3=A8res-sur-Seine
>> *Yann CARDAILLAC*
>> Ing=C3=A9nieur Linux Embarqu=C3=A9
>>
>> [image: email] yann.cardaillac@smile.fr
>> [image: url] http://www.smile.eu
>>
>> [image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
>> <https://www.facebook.com/smileopensource> [image: LinkedIn]
>> <https://www.linkedin.com/company/smile> [image: Github]
>> <https://github.com/Smile-SA>
>>
>>
>> [image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=
=A9cessaire
>>
>
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

--000000000000a5bdc80581d8933b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>A colleague gave a first=
 look to my patch, and gave me advice about how to improve it. <br></div><d=
iv><br></div><div>Here&#39;s a new version. <br></div><div><br></div><div>R=
egards,<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Feb 11, 2019 at 9:35 AM Yann CARDAILLAC &lt;<a hre=
f=3D"mailto:yann.cardaillac@smile.fr">yann.cardaillac@smile.fr</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hi,</div><div><br></div><div>If you need more details about how to=
 reproduce just ask, or if that&#39;s not the correct mailing list, I&#39;l=
l be happy to post my message wherever it belongs. <br></div><div><br></div=
><div>Regards,</div><div><br></div><div>Yann<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 28, 2019=
 at 1:26 PM Yann CARDAILLAC &lt;<a href=3D"mailto:yann.cardaillac@smile.fr"=
 target=3D"_blank">yann.cardaillac@smile.fr</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div=
><br></div><div>We found a possible bug with boucman_work as mentionned in =
the IRC.<br></div><div><br></div><div>It seems that when using the SDK ther=
e&#39;s an issue with the generated file workspace/appends/linux-yocto_4.18=
.bbappend (or equivalent depending on kernel and distro).<br></div><div><br=
></div><div>In the do_patch rule, if some script are intended to be applied=
 in another language than python it will fail. I had the case with my BSP (=
phytec). We had to change the rule with :<br></div><div><br></div><div>do_p=
atch[noexec] =3D &quot;1&quot;<br><br></div><div>so that the rule is not ex=
ecuted which was what was probably intended with the former :</div><div><br=
></div><div>do_patch() {<br>=C2=A0=C2=A0=C2=A0 :<br>}<br><br></div><div>Her=
e&#39;s the patch we would use to fix that. It patch the scipt scripts/lib/=
devtool/standard.py so that it properly generate the bbappend file. Please,=
 do not hesitate to give me any feedback on my patch. <br></div><div><br></=
div><div>Regards,<br></div><div><br>-- <br><div dir=3D"ltr" class=3D"gmail-=
m_-1318864412323360700gmail-m_3701538337207754993gmail_signature"><div dir=
=3D"ltr">

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
mail-m_-1318864412323360700gmail_signature"><div dir=3D"ltr">

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

--000000000000a5bdc80581d8933b--

--000000000000a5bdcc0581d8933d
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-correct-do_patch-for-kernel-bbappend-for-sdk.patch"
Content-Disposition: attachment; 
	filename="0001-correct-do_patch-for-kernel-bbappend-for-sdk.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_js4ijbw90>
X-Attachment-Id: f_js4ijbw90

RnJvbSAxNzVlMmYwYzIxOTM0ODI5NmI5NzEyOWJjY2JkMzk4MjM1MjdlNDExIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZYW5uIENBUkRBSUxMQUMgPHlhbm4uY2FyZGFpbGxhY0BzbWls
ZS5mcj4KRGF0ZTogVGh1LCAxNCBGZWIgMjAxOSAxMTozOTowMSArMDEwMApTdWJqZWN0OiBbUEFU
Q0hdIGNvcnJlY3QgZG9fcGF0Y2ggZm9yIGtlcm5lbCBiYmFwcGVuZCBmb3Igc2RrCgpkb19wYXRj
aCBydWxlIG9mIFNESydzIHdvcmtzcGFjZS9hcHBlbmRzL2xpbnV4LSouYmJoYXBwZW5kIG1heSBm
YWlsIGlmIHNjcmlwdCBhcmUgbm90IHdyaXR0ZW4gaW4gUHl0aG9uCgp0aGF0IHdhcyB0aGUgY2Fz
ZSB3aXRoIFBoeXRlYydzIEJTUCwgdGhlIGZpeCB3YXMgdG8gcmVwbGFjZSB0aGUgZG9fcGF0Y2gg
cnVsZSB3aXRoIDoKCmRvX3BhdGNoW25vZXhlY109IjEiIHdoZW4gdGhlIGZpbGUgd2FzIGdlbmVy
YXRlZCBpbiBzY3JpcHRzL2xpYi9kZXZ0b29sL3N0YW5kYXJkLnB5CgpTaWduZWQtb2ZmLWJ5OiBZ
YW5uIENBUkRBSUxMQUMgPHlhbm4uY2FyZGFpbGxhY0BzbWlsZS5mcj4KLS0tCiBzY3JpcHRzL2xp
Yi9kZXZ0b29sL3N0YW5kYXJkLnB5IHwgNCArLS0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9saWIvZGV2dG9vbC9z
dGFuZGFyZC5weSBiL3NjcmlwdHMvbGliL2RldnRvb2wvc3RhbmRhcmQucHkKaW5kZXggZDE0Yjdh
Ni4uNWNiNTlmMyAxMDA2NDQKLS0tIGEvc2NyaXB0cy9saWIvZGV2dG9vbC9zdGFuZGFyZC5weQor
KysgYi9zY3JpcHRzL2xpYi9kZXZ0b29sL3N0YW5kYXJkLnB5CkBAIC04NDAsOSArODQwLDcgQEAg
ZGVmIG1vZGlmeShhcmdzLCBjb25maWcsIGJhc2VwYXRoLCB3b3Jrc3BhY2UpOgogICAgICAgICAg
ICAgaWYgYmIuZGF0YS5pbmhlcml0c19jbGFzcygna2VybmVsJywgcmQpOgogICAgICAgICAgICAg
ICAgIGYud3JpdGUoJ1NSQ1RSRUVDT1ZFUkVEVEFTS1MgPSAiZG9fdmFsaWRhdGVfYnJhbmNoZXMg
ZG9fa2VybmVsX2NoZWNrb3V0ICcKICAgICAgICAgICAgICAgICAgICAgICAgICdkb19mZXRjaCBk
b191bnBhY2sgZG9fa2VybmVsX2NvbmZpZ21lIGRvX2tlcm5lbF9jb25maWdjaGVjayJcbicpCi0g
ICAgICAgICAgICAgICAgZi53cml0ZSgnXG5kb19wYXRjaCgpIHtcbicKLSAgICAgICAgICAgICAg
ICAgICAgICAgICcgICAgOlxuJwotICAgICAgICAgICAgICAgICAgICAgICAgJ31cbicpCisgICAg
ICAgICAgICAgICAgZi53cml0ZSgnXG5kb19wYXRjaFtub2V4ZWNdID0gIjEiXG4nKQogICAgICAg
ICAgICAgICAgIGYud3JpdGUoJ1xuZG9fY29uZmlndXJlX2FwcGVuZCgpIHtcbicKICAgICAgICAg
ICAgICAgICAgICAgICAgICcgICAgY3AgJHtCfS8uY29uZmlnICR7U30vLmNvbmZpZy5iYXNlbGlu
ZVxuJwogICAgICAgICAgICAgICAgICAgICAgICAgJyAgICBsbiAtc2ZUICR7Qn0vLmNvbmZpZyAk
e1N9Ly5jb25maWcubmV3XG4nCi0tIAoyLjcuNAoK

--000000000000a5bdcc0581d8933d--
