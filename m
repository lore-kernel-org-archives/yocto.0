Return-Path: <paulo@eero.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81D9FC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 21:30:23 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.6139.1737149414222100405
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 13:30:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eero.com header.s=google header.b=SMhBIGp+;
 spf=pass (domain: eero.com, ip: 209.85.167.54, mailfrom: paulo@eero.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-542aae6ef6aso395606e87.3
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 13:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=eero.com; s=google; t=1737149411; x=1737754211; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jIop9JtCJXUIyf0nXq3A0LFrFrOMlPDRN0xNf3jwsFA=;
        b=SMhBIGp+9GuUaJiCbaPUuX2ZOpSGNNeJGeFuY5d8qTc6uOiPluv/fgEgzLSWFp8tM9
         NcmkC8ynUO+mM3t26wQXxMFfjTLNeSIicYkh2GXxfghkciyPQ9AZ7ttTPFGi1aSflN6W
         j9gLdvBrJBapCFzUFlqAqL3j2L1qL/BzT/uUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737149411; x=1737754211;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jIop9JtCJXUIyf0nXq3A0LFrFrOMlPDRN0xNf3jwsFA=;
        b=Zdnlgsv1NL1yH01QMhAMgP/BBZJTJ0NYVbk/wuezRWVf3LEoZl2eRV1WdKfM/b3HTg
         0rXXCr/v2/LvhUIuJVrcmzpR9LmBLLniyLukmdkup0Rezp3oQxw5T42TbQi96EpbrXOr
         n4Rce/imR6qgyDpLyUVXksAKaKUJ45FMgcRg0l9rSm3mDRUKxLT0BgMdepjhpMg0Pf8y
         tcyY0yZ9SPXPPLc7u+7oqtH9cptTDOpqyvrqMuNBKtbnQi/ubmaZ3SMiy2DeUhHQdtW3
         gtnCeCzzvivJT1xe3cbdtSpkjsgNozFDm5QE87QWyq3prLvJU7nWrXwMD6aZvOR1vLv5
         y4bg==
X-Gm-Message-State: AOJu0YxuVAWJzZwjFrBA+JwsSWIL/tJcWHZMM3mymnVjTcRbOqzJ4+YE
	jICKcy9jSzlIp4ZLOyPsc3R/HLnDFzK83xzFrNhU0azMYzxh6pQGWVZb1smfNKYPVgLTkIb05Jr
	7iSJKUshn+ww2cY50i7NRoB7BrkrgrumxHq83siRs+fxV/TN/uFyxPg==
X-Gm-Gg: ASbGnctnhlR+9CstdnZRYQbr4ohzGFEl5BjKisZK/fy8clD6caNdiAJRztc4rCGDza8
	VOuWEr+eyWhzE+/Y3zAMDnyDdMfjMtxw2aYo=
X-Google-Smtp-Source: AGHT+IF5aCiQD9GrkZGRL9mSz8sgfYmUex6OjBQ/9JjH0K7nmbdZQ6bU5NyP6g2L2L4tTXF2aLkdz5nf93yGk6moLmY=
X-Received: by 2002:a2e:be0b:0:b0:300:43e5:51a with SMTP id
 38308e7fff4ca-3072c98f111mr5819291fa.0.1737149411442; Fri, 17 Jan 2025
 13:30:11 -0800 (PST)
MIME-Version: 1.0
References: <MRCC.1737147670261127612.uhzO@lists.yoctoproject.org>
In-Reply-To: <MRCC.1737147670261127612.uhzO@lists.yoctoproject.org>
From: Paulo Vitor Becker Ayrosa Monteiro de Andrade <paulo@eero.com>
Date: Fri, 17 Jan 2025 18:29:59 -0300
X-Gm-Features: AbW1kvYSYTGuagDeQ6TmWObMSbRy4xWQUAcG-k2m5s2wJc9tAG04OfymL67a0Ao
Message-ID: <CADgnPrQ_4jFmSmMOxUR6NfPDYzEB_jML1XChpLQYSXodMZhc1w@mail.gmail.com>
Subject: Re: [yocto] recipe if blocks
To: yocto@lists.yoctoproject.org, gary.huband@servicenow.com
Content-Type: multipart/alternative; boundary="0000000000009758df062bed9ddb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 21:30:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64588

--0000000000009758df062bed9ddb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i'd suggest taking a look into bitbake's documentation so as to know what
can be accomplished!
https://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-user=
-manual-intro.html

On Fri, Jan 17, 2025 at 6:01=E2=80=AFPM Gary Huband via lists.yoctoproject.=
org
<gary.huband=3Dservicenow.com@lists.yoctoproject.org> wrote:

> Is there any documentation on if block syntax for recipes?  Are if blocks
> allowed anywhere in a recipe?
>
> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64587):
> https://lists.yoctoproject.org/g/yocto/message/64587
> Mute This Topic: https://lists.yoctoproject.org/mt/110674194/7148470
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [paulo@eero.com=
]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009758df062bed9ddb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>i&#39;d suggest taking a look into bitbake&#39;s docu=
mentation so as to know what can be accomplished!</div><div><a href=3D"http=
s://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-user-man=
ual-intro.html">https://docs.yoctoproject.org/bitbake/2.10/bitbake-user-man=
ual/bitbake-user-manual-intro.html</a></div></div><br><div class=3D"gmail_q=
uote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, J=
an 17, 2025 at 6:01=E2=80=AFPM Gary Huband via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;gary.huband=3D<a href=3D"mailt=
o:servicenow.com@lists.yoctoproject.org">servicenow.com@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div>Is there any documentation on if block syntax for recipes?=C2=A0 Ar=
e if blocks allowed anywhere in a recipe?</div>
<div>=C2=A0</div>
<div>Thanks</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64587): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64587" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64587</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110674194/714=
8470" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110674194/7148470</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:paulo@eero.com" target=3D"_blank">paulo@eero.com=
</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009758df062bed9ddb--

