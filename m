Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8CB8C433EF
	for <webhook@archiver.kernel.org>; Wed,  1 Dec 2021 21:00:13 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web09.2899.1638392412448973766
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 13:00:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VvOnuG+o;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.169,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lj1-f169.google.com with SMTP id k23so50776145lje.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 01 Dec 2021 13:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y5hfUnqAdhf2b98BsrqJGgCMfJpgTEi8l+PFnZhT5dE=;
        b=VvOnuG+oITWT9jkwZrXP+DOs4VC+cqgGpRFDyzwGrnPNFYwt8CqzqO4kE2S2Ojb86q
         ZhR98Hp3/G+K88GkPy4eOz2Mtlbq5SlgVkM2ZPTxb74Q1McUX+/O+tK6Mp5Vd0LzjYLJ
         ylxlvrvHi5tyDJ97QbIShTEVqTtZ9gcgiquHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y5hfUnqAdhf2b98BsrqJGgCMfJpgTEi8l+PFnZhT5dE=;
        b=mzSE2JoUilQJLzSGVfVhLkYcRNgoK+YpfNTKmsf5e3CBAdcEezx/BaILB0DebzyQFc
         So80k8mAbjNJHLEiONbhRGdGyTuvmC2H2PLpJSYIm04I0hNHMTD2jnsOWpJQYWPICOAn
         MrtHTCMuBYtikOcw1P6Cp4wKdjyDbntcfLc+wMWZfMr4kG8bHokGsORuOwYCn2EzEbWf
         Uwh4oRaWvGU3YYkU7z0oRuTU07VhiRGTEqAg1ohmYPqCRO92ZroJft7wpdbelvtBb6GA
         RNyv1tYUokKBJyg/NrVYlSIZP/6ZtKmreDXZCVMVIvyp2Gz/aWNbyNKQhIFLn6fdfaVl
         lQAQ==
X-Gm-Message-State: AOAM530mTSb4KrBZqEy+ba2l0CFvnrryByS6x5Jv/8BPYfEWUeyjcTx5
	J5190AKHFJEsTqqM1MPbI+KU/6avrIj7glM4NrWLgA==
X-Google-Smtp-Source: 
 ABdhPJxVgyqZLivvoaD7mU02e8f7uQKGkZd0Hr4n/3FkuYC13IutAjfNFzbbsEDRF/Z3xbDQRL4n34g/gHdvqRbZUwQ=
X-Received: by 2002:a05:651c:50c:: with SMTP id
 o12mr8017813ljp.438.1638392410662;
 Wed, 01 Dec 2021 13:00:10 -0800 (PST)
MIME-Version: 1.0
References: 
 <CALbNGRSHUSdJMr3ZEVFO9NoktSspSJLdkuE3yTbr32+WErEEhQ@mail.gmail.com>
 <CAOSpxdYyoSafAe+fhCsQJnpshpYCbZYd19AEGBJNM0TLsTxsbg@mail.gmail.com>
 <CALbNGRSw2Ax2hFzi2nb9SzOqzEoGv4R-GrqJKgEjomFgwtezNA@mail.gmail.com>
In-Reply-To: 
 <CALbNGRSw2Ax2hFzi2nb9SzOqzEoGv4R-GrqJKgEjomFgwtezNA@mail.gmail.com>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 1 Dec 2021 12:59:59 -0800
Message-ID: 
 <CADfgfobQG34iV3-SzytS6XbDiFdQxdz4JF3M9T9wAG57yAHM5w@mail.gmail.com>
Subject: Re: [yocto] downloads.yoctoproject.org down?
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Steve Sakoman <steve@sakoman.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a4017b05d21bf53e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Dec 2021 21:00:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55463

--000000000000a4017b05d21bf53e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

downloads.yoctoproject.org is back online with additional redundancy.

The cause of the outage will take some time to investigate as the drive
with the logs is not accessible currently.

On Wed, Dec 1, 2021 at 12:06 PM Andreas M=C3=BCller <schnitzeltony@gmail.co=
m>
wrote:

> On Wed, Dec 1, 2021 at 7:59 PM Steve Sakoman <steve@sakoman.com> wrote:
> >
> > On Wed, Dec 1, 2021 at 8:45 AM Andreas M=C3=BCller <schnitzeltony@gmail=
.com>
> wrote:
> > >
> > > Hi,
> > >
> > > Trying to install buildtools (dunfell) I get
> > >
> > > ./sources/openembedded-core/scripts/install-buildtools
> > > INFO: Fetching buildtools installer
> > > ERROR: Could not download file from
> > >
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/=
buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1%2Bsnapshot-2=
0200617.sh
> > >
> > > Has anybody a chance to help me not being killed :)
> >
> > Yes, some of the infrastructure is down right now.  Michael knows and
> > is hard at work fixing the issue.
> So there is hope
>
> Thanks a lot all involved!
>
> Andreas
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55462):
> https://lists.yoctoproject.org/g/yocto/message/55462
> Mute This Topic: https://lists.yoctoproject.org/mt/87435425/1003190
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> mhalstead@linuxfoundation.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--000000000000a4017b05d21bf53e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"http://downloads.yoctoproject.org">downloads.yo=
ctoproject.org</a> is back online with additional redundancy.<div><br></div=
><div>The cause of the outage will take some time to investigate as the dri=
ve with the logs is not accessible currently.=C2=A0</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 1, 202=
1 at 12:06 PM Andreas M=C3=BCller &lt;<a href=3D"mailto:schnitzeltony@gmail=
.com">schnitzeltony@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Wed, Dec 1, 2021 at 7:59 PM Steve Sakoman &=
lt;<a href=3D"mailto:steve@sakoman.com" target=3D"_blank">steve@sakoman.com=
</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, Dec 1, 2021 at 8:45 AM Andreas M=C3=BCller &lt;<a href=3D"mail=
to:schnitzeltony@gmail.com" target=3D"_blank">schnitzeltony@gmail.com</a>&g=
t; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; Trying to install buildtools (dunfell) I get<br>
&gt; &gt;<br>
&gt; &gt; ./sources/openembedded-core/scripts/install-buildtools<br>
&gt; &gt; INFO: Fetching buildtools installer<br>
&gt; &gt; ERROR: Could not download file from<br>
&gt; &gt; <a href=3D"http://downloads.yoctoproject.org/releases/yocto/miles=
tones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalo=
ne-3.1%2Bsnapshot-20200617.sh" rel=3D"noreferrer" target=3D"_blank">http://=
downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtool=
s/x86_64-buildtools-extended-nativesdk-standalone-3.1%2Bsnapshot-20200617.s=
h</a><br>
&gt; &gt;<br>
&gt; &gt; Has anybody a chance to help me not being killed :)<br>
&gt;<br>
&gt; Yes, some of the infrastructure is down right now.=C2=A0 Michael knows=
 and<br>
&gt; is hard at work fixing the issue.<br>
So there is hope<br>
<br>
Thanks a lot all involved!<br>
<br>
Andreas<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55462): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55462" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55462</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87435425/1003=
190" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87435425/1003190</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank"=
>mhalstead@linuxfoundation.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Foun=
dation / Yocto Project</div><div>Systems Operations Engineer</div></div></d=
iv>

--000000000000a4017b05d21bf53e--

