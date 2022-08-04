Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47099C19F2A
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 13:38:55 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web12.4906.1659620328559309964
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 06:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XxrhhK7S;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: raj.khem@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id m22so19040877lfl.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 06:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cHTUDutXahjpqxb52sZUjWtwp9VmDFpGTRe7LGe8zXA=;
        b=XxrhhK7StMI4ctAeKywlVbefGPMFapxYlALZEuR4XLXUb2SAgag8eh9w8v/0vglfsR
         GOVSRZprbGxS8DJbHR2mYNnC24YpOSP1y3zp4TlCZtc4xz3wBtwjsU4RdO/iODfW4KdI
         89fK058lrX+vdZzmopSSmbkOQbDo60N4LmJNJYkpSdGoS3gzY91iyoeHkx6qZ7QEfBQo
         L0vpRm3V4t9Fm7YOFRBVVc8mzTT+SGDQsgaskW6CLoG7tHyjq0SQSc6Pvfxv9a3X8w+J
         NyRPMoXZ/k1+HzsgcAqsqBLJruF2elvbZZ2NAMgR4jllHkhKJByuSAqsMCpdOD5tu8qk
         /K4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cHTUDutXahjpqxb52sZUjWtwp9VmDFpGTRe7LGe8zXA=;
        b=kTJeS0+JeUUaRIy+tWtWdvptDJ3Fh02JjhLKiyy9Yqy3Y6boD5adeRxWlVq3U7JniK
         SJeJ9SqDTsBrFo0ivOukWaCqEto+6seJe/2YXmgg90gwhM0Zh2TYkqwSg7+qYNsOQzxy
         p23Oz/WxDT8JHR1nPzfg3CBOkd/ybe/jVxRNtMPc8CWZMgmduuae2ws45Xmll9/EUumd
         tG18/hUV0Ub1MnU+Y1wxWOpCyLrWj33ocX6LPKlbH7ytd+7dC4q+UILq8L3psLlmUuXs
         jUNcl57RbN4TQdYE8cgV9zZIjWLP0EI5vFhBGBmNDzBCTgcjumabyigO9Z9Ed9EDoJBY
         JgTA==
X-Gm-Message-State: ACgBeo0yYsd3jN8+/oGI5VzSUR8BlTtj1+NSu2Lmk6u0bfEFpji7j1Oq
	9pXR8LHhtu16rrjWPmjydRqrRHP70duPpUfqV+w=
X-Google-Smtp-Source: 
 AA6agR4xB+NPeq+sPW08tIy2JbL8qPO2DY87C4ozMh3Qi+WeDwosTmbJnlfaWu3DgrmR4HRm+FwJr7A1n5lJ4bLfaR8=
X-Received: by 2002:a05:6512:6c4:b0:48a:ef4c:ac7c with SMTP id
 u4-20020a05651206c400b0048aef4cac7cmr716278lff.608.1659620326672; Thu, 04 Aug
 2022 06:38:46 -0700 (PDT)
MIME-Version: 1.0
References: <07e0007095824408bedb92b61019fd9d@vivavis.com>
 <CAMKF1sqVSHHmi=NGqmFvbmtjA2fi8PLj5iTodU4+ESyiczPKmA@mail.gmail.com>
 <0167a3c723b34bafa4edc0b81ca0ea66@vivavis.com>
In-Reply-To: <0167a3c723b34bafa4edc0b81ca0ea66@vivavis.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 4 Aug 2022 14:38:35 +0100
Message-ID: 
 <CAMKF1sptSCH72uoxScQMBtSsBx2ZkvfPPFPax-Jp2Ei59o9ypA@mail.gmail.com>
Subject: Re: [yocto] libnss-resolve not automatically installed
To: "embedded (VIVAVIS AG)" <embedded@vivavis.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000088f0605e56a7876"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 13:38:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57779

--000000000000088f0605e56a7876
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 4, 2022 at 1:35 PM embedded (VIVAVIS AG) <embedded@vivavis.com>
wrote:

> Hi Khem,
>
> > Von: Khem Raj <raj.khem@gmail.com>
> > Gesendet: Donnerstag, 4. August 2022 13:20
> >>
> >> To install the missing library libnss-resolve.so.2, I've added
> >>   IMAGE_INSTALL_append =3D " libnss-resolve"
> >> to my image recipe, but I wonder, if this is the right place or
> necessary
> >> at all.
> >>
> >> My assumption was that having nss-resolve in PACKAGECONFIG will
> >> also install the related library, which is obviously not the case.
> >
> > Packageconfigs are about what you would like to build it=E2=80=99s stil=
l another
> step what you would like to bundle in your image which is what
> IMAGE_INSTALL does. At times this is already done because whatever the
> packagrconfig is enabling is already part of a output package that=E2=80=
=99s in
> your IMAGE_INSTALL dependencies and gets pulled in indirectly but that=E2=
=80=99s
> not the case here. Therefore you have to do it in both places
> >
> >>
> >> Furthermore, I had to write an append-file for base-files, such that
> >> /etc/nsswitch.conf contains the following line
> >>   hosts: resolve [!UNAVAIL=3Dreturn] files dns myhostname
> >>
>
> Ok, there's nothing to worry about.
> Adding libnss-resolve to IMAGE_INSTALL and overwriting nsswitch.conf in
> the append-file ist he correct procedure here.
>

Yes


> Thanks for clarification.
>
> Carsten
>

--000000000000088f0605e56a7876
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Aug 4, 2022 at 1:35 PM embedded (VIVAVIS AG) &lt;<a=
 href=3D"mailto:embedded@vivavis.com">embedded@vivavis.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">Hi Khem,<br>
<br>
&gt; Von: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk">raj.khem@gmail.com</a>&gt; <br>
&gt; Gesendet: Donnerstag, 4. August 2022 13:20<br>
&gt;&gt;<br>
&gt;&gt; To install the missing library libnss-resolve.so.2, I&#39;ve added=
<br>
&gt;&gt; =C2=A0 IMAGE_INSTALL_append =3D &quot; libnss-resolve&quot;<br>
&gt;&gt; to my image recipe, but I wonder, if this is the right place or ne=
cessary<br>
&gt;&gt; at all.<br>
&gt;&gt;<br>
&gt;&gt; My assumption was that having nss-resolve in PACKAGECONFIG will<br=
>
&gt;&gt; also install the related library, which is obviously not the case.=
<br>
&gt;<br>
&gt; Packageconfigs are about what you would like to build it=E2=80=99s sti=
ll another step what you would like to bundle in your image which is what I=
MAGE_INSTALL does. At times this is already done because whatever the packa=
grconfig is enabling is already part of a output package that=E2=80=99s in =
your IMAGE_INSTALL dependencies and gets pulled in indirectly but that=E2=
=80=99s not the case here. Therefore you have to do it in both places<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; Furthermore, I had to write an append-file for base-files, such th=
at<br>
&gt;&gt; /etc/nsswitch.conf contains the following line<br>
&gt;&gt; =C2=A0 hosts: resolve [!UNAVAIL=3Dreturn] files dns myhostname<br>
&gt;&gt;<br>
<br>
Ok, there&#39;s nothing to worry about.<br>
Adding libnss-resolve to IMAGE_INSTALL and overwriting nsswitch.conf in<br>
the append-file ist he correct procedure here.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes=C2=A0</div><=
div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Thanks for clarification.<br>
<br>
Carsten<br>
</blockquote></div></div>

--000000000000088f0605e56a7876--

