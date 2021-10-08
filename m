Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6806FC433F5
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 11:53:47 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
 [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web11.8145.1633694026767154497
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 04:53:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=idKgVY/e;
 spf=pass (domain: gmail.com, ip: 209.85.217.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id f2so10242387vsj.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 04:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DRd+mRsDZsbG6V2HNXOP8JM/q+KsMubY/LisOe+0ccY=;
        b=idKgVY/ewUp0EmgdaRCex7ivLCj9cE8I5Vpn1wnFxR/Rgj4hOkVj1OgUV3v7N8fPGB
         KHBzFU6vZqMAqq5t/cfIMC/pZ20Own64UUo/zMvwJ3EtcuHTuE6cepk3RsNVUQyGmGdi
         JqxfDiEEjzD72/gYHge4CrxKDk6CoP3vQI79RCqzwrqGdqbV2QkelZF2U6NtaYiRlvMk
         BDXfnuhJyjpoJcn3Ew8dhEAuBqABxIK86ldMhzu9hFAO4/oSk25y34vBXwe1njSdokDp
         yB1dhyIY2UANXwbqg5KzlGDOWWfZ9Ev74XbN59U//T4VRIHTK7P+D/e4Jh/DYAoyOWVP
         K+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DRd+mRsDZsbG6V2HNXOP8JM/q+KsMubY/LisOe+0ccY=;
        b=cs2lBppHs5QEhcBSEKmkAOETRNOrYAdRYcAY+boQ47PZzd2FYRLIk+gbSGp++8fL7D
         VuCIvtiOA2JT4d7wYvF7TIjdzNPpcDGL2UxVYLQm/eJ0e6DYkKTTuoFNiurjYaqvTZZG
         DwNlck+83G9dpWTbiOy3HYV6G6Vm3qtoHNukM5CZU/EX6J3Vw1upQeWS/IWFdYi6G32/
         dZbE8dIfrFo4JQdZcl5xKIpI/KPdOxvnyYgB0Q+2vAUE+QUVrNtRNmNvMYgkvB4ePTvO
         5vYYUbmkoJprxllsThnAnuT14lup07GVhcAAxeBWngSL3zXeOPOJzi5Xu7U6DJIRQ7/c
         Uo2A==
X-Gm-Message-State: AOAM530idSBu6kCQzpDtD8ESXVwn/iqmxWVNrRKAwQjAO6QaLTf6Dtd2
	pYD+ZYO5k0erAVslTctdlB5Lp7m3oUj0AwLITHw5R49Np4U=
X-Google-Smtp-Source: 
 ABdhPJwTvMDAqfos5hf/+mIwxtdVfsO3BDBEsKteOz+cDmnz/Qp+qZG1SG4KDMdlEywlTlxliNyn4yDhOpuWK+x1F34=
X-Received: by 2002:a67:c11e:: with SMTP id d30mr750820vsj.1.1633694025784;
 Fri, 08 Oct 2021 04:53:45 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_nVZ9P6AULwZ5d0o5MEQYO8ewyOo8-DedMV4g_cVpC9Q@mail.gmail.com>
 <15143.1633687046063540960@lists.yoctoproject.org>
In-Reply-To: <15143.1633687046063540960@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Oct 2021 13:53:34 +0200
Message-ID: 
 <CANNYZj9eQ9dZz0PsU-Dm7=c2CnH_C8dQ4RfVuJ23Q1rVV8K0tw@mail.gmail.com>
Subject: Re: [yocto] How to submit/create a new repository in
 http://git.yoctoproject.org/
To: tienhock.loh@starfivetech.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000014226705cdd608d6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 11:53:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54996

--00000000000014226705cdd608d6
Content-Type: text/plain; charset="UTF-8"

There's also a more specific thing you'd need to resolve: I believe you'd
need to pass all of the requirements listed here:
https://www.yoctoproject.org/ecosystem/branding/compatible-registration/

Alex

On Fri, 8 Oct 2021 at 11:58, <tienhock.loh@starfivetech.com> wrote:

> Hi Alex,
>
> Actually we'd like to have it up and get everything (including meta-riscv
> by Khem) into git.yoctoproject.org so that everything in consolidated
> into a central location.
> Does that make sense? Or it is expected that vendors do host their own
> repository? I see meta-intel, meta-xillinx, so I suspect platform vendor
> should also get the layers into git.yoctoproject.org
>
> I just read that we'll need to join membership to get repos into the git.
> I will discuss this with the management.
>
> Thanks for the quick response Alex.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54995):
> https://lists.yoctoproject.org/g/yocto/message/54995
> Mute This Topic: https://lists.yoctoproject.org/mt/86163136/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000014226705cdd608d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div></div><div>There&#39;s also a more specific thing you=
&#39;d need to resolve: I believe you&#39;d need to pass all of the require=
ments listed here:</div><div><a href=3D"https://www.yoctoproject.org/ecosys=
tem/branding/compatible-registration/">https://www.yoctoproject.org/ecosyst=
em/branding/compatible-registration/</a></div><div><br></div><div>Alex<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, 8 Oct 2021 at 11:58, &lt;<a href=3D"mailto:tienhock.loh@starfi=
vetech.com">tienhock.loh@starfivetech.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hi Alex,<br><br>Actually we&#39;d =
like to have it up and get everything (including meta-riscv by Khem) into <=
a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.o=
rg</a> so that everything in consolidated into a central location.<br>Does =
that make sense? Or it is expected that vendors do host their own repositor=
y? I see meta-intel, meta-xillinx, so I suspect platform vendor should also=
 get the layers into <a href=3D"http://git.yoctoproject.org" target=3D"_bla=
nk">git.yoctoproject.org</a><br><br>I just read that we&#39;ll need to join=
 membership to get repos into the git. I will discuss this with the managem=
ent.<br><br>Thanks for the quick response Alex.=C2=A0
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54995): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54995" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54995</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86163136/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86163136/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000014226705cdd608d6--

