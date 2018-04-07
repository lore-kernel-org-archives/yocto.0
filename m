Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B0FDE00B76; Sat,  7 Apr 2018 08:18:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A27EE00956
	for <yocto@yoctoproject.org>; Sat,  7 Apr 2018 08:18:22 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id 19-v6so5216199itw.3
	for <yocto@yoctoproject.org>; Sat, 07 Apr 2018 08:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aCPlVFe/EptqVo3jB2h+z+TKyV2ydmBImgwPK801WlU=;
	b=Zb6G8cxVNBDUF5Atw6eTQspjYzlpxUEipSXzTj50Rwx8WlGFizEKL8EyrIkImfnSxN
	+Ao+G/DT2kGfuAerM0TkQhwrFGpuR7fUy4xXg9yNwBG1g8YQoRaW1UG2mVOijfPRK8+R
	h7cVekVqDIpmBY0UHKftiG/vYaGbwHfJV2tEVa+rAlqnKMiJaLPCzHrjsMk8TyuOwgDD
	ugzyNAMevA9Tb2UevSvQpPi9sPMl2ss1cKRxv6gvyBGwdm9JgGZ9/ZtknWTfgkNnhFtV
	e46cpCJc1eYLlFz2RLgbO66WqqKC2+KSwgRLCUKIih08xH5Rg6Bih7pXt1589E6ea43X
	pJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aCPlVFe/EptqVo3jB2h+z+TKyV2ydmBImgwPK801WlU=;
	b=CX0sTCtD96tm/m0kfk6vbuIISmarWP9TmG7j3ZOqFLhbhgHdwqApPCrHvNl7I7TjjI
	RIzPvchy5xHSreOknZRJQn1hDx49u27MaJmFmCWcZL66E4ajqTpnTpQf1kdQNAfoN3iQ
	1ozBF4p5osvWz2S8ffLSeCZvD7dl3f7eaKTxKc6MQUaQ0vlORKYR9uJnq6zgeZd9aO1m
	x6Ja6w7WLO8uo8RkwPtHlOLpejZDTpfIMyF98TDJW9q37A7mUDoltE8PwnQBvk00Zamh
	bCKIjrp3Ho6UydcCIXqHY2KkvWURoZmoqpeV1ScNngJNek4ePwgOWBT4kPZYsc3HYBDW
	RC0Q==
X-Gm-Message-State: ALQs6tBuPADzJIsmcl6G3PVKK6+Sto8dsuyPQ1K0wA43Zq7zCIeeKeMw
	lVUuLCwvMBbwKwLAYAI5O+JBoY/JYz/OSMwpDXc=
X-Google-Smtp-Source: AIpwx4/0Q8qQ4NEIA4pe281/FDL4jZyWdUeBVXr3ptcPbu3qp9Icg8JHOG4Yqck6cKU6BggmWYhorm9atpCagmFpvoo=
X-Received: by 2002:a24:5f51:: with SMTP id
	r78-v6mr19908622itb.119.1523114302480; 
	Sat, 07 Apr 2018 08:18:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.176.144 with HTTP; Sat, 7 Apr 2018 08:18:02 -0700 (PDT)
In-Reply-To: <674400918.88037.1523083601988@mail.yahoo.com>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Sat, 7 Apr 2018 17:18:02 +0200
Message-ID: <CAB2nKc8AORF1y1oimTacE6fvUcrFPkLV3EEgMs7k=gZpd4pzdg@mail.gmail.com>
To: Mostafa Farzane <farzanemostafa@yahoo.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Sat, 07 Apr 2018 15:18:24 -0000
Content-Type: multipart/alternative; boundary="000000000000f3a619056943ae7d"

--000000000000f3a619056943ae7d
Content-Type: text/plain; charset="UTF-8"

Hi,

Did you add meta-multimedia to BBLAYERS as explained here
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#enabling-your-layer


BR,
Vincent

2018-04-07 8:46 GMT+02:00 Mostafa Farzane <farzanemostafa@yahoo.com>:

> Hi,
> I need to add libsrtp to my yocto image. So I added libsrtp to
> "IMAGE_INSTALL". But I faced the following errors:
>
> Unknown package 'libsrtp'.
>
> Collected errors:
>  * opkg_solver_install: Cannot install package libsrtp.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--000000000000f3a619056943ae7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>Did you add meta-multimedia t=
o BBLAYERS as explained here</div><div><a href=3D"https://www.yoctoproject.=
org/docs/current/mega-manual/mega-manual.html#enabling-your-layer">https://=
www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#enabling-you=
r-layer</a>=C2=A0</div><div><br></div><div>BR,</div><div>Vincent</div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-04-07 8:46 =
GMT+02:00 Mostafa Farzane <span dir=3D"ltr">&lt;<a href=3D"mailto:farzanemo=
stafa@yahoo.com" target=3D"_blank">farzanemostafa@yahoo.com</a>&gt;</span>:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div style=3D"font-family:Helvetica=
 Neue,Helvetica,Arial,sans-serif;font-size:13px"><div style=3D"font-family:=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:13px"><div><span><div s=
tyle=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=
Hi,</div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Ari=
al,sans-serif">I need to add libsrtp to my yocto image. So I added libsrtp =
to &quot;IMAGE_INSTALL&quot;. But I faced the following errors:</div><div s=
tyle=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=
<br></div><div style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Ar=
ial,sans-serif"><div>Unknown package &#39;libsrtp&#39;.</div><div><br></div=
><div>Collected errors:</div><div>=C2=A0* opkg_solver_install: Cannot insta=
ll package libsrtp.</div></div></span><br></div></div></div></div><br>--<br=
>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject">https://lists.yoctoproject</a>.<wbr>=
org/listinfo/yocto<br>
<br></blockquote></div><br></div>

--000000000000f3a619056943ae7d--
