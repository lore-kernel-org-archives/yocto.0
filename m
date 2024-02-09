Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6EC4828F
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 09:36:25 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web11.7861.1707471378297778964
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 01:36:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=AA9YlH06;
 spf=softfail (domain: sidebranch.com, ip: 209.85.214.170, mailfrom: leon@sidebranch.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1d70b0e521eso5592895ad.1
        for <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 01:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1707471377; x=1708076177; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RDa13zzf9WLwvJFH0BRiWwTDVKFC81V78uHoyrK3zCQ=;
        b=AA9YlH06MMKr3BLnUsQqOKp+kxBfPGxNwRi1J65dC3Bu0N7/oltdOOi4aHFWJvwwSn
         dLSWWfi41opMl86jglrDATzqAVV2hH5goNN2ejhouIhrgjN/1X0IasRQvTK8J4epd4z1
         LTtyEzxzofdwdzRSMMdnGmTrkEneTRRrSMQtMEpq+xfE9Y1/xm3O8EKX6aM6p5/jZBm+
         Jv1Vk7ISOjwUNRygvHo5+paBVkSBdrOCJV4YFwnKdch7fH83t5Qw79rC0GPjDP4ecq2p
         j1PA2QcQtyt3PMY5Tym+kOEXfabPF1PAZABD914HFPdPN+iF5oPNZeRL6W4LkIjLQcLh
         tOfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707471377; x=1708076177;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RDa13zzf9WLwvJFH0BRiWwTDVKFC81V78uHoyrK3zCQ=;
        b=QorK9qGUb3zGtdhPgVhfsu/GP2JZwPiopBr1aDS0mqOLVQWH1WjQVx8L+sFIstYdNA
         FsOONUVsc+ydXaASGqrZnMiT0vI3VapWbGhosxS9UjGdPuFtidRXXyLFeeYhtk6dbNJI
         Li3CBom3RGsWsKB18Q0BeYuph1mBwcbpl3o/C//2Pw0IfywFQlzkm+Ac83dpYQhF3OTr
         VzUhmt/11jZ/pmwVKxfznenNOknljAiJVjINsBprglDBoclOGcMHgVbpADusEYtR+drS
         dX4UN9MQVa7iIBx+qD/yPmroQ93RXK0fpjDMfjllODuGa8bwWgyZ3KS3cbAwPaSaZcDV
         wUZw==
X-Gm-Message-State: AOJu0YwL9kEeHqlAjVsqMv3gQwt3Fsb03G/8EdryL5Itcc34p96wyJmx
	KOC74+AkKsZ9LLdZYdR7eMd8zDpK1ZG9LPgcBij6IuQGxmNifhsoQX3VQOXIA36reOiwFPI9Zej
	9PQ2eLFuXb53IwvrJWiYxFa3fRnci5u1r95e0fdUIbV7VzRS3Jxs+ww==
X-Google-Smtp-Source: AGHT+IFBAPn1tRJSTtfozv+xJYGhs8U479SM06IOmsZo1s6F7HMQBFW3TEu6DFwxPCXrlb83V5iysGywO2nq1rFbc5c=
X-Received: by 2002:a17:90a:6bc2:b0:296:479e:1310 with SMTP id
 w60-20020a17090a6bc200b00296479e1310mr974868pjj.18.1707471377091; Fri, 09 Feb
 2024 01:36:17 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
In-Reply-To: <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 9 Feb 2024 10:36:05 +0100
Message-ID: <CAMjhiJgbRoSXpDeAAE7ZEOA+kHO3E0Bb5O3yP70u7-Q7j8c1Ag@mail.gmail.com>
Subject: Re: [yocto] Moving yocto SDK to GIT
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: multipart/alternative; boundary="000000000000e55f800610efa82f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 09:36:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62443

--000000000000e55f800610efa82f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Hassan,

On Fri, Feb 9, 2024 at 7:10=E2=80=AFAM MOHAMMED HASSAN <hassanchattarki@gma=
il.com>
wrote:

> Hi guys,
> Apart from all the meta-layers, do you guys think it's a good idea to mov=
e
> the downloads, sstate cache and the .conf files of build dir to GIT?
>
> I think by looking at what GIT tool is for, the general answer is:

downloads: No.
sstate cache: No.

Because GIT is meant to maintain *source* *code* trees, putting binaries in
it is generally regarded as not the right tool for the job.

.conf files: Yes, probably, in your build project. (I personally keep
programming source code apart from build configuration source code.)

Cheers,

Leon.

--000000000000e55f800610efa82f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0=
)">Hello Hassan,</div><div style=3D"color:rgb(0,0,0)"><br></div></div></div=
></div></div></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Feb 9, 2024 at 7:10=E2=80=AFAM MOHAMMED HASSAN &lt;=
<a href=3D"mailto:hassanchattarki@gmail.com">hassanchattarki@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi guys,<br><div>Apart from all the meta-layers, do you guys th=
ink it&#39;s a good idea=C2=A0to move the downloads, sstate=C2=A0cache and =
the .conf files of build dir to GIT?</div><div><br></div></div></blockquote=
><div>I think by looking at what GIT tool is for, the general answer is:</d=
iv><div>=C2=A0<br></div><div>downloads: No.</div><div>sstate=C2=A0cache: No=
.</div><div><br></div><div>Because GIT is meant to maintain *source* *code*=
 trees, putting binaries in it is generally regarded as not the right tool =
for the job.</div><div><br></div><div>.conf files: Yes, probably, in your b=
uild project. (I personally keep programming source code apart from build c=
onfiguration source code.)</div><div><br></div><div>Cheers,</div><div><br><=
/div><div>Leon.</div></div></div>

--000000000000e55f800610efa82f--

