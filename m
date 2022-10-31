Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8296ECAAA1
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 18:52:10 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.1597.1667242323239164816
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 11:52:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nhrvNl6k;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: chuckwolber@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id z24so17840643ljn.4
        for <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 11:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=imeUOLu1o373gRuQAQE+kbIXrVcZ5pkRddhWwwgUqks=;
        b=nhrvNl6kSeGRPj9abVEdafx2yYWZsHTg4gSaW9Fc1eR7WUBHUsIixVcrai2aUlrM+G
         AjXvkN9fXWI3nA4fANbsKjiZsN1x1+Q/4JQqkIj7j0G6aH82yuzkiW6FTcSgcoLT87dV
         FYeY9p1Ra0ElT7qhsmeg7XS9CNRQtP3rMgBWFqID63xEIlOswg4H2iaZZyd9n6sfmi60
         OC66PJe9GeVgKn9KCqXSzc85ffWuVONeZCUNhXnAiDEsKBZmWJQxZSfsfKclfbzZoktY
         YTYVcqv7lxZNLD8mkm6mlj8qeMUOvhAqucHbFaJjXb4b4EhKWW3Cps/XsHuePBkCgnwf
         HIhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=imeUOLu1o373gRuQAQE+kbIXrVcZ5pkRddhWwwgUqks=;
        b=NH1zLGuUqK4iP5SIbMoHACeThg1AvSMrjRiBFzn8XSMbh/5g3njW71Wfg4fk+XqUVo
         1fobZcgJ1sFagsBGY6sRZQNZXi3pMX1+/nBT5aL9ShIXOhzww4mz74kFertB/JV8noTS
         sUrCfOML55rltHqWJ/Zm/3433Y1erhE9EH3aHBF5n/IgSSRqY2XLRqDjiLyQEKC8H9s5
         oIFkUtcVAO2iGB64Lc5gqjYnyyCzDf9D+x+uvZSRXJObcekZdIydtPnS+LhOhdBh1aZz
         uTkPod2QhRt/ZZJnkUp86iMA96mmyiSEtR9Mt5iBeF1c/4YzlZEDIwMJQUbQD3PNJ1zz
         76aQ==
X-Gm-Message-State: ACrzQf1eI3OFMEp0IRkCe1kMLgLftTbIGs7JnTcVNiXnucPkNokePCow
	80hkLFpzaLc6rHsDSPEYaDbasvdr/EW4RKXN79E=
X-Google-Smtp-Source: AMsMyM4PzqDPD33CUcRlRQ0aN+q3x+7hBGt48EpYNW9+bboWlW/PAygnA9Bdpzu2ZE5/7U+tbI4f4tnvMtUs26ihRXE=
X-Received: by 2002:a2e:92c3:0:b0:277:ee3:2ea7 with SMTP id
 k3-20020a2e92c3000000b002770ee32ea7mr5674368ljh.19.1667242321023; Mon, 31 Oct
 2022 11:52:01 -0700 (PDT)
MIME-Version: 1.0
References: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
In-Reply-To: <8lcP.1667180060174188660.R0zS@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Mon, 31 Oct 2022 11:51:48 -0700
Message-ID: <CAB=6tBRsBPsnBYkz1rWEZi+8U7_uA7anVv0fCrHAM8d0+6pQfA@mail.gmail.com>
Subject: Re: [yocto] How to remove shared libraries dependencies?
To: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004c98f705ec591a81"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 18:52:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58446

--0000000000004c98f705ec591a81
Content-Type: text/plain; charset="UTF-8"

On Sun, Oct 30, 2022 at 6:34 PM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> I've a requirement in which I want to package veritysetup binary in a
> minimal filesystem (which is size constraint)
> Including "cryptsetup" package in IMAGE_INSTALL is adding the binary but
> also a lot of shared libraries which are its dependencies. The shared
> libraries are increasing the size of the filesystem, which should not be
> done. I do not need functionalities like ssl for veritysetup, so how can I
> remove the dependencies on these shared libraries?
>
> I've tried removing eg ssl from
> https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29 but
> the shared libs are still the dependency.
>

It sounds like you are trying to build a runtime overlay package that omits
all dependencies. If so, this might help.

https://lore.kernel.org/all/CAB=6tBRryHURRgqwgwbY_H5Dbr8eUXijTEmVvarbTOTnZDBqZQ@mail.gmail.com/

..Ch:W..


-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000004c98f705ec591a81
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Oct 30, 2022 at 6:34 PM Priyanshu=
 Sharma &lt;<a href=3D"mailto:ms.priyanshu.sharma@gmail.com">ms.priyanshu.s=
harma@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><p>I&#39;ve a requirement in whic=
h I want to package veritysetup binary in a minimal filesystem (which is si=
ze constraint)=C2=A0<br>Including &quot;cryptsetup&quot; package in IMAGE_I=
NSTALL is adding the binary but also a lot of shared libraries which are it=
s dependencies. The shared libraries are increasing the size of the filesys=
tem, which should not be done. I do not need functionalities like ssl for v=
eritysetup, so how can I remove the dependencies on these shared libraries?=
</p>
<p>I&#39;ve tried removing eg ssl from=C2=A0<a title=3D"PACKAGECONFIG of cr=
yptsetup recipe" href=3D"https://git.openembedded.org/meta-openembedded/tre=
e/meta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29" rel=3D"noopene=
r" target=3D"_blank">https://git.openembedded.org/meta-openembedded/tree/me=
ta-oe/recipes-crypto/cryptsetup/cryptsetup_2.4.3.bb#n29</a>=C2=A0but the sh=
ared libs are still the dependency.</p>

</blockquote></div><div><br></div><div>It sounds like you are trying to bui=
ld a runtime overlay package that omits all dependencies. If so, this might=
 help.</div><div><br></div><div><a href=3D"https://lore.kernel.org/all/CAB=
=3D6tBRryHURRgqwgwbY_H5Dbr8eUXijTEmVvarbTOTnZDBqZQ@mail.gmail.com/">https:/=
/lore.kernel.org/all/CAB=3D6tBRryHURRgqwgwbY_H5Dbr8eUXijTEmVvarbTOTnZDBqZQ@=
mail.gmail.com/</a></div><div><br></div><div>..Ch:W..<br></div><div><br></d=
iv><br>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><=
div><b><span style=3D"font-family:monospace">&quot;Perfection must be reach=
ed by degrees; she requires the slow hand of time.&quot; - Voltaire</span><=
/b></div></div></div></div>

--0000000000004c98f705ec591a81--

