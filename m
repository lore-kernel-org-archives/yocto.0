Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 114E5E00A6B; Wed, 23 Nov 2016 05:43:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 495F3E00A0A
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 05:43:20 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id v84so981968oie.2
	for <yocto@yoctoproject.org>; Wed, 23 Nov 2016 05:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=IIxnEgv8ws+PCGiT6+JjIpkoz7bryTYIv2SUvcYcd8E=;
	b=KedxGFx77E3lqTjNbQDBvEczgyYrLni/HX0JXIx5ieiKHj6aM3enO/dfgR8kFVYPph
	Md4AeDPeirbr0Oq2m9eNqWhlhRGc08IrgP+9YU0YDCzgemShrdeM2cWjvfuD9xdwCO42
	K4ZOy2AxFDG3mpCEwIkggo3g/HpjrFTtcw1I4UnzRIBhviPzsiA/S3DtZhM5o0aPr9jk
	AO3wGrntQirKWK0zQBr+/YX2fkn6FgDkUgwEf85oxy4GJDz8w2D1BMUBPLY6yhNKzrpx
	u9A5xV/C5PP5hVW645QSYvq2MKdfbeGfYPydhqIawRnVh4Ya39uS//piZU9cc0mIiHg/
	klPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=IIxnEgv8ws+PCGiT6+JjIpkoz7bryTYIv2SUvcYcd8E=;
	b=OCzhZJCJb9ZYTaqPRLdMSurzNXUvnn3owZZTdVehPHlr6+zOMsJDbHI0MooJFFU3tk
	DdBMsAGWw8VhlX2j3E7aFE1A74K5gqMlgyUmhvqqkglJrPmH7M06dnpayNVsTvx5ulom
	qm6KL3yI2MtN0a5Ps4Tkhn+RRjxjjOkBH3uPtGCE5q0VOFhuLJen+Pf2mduBITo4LxQe
	CzWq85FTcGYs3vlOmL4+QgLTGNEg0qGYMQ/oEnUgdl6uCIpiPOLqEMjoInokg8P8DDMW
	sJX+WnbW/0UrkF7WNryTAD4ejDSE64Fo6EvDHKoB5NrwxA/yngcSc/OtKMCRphShu0Z9
	atKA==
X-Gm-Message-State: AKaTC01kHVtzSN6E6NZc+vfL0Q2GLoxsk5zF6xwbO5GuHtXpcFndNmXpXqfwo+mNjm/y7U0ZovUD/ecvlks0bQ==
X-Received: by 10.202.80.203 with SMTP id e194mr1665176oib.188.1479908600253; 
	Wed, 23 Nov 2016 05:43:20 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.157.35.65 with HTTP; Wed, 23 Nov 2016 05:42:59 -0800 (PST)
In-Reply-To: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
References: <CAF3SDA6CjS0Tdfy0hqJEg+sYv67HpeYe9HOO9GBL6JQSjXaWHw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Wed, 23 Nov 2016 06:42:59 -0700
X-Google-Sender-Auth: FSkeYF5XeNF4uRUMmXImzl9gpV4
Message-ID: <CABcZANk0XfQTA5dio2NQvRnV+cSF3dLF+Rpv8+3RY-kUO=0y=w@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extracting PV & PR from Makefile at compilation time.
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
X-List-Received-Date: Wed, 23 Nov 2016 13:43:23 -0000
Content-Type: multipart/alternative; boundary=001a113b00d86b1d9c0541f81206

--001a113b00d86b1d9c0541f81206
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 23, 2016 at 6:26 AM, Daniel. <danielhilst@gmail.com> wrote:

> I have a Makefile with this header
>
> major = 1
> minor = 0
> patch = 10
> release = -beta
>
>
> Which compilates someting like libmylib.so.1.0.10-beta shared object.
>
> On recipe I duplicate this information:
> PV="1.0.10"
> PR="-beta"
>
> Is there anyway to grab that information from Makefile and setting PV & PR
> according to it? At compilation time? So that I only have to change at one
> place?
>

bitbake wants to know pv/pr at parse time, long before the sources have
been fetched and unpacked.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113b00d86b1d9c0541f81206
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Nov 23, 2016 at 6:26 AM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>I have a Makefi=
le with this header<br></div><br></div><div>major =3D 1<br></div><div>minor=
 =3D 0<br></div><div>patch =3D 10<br></div><div>release =3D -beta<br><br><b=
r></div><div>Which compilates someting like libmylib.so.1.0.10-beta shared =
object.<br><br></div><div>On recipe I duplicate this information:<br></div>=
<div>PV=3D&quot;1.0.10&quot;<br></div><div>PR=3D&quot;-beta&quot;<br></div>=
<div><br></div><div>Is there anyway to grab that information from Makefile =
and setting PV &amp; PR according to it? At compilation time? So that I onl=
y have to change at one place?</div></blockquote></div><br>bitbake wants to=
 know pv/pr at parse time, long before the sources have been fetched and un=
packed.<br>-- <br><div class=3D"gmail_signature" data-smartmail=3D"gmail_si=
gnature">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitB=
ake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engi=
neer, Mentor Graphics</div>
</div></div>

--001a113b00d86b1d9c0541f81206--
