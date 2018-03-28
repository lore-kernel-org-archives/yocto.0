Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F29CFE008EE; Wed, 28 Mar 2018 05:38:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDD98E00529
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 05:38:10 -0700 (PDT)
Received: by mail-pl0-f51.google.com with SMTP id 91-v6so1482215pld.3
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 05:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uuVs2F5hzx1Mi/2L2VWRd2Co2utH/jumQoBOt3/LTRU=;
	b=m+BJR++5ZwwSmqtJCqwA/1px9VazzOa6WQISiT79puiG6CYL3hb2rnyXJWUMSfD0wn
	MLrAC6iSJ/EOjDFKf4S7vvp03TMk4bRZTr//GRbNjEIDZWb+fw1kwS1l0QQvW/c2bBaW
	E+nccOaJqoxgz2jobq9mgKZXKeobe/uKUQ6dDVMooSIxkNBTIAFBo1Ac/5nNhlNGQgdd
	Ns56PFFa0iMGWBDekqyF64m1872yCNl0KUNBCYLXimOwxTL0oPbTWafWEodgZmbKY8Jn
	tm86FG3552iboFBVi3NVeU07ftdtmvBweKi7LkbUywxOc/4HW247T64R10UiYlPT1Z8i
	i4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uuVs2F5hzx1Mi/2L2VWRd2Co2utH/jumQoBOt3/LTRU=;
	b=gr96bOc/bTDMZFGnYZG3IqjTgVB/j2JW+/wiE1NYM2uNPR9McFE168V5dT/sTZ3DvD
	srv2Hb4y1PnihyCPMCAF4YhekhtWT9SPClkTMKddW5Kj1yKlGPMorBLa6IGmzuOB3OL1
	mXGr0QcpvtuKIDcZdNZIeuv+pfNiiFcj66FUPlrLk53akPq3aFcPQI9lnMphUVusfvDJ
	NkAva9kB4s+QF+xmBj987unwlRKi7oKHOGHJJPeKbk/ZouW6A2hx5LwsgDyKoAnm4egE
	ajWCUy3u0KwSxOwaVjaLaViDIGT++d7Rxb4YqUpVZPJssBieel772snhSUm4jdBJUsSb
	2Mkw==
X-Gm-Message-State: AElRT7G69+ctOWo09wuWUFBLdZuy5HbhxqXX9fGlUoUDqgNyw7uEVkaZ
	cj47Fno05UuH0Fo1B2N9Ncf0c4XuJzO7ZMpdGYk=
X-Google-Smtp-Source: AIpwx4/c38VD2lfDZz6lb6QhMh6g0DV/XjdzDf9ICvFlBrF18DlTmyY7z9F1VqqntyRO2MnahsxUtpaEfCWqTm2IKGg=
X-Received: by 2002:a17:902:7288:: with SMTP id
	d8-v6mr3661647pll.79.1522240690319; 
	Wed, 28 Mar 2018 05:38:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.155.66 with HTTP; Wed, 28 Mar 2018 05:38:09 -0700 (PDT)
In-Reply-To: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
References: <CAEhQi8=1zJj7UXSEUd55de5VHyRc5E__sqRac+DPwcO=txqfyw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Wed, 28 Mar 2018 14:38:09 +0200
Message-ID: <CAPb0b+O=fzUTUECMb-_isDky6=yxKYSkTVWQv=PaZ-9Z34vipw@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] raspberrypi3 model B+ not booting
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
X-List-Received-Date: Wed, 28 Mar 2018 12:38:12 -0000
Content-Type: multipart/alternative; boundary="0000000000009bf27205687847d3"

--0000000000009bf27205687847d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please use Morty, it works fine.

On Wed, Mar 28, 2018 at 11:41 AM, M=C3=A5ns Zigher <mans.zigher@gmail.com> =
wrote:

> Hi,
>
> I am using the meta-raspberrypi layer in my build currently on the rocko
> branch. When powering on the rpi3 Model B+ the power led turns red then
> when the green led is turned on the red is turned off and nothing is
> booting the green continues to flash sporadically. My build works fine on
> rpi 3 but not on Model B+. When running raspbian on Model 3 it works fine
> so it is not a power supply issue nor an sdcard issue. Right now I cannot
> use the master branch of meta-raspberrypi because of some patch issues bu=
t
> is the rocko branch not supporting rpi 3 on model B+?
>
> BR
> Mans Zigher
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000009bf27205687847d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please use Morty, it works fine.<br></div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Wed, Mar 28, 2018 at 11:41 AM,=
 M=C3=A5ns Zigher <span dir=3D"ltr">&lt;<a href=3D"mailto:mans.zigher@gmail=
.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I am usi=
ng the meta-raspberrypi layer in my build currently on the rocko branch. Wh=
en powering on the rpi3 Model B+ the power led turns red then when the gree=
n led is turned on the red is turned off and nothing is booting the green c=
ontinues to flash sporadically. My build works fine on rpi 3 but not on Mod=
el B+. When running raspbian on Model 3 it works fine so it is not a power =
supply issue nor an sdcard issue. Right now I cannot use the master branch =
of meta-raspberrypi because of some patch issues but is the rocko branch no=
t supporting rpi 3 on model B+?</div><div><br></div><div>BR</div><div>Mans =
Zigher</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--0000000000009bf27205687847d3--
