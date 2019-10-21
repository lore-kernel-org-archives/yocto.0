Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E39B1E00C4F; Mon, 21 Oct 2019 08:15:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D44D2E00805
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 08:15:15 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id q70so6591668wme.1
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 08:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=nFEGPtuETHvtUR8wwgrjtQQHNg4xgtgZSNdAQz8yRSY=;
	b=qSMsue8lqshaFVUrhL6EPXuWNO8d0EslWE0DRlZdk8wNAkrib1snOwgCQl6osy/E+D
	6+uH4XIqUXXxUaNnjDRRIb8XqO8F7m8nAscQkj7MZW7nMn7ovNrCpeJjxJZf/YsjNLyK
	2F4TtnjkWkRxAn8eygFRGzZJZR/6BgnsZROk50GR+ZuJaeciaeP84n5pOHeoTwZ4rY45
	AmsdhlskePa//LTPV4VqSHr7+x52yC+qCoGZFISHyJwj+if0Cs3QSsQRNUpNQ6rHIDlf
	vAAu4Si/cTZHmXV+N/8BC5eiehb+d1hWAlqOJUBRsT59MEVoUfjjd5cdT7jzz+ajtKni
	0u1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=nFEGPtuETHvtUR8wwgrjtQQHNg4xgtgZSNdAQz8yRSY=;
	b=r9AqYR2U0I6gLlFGIhndVZEPBiCl5AqrgX+ZkYUHZcUyHBq/r3BVubok82HXaN2DnF
	gWwNvf5Sq7hR9F1eTfIurSEp7fei2XASnsVrzP/DhLRamTgQV3yg/0+DkfhtT4VqoxSJ
	tMGECHrSekNVjwQT2F0g9yAcKqVj+si6MqeppwS22ZdnDXUtln4TZ7E7tm/CeBHWZ3pT
	Z86XZY0HCurek51a3yap/9WGMmMKno4ptupoNtL0LBKAoFygijU74zc+UFt3uel9tFxo
	UlIPzPCYtoJpY2mWRWSZcqD9BM20WW6w3ttD1Bv9MPhPc9n+iLUvgmxL1YOd5E6oYl1o
	GjZQ==
X-Gm-Message-State: APjAAAWnpMS7VMO5YMecn3l6ZBqSXoCc7ElA4XhSvm6nvzyiwqNWqpF1
	eUJODmidCTcf3zQGGIWoa0BqqJ74oAugWDN6/z2kchUGgKM=
X-Google-Smtp-Source: APXvYqzJsICp/3pWDqbV73MGa5XHJFrX4hImDmbK7DWOgVFQ0rX8NCjNQKDabmDDgZftYqgh28ioJzGqLDtljeIETSc=
X-Received: by 2002:a1c:7e57:: with SMTP id z84mr14971826wmc.84.1571670914701; 
	Mon, 21 Oct 2019 08:15:14 -0700 (PDT)
MIME-Version: 1.0
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Mon, 21 Oct 2019 17:15:03 +0200
Message-ID: <CAA984JVEEC2F9EQ7jOiZsVVwFEcgMYWKnUxfnGEN0dUXPHti1g@mail.gmail.com>
To: yocto@yoctoproject.org
Cc: paul.eggleton@linux.intel.com, mark.hatle@windriver.co
Subject: [layerindex-web] Add SPDX Identifier
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
X-List-Received-Date: Mon, 21 Oct 2019 15:15:17 -0000
Content-Type: multipart/alternative; boundary="000000000000932fc905956d26cb"

--000000000000932fc905956d26cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13527

I'm beginning the work of updating the layerindex-web repo, this one is a
bit tricky, how should I treat the files generated using Django ?

*For now I've given them MIT as for the other hand written script. However
I'm kind of worried that it's not the proper licence. *

For the css side, I've added MIT to :

./rrs/static/css/rrs-additional.css
and
./layerindex/static/css/additional.css

*I've let the bootstraps css untouched since I guess that's not for us to
licence. *

I've yet to do html, txt and sh files, do you have any advices before I
start?

Regards,

--=20
[image: SMILE] <http://www.smile.eu/>

20 rue des Jardins
92600 Asni=C3=A8res-sur-Seine
*Yann CARDAILLAC*
Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s

[image: email] yann.cardaillac@smile.fr
[image: url] http://www.smile.eu

