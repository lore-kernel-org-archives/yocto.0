Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F20D0E0077E
	for <yocto@yoctoproject.org>; Thu,  5 Dec 2013 11:53:52 -0800 (PST)
Received: by mail-ob0-f169.google.com with SMTP id wm4so18562710obc.0
	for <yocto@yoctoproject.org>; Thu, 05 Dec 2013 11:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hpDpM8v8grY12nxvUyu7tjNedpmKb/LLHJ235r+nJlQ=;
	b=V1AFLwJGu2RsDo3XY/FElqv32FXkM6HKDsPscqH24j33qocCo4HChO2hU+TY9xQiu1
	zzDssw2H95+1bkstCycK8oYVu+N1yGg3SmidjYm+5wl0UNgqdqZSg4s+9iQWL5VOH7tn
	iJEUWDicFxDGiQoL9zYsGKhlAnH8KW9JmtdiZ+Do3OZhATb0if6Aa3fa6/GIWadyoZDX
	bZVhwJeJ+JdqYIbgNaqe2bIxhoWH85d7KyRXwGF0ZFhosPdK+KmenKPkoHGdIm868Cwp
	Iws1KvOixATXKzt1h1lxOr0/3xMvu0RxHYsaNA1vgrAEo2MG3qoZ5LFMcCoKMZhdElq+
	Cg0Q==
MIME-Version: 1.0
X-Received: by 10.182.143.103 with SMTP id sd7mr1795193obb.70.1386273231845;
	Thu, 05 Dec 2013 11:53:51 -0800 (PST)
Received: by 10.60.142.41 with HTTP; Thu, 5 Dec 2013 11:53:51 -0800 (PST)
In-Reply-To: <CABcZANnwToiZcmKb+-0kjW9QxJYGexdp3Sdt1Y-D0pg4DW4NVw@mail.gmail.com>
References: <CAFZh4h-YYSJoaZEM95QO9O0BKpGA3tJ+-GbpDN=yfeLNePUnJQ@mail.gmail.com>
	<CABcZAN=OntXko8XormAbrBsfU24ZS9_MuixNdhqSScm24O_pGg@mail.gmail.com>
	<CAFZh4h91WJ1hbKw95k4f-XuQY-WJxFGwQUQpzCYwOQoqLfEf5w@mail.gmail.com>
	<CABcZANn82u8KXw0kUi-NryqoCbXdV1CDDjUL2ZCZJLk9GCw7xg@mail.gmail.com>
	<CAFZh4h8gNAfjE0OX3vsfJPzvvFT8PE1-ctMm8oTZdRfVBdRskA@mail.gmail.com>
	<CABcZANmtrNW-XWbVKj2+VHFrfvsOJMT6Xm77Bb1jKPBAR5yLbg@mail.gmail.com>
	<CAFZh4h_b=8NonYoQ_WMTAYXNDWdS=fkG70uGaVOYHYdr_fOK9g@mail.gmail.com>
	<CABcZANnwToiZcmKb+-0kjW9QxJYGexdp3Sdt1Y-D0pg4DW4NVw@mail.gmail.com>
Date: Thu, 5 Dec 2013 14:53:51 -0500
Message-ID: <CAFZh4h_d5y4p+7FOgQfVDkn-W1c1tKYmXpYscHCwVStrmTRO0w@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to build a non-autotools package that contains only a lib. Getting empty archive - package is not generated
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
X-List-Received-Date: Thu, 05 Dec 2013 19:53:54 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce9e8bbfe604eccee39b

--e89a8ff1ce9e8bbfe604eccee39b
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2013 at 11:23 AM, Chris Larson <clarson@kergoth.com> wrote:

>
>
> Heh :) The issue there is that the patterns are matched in the order of
> the PACKAGES variable. The first package to include a file gets it, and
> ${PN}-dev is in PACKAGES before ${PN}. By emptying FILES_SOLIBSDEV, that=
=92ll
> remove the .so from FILES_${PN}-dev, letting the ${PN} package get it
> instead.
>
>
>
FILES_SOLIBSDEV =3D "" was the magic I needed!  Works now!  Thanks Chris ..=
.
you are the man!

Regards,

Brian

--e89a8ff1ce9e8bbfe604eccee39b
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Dec 5, 2013 at 11:23 AM, Chris Larson <span dir=3D"ltr">&lt;<a href=3D"=
mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div class=3D"im"><br><div class=3D"gmail_quote"></div><=
br></div>
Heh :) The issue there is that the patterns are matched in the order of the=
 PACKAGES variable. The first package to include a file gets it, and ${PN}-=
dev is in PACKAGES before ${PN}. By emptying FILES_SOLIBSDEV, that=92ll rem=
ove the .so from FILES_${PN}-dev, letting the ${PN} package get it instead.=
<div class=3D"im">
<br>

<br></div></div></div></blockquote><div><br>FILES_SOLIBSDEV =3D &quot;&quot=
; was the magic I needed!=A0 Works now!=A0 Thanks Chris ... you are the man=
!<br><br></div><div>Regards,<br><br>Brian<br></div></div><br></div></div>

--e89a8ff1ce9e8bbfe604eccee39b--
