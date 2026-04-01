Return-Path: <wminer@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD69210F6FCD
	for <webhook@archiver.kernel.org>; Wed,  1 Apr 2026 15:09:53 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15524.1775056191852574964
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2026 08:09:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gOrmo2Mh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.216.49, mailfrom: wminer@linuxfoundation.org)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-35d99031e4eso2724664a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2026 08:09:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775056191; cv=none;
        d=google.com; s=arc-20240605;
        b=WPAof/A9kb6h9QQeKUiyH5oaF5FzoK2VpGlLzWHikxqZjVVDDs2JYGSvdYSShA+5fy
         hV0O9DGY3Tauk4MQ2LuKvSBBp/xII45smMVH209hy7kC4rfzz63+PyPGGEbLdeqZeAxS
         SNNlySQDIxkiq+vSjsimW0UVgqxkoeUIvBDYvp2HCwu2x7OhvYZrlOs0KBwqi+jobHc2
         OunqLbWIbGUKckN3k0iJpfiHhIMXH0iuaiB01ZxA4W1iNVJu412wZJk3il6i7F0vsWxt
         lIe0cKv7Zm92ja4AsHpq5zJMF3dWBkHeBS7nKDR+9ZlkAVGYfXbUY3zmO1fhvCMvOhvZ
         35SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z8FsUOsK9f37hc1TEAM99BJG4BwP997fyrKMVSsRInM=;
        fh=pfmLBN4oKN4oSyqgpGbyA6A9fwzrHSXTycPGil1DYko=;
        b=gs27y7eWXqQTAgLq3GTR+Io/V6IRsZVBv41FVLIXrnkKUe5s853kyPnJLCGlaBEWwm
         7/h/2AONEfgcH2eGfaQgptcF7VCr7ARdGRVj9trij1kxH0c8+rNXWT+to4zb5f8RluUp
         Ypz8snwdnyUUmjuAcjva1j2xbahHdhrbf8rmh8P2Q0EMtJ7WMDLSNb9VB8fw5xjSrzj2
         rMeADIMRkHj1rUPSksU33uzJ9/GUoxgLNgpNcBnB7yB/DJKkw/R0zwkeHhq+w+8lA06U
         3+RVXZvfn61BBt4Qp5hd/cIRXxnI7LtwrQignPktfdVhDho1EhxP2mE5gPevpJurPDNE
         ANsg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775056191; x=1775660991; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z8FsUOsK9f37hc1TEAM99BJG4BwP997fyrKMVSsRInM=;
        b=gOrmo2MhmhKXJ/y1jAwUZv1lIzRxXVJPZZrzTVnXMKBo2AUv35ZmjLvOlBlVIm5QwJ
         sCaLXH+htoXWxNGRbwCNohWI37K+vKcHFm786yS0YF0UJAd9nzjmZ+YQQEyxjit3QCK3
         P9p7JdgcxWsUfSyjRgRX0GyLzQJVkN0xSGIQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775056191; x=1775660991;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8FsUOsK9f37hc1TEAM99BJG4BwP997fyrKMVSsRInM=;
        b=BDcQD0dpdZdeW9i2T9K0aI6Fcl4Yz7ziYW6rjbgxZTxca9OJcDwu5v81dQz9HsUQV0
         dkoXmxBfgKgXZkGh/oiDH3TFG7lndrOf8xRnEaJBPVCQhqMrBCoSfTqLWQaHplLizP4J
         VHYECEeGWiMsP28Oy7DQcydoqcMoK6nGZqnCVe289Mcwr+tmqx2B6y+dE/PwQr12SP87
         n5zLE23RarUb8/9D9ZhawxfJppn2/+JuxmuM7M06jZf4gfE/br3dgPhMfo8LrzkGie5o
         hJh/isZs6ZJwmZHwNz+yCj9qQGG8DVHivevFW/oru3OeDUb4OcEm+PWvIyX+NNsgJmSh
         VC0g==
X-Gm-Message-State: AOJu0YwZfOrbtVQ4nXjj51neJkc2nUJpTT9yDJ9aL4Fvs3cCmUq5I3+y
	ZLCahAtr6rdVgFEtHSwxM5+ha2i8THOihtcXFHZeM+qMPqu3NKDsz7BFgzKjVDoT73H3CTsKHTH
	vAPqy8ex7ObGYdoqbq7r2rTsDlY726BZSixZUETD8HA==
