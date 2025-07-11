Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FBB5C83F1A
	for <webhook@archiver.kernel.org>; Fri, 11 Jul 2025 07:43:06 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.8425.1752219779987263496
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Jul 2025 00:43:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=w8me5SRO;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.53, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae223591067so296634166b.3
        for <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 00:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1752219778; x=1752824578; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZqKgEPR9i5i8yfQqw1GP/SwBRuubJGWqTCcC4v6lijY=;
        b=w8me5SROS+CPhVtxMs8BTPcvIi4Kj1K8X0Z0fAf5a8nXUcbuP6PSo6DJnBOs0p23xy
         bSdd6Q9D723q+DSPEaEfr4lwa5zJFUVi+wKmsC+/dcdap5hSVrJ8AfJwyAHCe5wPogcW
         MBJ3Xv/xNXqJzEBp3vzoYvA/iVLIFwcCMF1YHLqu9B8NdqTp4yW1zTod6hpquBt+mfEp
         h4zn9f0p+1jtk5+pmutwZXbkqnU3H5tm7gev5oEfDQ/j0aUCrZdCHX6xvhts7+YYMsD9
         mVuFzbNrkWCfXgx5jV/XpxD7vBFo0D7j0IVV1zuWP36in0oYVoAbPkLncsPavj7ZHxOo
         6HLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752219778; x=1752824578;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZqKgEPR9i5i8yfQqw1GP/SwBRuubJGWqTCcC4v6lijY=;
        b=jLhOmmnjdO8SGW0ARDZsjbp9BYQm9eTfE8yV8FrabXV+r+6XKXDFgSCac6jYPPE5YL
         HSwYAsvb4pUDWlJmTPTJx2Dd6Wlcsu748xwfZ3qqDn9F52QUXPI8XVDAeXBRj2mp672k
         z9q4u1ssJC/YemGFZK4a8XdjJcMJd7O2p83mq20ZY3h+KjWRFFzkWdpf6HFFk06GYaAU
         QwHLPThexjNQZ74N+VxENbg+N+EDMDuoaAw/KWgWZPDZLJZXzbqLCE/1GTH9Lr/+RPYg
         0bB1q7DzBOPAkXo7gHWsSPhdjbWIiAVa0XofNzjb8wKq2fsKKbgJAnoSxulTRbYQu4YT
         EeOQ==
X-Gm-Message-State: AOJu0YyfQtmNgMfuXluWB7G/YbiZRvs9syf0u+hVvPoDoOcumrz90/Gh
	qOSrYkax/83UEb70H5Sr5fFrZUjMANGr9knrzLGpYKawucUZEaCCMAm+5ZVXWPzPgz+JRpOdgD8
	vVdfuzRs6iBS+TSnRQ3uxMRSEwfhbGU+hOCzPl1VuCNZt4FB0v99z
X-Gm-Gg: ASbGnctn+DMTklEPRAr/oLwEOUn3h0Ht8UpPu4Av7bEXKpeiTN1yDEIUEJh1lnhP00k
	iAxAp115rYA/qlCacGxjV8MKpwZAtqmvijl8+QhUQxnLEv2gjWq6RLbuQXtZHCsDnF3V9FmWmh0
	bow3o7LMM2f1xPtl79sJFKxCNwxtZObYMsfcAxnLGqnFM2THo5PocUvrsYDeagYhsN9HAdeRPQB
	LcLhw==
X-Google-Smtp-Source: AGHT+IFP6p28/FFxL8pgeLS3IJrntxXnNkwjZZrRFxNI49zToQtx+cFs5NK0f1wx75Mv2+dn9DVInkykENNKGIsCN4M=
X-Received: by 2002:a17:907:9349:b0:ae3:5e70:32fc with SMTP id
 a640c23a62f3a-ae6fc121093mr193728866b.29.1752219777844; Fri, 11 Jul 2025
 00:42:57 -0700 (PDT)
MIME-Version: 1.0
References: <a0f4104d-8167-6a1c-f2f5-8bde30fe7a21@crashcourse.ca>
In-Reply-To: <a0f4104d-8167-6a1c-f2f5-8bde30fe7a21@crashcourse.ca>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 11 Jul 2025 09:42:31 +0200
X-Gm-Features: Ac12FXyq0rgrZg9ZtqQl3Gy0HkdUG1DauIAOQays_q5u039TAThl13N2tk8AmjA
Message-ID: <CAEt6NwqVps39xavQv6XDb=WsGT2nbHJXGrAzM0HdrWm_63T21A@mail.gmail.com>
Subject: Re: [yocto] [POLITICAL] Will all future U.S. OE/YP conferences be
 available virtually?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Content-Type: multipart/alternative; boundary="0000000000006d83f80639a27543"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Jul 2025 07:43:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65641

--0000000000006d83f80639a27543
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

Thanks for raising that one. We are closely monitoring the public situation
and do take community considerations seriously. For the rest of 2025 there
are only two events coming up, which are colocated with OSS EU in
Amsterdam, and virtual, namely the Yocto Project Summit. We are also
looking at alternatives to host Developer Day(s) for the next iteration and
will communicate those well ahead of time.

Greetz,
Josef
Yocto Project Community Manager

On Thu, Jul 10, 2025 at 2:04=E2=80=AFPM Robert P. J. Day via lists.yoctopro=
ject.org
<rpjday=3Dcrashcourse.ca@lists.yoctoproject.org> wrote:

>
>   In checking out any interesting conferences in the coming months, I
> can safely say that, as a Canadian, I will under no circumstances be
> travelling to the U.S. No way. So are conference organizers making
> accommodations for people who want to attend but who refuse to travel
> to the United States?
>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65639):
> https://lists.yoctoproject.org/g/yocto/message/65639
> Mute This Topic: https://lists.yoctoproject.org/mt/114080832/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006d83f80639a27543
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>Thanks for raising that one.=
 We are closely monitoring the public situation and do take community consi=
derations seriously. For the rest of 2025 there are only two events coming =
up, which are colocated with OSS EU in Amsterdam, and virtual, namely the Y=
octo Project Summit. We are also looking at alternatives to host Developer =
Day(s) for the next iteration and will communicate those well ahead of time=
.</div><div><br></div><div>Greetz,</div><div>Josef</div><div>Yocto Project =
Community Manager</div></div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 10, 2025 at 2:04=
=E2=80=AFPM Robert P. J. Day via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;rpjday=3D<a href=3D"mailto:crashcourse.ca@li=
sts.yoctoproject.org">crashcourse.ca@lists.yoctoproject.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,2=
04,204);padding-left:1ex"><br>
=C2=A0 In checking out any interesting conferences in the coming months, I<=
br>
can safely say that, as a Canadian, I will under no circumstances be<br>
travelling to the U.S. No way. So are conference organizers making<br>
accommodations for people who want to attend but who refuse to travel<br>
to the United States?<br>
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#65639): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65639" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65639</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114080832/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114080832/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006d83f80639a27543--

