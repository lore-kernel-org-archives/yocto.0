Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F73BCD37AC
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 04:31:22 +0000 (UTC)
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.68510.1778560272284023160
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 21:31:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=ZNIvpE0B;
 spf=pass (domain: gmail.com, ip: 74.125.224.41, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-651c5d525f6so5589001d50.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 21:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778560271; cv=none;
        d=google.com; s=arc-20240605;
        b=fodzEWgPqoHWMQao5oVWF90JPQbgd+y27t/PvgBuoPOATx+pukizaCIiR3pRpYkndZ
         LbeHgAcEe41Ws8zQDlSEdXhP1xptaQil0Q8GPbThsRIZj5na9YEfLwl2Tde0gcdEU93P
         ciiRJNIt6/GGjsEeZwrDltacYJY6JKGQvhskhARsgHQVjQbxkCbtKBddGFc1zTC5I63F
         raUEfQeZfYbCAl7Jm6iYoKuyjLFMi9rhbqmeOVRK3lLV4ekgpRytPW/+IOEpRnWxIzJ+
         omS9G+/3+CI6TVp8ojj83Gt5LP9qQHm+lN8lEUfoe5e7wQTJ/wYKL2EOWp1X4qZF++xX
         +NiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=QqjLbZHi26JvCd47RxPd+VqKoXBW/YdjtVbP4jA/hj4=;
        fh=63QwqQsw6yHLmSplS9ljfc6/5y4bxe59ebNlOLIGDws=;
        b=ZdnzKMN2+PvWXP/5PhW43//O8ANayh+mgtHZtfLQB5aZ2gJ9+SCTKC9Ma6WGaomxJW
         Z2US/ozGp32WKd8BhKrYHlkkO3zyj3SqNmKHl2SBqBL7dWCBAwDOc9haWibyJA7L/Mdo
         6V/XbWy+Xg4YrLv6AypwUTZaKdX6UCB/AI37nDV84agL796pniglfG0XSW9vz3fRe1BI
         WQCUwrPMjiYm6JAEIGjROMm0AWd+jZ/lI4ibEit8+zB34MVLuwUEiuRmE7m3jXHtkNp2
         T66jOSqAUHZ2noWNOWj+ZgxX93nMaK6662XB431yDzFpwDyJAbzcYeC5sh+jrddw8bjB
         D/sQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778560271; x=1779165071; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QqjLbZHi26JvCd47RxPd+VqKoXBW/YdjtVbP4jA/hj4=;
        b=ZNIvpE0B5amadT0yj0nMSR7GJ3O9YHh8mUywX5fUbJCS7PBjYq7sjPi9zK2RTZLsY4
         JUBGZe8QCWg6wNcvV6jsgqgxvO/vwAiLuYfPCsJQSDqtc+R5uUpCenfLh/cx0y4qvYFq
         b57qKUZiXysKNFKryPRql808qZhLmvx6uDhb11n2anj1OBd7bTzU0Au97fn9hdT8xTF+
         MO6HNyB33TImiIhTcZKYEbqnCosoWFC/25ugLKjxMK2Ejlhi2JQPmf1C14fBvorVlttk
         8U5gC5OFNyBTcMpOXKCGs8mFZRzk9l0jBEmu+8iQCvuuq4VTkXSaNZNJytL7T3IkONAr
         7YJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778560271; x=1779165071;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QqjLbZHi26JvCd47RxPd+VqKoXBW/YdjtVbP4jA/hj4=;
        b=KbuSzw/VzFM5Z7M535ZBpyY5tRE+f4U/r9HCoFJG5yq1+cgIFMMPRw4wApLTypu4vL
         7WxymjtHV1jYWhObOXYajLAf+N3neKaSTReqxUETlvO3EugsSnEebSSx3o1bMjl7N+/Y
         3A/QbYLw5NBtSPlD5VdLp5an7RuXBzt+38HI/k/onFvwmB8dcw94vcWIBR1nxN7Y9Pqw
         xW5wbxvYxbLpGmEocTpmXJPWtxZol+XP5DxspOMLHi6L0XF9Zw9V/MmAFBEU46yCETmq
         XqakqgNcI5CQtjuU9pqW4lac/g0Etk0WvgEPS4eiYU2xo743X3fE4mWPwa2pbMZ/JfIQ
         fhHw==
X-Gm-Message-State: AOJu0YxlLx9vGsXRZqxaxlyQqbx7LHPb1eCzv+WuruILpqzwZptJhlEE
	LxM1RxqqWxodxUvnzID+F7jvfi46bAj1yySmE1Hy0OLwoZDBLXOPuk3EWSmM0UPQ8tQv5YPjKe3
	q2yHLH4dGSZq+GFpTspQmwWPV7vsCOi1lbPGGmLYzHw==
X-Gm-Gg: Acq92OFPJFRtVD1afW1oEbD86bCJoapRyVFs1GEYcUZmL1erKz8kg9DytDKx4gNT+cS
	Mh+LYXxsFwLXdKutyGLnicMXSpxKRI6WaoM4tmQEB02LXFif7Htda7cO/dMq00CI5QErIP6ebK/
	pbjvQjG+3FRT18JwBo7lYbQbAT9G2ieDVklfv7uvwKe80yQsAHsMj7DKpkbU9oDFgZkibWsn6mu
	WpJWmOzHLAPWDVSlf8K/dVE63Ii5E/GoMmy9McW6DrOloJ8+5bkqtiUxhSjYEtiJ5RIBd/lnSfh
	OiYBHyIA/QCFPSxXqgKK1BSZ4vV5pRsIW/7F9L2KxGEDX0BsjAmHNxuvLzjV6cV84O5O9rNaFhb
	v3AM7Sp1KnlVbBjVfNNZ7uBbyl/gd4O+CI4AgmbrbJBsNN1rJA9DgK2FPPkCMA+E8yt8l3zH4yG
	qdQBQn
X-Received: by 2002:a53:df07:0:b0:65c:7576:a4e2 with SMTP id
 956f58d0204a3-65c79e22a81mr21439445d50.54.1778560270955; Mon, 11 May 2026
 21:31:10 -0700 (PDT)
MIME-Version: 1.0
References: <001001dce188$4a8cde20$dfa69a60$@synergy.org>
In-Reply-To: <001001dce188$4a8cde20$dfa69a60$@synergy.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 May 2026 21:30:44 -0700
X-Gm-Features: AVHnY4KVA7z5fdGkAxPUMpyHyzmo5Yy7vAwMEuamzBjMwKmsy3qwvtCW29ICEqo
Message-ID: <CAMKF1soaN2_vrmso5kDhJHzbrqpeX=VoDUX__K2v+=9HxGYd2w@mail.gmail.com>
Subject: Re: [yocto] Looking for Yocto-supported Reference Design
To: yocto@lists.yoctoproject.org, dave@synergy.org
Content-Type: multipart/alternative; boundary="000000000000297a9c065197552c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 04:31:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66532

--000000000000297a9c065197552c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David

Sometime ago, there was a kobo reader layer for yocto

https://github.com/kevinior/meta-kobo-clara-hd

It might be outdated now, but it might be a useful reference.

On Mon, May 11, 2026 at 1:54=E2=80=AFPM dave via lists.yoctoproject.org <da=
ve=3D
synergy.org@lists.yoctoproject.org> wrote:

> Hello,
>         My name is David Richards and I am blind. I am new to Yocto. I
> would
> like to build a portable talking e-book reader. The goal is to support
> DAISY, Audible, Kindle, and epub books. In addition, I would like to be
> able
> to stream MP3 content. To that end, I am looking for a reference design t=
o
> base the project on. It does not require/use a display or touchpad. The
> user
> interface will utilize buttons and speech output. The design should have
> existing Yocto support, if possible.
>         Does anyone have any pointers for a reference design I could star=
t
> with?
>         Many thanks,
>         David
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66531):
> https://lists.yoctoproject.org/g/yocto/message/66531
> Mute This Topic: https://lists.yoctoproject.org/mt/119264506/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000297a9c065197552c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi David<div><br></div><div>Sometime ago, there was a kobo=
 reader layer for yocto</div><div><br></div><div><a href=3D"https://github.=
com/kevinior/meta-kobo-clara-hd">https://github.com/kevinior/meta-kobo-clar=
a-hd</a></div><div><br></div><div>It might be outdated now, but it might be=
 a useful reference.=C2=A0</div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11, 2026 =
at 1:54=E2=80=AFPM dave via <a href=3D"http://lists.yoctoproject.org">lists=
.yoctoproject.org</a> &lt;dave=3D<a href=3D"mailto:synergy.org@lists.yoctop=
roject.org">synergy.org@lists.yoctoproject.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 My name is David Richards and I am blind. I am =
new to Yocto. I would<br>
like to build a portable talking e-book reader. The goal is to support<br>
DAISY, Audible, Kindle, and epub books. In addition, I would like to be abl=
e<br>
to stream MP3 content. To that end, I am looking for a reference design to<=
br>
base the project on. It does not require/use a display or touchpad. The use=
r<br>
interface will utilize buttons and speech output. The design should have<br=
>
existing Yocto support, if possible.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Does anyone have any pointers for a reference d=
esign I could start<br>
with?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Many thanks,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 David<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66531): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66531" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66531</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119264506/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/119264506/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000297a9c065197552c--