X-Gm-Gg: ATEYQzzyAR7HWz8JUYaNcPjE/VZBqVcUQZp5UkgDcAxb9M6NOMjVs+kDKcKPl2zY6oZ
	cM8gil6+NpC327L0kYdLYjIaEBrv+0zB49aqfmpSKoB2vZaMxkRp7M56EFDegX6ER31evUy4p8d
	qin7/hhiJSTsJsVMuHdh0tP+x+7QhMjkIeVoEVlPFwtLIrDUiql+UZ56ySGTr5Vny1lYTxiSJuD
	N2tOxsZ6MbnFZTTYihZ7TKNFwkXOHwDXCaJJaqtka+oRVHd6lsi3NJh5MjDIjxftSR29wCZZvlh
	sRG32f97r/jDM+CI19uwlaSXVUoEiyQfnytVP6ZIt9H3Xov/fsnc7hqRc7T3S43sLtyNbiYtF1K
	uSyMB7f0WbA==
X-Received: by 2002:a17:90b:2ec4:b0:35d:a8d9:3a8 with SMTP id
 98e67ed59e1d1-35dc6f7ad0bmr3931989a91.16.1775056191165; Wed, 01 Apr 2026
 08:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <b2b22dae656f5f415374964c3ae94e2ce0bb3434.camel@pbarker.dev>
In-Reply-To: <b2b22dae656f5f415374964c3ae94e2ce0bb3434.camel@pbarker.dev>
From: Walt Miner <wminer@linuxfoundation.org>
Date: Wed, 1 Apr 2026 11:09:34 -0400
X-Gm-Features: AQROBzDyosgzkAWMmcm5--1Kwba8hwLZRxxdqw44bCAo7TWXGdVjpZ4wMNPjWu8
Message-ID: <CAC_dYdqKcv7yijCGqZ2QynxtKg4G24yskftM3eHY_BGotSG76w@mail.gmail.com>
Subject: Re: [yocto-status] Yocto Project release dates for May 2026 to April 2027
To: yocto-status@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org, openembedded-core@lists.openembedded.org, 
	Yoann Congal <yoann.congal@smile.fr>, Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Stephen Jolley <sjolley.yp.pm@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000bb2769064e677927"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Apr 2026 15:09:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66378

--000000000000bb2769064e677927
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
This is great.  Having 12 months of clarity greatly helps in planning the
AGL schedule since we usually put our schedules together 12 months in
advance. I have traditionally used guessed dates in planning and kept track
of which are guesses and which are provided by the project.

I think a quarterly review might be beneficial so you can adjust any dates
accordingly if things have slipped.  Having the complete picture of  the
upcoming year by early November would be a big help in my planning.

Regards,
Walt



Walt Miner
AGL Community Manager
The Linux Foundation

Visit us at:
www.automotivegradelinux.org
lists.automotivelinux.org
www.linuxfoundation.org




On Wed, Apr 1, 2026 at 10:24=E2=80=AFAM Paul Barker via lists.yoctoproject.=
org
<paul=3Dpbarker.dev@lists.yoctoproject.org> wrote:

