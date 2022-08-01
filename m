Return-Path: <kergoth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA942C00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 17:49:05 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.521.1659376140159019017
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:49:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ll6X+Av7;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: kergoth@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id a89so14735444edf.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 10:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ncXVYE+N+6SS4+iZ8NZ+8VcBqDPWx3qOqXhXXI6Vlf8=;
        b=ll6X+Av7gPCPfHQWbYa6Zj2/1S4iRCc1GfLJ+LiPauLAQ9qL98Ft8Y3BBrBopQGnyI
         Vo/xjnM5CP40M1f3MmH1jRVnfPLBW7TTTYaLkVw4T2mB5VpvgcU/pY0J2pajS1dGtsq/
         1KICsOetaOveB+v5mHxpgrCydc3jVu7hI/WysWTC8z/sTO5++TCrlIrOUxxDYrsMKnnu
         B3/ysWTwJO8x6YV+uHWhw+h7iG4DA+dvA09FBFvuJMsIt4l6+iYq7D7bDNMr1Z/c4Vuu
         GD8i0DV+bC1t2+RBqMTr9dwhNFLRGYGDUkzTSKIwzHDKl6sFGpQyX5Nmi6TqxaFvlucY
         Obig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ncXVYE+N+6SS4+iZ8NZ+8VcBqDPWx3qOqXhXXI6Vlf8=;
        b=sylIvKv3kU54xQe9CtN6JJbDwAxY2KlLKuQlUab6MWwLLb6Abkvpg7YjQ79/NVGM0q
         q2W/0h0fFYq49PfXFln2VlpBFa2ATXiSSET1Ux5SF0VHIX5pM7YMWqckdSFgg1GoPwOn
         GWnCNWaeg0v+LXXXiYCBf9Hdz79ZHNMKebA8NqrUf2F7hZBfNTattpS++wClJI3/EOa/
         vETo4+rH2JZaxA2EmRVdVmdJu2cb2tlV0L7XgZuSvnIJuiewzOTKt7Le4Ac5t+Z6OQj2
         yqmbU488grdTNlfafttSvresTdbyTTRIomM8LZLzOpXHU0s3VD1E6lPxLTFvmc2/ZHxB
         KMeA==
X-Gm-Message-State: AJIora+MY52GwZoEg+upctPmIWH80TqtDmx0A509ilaiIS9krLo2L9Cl
	Nv6rtvM/NklhNTd+leJV+yjJcFKL5ibwHpHNtqw=
X-Google-Smtp-Source: 
 AGRyM1tlhUnw9rhpWimuGeaAhw3mbrnVaV6pwq+aXelMwWfpRCz7Nvr/9DmwwDWdyJVS4iPztE78bFBtSkWom6QqH5w=
X-Received: by 2002:a05:6402:1389:b0:43a:ceea:93fd with SMTP id
 b9-20020a056402138900b0043aceea93fdmr17140967edv.64.1659376138528; Mon, 01
 Aug 2022 10:48:58 -0700 (PDT)
MIME-Version: 1.0
References: <S6lZ.1659375911932763970.goC0@lists.yoctoproject.org>
In-Reply-To: <S6lZ.1659375911932763970.goC0@lists.yoctoproject.org>
From: Christopher Larson <kergoth@gmail.com>
Date: Mon, 1 Aug 2022 10:48:47 -0700
Message-ID: 
 <CABcZANkUPhmFHS88cNs=22oSSTwqMa8Xe4AU9ChMrg72DLd=PA@mail.gmail.com>
Subject: Re: [yocto] Confused as to why runtime variables (RDEPENDS,
 RPROVIDES, etc) require package name overrides
To: brownij6@wwu.edu
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000492d9305e5319ddd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 17:49:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57721

--000000000000492d9305e5319ddd
Content-Type: text/plain; charset="UTF-8"

It doesn't have anything to do with parsing. A single bitbake recipe will
write multiple binary packages by splitting up its files, so each binary
package it writes has its own metadata.

On Mon, Aug 1, 2022 at 10:45 AM <brownij6@wwu.edu> wrote:

> Essentially I don't understand why variables like RDEPENDS require a
> package name conditional override such as "RDEPENDS_${PN}" while other
> variables, including DEPENDS, do not require this. Isn't putting the
> package name as a conditional after the variable pointless, since bitbake
> only parses the variables from the recipe it is currently building? I feel
> like my confusion may stem from some fundamental misunderstanding of the
> way the build system works.
>
> Thanks for your help,
> James
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57720):
> https://lists.yoctoproject.org/g/yocto/message/57720
> Mute This Topic: https://lists.yoctoproject.org/mt/92754027/3617123
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> kergoth@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Christopher Larson
chris_larson@mentor.com, chris.larson@siemens.com, kergoth@gmail.com
Principal Software Engineer, Embedded Linux Solutions, Siemens Digital
Industries Software

--000000000000492d9305e5319ddd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It doesn&#39;t have anything to do with parsing. A single =
bitbake recipe will write multiple binary packages by splitting up its file=
s, so each binary package it writes has its own metadata.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 1, 202=
2 at 10:45 AM &lt;<a href=3D"mailto:brownij6@wwu.edu">brownij6@wwu.edu</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span=
 style=3D"color:rgb(35,38,41);font-family:-apple-system,BlinkMacSystemFont,=
&quot;Segoe UI Adjusted&quot;,&quot;Segoe UI&quot;,&quot;Liberation Sans&qu=
ot;,sans-serif"><span style=3D"font-size:15px">Essentially I don&#39;t unde=
rstand why variables like RDEPENDS require a package name conditional overr=
ide such as &quot;RDEPENDS_${PN}&quot; while other variables, including DEP=
ENDS, do not require this. Isn&#39;t putting the package name as a conditio=
nal after the variable pointless, since bitbake only parses the variables f=
rom the recipe=C2=A0it is currently building? I feel like my confusion may =
stem from some fundamental misunderstanding of the way the build system wor=
ks.<br><br></span></span>Thanks for your help,<br>James
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57720): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57720" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57720</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92754027/3617=
123" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92754027/3617123</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:kergoth@gmail.com" target=3D"_blank">kergoth@gma=
il.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><font color=3D=
"#333333">Christopher Larson<br><a>chris_larson@mentor.com</a>,=C2=A0<a>chr=
is.larson@siemens.com</a>,=C2=A0<a>kergoth@gmail.com</a><br>Principal Softw=
are Engineer,=C2=A0Embedded Linux Solutions,=C2=A0Siemens Digital Industrie=
s Software</font><br></div></div></div>

--000000000000492d9305e5319ddd--

