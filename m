Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 573E3E00D8C; Tue, 22 Oct 2019 03:17:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB939E00D16
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 03:17:09 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id y129so10937983vsc.6
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2019 03:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s03GrGW2lkC+A3dpO6CDytKw1jRYtdXxYijVzEguQps=;
	b=f7KEisagxuj/NGbEonLPqJksp3Tjv1M8KGN7rEXRHVtKOZdwCX5ahz5GZYpbAyzx6f
	3tBNo06yEFn/GoP3UjZnoVbn3HQ2Gtv6ZhJL8XAh5AXU506XBkTN9VEXd64jCOXRlSa7
	1L8M88WtE4Hn0pEkPDBeI4naTi8CIBCy+wkDKUhXm3JzZ6ZszQkbGCcYdwgg1kv4ufiJ
	RdhJeViEHIOCB8E6GxDdaLEqyUPSB4E+J+Eo3KtHjLRjg1E7wES8CUeqVquX6gQUDMsC
	M5ltNp5LvZElJ8RuqijhnA/96zO1B47/TICeWrWDyTeoE/oyVrEp4oWeubgP4z+WBC+q
	0xfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s03GrGW2lkC+A3dpO6CDytKw1jRYtdXxYijVzEguQps=;
	b=Xf392s5lkVW/zhkknfmCwdJrebnWR1iomzSGcPJencXujfMBZKgqtR0luTvN28xnLH
	f3DdVtQj0TVMPRUwGMOsPVl1vvJHKr/qSnRQlLRhVckKZ7bw2BUSVnsIMnVhPyfuygo8
	KfkjDgvDQ1Do60Gn60SeRYg58j66PhzMOqy1GspwGMu28axX0FjMPhbQHADBXjwUEKxb
	awl3uD7TCR2+cvUMz3T8iDgY8+DYW/lSHf9oayZg4yauY+MmjREdHgK3BDZvgjmiW9BR
	BI/l5wVSPveED7rqmDhIJZsuenokEx/eMdlZFiRqvAC7emgR6w7CCkFTcGdFI6ak3fJ1
	qKwg==
X-Gm-Message-State: APjAAAVPW+dn+4EAyD7VfKcSkQP9mMppArCpltLAEDQmEWXx43uJtF30
	QHiKq2SNvFRRA1auH3MmZSEh8RtVuopkZ6g8zG0=
X-Google-Smtp-Source: APXvYqxakpcGm2Y05VJ9F/T8uxJr63EaqeypZb+RvBDw4+p7lJxhn/Gw/GnsJKoZC2FrivuWygMODtFvlLywmSgHJ+g=
X-Received: by 2002:a67:c40f:: with SMTP id c15mr1247934vsk.94.1571739428919; 
	Tue, 22 Oct 2019 03:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAA984JVLuoFG_60hnUgmuaf4gQ=HrWEiBHpC=Vt2MpKZyPEXdw@mail.gmail.com>
In-Reply-To: <CAA984JVLuoFG_60hnUgmuaf4gQ=HrWEiBHpC=Vt2MpKZyPEXdw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Oct 2019 12:16:57 +0200
Message-ID: <CANNYZj94PfzgKwozfyTyvnDCQZgXNPRZ27EJqE_5hp-FP5d4iA@mail.gmail.com>
To: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] [auto-upgrade-helper] Add SPDX identifier to auto-upgrade-helper
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
X-List-Received-Date: Tue, 22 Oct 2019 10:17:10 -0000
Content-Type: multipart/alternative; boundary="000000000000571d3805957d1a54"

--000000000000571d3805957d1a54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, patch applied and pushed.

Alex

On Mon, 21 Oct 2019 at 14:46, Yann CARDAILLAC <yann.cardaillac@smile.fr>
wrote:

> Hi guys,
>
> I'm working on bug :
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13531
>
> I've add GPLV2-or-later to all the sources, is there any modification you
> want to add?
>
> Best regards,
>
> Yann CARDAILLAC
> --
> [image: SMILE] <http://www.smile.eu/>
>
> 20 rue des Jardins
> 92600 Asni=C3=A8res-sur-Seine
> *Yann CARDAILLAC*
> Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s
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

--000000000000571d3805957d1a54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks, patch applied and pushed.</div><div><br></div=
><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, 21 Oct 2019 at 14:46, Yann CARDAILLAC &lt;<a hr=
ef=3D"mailto:yann.cardaillac@smile.fr">yann.cardaillac@smile.fr</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>Hi guys, <br></div><div><br></div><div>I&#39;m working on bug :<b=
r></div><div><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D13531" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?=
id=3D13531</a></div><div><br></div><div>I&#39;ve add GPLV2-or-later to all =
the sources, is there any modification you want to add?</div><div><br></div=
><div>Best regards,</div><div><br></div><div>Yann CARDAILLAC<br></div>-- <b=
r><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">

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
                    Ing=C3=A9nieur Syst=C3=A8mes Embarqu=C3=A9s<br>
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
</div></div></div></div></div></div></div>
</blockquote></div>

--000000000000571d3805957d1a54--
