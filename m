Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F1CE00404
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 14:46:52 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hj3so4036108wib.1
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 14:46:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xmcMxjnK8f5RGoOQpZuG7txCp/JhaMfk7Y+KTb2E4XQ=;
	b=MqEurZoIZrbYIJztaiEyZI0/WWWK4+OkB1xvVbD1aFAS0iNB7WrKMjS3sSOLeZ1kCU
	EWPVfNucUf0Tk/ER31/8p/AUv+B77q1+X2Rw5u3tIVwcVjVJAhQR/dHPiGuteIQX0NnK
	dnz3BRmUz8HBxE4kGSjugJCu409aTeoeW7PWfMVl0mvEL+DQ+MzMnFPj9kw7DWlb4o6j
	nftExO+TMhSa5XsFM78o4AM+jExuXs/6WhJ5wshiJ9fgvzzIETir/loRM8/SRM6tSM1i
	nOQaL+oSo8jmKdzvMAniHMe9mUl2nnVfZnRuVJspiJeLDPnGMl7TOOH3iSQhPoSVwnbI
	dLCw==
X-Gm-Message-State: ALoCoQm8wNmLXq+lD/iKTkVnOsCjoibvSSgzLz/NCF+IQUAAvE5SDHVMX2IAhMYDh35wd3NZUt8T
X-Received: by 10.180.187.41 with SMTP id fp9mr9980859wic.33.1378763211307;
	Mon, 09 Sep 2013 14:46:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Mon, 9 Sep 2013 14:46:31 -0700 (PDT)
X-Originating-IP: [5.13.218.230]
In-Reply-To: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
References: <1378211205-4866-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Sep 2013 00:46:31 +0300
Message-ID: <CAK18fxH=E4EfPC+D6Gz_VpLwEJ20H0B39YVb4UNzG_Ty4-e1jw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] 3.8.y series linux-raspberrypi kernel
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
X-List-Received-Date: Mon, 09 Sep 2013 21:46:55 -0000
Content-Type: multipart/alternative; boundary=001a11c3844c70916604e5fa53d6

--001a11c3844c70916604e5fa53d6
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 3, 2013 at 3:26 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Build and boot tested.
>
> Andrei: I'm unsure if you want this to be the new preferred kernel
> version, I'll
> leave that up to you.
>

Have the main branch the default one. That would be 3.6 for now.
-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c3844c70916604e5fa53d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Tue, Sep 3, 2013 at 3:26 PM, Paul Barker <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.uk=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Build and boot tested.<br>
<br>
Andrei: I&#39;m unsure if you want this to be the new preferred kernel vers=
ion, I&#39;ll<br>
leave that up to you.<br></blockquote><div><br></div><div>Have the main bra=
nch the default one. That would be 3.6 for now. =A0</div></div>-- <br><div =
dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align=
:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11c3844c70916604e5fa53d6--
