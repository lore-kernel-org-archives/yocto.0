Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 097CBC43334
	for <webhook@archiver.kernel.org>; Fri,  8 Jul 2022 14:12:36 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.8078.1657289552663828721
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jul 2022 07:12:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Y+jLvARX;
 spf=pass (domain: gmail.com, ip: 209.85.222.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id x11so354924qki.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jul 2022 07:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Qa1Fo2prSNDN6+Mf1xcDn0JDRZHSQwOlddiRXdzudm0=;
        b=Y+jLvARXNS/GUSwzMQsH/PmovecO/AzD7KA+l21PIz5oxp8qHAPxrlfs7LwOKctcQG
         rZj6Kmuh9blSIlli3/7QuC4R7oQERanVkJxdhPARZWEe05FyYfb2iBzNsjoo/r8F2p+3
         dqiIc1xiyWjvEma2iSyllxOKqdE3tUv1Hk0FcdQHtOXTptAGwXdvgOlFs/1J9K2GP4SQ
         802Gm5ibfWUXx0ZyvUJ7j58vguKuAh6hQ+cj+tS1TGXqA5AfudpXq9ada2Fo08/0QwIH
         LT1E1kCpl9TzytxB8OXnG4n5z+2TuS9YaNaPMOPB8JgPe6rUS4pMyNC4LBCvT6Nk0DkP
         3uZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Qa1Fo2prSNDN6+Mf1xcDn0JDRZHSQwOlddiRXdzudm0=;
        b=F/kvekeIG8LTSzgr6JqMphoE+U6GYTLuPhYkcuXbMLozRVvIFINUxqyxf1DXngBZ0Q
         OCKtt/o3NMiehWJvUogrypfhCzKdRAtBZ4sz/SRcwrmtCBA10e2p1P0ax08bhRLrCFkS
         Fr5FR1QP74oCZqv6+5neHms20xglUes3DtDp3QhpmfttSO0kwKdLJKY+598Gb0GKKL8o
         6uehY+98AcgyGIMNwGdmMSPcTIBLKM3s14OF7nO469j/hJS65UqodNJd1X4cVQ7S/zrf
         BUCyU/cBTb5gWvJQyXr2/qPyQB+pZp+o9lriPNLW09U59fTBdS3D3FZITh6iqro+YCfu
         Hp7w==
X-Gm-Message-State: AJIora+KPs1zC3JqYgsJMLGRuSpE6BahshhjFwhiEueGEMkzOk1nMLZu
	yVn+UprmD6l6ij7XJuAsC92l2UqwmKFd2NAWjzc=
X-Google-Smtp-Source: 
 AGRyM1sG7xfnkMBConJ+TeIhmYQ/k8GcYBrkEjnxt/avUpRe2MTgQG43RRaknfxBaDmYKUcUumwWQbwZZv5wXAJ5CI4=
X-Received: by 2002:a05:620a:1728:b0:6af:59d0:d87f with SMTP id
 az40-20020a05620a172800b006af59d0d87fmr2446536qkb.149.1657289551261; Fri, 08
 Jul 2022 07:12:31 -0700 (PDT)
MIME-Version: 1.0
References: <AWI7.1657141765119571734.Ou9q@lists.yoctoproject.org>
 <3678.1657201166691715156@lists.yoctoproject.org>
 <b1780c1312e946218911e73adac5716cc24d8f41.camel@linuxfoundation.org>
 <YsevoOp8KFQ8+dmC@gpanders.com>
In-Reply-To: <YsevoOp8KFQ8+dmC@gpanders.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Jul 2022 10:12:20 -0400
Message-ID: 
 <CAMKF1sr3s9b0C9jj_tGfi6exxauw3DuGYKM4zu45hDFi7eaH1A@mail.gmail.com>
Subject: Re: [yocto] Installing gfortran into native sysroot for libgfortran
To: Gregory Anders <greg@gpanders.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fe330005e34bca54"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Jul 2022 14:12:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57482

--000000000000fe330005e34bca54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 8, 2022 at 2:25 AM Gregory Anders <greg@gpanders.com> wrote:

> On Thu, 07 Jul 2022 16:26 +0100, Richard Purdie wrote:
> >On Thu, 2022-07-07 at 06:39 -0700, Gregory Anders wrote:
> >> Problem solved: the issue was actually that I was using a network
> >> sstate cache,
> >> and the cached output of gcc-cross did not contain gfortran.
> >> Disabling the
> >> sstate cache for gcc-cross causes gfortran to be included in the
> >> sysroot and
> >> now all is working as expected.
> >
> >You shouldn't have to disable the sstate cache but glad you got it
> >working. Which release series is that with?
>
> I am using Xilinx's Petalinux tool, which uses honister under the
> hood. Xilinx maintains an sstate cache for Petalinux, which is quite
> convenient for cutting down build times, but apparently setting the
> FORTRAN variable does not invalidate the sstate cache entry for the
> gcc-cross recipe (which it should, as it affects the build outputs).


Perhaps it=E2=80=99s using locked sstate which might be the reason

>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57480):
> https://lists.yoctoproject.org/g/yocto/message/57480
> Unfollow This Topic: https://lists.yoctoproject.org/unft/92216663/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000fe330005e34bca54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jul 8, 2022 at 2:25 AM Gregory Anders &lt;<a href=
=3D"mailto:greg@gpanders.com">greg@gpanders.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">On Thu, 07 Jul 2022 16:26 +0100, Richard Purdie=
 wrote:<br>
&gt;On Thu, 2022-07-07 at 06:39 -0700, Gregory Anders wrote:<br>
&gt;&gt; Problem solved: the issue was actually that I was using a network<=
br>
&gt;&gt; sstate cache,<br>
&gt;&gt; and the cached output of gcc-cross did not contain gfortran.<br>
&gt;&gt; Disabling the<br>
&gt;&gt; sstate cache for gcc-cross causes gfortran to be included in the<b=
r>
&gt;&gt; sysroot and<br>
&gt;&gt; now all is working as expected.<br>
&gt;<br>
&gt;You shouldn&#39;t have to disable the sstate cache but glad you got it<=
br>
&gt;working. Which release series is that with?<br>
<br>
I am using Xilinx&#39;s Petalinux tool, which uses honister under the<br>
hood. Xilinx maintains an sstate cache for Petalinux, which is quite<br>
convenient for cutting down build times, but apparently setting the<br>
FORTRAN variable does not invalidate the sstate cache entry for the<br>
gcc-cross recipe (which it should, as it affects the build outputs).</block=
quote><div dir=3D"auto"><br></div><div dir=3D"auto">Perhaps it=E2=80=99s us=
ing locked sstate which might be the reason=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex" dir=3D"auto"><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#57480): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57480" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57480</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/9221666=
3/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/92216663/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000fe330005e34bca54--

