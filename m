Return-Path: <anibal@limonsoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77017C4829B
	for <webhook@archiver.kernel.org>; Sun, 11 Feb 2024 19:32:10 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.43841.1707679927107674612
 for <yocto@lists.yoctoproject.org>;
 Sun, 11 Feb 2024 11:32:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@limonsoftware-com.20230601.gappssmtp.com header.s=20230601 header.b=Nk4yzaJ3;
 spf=pass (domain: limonsoftware.com, ip: 209.85.128.175, mailfrom: anibal@limonsoftware.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-60493e299b6so24387017b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 11 Feb 2024 11:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=limonsoftware-com.20230601.gappssmtp.com; s=20230601; t=1707679926; x=1708284726; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Xnrd0eQR+7zA0hcOXOZQkqCRSDiwxAu0QgBaGAEgiC4=;
        b=Nk4yzaJ3x5eUvsPsiH1Y+LRfWsD8fJAwWzKJnKnkM3zGHqRcpJhRlLCtyC9xxNLuZ1
         A07r51JFEAYjcdsXkQDaN5v+Tc0R3GohNA3PItAw9q9byMPS7uwXq5qM+RqimSx7iah4
         96381O7ge7psTXFqwVSJW4eVBSSkjfLRkz711lmBp38z3w2H7K4cJNvrkWiJQbMbp+8X
         rQA0HfNARq05Wm0DjJxvwv2HupEs0YT68uFn8CpMHEhyRe2x5RTKOl9U0QCGSm+fwGey
         8hap9vxjaYZrSVpymwWhtaWCT3rDANnCVfZWQ6GbQCKl5FiEPD6HuqWqqSS9ZaWoqo2d
         XELg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707679926; x=1708284726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xnrd0eQR+7zA0hcOXOZQkqCRSDiwxAu0QgBaGAEgiC4=;
        b=FlnADPEH07cl0vcNL3Vduhp/dHK3gkG3zuTKLa1uaqaxjBYVi1pdlprsPZDX9POqIC
         CMgr3qSsSpyP5On3ciiV5LZE8eL+K7/Ffn9b9OyVoEsVIQjHXuXmeopTEFcFhK6HAL4K
         yo/HAeJFpPtQvMTvs/2Qae7GnmFQlPYp45JeneVYu1ZJ9zSGQEOf/u0st4xOoRs/0xlv
         qxKQC1XBM6CD4GUdMgVnRjFkJRIODNSCL9JiwGomYqF7oDX1K22nCwnH1BVdDkzzsEXw
         NJa2xRBLqQUTDiMnTqKjUGrYrPWw3YVrxoYG2aWscohW9acHwEiPsbUKXYCIKvBiD1Sr
         0rKg==
X-Gm-Message-State: AOJu0YxqB0EDHA7qSrHC0C9b4aUzsbw7fTSTdbpj6n2tPnjhvDexnRup
	N5BhLcsnYDb+Sx/Bi1VBpM48Nq+6yherze7WX+r5Vn+L/2k8l5InSSrUZIMOGcA5nYCwJs2s9IZ
	YZD3ln9AwAgkwj1jymWyO71Tn0xq/9i+ZyOmiTGmryf7juGWL
X-Google-Smtp-Source: AGHT+IEQeHaNmr7u6HM4oI5uNtOWHZL14sUDac7d0gS/hie4c2mNVLUaa69Zy0X1ttLQ0zE8CFXrpNngSfMnWWB9wSw=
X-Received: by 2002:a05:690c:fcd:b0:604:df1e:41ee with SMTP id
 dg13-20020a05690c0fcd00b00604df1e41eemr4011119ywb.46.1707679925376; Sun, 11
 Feb 2024 11:32:05 -0800 (PST)
MIME-Version: 1.0
References: <ZVzTDrwC3WEn4xCu@hohnstaedt.de> <CAJdd5GbE2Gk6HNjmvEUkNNFVSF-m=3PguR9fEaYr_JcVkyk5bg@mail.gmail.com>
In-Reply-To: <CAJdd5GbE2Gk6HNjmvEUkNNFVSF-m=3PguR9fEaYr_JcVkyk5bg@mail.gmail.com>
From: Anibal Limon <anibal@limonsoftware.com>
Date: Sun, 11 Feb 2024 13:31:54 -0600
Message-ID: <CAOU5ZMvbbEnzQGVaXG8b4KqS_PZ6dY5H0tnZiB+2RmzzCtq=Vg@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] [PATCH] Do not reset error counter before
 each test
To: yocto@lists.yoctoproject.org, JPEWhacker@gmail.com
Cc: Christian Hohnstaedt <christian@hohnstaedt.de>
Content-Type: multipart/alternative; boundary="00000000000057ac56061120378a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 11 Feb 2024 19:32:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62461

--00000000000057ac56061120378a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Joshua: I'm doing an integration branch
Christian: adding this patch.

Regards!,
Anibal

On Wed, Feb 7, 2024 at 10:33=E2=80=AFAM Joshua Watt <JPEWhacker@gmail.com> =
wrote:

> LGTM
>
> Reviewed-by: Joshua Watt <JPEWhacker@gmail.com>
>
> On Tue, Nov 21, 2023 at 8:56=E2=80=AFAM Christian Hohnstaedt
> <christian@hohnstaedt.de> wrote:
> >
> > Hi,
> >
> > Commit 56ed1082c4914c0ef3c72bfd609d68cc850557f1 moved
> > the pipe-creation into the loop and resetted rc before each test,
> > such that only the result code of the last test was taken into
> > account for the final verdict.
> >
> > Only set rc =3D -1 if pipe() fails to keep collected test-errors.
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62419):
> https://lists.yoctoproject.org/g/yocto/message/62419
> Mute This Topic: https://lists.yoctoproject.org/mt/102730915/8181911
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> anibal@limonsoftware.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000057ac56061120378a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div><br></div><div>Joshua: I&#39;=
m doing an integration branch</div><div>Christian: adding this patch.</div>=
<div><br></div><div>Regards!,</div><div>Anibal</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 7, 2024 at =
10:33=E2=80=AFAM Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com">JP=
EWhacker@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">LGTM<br>
<br>
Reviewed-by: Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" target=
=3D"_blank">JPEWhacker@gmail.com</a>&gt;<br>
<br>
On Tue, Nov 21, 2023 at 8:56=E2=80=AFAM Christian Hohnstaedt<br>
&lt;<a href=3D"mailto:christian@hohnstaedt.de" target=3D"_blank">christian@=
hohnstaedt.de</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Commit 56ed1082c4914c0ef3c72bfd609d68cc850557f1 moved<br>
&gt; the pipe-creation into the loop and resetted rc before each test,<br>
&gt; such that only the result code of the last test was taken into<br>
&gt; account for the final verdict.<br>
&gt;<br>
&gt; Only set rc =3D -1 if pipe() fails to keep collected test-errors.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62419): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62419" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62419</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102730915/818=
1911" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102730915/8181911</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:anibal@limonsoftware.com" target=3D"_blank">anib=
al@limonsoftware.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000057ac56061120378a--

