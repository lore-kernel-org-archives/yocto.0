Return-Path: <joaohf@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D96E01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 13:44:50 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so4546169bkc.35
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 13:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FUIiN5bX7bY2b9RwX/K82+HeQCn231Dw0cjqkA5XFSU=;
	b=UT82P4a16ci6rSidN3tgZuRuH3XCdAa+fEce6x3KKtfZ14o8tv5IVCOY51oUXQajWF
	An6skAD5T76wpWlL8Tw7tq7LTGJ/vhcBY6ViXvn+Ui9Ua7iIx+dPSXGd/Yci+gH13G9L
	eBlV4Xh8YPt+Z1kXbVs78OJ0OgiIVAeFbHZSzJcdGmUECfEyU/1ZdePM6209gs9aTO4j
	SwC7OAYLM9zEKZlewpr+cMMk5sR9/glb5fxutyON2Gh8CMtiThfMA7oeqfqxbz2gOkW6
	PHr3WLpxgbHvkyeYXY80wQHA/blqsfPUeJzBUMJpNIZxyUbkYb+R+L1aDiAKIB1y3/A6
	DphQ==
MIME-Version: 1.0
Received: by 10.204.128.152 with SMTP id k24mr5127700bks.127.1331585088894;
	Mon, 12 Mar 2012 13:44:48 -0700 (PDT)
Received: by 10.204.229.16 with HTTP; Mon, 12 Mar 2012 13:44:48 -0700 (PDT)
In-Reply-To: <3351192.6a7q7nAkMU@helios>
References: <CANFVK78iYKEwh=ypSX3cmo0AkY=aOrLGB=T3DttPugWsv-Ws0Q@mail.gmail.com>
	<3351192.6a7q7nAkMU@helios>
Date: Mon, 12 Mar 2012 17:44:48 -0300
Message-ID: <CANFVK7-=4JAx0vk5M93=zoh+XWDmmcsmarxvsOyfh1e9PtiXCw@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: custom image recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Mar 2012 20:44:50 -0000
Content-Type: multipart/alternative; boundary=0015174c3c203635f704bb11d08d

--0015174c3c203635f704bb11d08d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks.

I will try this.

Yes, the preferred method to achieve this is to use bbappends for the
> recipes
> where these files appear if they are already provided by a recipe
>


> For new files you can either include them via the same bbappend mechanism
> if
> that makes sense for the particular files, or a separate recipe.
>
>

--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

--0015174c3c203635f704bb11d08d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br>Thanks.<br><br>I will try this.<br><br>
<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Yes, the preferre=
d method to achieve this is to use bbappends for the recipes<br>
where these files appear if they are already provided by a recipe<br></bloc=
kquote><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
For new files you can either include them via the same bbappend mechanism i=
f<br>
that makes sense for the particular files, or a separate recipe.<br>
<br></blockquote></div><br clear=3D"all"><br>-- <br>-----------------------=
------------------------------------<br>Jo=C3=A3o Henrique Freitas - <a hre=
f=3D"http://joaohf_at_gmail.com">joaohf_at_gmail.com</a><br>Campinas-SP-Bra=
sil<br>
BSD051283<br>LPI 1<br><a href=3D"http://www.joaohfreitas.eti.br">http://www=
.joaohfreitas.eti.br</a><br>

--0015174c3c203635f704bb11d08d--
