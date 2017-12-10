Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AD03E00D20; Sun, 10 Dec 2017 08:45:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42979E008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 08:45:44 -0800 (PST)
Received: by mail-wr0-f181.google.com with SMTP id q9so15210955wre.7
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 08:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R7Ddaltk+WXfNjdqBL+YwYQcUoILMNE/cSt1ATSrlng=;
	b=cLrS2BZ3em0qjHYMLNjwFlZnwp2SNxn3VAJS6gudEKaaxz7BLbDH3Axdq6+TMtD/pw
	UbrykHNYTSzc2UT7cO3AxxkDoDagIyUiKWJw8OtFATGwZzu7lToUG1uLL5oO5W/fk6zx
	isYBFNCG83wUGdWA0t7J09nQK/3mj0A/6d2/24O8XakVoikEPtSsFNSVEHrGIJEDqdtC
	BNHCC5QbtHGyKcWzM8VwM4/cBykDGZesfk776gghKGm4ypawYI3ptPYIr9Uf8pUgO592
	CAtpCko+LVJaunJPFYLoLeb/Fidpnc8PUYzIOpAq3sJG2EP8EWuOIveVbbTnzU0fs+Wl
	bRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R7Ddaltk+WXfNjdqBL+YwYQcUoILMNE/cSt1ATSrlng=;
	b=QBMy4bFV8Jd8kmh0epQyX/B9bFunEZpj/RhGJ8JOn5dYXwFEbrfMtAd4/OqPVcdY7l
	xseF5+nY6hEbXnOd2UbrIj7lF/JuKpkYjlL99zOPFgyf++1yJQdH1+IQPPw5TECbSfJ8
	IVIQmQHfGjSphgqLo2arLDCAmLG1FrBIHOOALONyCF9wqspHPeNT0QVBkx2BW2ejYkmn
	BYEg/dOJojzcsZxGM0jtk3AXO/zg56LKS6dWXHvFDXzQUdhbvY7M+ROaRqmJKLbgdMWH
	+j+/nDz7rd+kx6+DsF8HeScDnLkFcHViAJjUPloKwKki4IJ4uvQTlpZ2Xmk0wnlGorbX
	mZYQ==
X-Gm-Message-State: AJaThX53MamBIl6VCEQSr+py9OdiBg621vj9Vr6WQpmy0pczv66kA8zM
	vf20wIYYiNekEuPaQBY5J0PtTpA6TXb1d4taxQo=
X-Google-Smtp-Source: AGs4zMboGu6zljYketkAfIxZSgEl3qlVo66VwwCobpQhOzspAzK/Ximmb5DZ+8zooN2CwVDGlBOmK07byiLrmeE6/rA=
X-Received: by 10.223.136.162 with SMTP id f31mr33162157wrf.130.1512924343732; 
	Sun, 10 Dec 2017 08:45:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Sun, 10 Dec 2017 08:45:43 -0800 (PST)
In-Reply-To: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
References: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sun, 10 Dec 2017 17:45:43 +0100
Message-ID: <CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 16:45:46 -0000
Content-Type: multipart/alternative; boundary="001a1146134c149073055fff263c"

--001a1146134c149073055fff263c
Content-Type: text/plain; charset="UTF-8"

> As far as i understood, we can pass it from uboot, but how?
https://community.nxp.com/thread/460796

Zoran

On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> hi
>
> any body knows how to diable the psplash? as per documentation it says
> pass psplash=false to the kernel. But how to pass it to the kernel? I tried
> adding it to kernel.cfg but does not seem to be correct. As far as i
> understood, we can pass it from uboot, but how?
>
> thanks for your help
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1146134c149073055fff263c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:12.8px">&gt; As far as i und=
erstood, we can pass it from uboot, but how?</span><br></div><a href=3D"htt=
ps://community.nxp.com/thread/460796">https://community.nxp.com/thread/4607=
96</a><br><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=
=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr"><div><div>hi <br><br></div>any body kno=
ws how to diable the psplash? as per documentation it says pass psplash=3Df=
alse to the kernel. But how to pass it to the kernel? I tried adding it to =
kernel.cfg but does not seem to be correct. As far as i understood, we can =
pass it from uboot, but how?<br><br></div>thanks for your help<br></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1146134c149073055fff263c--
