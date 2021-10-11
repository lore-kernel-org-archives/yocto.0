Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74D5C433EF
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 04:40:55 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web09.7583.1633927255109097815
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Oct 2021 21:40:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=a/bba+1O;
 spf=pass (domain: gmail.com, ip: 209.85.219.169,
 mailfrom: chuckwolber@gmail.com)
Received: by mail-yb1-f169.google.com with SMTP id g6so36039809ybb.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Oct 2021 21:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1L8bRXiESo1LwLGDAqSmiLaYbpwxiF1XDoZggl3cPc8=;
        b=a/bba+1Ockkb4jlck3+VWH4VKDNFTzkEI32nY2BkcJ3vcumSX987t7QAhGO1FMa4X9
         Nx9d3SkQQVkiPEeiLk3b1UgNSSVEMsUgValLodMXRdRFb/O6k5Faus4x2pFaS5zu9vkU
         leqkHHDzaUNOj8oX8zSyj7ihu7scumIhJCIIGBPPr/zoz9C1nBi66JWToxHxXK2Pj7um
         fhyFZ6wN63mCN3woWaj/JxVRlJKMIkTmQuW6zTlCgvtbnGn9EIWVCBbBPR7D5tueX2du
         OHZ+TVUC8VVGi19KGlahs4GehMD5gyhUTrKyqPe8lqCtF5DheeMjntNE+IYSv6ZAdwpn
         OXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1L8bRXiESo1LwLGDAqSmiLaYbpwxiF1XDoZggl3cPc8=;
        b=UBR65nTgqN4dRbhiIsd3XQb1zv6t17xUE0Bh+5IwTNXkYBGFX8NDhiEiVkhBlenhLb
         1E7Cb5exVMhShQ4CFnk8t83waJAUoNp+Qi2nU88tke4dz/E0AOX0aEd0BZoRHpAczcwd
         9eCsvkLFN8qZfhj0Ol+N2ITpwNJv7uVAiwGdNq6EjLAgpioDRNwKoN7hP8AC31OprxCT
         CMww/12pCTAWVhBGqivmd8mdMfgU5obuqPRpPv/JwnbwmaOXAO2kkKK6KlQGPjaJzaPK
         Ucm/CytYXTpuXn3QaO0oOFIQQlEe2H4YifMzHNJ3dDg9ySwKCrb1M6YArG+TOOChlPF4
         b/AQ==
X-Gm-Message-State: AOAM5332+E3lSrqN7MGE3uDjKgUp8yWbNkIV757NN5vbfMhu07fefm4e
	IwrcZH0UnXayu2aJQ+nfAO9702G1SOFtxbDOyR8=
X-Google-Smtp-Source: 
 ABdhPJx/vASPU2D4liwIpNIUIjJLKbnUffQn6EGBA6eRaOhuxr+60Kg8hff5wSRtVkhrT3yXKPQS8tqAixw4rHrzw1U=
X-Received: by 2002:a25:14d6:: with SMTP id 205mr18472497ybu.93.1633927254211;
 Sun, 10 Oct 2021 21:40:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAA=hcWSfqgxOX8UjwW35tD4VMC8c0SHWVo=_=z38NH7+rq6dAg@mail.gmail.com>
In-Reply-To: 
 <CAA=hcWSfqgxOX8UjwW35tD4VMC8c0SHWVo=_=z38NH7+rq6dAg@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Sun, 10 Oct 2021 21:40:43 -0700
Message-ID: 
 <CAB=6tBQCvMVzZikXv5gLw-uHRft5uLuFX1yRouv-T6Q_ug=qcg@mail.gmail.com>
Subject: Re: [OE-core] How to trigger Yocto Linux /etc/profile or shell
 scripts in /etc/profile.d without shell logging in?
To: JH <jupiter.hce@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>,
	OE <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000937ecc05ce0c5507"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 04:40:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55012

--000000000000937ecc05ce0c5507
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 10, 2021 at 9:30 PM JH <jupiter.hce@gmail.com> wrote:

> The Yocto uses /etc/profile for root login, but there is no root
> physical login in an embedded device so the /etc/profile is never
> called, I added a shell script to /etc/profile.d, it was not called
> either. Both /etc/profile and scripts in /etc/profile.d can only be
> invoked when I physically log into the debug console, that is
> impractical. Appreciate your advice, how do you resolve that kind of
> problem?
>

What problem are you attempting to solve by running a script from
/etc/profile.d?

..Ch:W..


-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000937ecc05ce0c5507
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Oct 10, 2021 at 9:30 PM JH &lt;<a=
 href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
The Yocto uses /etc/profile for root login, but there is no root<br>
physical login in an embedded device so the /etc/profile is never<br>
called, I added a shell script to /etc/profile.d, it was not called<br>
either. Both /etc/profile and scripts in /etc/profile.d can only be<br>
invoked when I physically log into the debug console, that is<br>
impractical. Appreciate your advice, how do you resolve that kind of<br>
problem?<br>
</blockquote></div><div><br></div><div>What problem are you attempting to s=
olve by running a script from /etc/profile.d?</div><div><br></div><div>..Ch=
:W..<br></div><div><br></div><br>-- <br><div dir=3D"ltr" class=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quo=
t;Perfection must be reached by degrees; she requires the slow hand of time=
.&quot; - Voltaire</span></b></div></div></div></div>

--000000000000937ecc05ce0c5507--

