Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86028EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 10:04:19 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.18488.1688637853116716826
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 03:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=N/OFa8O2;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-992acf67388so57347766b.1
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 03:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688637851; x=1691229851;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2bOpeIG32km8hOE2VxeB3JdwhEdqQmS+EO+35qlmN2w=;
        b=N/OFa8O2WNTRzZ0mHBe3ZcfA0Sl6sWSoPKD6+nosOOMcF2ZzkreUmIqnKiDk6iK9CZ
         nMabrd8yUjE2lkkk2rI+FSYdg5r5tMr1ISKmQoh3iQNj/Ftg3LvNyOWKPjbWN1yFqtfN
         Qao0GPJa2qOz3fbXF3nuzl+hxR4G8gAYwhivRF23/CJuOWDrXblSCOkOs0eChyPotT+w
         qamnURJz6IUTsLcr3YaE9Hs39QdF00TC46mNos3LH9iFflgaoI09Csx9WXdup7dZ160s
         8OkdUQcO/7EF49i1Fu3sdwv7bS09VNvzfcrmMaLxXOxrfQhOjowLlcXZHhRotSVtYcDo
         dwYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688637851; x=1691229851;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bOpeIG32km8hOE2VxeB3JdwhEdqQmS+EO+35qlmN2w=;
        b=CEkzSxFDCUpfyfFQ7CElpOA1BtGFgemSUeW5jdjFuha8eQEzm1426UFCv0JivRC9xT
         szWkt+cb7HoP+luPtg+T3cbolNigHklqcMuJiJqe4DNmcydJiHxk/x5Py3IT3Zs23uCh
         cIFTQ28pwnNACYGnHAOWkvFeL0a6uoe4wtdHcjgKlBxo/1wKaULg85vEyT9C7r8ZGi23
         UNeta895oLqrwPDHy37kL14PjUUnRZDEUBzIYFInaC2hD+WuOZ0yMpJfh4kr35Ki4UZH
         Y+SO/FnQlTVY5AwOxh/oOyd2A/o+twhyy2ESwrevduHof0+rL+4nyhgrYuly+dP8meWj
         YP0w==
X-Gm-Message-State: ABy/qLYg17qdzNtgEwKqVHVw6Lln+4YC4N2GtMejAqWNm6NJb7McE0gP
	ILONizlhb/bDfMvOQr+sNdc=
X-Google-Smtp-Source: APBJJlFlTB/kzUz7u/Ohq/l72zU2m/23Fgr0saIA6Kd6utGUPWfHVmbTdHB3gCPZYSee4zO+ZotRMw==
X-Received: by 2002:a17:906:530e:b0:992:292b:6a60 with SMTP id h14-20020a170906530e00b00992292b6a60mr1067464ejo.26.1688637851324;
        Thu, 06 Jul 2023 03:04:11 -0700 (PDT)
Received: from [100.64.0.1] ([165.225.94.221])
        by smtp.gmail.com with ESMTPSA id kg8-20020a17090776e800b00992d8aa60b0sm609975ejc.63.2023.07.06.03.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 03:04:10 -0700 (PDT)
Message-ID: <5ef9a9a5c1ddf7fc13ceb524fea943974333bf70.camel@gmail.com>
Subject: Re: [yocto] do_configure error while adding networkmanager to image
From: adrian.freihofer@gmail.com
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Date: Thu, 06 Jul 2023 12:04:10 +0200
In-Reply-To: <17151.1688637240030090881@lists.yoctoproject.org>
References: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
	 <17151.1688637240030090881@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="=-P3ZTvrm3Me18YpkpxiPC"
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 10:04:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60526

--=-P3ZTvrm3Me18YpkpxiPC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2023-07-06 at 02:54 -0700, MOHAMMED HASSAN wrote:
> On Thu, Jul 6, 2023 at 02:29 AM, Adrian Freihofer wrote:
> > Hi Hassan
> Hi Adrian,
> Thanks for your reply.
> > It's a bit hard to guess what you are really doing. The bb is a
> > fork
> > from a quite old version when it was still using the autotools. Now
> > we
> > use meson.
> >=20
> > The check for rl_echo_signal_char came into NetworkManager 8 years
> > ago
> > https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit/b=
69143b5085c58e51ab8077ee5cbe6fafe73e041
> > .
> > It's probably not a change on NetworkManager side which came in
> > recently with your update to 1.22.16.
> >=20
> > Compiling nmcli with readline works with the bb from meta-
> > openembedded
> > and the poky version with a similar age. That's the default.
> >=20
> > Some ideas:
> > - Try if the original recipe throws the same error
> > - Pass the readline parameter to autotools (what we do with newer
> > versions of the recipe and meson)
> > - Compile without nmcli and remove the readline dependency. Look at
> > the
> > commit history of the networkmanager.bb. There was an autotools
> > based
> > recipe which supported compiling without nmcli at some point in
> > time.
> Actually I want nmcli recipe in my yocto image file. I am still a
> beginner with this so i am facing these issues. Alternatively, I was
> looking at adding wireless-tools to my image file but i dont have its
> related recipe in my SDK. Do let me know if you have any suggestions.

