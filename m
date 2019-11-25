Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.2167.1574677324687479378
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2019 02:22:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jJlQAFaq;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57508E00E27; Mon, 25 Nov 2019 02:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC158E00DAE
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 02:22:01 -0800 (PST)
Received: by mail-lf1-f48.google.com with SMTP id d6so10587243lfc.0
        for <yocto@yoctoproject.org>; Mon, 25 Nov 2019 02:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hvUgwhN6F7VoTQhCSEO/MqTl3lbkPkyfflrwFZcvD/M=;
        b=jJlQAFaqElGaTBOorsVVxzeeM7VPVwQLjkhtfuzCiY1KCllOpKTZfZAcpZfSVK6VGW
         lXOdEA1ycXP6vi9GAH6LEKkMAys40hjA5A5jaoCuvynUPD2Y4gqvhjpbF8MEXmZPTk5u
         nyehYObALzc4fsZxUSD6Qn9o8MTBoAbVn3QynSM4DWFC4unJuXuwhCUqGNJhTdmt7SbW
         Xu3IXTfLy+E8MqPJFMqxAiW98RKg4Tmy3G+v3vpaO3wbxnqFQNSDm9Lh5eXp7zT2MPZQ
         c6GG4Ho8nd4WpSSZHHOIfi3WqLskk2TC1BtT9aDZ8TzIks53qaYrPmUUhF0XH/mK45kq
         uV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hvUgwhN6F7VoTQhCSEO/MqTl3lbkPkyfflrwFZcvD/M=;
        b=bgdDc9fVk/G53Y5uLx0u1bNpaqxsURxiUq9XltFSLxDfgmMaytIhO2ZLHIJCFNdytB
         0YcmfBdsqSY2wV5XqOz7tfDusb485b1EGX0Ip5F7DtQQXaXGnOL9v9oWOfFAhBIIPSGN
         rFJWlfo9fJ7/h4M2IE9GoIMt+8t5ijcwUoxmveYLs9BIHqqxB5+IwDJ9uIaRKrTneyBR
         HTkJp7kL2oXZhBCecn55LPyVC+XSAKJM+azZanPFX2jVgF3KLzunBzOg4dlXKo9IOB9b
         11MMMcKFpdk6AAP+91XHTKOdyzsKaOMzmd8En6ktOFpHH8TOj2ovZjEFEWs86Hs5TwDj
         +9cA==
X-Gm-Message-State: APjAAAVR54GgiQStztsg1A3O04NOCygaP68JqmOg+2yg7qLTDOQmHxWy
	EUCeYFs69Sm0aQFny/zKldqlPAzzJ9/SFxnbTfo=
X-Google-Smtp-Source: APXvYqzQ8QsvVht6WE+X4eBDMcsdRV6/VAMsyNAk9/H6+4H+znE6hbRo0i31slZSpLpHViuECvcLgwgF7xxw+vaealE=
X-Received: by 2002:a19:f80a:: with SMTP id a10mr9337959lff.107.1574677321117;
 Mon, 25 Nov 2019 02:22:01 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
In-Reply-To: <CAA=hcWR3Vhfc9H3VRf-Q1m44rX_ox2J-LjuPWHsB1Rrq-yrVTg@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Mon, 25 Nov 2019 11:21:49 +0100
Message-ID: <CAAx3WaDk2LCbJyM1+B1m3sG13bzkp2p6L83qaCXt1Qvvi4BYig@mail.gmail.com>
Subject: Re: [yocto] Yocto build to add root password
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005c78d105982922c2"

--0000000000005c78d105982922c2
Content-Type: text/plain; charset="UTF-8"

Hi JH,

Take a look at this manual section, last example:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-extrausers

Regards,
Gabriele

On Mon, Nov 25, 2019 at 11:19 AM JH <jupiter.hce@gmail.com> wrote:

> Hi,
>
> I built a Yocto image and I could log into the root without password,
> how could I set up the Yocto build in a receipt to set password for
> logging?
>
> Thank you.
>
> Kind regards,
>
> - jh
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47404):
> https://lists.yoctoproject.org/g/yocto/message/47404
> Mute This Topic: https://lists.yoctoproject.org/mt/61917008/3618237
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> gabbla.malist@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--0000000000005c78d105982922c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi JH, <br></div><div><br></div><div>Take a look at t=
his manual section, last example: <a href=3D"https://www.yoctoproject.org/d=
ocs/latest/mega-manual/mega-manual.html#ref-classes-extrausers">https://www=
.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-classes-extr=
ausers</a></div><div><br></div><div>Regards,<br></div><div>Gabriele<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Nov 25, 2019 at 11:19 AM JH &lt;<a href=3D"mailto:jupiter.hce@gma=
il.com">jupiter.hce@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi,<br>
<br>
I built a Yocto image and I could log into the root without password,<br>
how could I set up the Yocto build in a receipt to set password for<br>
logging?<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47404): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47404" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47404</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61917008/3618=
237" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/61917008/3618237</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank"=
>gabbla.malist@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--0000000000005c78d105982922c2--
