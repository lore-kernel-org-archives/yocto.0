Return-Path: <abhijeettripathi3003@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC8DC433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 15:32:00 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web12.35524.1644852719781911177
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 07:32:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hqVBYjeh;
 spf=pass (domain: gmail.com, ip: 209.85.208.180,
 mailfrom: abhijeettripathi3003@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id a42so7402760ljq.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 07:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b+HS6hDwckD2FyWAvPvdjxQ0oXd9cPzi+Xg0xakxv/c=;
        b=hqVBYjehtYI0PdspYKfCdkL2WCVAhkaHQ+SIpCzW5Hhm0tOQbJwEp7QZf0m+e3+HW1
         d1hbdkb2HtlsQ2qZ4C/1k9qmEvhdhBEtcn+RHLamGYw8TLNAuhoIMmQaoROSysh9MXDs
         R6IGxsAWwVJTNG+0pAwM7OMcso1Ki5ReQhSBo0/vJ04luOuwchMiTS+j5obL/emWwiyE
         Uh3gMwxcmkJ5Eupzw6/VzbAytNCZJezc5q5NYPJctEshEAOe5FGHmBeq81nA10srVNcb
         Re7TpZZhLOfzWEVnEd0IzqJBKsb/Oh4Hyd30urlicfhycN+C5t1wCfN/wk71CTWY11pv
         DRUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b+HS6hDwckD2FyWAvPvdjxQ0oXd9cPzi+Xg0xakxv/c=;
        b=DzSpc1TE2BPg1EwWX/Uw8ImuI6GZFwY/uvMI16wt+/uA1SOwzSH+zbr5Zf9kjDzOQD
         F/appo+6GC0Qmnif5VoOVJ9F1qG3p5343XRBU4tUQZR4aXke6GNt2/11mw9S3pru8e8Z
         yMV/6uGdRtbrFVOti4NNsbyYmxJhOmeCQ4O0FPtZE6cxysIelb6eRRPIO5fgqpFYe4d7
         rV4zW55I62MFvF7hYC8qdDaz2U0Ykkpc2afB/jjpLn0DSrA/T2xi+XBQXn4iRC+lM3z8
         YnN5le6fFQRTtBA5+P2OsfQzqOAIKWDL+Jyv5H3n4mFP4HdPR/bfJKIdqKeIXI5EdZuq
         VwOg==
X-Gm-Message-State: AOAM530flAXg0b4vrKdV3+gSiNFi5o+0ll1MjO44/x0J7FjFz8gBwoAn
	k+wZEtPEy64skUUoEzw6B+VL5XEDyjS5wvqIT2U=
X-Google-Smtp-Source: 
 ABdhPJzhkkA5tjSFVIJ5vWmjTtVTRWIcy0jTDV0vnZjU14qoFnnFo++d7G3JAsgjQSx81y+aLF2aKnILTWCGIBx/+BM=
X-Received: by 2002:a2e:a915:: with SMTP id j21mr166611ljq.407.1644852717804;
 Mon, 14 Feb 2022 07:31:57 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
 <9B08FA30-5887-4075-AA04-4D1CD39B7E2B@redrectangle.org>
 <CAAnfSTs7GOXCuSwO+VVei4uW4gMVJb=0kfkngtPFXB2vZT1vHg@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTs7GOXCuSwO+VVei4uW4gMVJb=0kfkngtPFXB2vZT1vHg@mail.gmail.com>
From: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
Date: Mon, 14 Feb 2022 21:01:46 +0530
Message-ID: 
 <CAB_tbN=YpS0WKvMi=0+3OfF8ouAX6R++xBxkMQRgKeaGJkbVqQ@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on M1 Mac
To: Ross Burton <ross@burtonini.com>
Cc: Robert Joslyn <robert.joslyn@redrectangle.org>,
	Anders Montonen <anders.montonen@iki.fi>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f3e0d605d7fc1d53"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 15:32:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56183

--000000000000f3e0d605d7fc1d53
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 14, 2022 at 5:32 PM Ross Burton <ross@burtonini.com> wrote:

> On Mon, 14 Feb 2022 at 00:17, Robert Joslyn
> <robert.joslyn@redrectangle.org> wrote:
> > On my 2020 M1 MacBook Air (8 cores, 16 GB RAM, docker using 8 cores and
> 8 GB), the build took 84 minutes. My desktop with an AMD Ryzen 9 3950X (16
> cores, 64 GB RAM) it takes 21 minutes.
>
> Try doing the MBA build with the laptop suspended in the air on a
> couple of pencils.  As the MBA has no fan you might find that
> increasing airflow around the laptop makes a big difference.  And
> giving the container more RAM/cores will help, obviously, there's no
> reason to limit it to half the power.
>
> Ross
>

Thanks for the pointers, let me try it out on my Mac.
Will try to use max cpu cores and RAM to boost the performance a bit.

Regards,
Abhijeet

--000000000000f3e0d605d7fc1d53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 14, 2022 at 5:32 PM Ross =
Burton &lt;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, =
14 Feb 2022 at 00:17, Robert Joslyn<br>
&lt;<a href=3D"mailto:robert.joslyn@redrectangle.org" target=3D"_blank">rob=
ert.joslyn@redrectangle.org</a>&gt; wrote:<br>
&gt; On my 2020 M1 MacBook Air (8 cores, 16 GB RAM, docker using 8 cores an=
d 8 GB), the build took 84 minutes. My desktop with an AMD Ryzen 9 3950X (1=
6 cores, 64 GB RAM) it takes 21 minutes.<br>
<br>
Try doing the MBA build with the laptop suspended in the air on a<br>
couple of pencils.=C2=A0 As the MBA has no fan you might find that<br>
increasing airflow around the laptop makes a big difference.=C2=A0 And<br>
giving the container more RAM/cores will help, obviously, there&#39;s no<br=
>
reason to limit it to half the power.<br>
<br>
Ross<br></blockquote><div><br></div><div>Thanks for the pointers, let me tr=
y it out on my Mac. <br></div><div>Will try to use max cpu cores and RAM to=
 boost the performance a bit.</div><div><br></div><div>Regards,</div><div>A=
bhijeet <br></div></div></div>

--000000000000f3e0d605d7fc1d53--

