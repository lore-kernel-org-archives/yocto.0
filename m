Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4126.1575370571003561996
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 02:56:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bvmqJPLB;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C689E0108A; Tue,  3 Dec 2019 02:56:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 262D8E01081
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2019 02:56:09 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id m6so3288432ljc.1
        for <yocto@yoctoproject.org>; Tue, 03 Dec 2019 02:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bm+yUcHCd2bz7IPnIVIkKp3/01n2bxVE6g4iAdQLCkg=;
        b=bvmqJPLB3LlzkRmGgY4hEDZIVcuIvRtAAXYoXXi2Rmt5aXqkb3oCbAvj3oUjQUFc/Y
         CNAReaBrpL+6bGlgh21SloHaBlWKMqGIemfVyKEzfBO57D2Q8QeIZi4+YDPyp6XU3Yag
         JDkgmuyIYM/yjjdOceOowMLYHtbPdnajVWKJNeJPuiLPkvZFT74YopgZnmfW5Dyz+gIK
         3h4Ife1Pf1QeIAbjXCwzn5Q/CtE4bzdt+CxLAytz+29FAQ+kQEOhK96kJgGqZu3PcpjW
         HKL8KavNZY8vFMRfCFMNIcbbYaVLczfIZiH91YEPz98R7psT56KkpsfZFLHnZUoUxl/t
         fKpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bm+yUcHCd2bz7IPnIVIkKp3/01n2bxVE6g4iAdQLCkg=;
        b=tyt8aW2FRhuWDO0UuvAxbFkS3D7skPivNikm/nfvcphL9YwrELJgVntqDnwm4k8D1C
         V+46IdTnrQ3m0WsGTtePdu/eTMqVJ7/kXklyamsyD3Hqk11bIQG3sCNWR/h69gKLo2Bh
         WjTJCgoxdND3PEHxyZPxwJ3PpruP7ZgqS1DRy4AtRu4lnoJaI4FFZBgOd5X/Ojl8Czbz
         5UnDMkPHe62C4DbBz73rgCKRfb2Zo+jj+5HAWrkblEyC3JMr7ZMEdaukymxgD02apKKI
         FB0VHzNUUucDbzhj8klpM4IDjw2pzG0Hm017IiDW3E2SAqp90WybnG3HQUsX8aOui2pm
         eaRg==
X-Gm-Message-State: APjAAAUeohXDMTjxQqHnZlut+qHdjchPy+/Z5MTxQjqcVUfNdsYEJd2P
	0BaNKJssEOzIjhoGK3LWnFiVN6jvdfOd7Mbz3j55uw==
X-Google-Smtp-Source: APXvYqwFxwPFkfDx7qV8uQL9bpNzBdEAcedMUjNhCDGjl6eFDdmWC6JUpd6O9kCleYBVwgPaLtN2CQbijP336JuADGw=
X-Received: by 2002:a2e:99c5:: with SMTP id l5mr2241611ljj.229.1575370567869;
 Tue, 03 Dec 2019 02:56:07 -0800 (PST)
MIME-Version: 1.0
References: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
In-Reply-To: <fd9a0cae-b45c-dcdd-1b5b-1c67904a3eec@faresoftware.it>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Tue, 3 Dec 2019 11:55:56 +0100
Message-ID: <CAAx3WaDTZBmR4bZw1asYtg8sAVzSX25EAqjDJ=RoaW7MX7jrvg@mail.gmail.com>
Subject: Re: [yocto] Adding libstdc++-dev path?
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000166acc0598ca8b3f"

--000000000000166acc0598ca8b3f
Content-Type: text/plain; charset="UTF-8"

Hi,

have you tried adding libstdc++-dev to the recipe dependencies?

DEPENDS += " libstdc++-dev"

This will bring libstdc++ package into recipe sysroot and no extra actions
will be needed on compilation flags.

Regards,
Gabriele

On Tue, Dec 3, 2019 at 11:44 AM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all
>
> I'm trying to compile a library which need cstdio.
>
> The file is in ${STAGING_INCDIR}/c++/5.3.0 and in
> ${STAGING_INCDIR}/c++/5.3.0/tr1
>
> I think I need to "include" in my recipe all libstdc++dev package
>
> Looking on ${CXX} -v I get
> --with-gxx-include-dir=/not/exist/usr/include/c++/5.3.0
>
>
> How can I use stdc by recipe?
>
>
> Mauro
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47516):
> https://lists.yoctoproject.org/g/yocto/message/47516
> Mute This Topic: https://lists.yoctoproject.org/mt/65707284/3618237
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> gabbla.malist@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000166acc0598ca8b3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>have you tried addi=
ng libstdc++-dev to the recipe dependencies?</div><div><br></div><div>DEPEN=
DS +=3D &quot; libstdc++-dev&quot;</div><div><br></div><div>This will bring=
 libstdc++ package into recipe sysroot and no extra actions will be needed =
on compilation flags.<br></div><div><br></div><div>Regards, <br></div><div>=
Gabriele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Dec 3, 2019 at 11:44 AM Mauro Ziliani &lt;<a href=
=3D"mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p><font size=3D"-1">Hi all</font></p>
    <p><font size=3D"-1">I&#39;m trying to compile a library which need
        cstdio.</font></p>
    <p><font size=3D"-1">The file is in ${STAGING_INCDIR}/c++/5.3.0 and
        in=C2=A0 </font><font size=3D"-1"> ${STAGING_INCDIR}/c++/5.3.0/tr1<=
/font></p>
    <p><font size=3D"-1">I think I need to &quot;include&quot; in my recipe=
 all
        libstdc++dev package</font></p>
    <p><font size=3D"-1">Looking on ${CXX} -v I get
        --with-gxx-include-dir=3D/not/exist/usr/include/c++/5.3.0</font></p=
>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">How can I use stdc by recipe?</font></p>
    <p><font size=3D"-1"><br>
      </font></p>
    <p><font size=3D"-1">Mauro<br>
      </font></p>
  </div>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47516): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47516" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47516</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/65707284/3618=
237" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/65707284/3618237</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank"=
>gabbla.malist@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div>

--000000000000166acc0598ca8b3f--
