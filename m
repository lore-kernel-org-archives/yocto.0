Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BEA9C43217
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web09.32521.1649061464486435299
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 01:37:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S+XyVqji;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id b43so11842639ljr.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 01:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+tl6pCwMej54+5nJEOlSoDDhp6ZcfbgQsAfIPKu+cTM=;
        b=S+XyVqjikKF4k0MH7Bx0/eaXiFHUQ7RYJ63nYmBeMMKJwd6E4C4RCttlU12bNxzp48
         SCP19fKbdsnpCw8IWT5lcRn7Gz6uPBgV90MWyna347NLqVqo4wher+m6SLqPRw/uEAJI
         9yoZy8jFg4f9VCWHKGji4MdUV9hdwv+9J35vPAHF5g0ORO0qcs0pr9lpwJTsqercje5+
         6LoITmyhD+OHijlVuHXofYApq5LwQ8HCbOGv4+RCqvXR9ECp/iUqYblQjPMjeC1CSD7S
         XBV2PM35mmC2rDQ3grvBDep9tjzCL3hK1sU7jJ2rS1xbszNfWffkV9j0PscbyqVNf81L
         nZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+tl6pCwMej54+5nJEOlSoDDhp6ZcfbgQsAfIPKu+cTM=;
        b=5M9w98cuWmfh/V6zckdlbYlxk+cOPkzaRdB75GOdycdJxquhEBeTMBRCHIJ/EbfChS
         wTeO1p0AHeqOAoocY1EKQ7g/qz3c8nnoFHtU8+/00q96KNAaHJSm4GoezMDb/+bPTrrg
         e7sg8OHvpgvGO0kNAQgFknbl+cwv8mtvT1/2Yeaw7R9kyPFmYf1ki3+U6ffnxyG2TE//
         hdQzYJMiwzCQS5V6xAv7RalPNe/KsQxbW+C/Na70HO4kU62ZvpgUKVQxqbkh0vJ3v4/B
         uiy6PJjsdbya/mBNXN8nwQqo11bGQTZnQeRoCezsVerwVyajmhl4KFXRXOX+h9Zr2HCk
         myvw==
X-Gm-Message-State: AOAM531qGVEuOrvWMZYGrfAuNA4GMsCWL3KBMgQM2BNXnUh581xXno3O
	Gr+y83NK4KBw105mp9nE9FomgKDkXI+QOtQ6Wyk=
X-Google-Smtp-Source: 
 ABdhPJwEz5VBw/enjxHOTsDs9S2/RvFjVW/+47v2uhuNMR5ZLcZAaz2774FtDMnor3r/+rUTzD+l1Z78p0vt0EF9oM0=
X-Received: by 2002:a2e:888a:0:b0:249:8e84:65b8 with SMTP id
 k10-20020a2e888a000000b002498e8465b8mr20573957lji.56.1649061462266; Mon, 04
 Apr 2022 01:37:42 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANPOWsdhxtqqc-m0rBJV2_+jYo2_XcCE6sWJO7=-cWHDNjUSQQ@mail.gmail.com>
In-Reply-To: 
 <CANPOWsdhxtqqc-m0rBJV2_+jYo2_XcCE6sWJO7=-cWHDNjUSQQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 4 Apr 2022 10:37:30 +0200
Message-ID: 
 <CANNYZj9cssi4BOB0RytJo5GbOUaeNCNWgXjMnjDFPNWAO+zACA@mail.gmail.com>
Subject: Re: [yocto] Building a core-image-weston with custom app using rust
 and gtk3
To: Artur Czajkowski <atch.cpp@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000abd7a105dbd00add"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56655

--000000000000abd7a105dbd00add
Content-Type: text/plain; charset="UTF-8"

It helps if you show the error messages. Otherwise, the only thing we can
say in response is 'yes, apparently'.

Alex

On Sat, 2 Apr 2022 at 10:53, Artur Czajkowski <atch.cpp@gmail.com> wrote:

> Hello,
> I'm having real difficulties in compiling a Rust app that uses gtk3 (this
> app successfully builds and runs on my host machine). I'm on the master
> branch of poky, using rust 1.59.
> Is this still untested and unstabilized feature, that is gtk-rs bindings
> in yocto?
>
> Thank you
>
> --
>
>
> Best regards
> *Artur Czajkowski*
>
> https://marketplace.visualstudio.com/items?itemName=GitAtomic.GitAtomic
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56641):
> https://lists.yoctoproject.org/g/yocto/message/56641
> Mute This Topic: https://lists.yoctoproject.org/mt/90197556/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000abd7a105dbd00add
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It helps if you show the error messages. Otherwise, t=
he only thing we can say in response is &#39;yes, apparently&#39;.</div><di=
v><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Sat, 2 Apr 2022 at 10:53, Artur Czajkowsk=
i &lt;<a href=3D"mailto:atch.cpp@gmail.com">atch.cpp@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>Hello,</div><div>I&#39;m having real difficulties in compiling a R=
ust app that uses gtk3 (this app successfully builds and runs on my host ma=
chine). I&#39;m on the master branch of poky, using rust 1.59. <br></div><d=
iv>Is this still untested and unstabilized feature, that is gtk-rs bindings=
 in yocto?</div><div><br></div><div>Thank you<br></div><div><br>-- <br><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><span><b></b></spa=
n></div><div><img src=3D"https://drive.google.com/uc?id=3D1BLcgVZIEcdrZSYmP=
vbKcRoYms-gri1ec&amp;export=3Ddownload" width=3D"96" height=3D"96"><br></di=
v><div><br></div><div><span><b></b></span>Best regards<br><b>Artur Czajkows=
ki</b></div><div><b><br></b></div><div><b></b></div><div><a href=3D"https:/=
/marketplace.visualstudio.com/items?itemName=3DGitAtomic.GitAtomic" target=
=3D"_blank">https://marketplace.visualstudio.com/items?itemName=3DGitAtomic=
.GitAtomic</a><b><br></b></div><div><b><br></b></div></div></div></div></di=
v></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56641): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56641" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56641</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90197556/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90197556/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000abd7a105dbd00add--