[image: Twitter] <https://twitter.com/GroupeSmile> [image: Facebook]
<https://www.facebook.com/smileopensource> [image: LinkedIn]
<https://www.linkedin.com/company/smile> [image: Github]
<https://github.com/Smile-SA>


[image: eco] Pour la plan=C3=A8te, n'imprimez ce mail que si c'est n=C3=A9c=
essaire

--000000000000932fc905956d26cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div><a href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D13527">https://bugzilla.yoctoproject=
.org/show_bug.cgi?id=3D13527</a></div><div><br></div><div>I&#39;m beginning=
 the work of updating the layerindex-web repo, this one is a bit tricky, ho=
w should I treat the files generated using Django ? <br></div><div><br></di=
v><div><b>For now I&#39;ve given them MIT as for the other hand written scr=
ipt. However I&#39;m kind of worried that it&#39;s not the proper licence. =
</b><br></div><div><br></div><div>For the css side, I&#39;ve added MIT to :=
</div><div><br></div><div>./rrs/static/css/rrs-additional.css</div><div>and=
</div><div>./layerindex/static/css/additional.css</div><div><br></div><div>=
<b>I&#39;ve let the bootstraps css untouched since I guess that&#39;s not f=
or us to licence. </b><br></div><div><br></div><div>I&#39;ve yet to do html=
, txt and sh files, do you have any advices before I start?<br></div><div><=
br></div><div>Regards, <br></div><div><br></div>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr">

                    <div style=3D"display:block"><div>
   =20
    <font face=3D"Raleway, regular">
    <table style=3D"padding:20px" border=3D"0">
        <tbody>
        <tr>
            <td style=3D"font-size:13px;color:rgb(255,128,84);text-align:ce=
nter;padding-right:30px">
                <a href=3D"http://www.smile.eu/" target=3D"_blank">
                    <img style=3D"max-width:100%;height:auto" src=3D"http:/=
/ftp.smile.fr/client/Communication/signature/img/Logo-new.png" alt=3D"SMILE=
">
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
                    Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s<br>
                   =20
                </div><br>
                <div style=3D"color:rgb(59,127,254);font-size:13px">
                    <span style=3D"white-space:nowrap"><img style=3D"margin=
-right:5px" src=3D"http://ftp.smile.fr/client/Communication/signature/img/m=
ail.png" alt=3D"email" width=3D"12" height=3D"10">
                        <a href=3D"mailto:yann.cardaillac@smile.fr" style=
=3D"color:rgb(59,127,254);font-size:13px;text-decoration:none" target=3D"_b=
lank">yann.cardaillac@smile.fr</a>
                    </span>
                     <br>
                                                    <span style=3D"white-sp=
ace:nowrap"><img style=3D"margin-right:5px" src=3D"http://ftp.smile.fr/clie=
nt/Communication/signature/img/web.png" alt=3D"url" width=3D"12" height=3D"=
12">
<a href=3D"http://www.smile.eu" style=3D"color:rgb(59,127,254);font-size:13=
px;text-decoration:none" target=3D"_blank">http://www.smile.eu</a> =20
                  </span>
                                </div>

                <br>
                <div>
                    <span><a style=3D"margin-right:5px" href=3D"https://twi=
tter.com/GroupeSmile" target=3D"_blank"><img src=3D"http://ftp.smile.fr/cli=
ent/Communication/signature/img/rs-twitter.png" alt=3D"Twitter" style=3D"ma=
x-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.facebook.com/smileopensource" target=3D"_blank"><img src=3D"http://ftp.smi=
le.fr/client/Communication/signature/img/rs-facebook.png" alt=3D"Facebook" =
style=3D"max-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://www=
.linkedin.com/company/smile" target=3D"_blank"><img src=3D"http://ftp.smile=
.fr/client/Communication/signature/img/rs-linkedin.png" alt=3D"LinkedIn" st=
yle=3D"max-width:100%;height:auto"></a></span>
                    <span><a style=3D"margin-right:5px" href=3D"https://git=
hub.com/Smile-SA" target=3D"_blank"><img src=3D"http://ftp.smile.fr/client/=
Communication/signature/img/rs-github.png" alt=3D"Github" style=3D"max-widt=
h:100%;height:auto"></a></span>
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
</div></div></div></div></div></div></div>

--000000000000932fc905956d26cb--