Sounds like I cannot provide any hints because with a standard bitbake
environment this should just work. readline should be compiled and
installed automatically. But since you mention SDK I guess you have a
special (and potentially broken) setup.

> >=20
> > Regards,
> > Adrian
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60524):
> https://lists.yoctoproject.org/g/yocto/message/60524
> Mute This Topic: https://lists.yoctoproject.org/mt/99982001/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=-P3ZTvrm3Me18YpkpxiPC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>On Thu, 2023-07-06 at 02:54 -0700, MOHAMMED HASSA=
N wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-=
left:2px #729fcf solid;padding-left:1ex"><div>On Thu, Jul 6, 2023 at 02:29 =
AM, Adrian Freihofer wrote:<br></div><blockquote type=3D"cite" style=3D"mar=
gin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div>Hi Has=
san</div></blockquote><div>Hi Adrian,<br>Thanks for your reply.<br></div><b=
lockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf=
 solid;padding-left:1ex"><div>It's a bit hard to guess what you are really =
doing. The bb is a fork<br>from a quite old version when it was still using=
 the autotools. Now we<br>use meson.<br><br>The check for rl_echo_signal_ch=
ar came into NetworkManager 8 years ago<br><a href=3D"https://gitlab.freede=
sktop.org/NetworkManager/NetworkManager/-/commit/b69143b5085c58e51ab8077ee5=
cbe6fafe73e041" target=3D"_blank" rel=3D"noopener">https://gitlab.freedeskt=
op.org/NetworkManager/NetworkManager/-/commit/b69143b5085c58e51ab8077ee5cbe=
6fafe73e041</a>.<br>It's probably not a change on NetworkManager side which=
 came in<br>recently with your update to 1.22.16.<br><br>Compiling nmcli wi=
th readline works with the bb from meta-openembedded<br>and the poky versio=
n with a similar age. That's the default.<br><br>Some ideas:<br>- Try if th=
e original recipe throws the same error<br>- Pass the readline parameter to=
 autotools (what we do with newer<br>versions of the recipe and meson)<br>-=
 Compile without nmcli and remove the readline dependency. Look at the<br>c=
ommit history of the networkmanager.bb. There was an autotools based<br>rec=
ipe which supported compiling without nmcli at some point in time.</div></b=
lockquote><div>Actually I want nmcli recipe in my yocto image file. I am st=
ill a beginner with this so i am facing these issues. Alternatively, I was =
looking at adding wireless-tools to my image file but i dont have its relat=
ed recipe in my SDK. Do let me know if you have any suggestions.<br></div><=
/blockquote><div><br></div><div>Sounds like I cannot provide any hints beca=
use with a standard bitbake environment this should just work. readline sho=
uld be compiled and installed automatically. But since you mention SDK I gu=
ess you have a special (and potentially broken) setup.</div><div><br></div>=
<blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729f=
cf solid;padding-left:1ex"><blockquote type=3D"cite" style=3D"margin:0 0 0 =
.8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><br></div></bloc=
kquote></blockquote><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; b=
order-left:2px #729fcf solid;padding-left:1ex"><blockquote type=3D"cite" st=
yle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><=
div>Regards,<br>Adrian</div></blockquote><div><br></div><div>-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div>Links: You receive all messa=
ges sent to this group.<br></div><div>View/Reply Online (#60524): <a href=
=3D"https://lists.yoctoproject.org/g/yocto/message/60524">https://lists.yoc=
toproject.org/g/yocto/message/60524</a><br></div><div>Mute This Topic: <a h=
ref=3D"https://lists.yoctoproject.org/mt/99982001/4454582">https://lists.yo=
ctoproject.org/mt/99982001/4454582</a><br></div><div>Group Owner: <a href=
=3D"mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproje=
ct.org</a><br></div><div>Unsubscribe: <a href=3D"https://lists.yoctoproject=
.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>&nbsp;[=
<a href=3D"mailto:adrian.freihofer@gmail.com">adrian.freihofer@gmail.com</a=
>]<br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><di=
v><br></div></blockquote><div><br></div><div><span></span></div></body></ht=
ml>

--=-P3ZTvrm3Me18YpkpxiPC--

