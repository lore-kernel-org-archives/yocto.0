Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75BA6D3C54C
	for <webhook@archiver.kernel.org>; Fri, 18 Oct 2024 05:23:56 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.16042.1729229030157597658
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 22:23:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ViO2yYuv;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5c935d99dc5so1848702a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 22:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729229028; x=1729833828; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o0afhs5moVKmmJ+R2WKCsRyAfwXFBnZXsaRzYfv98SY=;
        b=ViO2yYuvXjEc9L4GAVgvo0aI0m9Ct6qMAwSStopCEdz3WMnoBWVtN027bs7+Uy4DbK
         nJpaIcnUDXObQgEAEk9SqW5/ayjsXhY6/+EUKQZOoLaZ+SGSe9x5339Zz4ge2DLmxFe/
         hZNFzidpABTdVNtxrU8nkWp6X4+TH0Eer0LsmTddGaePzKWxzIKYHn0VcRhvz3xvPEtx
         e4ptMnnnAFfEwtVqmUabkBPBqi3z3cFMJsVpP1zILfb1yvu2xD91ejSS4PfeIJW10lgU
         TY/GLHE3Xh8QKWg7Az5ltzwh5yh7ksML+iKy5N/qFTqJUDuWKXF4j1s7ohCdj4tFP7kB
         LUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729229028; x=1729833828;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o0afhs5moVKmmJ+R2WKCsRyAfwXFBnZXsaRzYfv98SY=;
        b=hfe1Xq5xSugkyYQ+xLfCyC864N9jzxjO1tmn+cTStp1bnZh4KrbUKowUYeIjz8thF6
         4GmkTJqFvaMyW3WeGSLGzEFfq8ZeuhhPhBg+wf6fCFpeV/lfqF+mDGNWELdZWsOh1pSz
         eIH37chuj0xYBCnyGVQt7NzgDF6POLTztEOn+y0hdvc4R0QKebFGb69xsQf+++u5fv7v
         eG4/hc25x2As5GWdEXybx+YRwg8zRoHo2qAcZuEULUMTh7dPbndbz6m9ObbHNejBugeM
         SwBlok3me8aC2Xywc4TsIZw20uB5Ejsb9nYMbDsaVrKFqjm2KsOH5jFwr2vXdL91jXHj
         SChQ==
X-Gm-Message-State: AOJu0YyKeuALp/SklfcGixV7kknQVDxyeESJmNfoD1+fZR2jNwtQgAwh
	HkT9OpyFy6mBQu04dl4AThsJdTt1e1bcxZ1cE6RZeeLpq1dXddWXjTNi0hL1UHBs7NUiRjuuZcq
	SoTAvhK/jZK9HINox9205B1klhfI=
X-Google-Smtp-Source: AGHT+IFowMP++Y4I5wobUDeqMip+4hj2h2bBIGfnwoI1I5Cnr+jTK7qD0IZeoXQMtul1VMlw9ow/S4sY+pxJCyHvErk=
X-Received: by 2002:a17:906:478c:b0:a9a:147d:fe9c with SMTP id
 a640c23a62f3a-a9a69c55c06mr77437866b.43.1729229027796; Thu, 17 Oct 2024
 22:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjrjU785=2-+YPqZ9r8Ao8mP4hyNKsH3G30oSD7-rrqqg@mail.gmail.com>
 <CANNYZj_cPLHqvX7uV-RvGXWDyN+D5aqb7tiwLRsWZejcctxrtQ@mail.gmail.com>
In-Reply-To: <CANNYZj_cPLHqvX7uV-RvGXWDyN+D5aqb7tiwLRsWZejcctxrtQ@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 18 Oct 2024 10:53:36 +0530
Message-ID: <CAPJWBnhT4aTUz1Zpp1-kRU14Kxem_ojQByUsdQzRMGZ+y6fodw@mail.gmail.com>
Subject: Re: [yocto] dhcp package missing for yocto kirkstone
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000efefd70624b98198"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Oct 2024 05:23:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64047

--000000000000efefd70624b98198
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the update Alex

On Thu, 17 Oct 2024 at 10:15=E2=80=AFPM, Alexander Kanavin <alex.kanavin@gm=
ail.com>
wrote:

> On Thu, 17 Oct 2024 at 15:57, MOHAMMED HASSAN via
> lists.yoctoproject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> > I notice that the dhcp package is not available from the
> poky/meta/recipes-connectivity/ directory. I confirmed this on the poky
> gitlab page and it seems like it's gonna be that way for future actions.
> >
> > Is the package deprecated and no longer available? In such a case do yo=
u
> think I can pull files from the dunfell tree and append here, will it wor=
k?
>
> dhcp is EOL.
> You can simply use kea, the intended replacement:
> https://www.isc.org/dhcp/
>
> Alex
>

--000000000000efefd70624b98198
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for the update Alex</div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 17 Oct 2024 at 10:=
15=E2=80=AFPM, Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.c=
om">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-le=
ft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On Thu,=
 17 Oct 2024 at 15:57, MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; I notice that the dhcp package is not available from the poky/meta/rec=
ipes-connectivity/ directory. I confirmed this on the poky gitlab page and =
it seems like it&#39;s gonna be that way for future actions.<br>
&gt;<br>
&gt; Is the package deprecated and no longer available? In such a case do y=
ou think I can pull files from the dunfell tree and append here, will it wo=
rk?<br>
<br>
dhcp is EOL.<br>
You can simply use kea, the intended replacement:<br>
<a href=3D"https://www.isc.org/dhcp/" rel=3D"noreferrer" target=3D"_blank">=
https://www.isc.org/dhcp/</a><br>
<br>
Alex<br>
</blockquote></div></div>

--000000000000efefd70624b98198--

