Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EEA4C54EBD
	for <webhook@archiver.kernel.org>; Fri,  6 Jan 2023 20:12:49 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.3838.1673035965527392723
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Jan 2023 12:12:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YS8dOVHq;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id ay2-20020a05600c1e0200b003d22e3e796dso1880503wmb.0
        for <yocto@lists.yoctoproject.org>; Fri, 06 Jan 2023 12:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oHkMRzoqPZU1Kv5YMtwBXe7wdzQawgr4Uq7TbKQRmc8=;
        b=YS8dOVHqX2oYhuMQlgdSfDhZCadkseuk3vJserqDAUsrQzvoZLYtuIFOv6a7Y1QJ2T
         suhud+jjhl7bHpo0itL+py47917fzpOO/hvdU/v6sj4emwVE760mgyS9v9osznNMQUu5
         +uTpE/rrgz+xsV94axrRzf8U9GEc5YQdIrjyuroy0vmU2QrJk14L7vKL8LF7K0OjhGJT
         I5jPUUQxr78rSJpuG/Du4lng0Mtj0lVNeA+307CTV2COMC4iNaQ6ODH4Y3rnGDl8jDDg
         7czIu6BzyWob0Yu8gbamtraYIOcARUd/sHuzQGY092DzKKCdKyeRj5Y8prMwe3mipcNa
         e4PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oHkMRzoqPZU1Kv5YMtwBXe7wdzQawgr4Uq7TbKQRmc8=;
        b=ocLDyue6xF3hHu6cZDiWQ57tuVZI+54cB9vQC6c6rfrM9rMzWPK7a4FlPJAefOdZep
         waABmXt+I94rF6JuarNnzz3V685vbSgoszlDnDxZUezxUilx7a5eeBefynxnAeHDMbMo
         R5L9jQTjxEBb4vtcvY+f699DVruZ/WQvvdoC+mbZSA9JOkmFclvE8wmHKV9ebRlZ2EMI
         0w1QTBD3oO779c57qqMxhpYPmZlJxZBpYBFBdF+pCnQ1iaWo6QFhnHh53vrjnUzjD/nO
         a+cL0qKLjbcDNFGb0tOO9nF9bfgSQSvg73/+eWmUXemNLlKSbPeHOjvKzb65klDZ+vir
         g9dw==
X-Gm-Message-State: AFqh2kqVQKnrjyi1ibeggNTEq2zruQZRM2eKcn9/AVyrmvX4sBnMOahL
	6NlxzgZKAe9nH16rGmnObnKAoYSHbTrNfBWPadA=
X-Google-Smtp-Source: AMrXdXumSM0s86ZEWI6J5Q/hvFWHKh9elfYA2mM3ciFRh53ZS+n++AwISy9tnYU2hbs3pbjVQ8yLQrbpNTnNjDmU+DI=
X-Received: by 2002:a05:600c:4e51:b0:3cf:6b10:ca8d with SMTP id
 e17-20020a05600c4e5100b003cf6b10ca8dmr4126874wmq.44.1673035963863; Fri, 06
 Jan 2023 12:12:43 -0800 (PST)
MIME-Version: 1.0
References: <0C2U.1673035790946336480.58Ta@lists.yoctoproject.org>
In-Reply-To: <0C2U.1673035790946336480.58Ta@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 6 Jan 2023 21:12:26 +0100
Message-ID: <CA+chaQfaS4JLyBE2NszwKUQHotisEsrwpyMVQExLqGsG-aqO+Q@mail.gmail.com>
Subject: Re: [yocto] MACHINEOVERRIDES for native recipe #yocto
To: deeps8us@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000052962305f19e0a85"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Jan 2023 20:12:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58931

--00000000000052962305f19e0a85
Content-Type: text/plain; charset="UTF-8"

Yes, it's expected.

native recipes shouldn't be MACHINE specific, so shouldn't use
MACHINEOVERRIDES, see:
meta/classes-recipe/native.bbclass:MACHINEOVERRIDES = ""
meta/classes-recipe/nativesdk.bbclass:MACHINEOVERRIDES = ""

On Fri, Jan 6, 2023 at 9:09 PM <deeps8us@gmail.com> wrote:

> MACHINEOVERRIDES which are defined are not working for native recipe. Is
> this expected ? Is there any other way to use a machineoverride in native
> recipe.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58930):
> https://lists.yoctoproject.org/g/yocto/message/58930
> Mute This Topic: https://lists.yoctoproject.org/mt/96101417/3617156
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000052962305f19e0a85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, it&#39;s expected.<div><br></div><div>native recipes =
shouldn&#39;t be MACHINE specific, so shouldn&#39;t use MACHINEOVERRIDES, s=
ee:</div><div>meta/classes-recipe/native.bbclass:MACHINEOVERRIDES =3D &quot=
;&quot;=C2=A0<br>meta/classes-recipe/nativesdk.bbclass:MACHINEOVERRIDES =3D=
 &quot;&quot;<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, Jan 6, 2023 at 9:09 PM &lt;<a href=3D"mailto=
:deeps8us@gmail.com">deeps8us@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">MACHINEOVERRIDES which are defined a=
re not working for native recipe. Is this expected ? Is there any other way=
 to use a machineoverride in native recipe.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58930): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58930" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58930</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96101417/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96101417/3617156</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000052962305f19e0a85--