> Hi all,
>
> I'm happy to propose the following Yocto Project release dates, covering
> the period of May 2026 to April 2027.
>
> In order to make planning easier for downstream users, we're setting
> these dates for a full year instead of just 6 months. The increased
> horizon, and the focus on getting ready to build 6.0 M3 does mean that
> there's been a little delay getting the dates out, but this should
> hopefully put people in a good place to plan now.
>
> We will review these again in 6 months time to see if any adjustments
> are needed to the 2027 dates. I'd also like to get dates in the calendar
> up to Nov 2027 some time in October this year.
>
>
> Notes
> =3D=3D=3D=3D=3D
>
> - All dates are **week commencing**, the exact day the release is
>   published depends on TSC availability to approve releases and time
>   taken to upload release artifacts.
>
> - Releases will be built 10-14 days before the target release date to
>   give time for QA and review.
>
> - We aim for 6-7 weeks between releases in each series, occasionally
>   there will be an 8 week gap due to things like Christmas/New Year
>   vacations.
>
> - We aim for 4 weeks between .0 and .1 releases to allow us to get any
>   necessary fixes out for the new series.
>
>
> Feedback
> =3D=3D=3D=3D=3D=3D=3D=3D
>
> Please review these and let me know if you have any feedback before the
> next weekly tech call on Tues 7th April.
>
> I'd especially like to know:
>   **Is 12 months of dates beneficial to you, vs just having 6 months?**
>
> It does take more coordination to plan with a longer horizon.
>
>
> 5.0 "scarthgap" series
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 5.0.18  : w/c 2026-05-25
> 5.0.19  : w/c 2026-07-13
> 5.0.20  : w/c 2026-08-31
> 5.0.21  : w/c 2026-10-19
> 5.0.22  : w/c 2026-12-14
> 5.0.23  : w/c 2027-01-25
> 5.0.24  : w/c 2027-03-08
> 5.0.25  : w/c 2027-04-19
>
>
> 6.0 "wrynose" series
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 6.0.0   : w/c 2026-05-04
> 6.0.1   : w/c 2026-06-01
> 6.0.2   : w/c 2026-07-06
> 6.0.3   : w/c 2026-08-24
> 6.0.4   : w/c 2026-10-12
> 6.0.5   : w/c 2026-12-07
> 6.0.6   : w/c 2027-01-18
> 6.0.7   : w/c 2027-03-01
> 6.0.8   : w/c 2027-04-12
>
>
> 6.1 series
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 6.1 M1  : w/c 2026-06-22
> 6.1 M2  : w/c 2026-08-03
> 6.1 M3  : w/c 2026-09-14
> 6.1.0   : w/c 2026-11-02
> 6.1.1   : w/c 2026-11-30
> 6.1.2   : w/c 2027-01-04
> 6.1.3   : w/c 2027-02-22
> 6.1.4   : w/c 2027-04-05
>
>
> 6.2 series
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 6.2 M1  : w/c 2026-12-21
> 6.2 M2  : w/c 2027-02-01
> 6.2 M3  : w/c 2027-03-15
> 6.2.0   : w/c 2027-05-03
>
>
> Best regards,
>
> --
> Paul Barker
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#114):
> https://lists.yoctoproject.org/g/yocto-status/message/114
> Mute This Topic: https://lists.yoctoproject.org/mt/118616670/1005504
> Group Owner: yocto-status+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto-status/leave/13179051/1005504/1961=
985742/xyzzy
> [wminer@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

--000000000000bb2769064e677927
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Paul,=C2=A0</div><div>This is great.=C2=A0 Having =
12 months of clarity greatly helps in planning the AGL schedule since we us=
ually put our schedules together 12 months in advance. I have traditionally=
 used guessed dates in planning and kept track of which are guesses and whi=
ch are provided by the project. =C2=A0</div><div><br></div><div>I think a q=
uarterly=C2=A0review might be beneficial so you can adjust any dates accord=
ingly if things have slipped.=C2=A0 Having the complete picture of =C2=A0th=
e upcoming year by early November would be a big help in my planning.</div>=
<div><br></div><div>Regards,</div><div>Walt</div><div><br></div><div><br></=
div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"color:rgb(136,136,136)">=
Walt Miner</span></div><div dir=3D"ltr"><div style=3D"color:rgb(136,136,136=
)">AGL Community Manager</div><div style=3D"color:rgb(136,136,136)">The Lin=
ux Foundation<br></div><div style=3D"color:rgb(136,136,136)"><br></div><div=
 style=3D"color:rgb(136,136,136)">Visit us at:</div><div style=3D"color:rgb=
(136,136,136)"><a href=3D"http://www.automotivegradelinux.org" target=3D"_b=
lank">www.automotivegradelinux.org</a></div><div style=3D"color:rgb(136,136=
,136)"><a href=3D"http://lists.automotivelinux.org" target=3D"_blank">lists=
.automotivelinux.org</a></div><div style=3D"color:rgb(136,136,136)"><a href=
=3D"http://www.linuxfoundation.org" target=3D"_blank">www.linuxfoundation.o=
rg</a></div><div style=3D"color:rgb(136,136,136)"><br></div><div style=3D"c=
olor:rgb(136,136,136)"><br></div></div></div></div></div></div></div></div>=
</div></div></div></div></div><br></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 1, 2026=
 at 10:24=E2=80=AFAM Paul Barker via <a href=3D"http://lists.yoctoproject.o=
