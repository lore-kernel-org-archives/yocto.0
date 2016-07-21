Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADE8FE00EB2; Thu, 21 Jul 2016 06:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_20,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* 1.5 HTML_IMAGE_ONLY_20 BODY: HTML: images with 1600-2000 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6732E00EB6
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:41:01 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id w38so44019122qtb.0
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 06:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=W3XdTK/wrE0+szG1x3X3hq3138Gd8ZQjP84VA3Cfsvk=;
	b=iM7YRnNpA32zZPjOjumZaSAYEe0LJtttFZD6GrTWv8sEMg3NBXO71SGdfBonZZkJKd
	Fr235TvfmCnle3yEjF3rx7f+L3IFCXu/tpYVletRo4zv29WYnNdQUFeAYch2WSNn6lgf
	ZG6MIU8n3laCkdY6Qygf2T5+gupILqnB9k9FdM1+oC1w8XQffPpV9QqOud9WpbFhF0zA
	Lz6rmhdx1+/yg2J/1TSBaSZbX5m8yaxfArOZJXeh4bsVT/Ih1zVOwZSkP7Qyw/h3L+CB
	HpiKk+Psdt2sLdgPSuqvjZuYSy6xfppZobFIv6HFtoz0J6ZRLyaQJ/3GOuRg6L/GiIhH
	RwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=W3XdTK/wrE0+szG1x3X3hq3138Gd8ZQjP84VA3Cfsvk=;
	b=avfIJHVth+qDERvyyg0pMgOObcwzBv5MXp6p/r6+h9fJ6vY3MGK49fNG87b6NlAJ/c
	SBwGRPXfrb33CU8j35kKuGjSqQft3Po/1OCfPDnqz4NJZ8x+bsAS6PpDoA1ToL87roSO
	u4FkTRYruwVuJX0I2ch7fxcdBC5XmXObudCfGwnGYeEn0nOvfcv84OPVePhMMZKv7G4D
	LoXgO6ss4bd6j82Q0YMHl5Ncnl6pSmkHjaW+XQOLhImdERqyWkeanEVg1fJJ6LzzFZFG
	IuUqnh/ON8IazP+Byv9QDiHvHkvy2QQzVvWXtVXcyYPfMndWdVrRsHDrh8roUg706Ilg
	uT9A==
X-Gm-Message-State: ALyK8tKBwBLyqaDj/Ec/od10yAzoO+JxNLy3YDZtbcrCI8Uen7w01Yl4VoXrcns48oJmZnNDwKKp8qeCCjFAsQ==
X-Received: by 10.200.45.181 with SMTP id p50mr83132778qta.31.1469108460824;
	Thu, 21 Jul 2016 06:41:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 21 Jul 2016 06:40:31 -0700 (PDT)
In-Reply-To: <2ca9ddd559d0c9472c97597b631c9@cweb02.nm.nhnsystem.com>
References: <2ca9ddd559d0c9472c97597b631c9@cweb02.nm.nhnsystem.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2016 06:40:31 -0700
Message-ID: <CAMKF1spAjwJL12n9eDMNKFiv4G75PN0xW230b0H5zQ2tKU19dQ@mail.gmail.com>
To: =?UTF-8?B?7Jyk7JiB7ISd?= <earwigz@naver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to install *.deb file directly in the yocto platform?
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
X-List-Received-Date: Thu, 21 Jul 2016 13:41:26 -0000
Content-Type: multipart/alternative; boundary=001a113f0730f1abca0538257791

--001a113f0730f1abca0538257791
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 21, 2016 at 1:52 AM, =EC=9C=A4=EC=98=81=EC=84=9D <earwigz@naver=
.com> wrote:

> hi,
>
>
>
> i just want to install some deb file, Is it possible?
>

=E2=80=8Bif the image has dpkg/apt installed, you _may_ be able to install
however, keep in mind it does not hook into debian/ubuntu feeds for .deb
packages
but if you have generated feeds using yocto then certainly it will work.=E2=
=80=8B



>
>
> thanks.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113f0730f1abca0538257791
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Thu, Jul 21, 2016 at 1:52 AM, =EC=9C=A4=EC=98=81=EC=84=9D <span di=
r=3D"ltr">&lt;<a href=3D"mailto:earwigz@naver.com" target=3D"_blank">earwig=
z@naver.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><d=
iv style=3D"font-size:10pt;font-family:Gulim"><p>hi,</p><p>=C2=A0</p><p>i j=
ust want to install some deb file, Is it possible?</p></div></div></blockqu=
ote><div><br></div><div><div class=3D"gmail_default" style=3D"font-family:m=
onospace,monospace">=E2=80=8Bif the image has dpkg/apt installed, you _may_=
 be able to install</div><div class=3D"gmail_default" style=3D"font-family:=
monospace,monospace">however, keep in mind it does not hook into debian/ubu=
ntu feeds for .deb packages</div><div class=3D"gmail_default" style=3D"font=
-family:monospace,monospace">but if you have generated feeds using yocto th=
en certainly it will work.=E2=80=8B</div><br></div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div><div style=3D"font-size:10pt;font-family:Gulim=
"><p>=C2=A0</p><p>thanks.</p></div></div>
<table><tbody><tr><td><img border=3D"0"></td></tr></tbody></table><br>--<br=
>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a113f0730f1abca0538257791--
