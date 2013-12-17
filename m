Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B64E007B6
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:10:03 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id hi5so3940661wib.8
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 08:10:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=D4EHaGFezpUHWvenFgMAD+WSyft5WuLORctY9uV2vwY=;
	b=gEfGRB5iQwkmTlHIjZrx0AsD9SfPX2328iYisZuKfQz7S4wx4QdbU4FdqtaLwvSI7K
	1h+jbIo6ZL+MT8VYUAbeGew6dL1EwhnrsHnqLOB285OG7fd15zkb0z3xmHKRQHdeJ4S7
	Qr4TOiZLGuWPz5czQqlxoVU5mJX/6ZkZRx6Up6jxn5pSUvc9NiIv1Zq6u6OjALv0IZgS
	KA56ShGqdILe08eDUEIIpAW5t9Dp1bQFIRDWRGWozeR4hJTltUZoDrAY8g8Y4aM7xuew
	7egzy98w41/XJTJaiTWTjLhFosRGTMPBLUKP1C8ygdiKQ0d6eobE2kP+WZ/MsxK4nwI+
	p7Og==
X-Gm-Message-State: ALoCoQlEtTc7zoW516IvUcgymiP4/CiJuAAse1kRafumB8OZkeqWRl5sNQbT3+oHAhV0fc0tTVG5
X-Received: by 10.180.108.83 with SMTP id hi19mr3873282wib.26.1387296602833;
	Tue, 17 Dec 2013 08:10:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 17 Dec 2013 08:09:41 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
References: <1387221202-1702-1-git-send-email-gary@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 17 Dec 2013 18:09:41 +0200
Message-ID: <CAK18fxHXN4UdfeTHkpQOptzvddexJfDmj6Q0A+gQLA7WEfeL4A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.12.4+
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
X-List-Received-Date: Tue, 17 Dec 2013 16:10:04 -0000
Content-Type: multipart/alternative; boundary=e89a8f3bb02535e7f304edbd29b5

--e89a8f3bb02535e7f304edbd29b5
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 16, 2013 at 9:13 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> This kernel enables camera video via the new 'bcm2835-v4l2' module.
> Just add 'start_x=1' to your boot config.txt


Would you please add this info in README? I think it would make sense to
centralize these kind of knowledge there.

FYI: https://review.gherzan.ro:8443/#/c/34/
-- 
*ag*

--e89a8f3bb02535e7f304edbd29b5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Dec 16, 2013 at 9:13 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">This kernel enables camera video via the new &#39;bcm2835-=
v4l2&#39; module.<br>


Just add &#39;start_x=3D1&#39; to your boot config.txt</blockquote><div><br=
></div><div>Would you please add this info in README? I think it would make=
 sense to centralize these kind of knowledge there.</div><div><br></div>

<div>FYI:=A0<a href=3D"https://review.gherzan.ro:8443/#/c/34/">https://revi=
ew.gherzan.ro:8443/#/c/34/</a></div></div>--=A0</div><div class=3D"gmail_ex=
tra"><b style=3D"color:rgb(51,51,51);font-family:Arial;text-align:center">a=
g</b>
</div></div>

--e89a8f3bb02535e7f304edbd29b5--