rg">lists.yoctoproject.org</a> &lt;paul=3D<a href=3D"mailto:pbarker.dev@lis=
ts.yoctoproject.org">pbarker.dev@lists.yoctoproject.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,2=
04);padding-left:1ex">Hi all,<br>
<br>
I&#39;m happy to propose the following Yocto Project release dates, coverin=
g<br>
the period of May 2026 to April 2027.<br>
<br>
In order to make planning easier for downstream users, we&#39;re setting<br=
>
these dates for a full year instead of just 6 months. The increased<br>
horizon, and the focus on getting ready to build 6.0 M3 does mean that<br>
there&#39;s been a little delay getting the dates out, but this should<br>
hopefully put people in a good place to plan now.<br>
<br>
We will review these again in 6 months time to see if any adjustments<br>
are needed to the 2027 dates. I&#39;d also like to get dates in the calenda=
r<br>
up to Nov 2027 some time in October this year.<br>
<br>
<br>
Notes<br>
=3D=3D=3D=3D=3D<br>
<br>
- All dates are **week commencing**, the exact day the release is<br>
=C2=A0 published depends on TSC availability to approve releases and time<b=
r>
=C2=A0 taken to upload release artifacts.<br>
<br>
- Releases will be built 10-14 days before the target release date to<br>
=C2=A0 give time for QA and review.<br>
<br>
- We aim for 6-7 weeks between releases in each series, occasionally<br>
=C2=A0 there will be an 8 week gap due to things like Christmas/New Year<br=
>
=C2=A0 vacations.<br>
<br>
- We aim for 4 weeks between .0 and .1 releases to allow us to get any<br>
=C2=A0 necessary fixes out for the new series.<br>
<br>
<br>
Feedback<br>
=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
Please review these and let me know if you have any feedback before the<br>
next weekly tech call on Tues 7th April.<br>
<br>
I&#39;d especially like to know:<br>
=C2=A0 **Is 12 months of dates beneficial to you, vs just having 6 months?*=
*<br>
<br>
It does take more coordination to plan with a longer horizon.<br>
<br>
<br>
5.0 &quot;scarthgap&quot; series<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
5.0.18=C2=A0 : w/c 2026-05-25<br>
5.0.19=C2=A0 : w/c 2026-07-13<br>
5.0.20=C2=A0 : w/c 2026-08-31<br>
5.0.21=C2=A0 : w/c 2026-10-19<br>
5.0.22=C2=A0 : w/c 2026-12-14<br>
5.0.23=C2=A0 : w/c 2027-01-25<br>
5.0.24=C2=A0 : w/c 2027-03-08<br>
5.0.25=C2=A0 : w/c 2027-04-19<br>
<br>
<br>
6.0 &quot;wrynose&quot; series<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
6.0.0=C2=A0 =C2=A0: w/c 2026-05-04<br>
6.0.1=C2=A0 =C2=A0: w/c 2026-06-01<br>
6.0.2=C2=A0 =C2=A0: w/c 2026-07-06<br>
6.0.3=C2=A0 =C2=A0: w/c 2026-08-24<br>
6.0.4=C2=A0 =C2=A0: w/c 2026-10-12<br>
6.0.5=C2=A0 =C2=A0: w/c 2026-12-07<br>
6.0.6=C2=A0 =C2=A0: w/c 2027-01-18<br>
6.0.7=C2=A0 =C2=A0: w/c 2027-03-01<br>
6.0.8=C2=A0 =C2=A0: w/c 2027-04-12<br>
<br>
<br>
6.1 series<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
6.1 M1=C2=A0 : w/c 2026-06-22<br>
6.1 M2=C2=A0 : w/c 2026-08-03<br>
6.1 M3=C2=A0 : w/c 2026-09-14<br>
6.1.0=C2=A0 =C2=A0: w/c 2026-11-02<br>
6.1.1=C2=A0 =C2=A0: w/c 2026-11-30<br>
6.1.2=C2=A0 =C2=A0: w/c 2027-01-04<br>
6.1.3=C2=A0 =C2=A0: w/c 2027-02-22<br>
6.1.4=C2=A0 =C2=A0: w/c 2027-04-05<br>
<br>
<br>
6.2 series<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
6.2 M1=C2=A0 : w/c 2026-12-21<br>
6.2 M2=C2=A0 : w/c 2027-02-01<br>
6.2 M3=C2=A0 : w/c 2027-03-15<br>
6.2.0=C2=A0 =C2=A0: w/c 2027-05-03<br>
<br>
<br>
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#114): <a href=3D"https://lists.yoctoproject.org/g/yocto=
-status/message/114" rel=3D"noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto-status/message/114</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118616670/100=
5504" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118616670/1005504</a><br>
Group Owner: <a href=3D"mailto:yocto-status%2Bowner@lists.yoctoproject.org"=
 target=3D"_blank">yocto-status+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto-status/leave=
/13179051/1005504/1961985742/xyzzy" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.yoctoproject.org/g/yocto-status/leave/13179051/1005504/19619857=
42/xyzzy</a> [<a href=3D"mailto:wminer@linuxfoundation.org" target=3D"_blan=
k">wminer@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div>

--000000000000bb2769064e677927--

