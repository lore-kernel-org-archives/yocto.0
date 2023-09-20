Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A5D9CE79AC
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 07:44:52 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.31797.1695195889394400432
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 00:44:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=B5AoaKeq;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.53, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-52bd9ddb741so8199941a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 00:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1695195887; x=1695800687; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ShvyNisbKXAlzh49cVFHHSZEqEsdrWz+pBm/cd7ST5I=;
        b=B5AoaKeqS29w2kgHLfsSSQD0ot2q616m4AJhmy/JkdQvzUklgYyS2d4oOQihl21DQL
         URJT+pnEk4f3cJQCmRbFUQCqpgCpBXM+bz62JfB6HOA5d7/02Ep5m9/HAjELW0VYQ3gZ
         1efsIShC43L4hoCjtVlRkU4ZiDaMjmxHA24i68AHyiUdZsCErW9qPte6/MJ4vnSlCILs
         Fp7EAh6CC14h6PgVbUThjVXNdMlJbsCtd+fOSgIpkst7IPveIvTGWYbWU12Et6I1Q2mF
         PBOLsb/BLlRysI047QuwsUWfPfbDiHDXTJ/seDcafuNMv/Vx279dhR0wxsN2O1y3Ohas
         5w4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695195887; x=1695800687;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ShvyNisbKXAlzh49cVFHHSZEqEsdrWz+pBm/cd7ST5I=;
        b=XEpapMBXu679yrTrAUlhC+dhe30ggFmwuEjrDXrBkzNg8ZS1QgXRLXZz6Q28g4em1F
         FYy9bmy9V8sZqmfC9hpa3BiePlQ0k16ELfx0w6uZV7kFu39WnjiDuh2WjMHtUGG1O6mq
         zeydUNB6dXB92RgPpjZdVl6suVVPfsZyDyNUDUUON8d2EEY4834GjCTFOlehbAjaZSit
         yItVUAKoX/r/Syrji/oaVo/XAQAiHQtOxgTwUOhYHvLiiOBo4QcXo03Lon/FlYpENCPy
         kv1ArtnSekDvP0B6G8mQ62eZjWRkl6Mw2njtHucjdPcSlkhj1NAPXy0eiKN3l9kuJZW+
         Tg1g==
X-Gm-Message-State: AOJu0YwMUV9S1ClrfEhXw/zpzaR+QJw6O5O2rv3QZ54oViM7KJ37CJao
	t9nzgGp1cpoMM9sq53BCUKvsAwnHmm289YP8kpr2Gw==
X-Google-Smtp-Source: AGHT+IEr+Ih2GH+LxIDeI8g/uMjRTpTfZpUmblGCXPJN/9QpMICyQIxRA03o5fS3Nlsn6MNj8eXNDNIGFGB6n5Nd9xs=
X-Received: by 2002:a05:6402:b9d:b0:533:97c:8414 with SMTP id
 cf29-20020a0564020b9d00b00533097c8414mr819349edb.7.1695195887498; Wed, 20 Sep
 2023 00:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnh05sMqBfg08qYoUYC7CqQcqHNj9MQ3buR0g-5kU9-XDA@mail.gmail.com>
 <10392.1695193386394395929@lists.yoctoproject.org>
In-Reply-To: <10392.1695193386394395929@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 20 Sep 2023 09:44:21 +0200
Message-ID: <CAEt6Nwq5m3MQwHwiczzA9r=XFom6cCAan5PQ1bUGGVviMfyHvg@mail.gmail.com>
Subject: Re: [yocto] Cross-compilation of driver files
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b30ca70605c58cdb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 07:44:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61048

--000000000000b30ca70605c58cdb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As you did not provide any meaningful information (no errors, no source, no
logs), maybe you should start there if you expect people to help you.

For documentation, please see
https://docs.yoctoproject.org/kernel-dev/common.html#working-with-out-of-tr=
ee-modules

Greetz,
Josef

On Wed, Sep 20, 2023 at 9:03=E2=80=AFAM MOHAMMED HASSAN <hassanchattarki@gm=
ail.com>
wrote:

> On Mon, Sep 18, 2023 at 06:36 AM, MOHAMMED HASSAN wrote:
>
> Hi guys,
> So long back I was trying to load driver files for a battery charger and =
a
> battery fuel gauge as a kernel module. However I face errors that are
> actually related to cross-compilation. I  am not sure how to proceed with
> this. Can you guys refer to some documentation from both the yocto projec=
t
> and any other that can help.
> Thanks
>
> Come on guys, give me something!!!!!! I am tyring to load TI BQ2429x
> driver.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61047):
> https://lists.yoctoproject.org/g/yocto/message/61047
> Mute This Topic: https://lists.yoctoproject.org/mt/101433218/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b30ca70605c58cdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">As you did not provide any meaningful information (no erro=
rs, no source, no logs), maybe you should start there if you expect people =
to help you.<div><br></div><div>For documentation, please see=C2=A0<a href=
=3D"https://docs.yoctoproject.org/kernel-dev/common.html#working-with-out-o=
f-tree-modules">https://docs.yoctoproject.org/kernel-dev/common.html#workin=
g-with-out-of-tree-modules</a></div><div><br></div><div>Greetz,<br>Josef</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Sep 20, 2023 at 9:03=E2=80=AFAM MOHAMMED HASSAN &lt;<a href=3D"m=
ailto:hassanchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, Sep 18, 2=
023 at 06:36 AM, MOHAMMED HASSAN wrote:<br>
<blockquote>
<div dir=3D"ltr">Hi guys,
<div>So long back I was=C2=A0trying to load driver files for a battery char=
ger and a battery fuel gauge as a kernel module. However I face errors that=
 are actually related to cross-compilation. I=C2=A0 am not sure how to proc=
eed with this. Can you guys refer to some documentation from both the yocto=
 project and any other that can help.</div>
<div>Thanks=C2=A0</div>
</div>
</blockquote>
Come on guys, give me something!!!!!! I am tyring to load TI BQ2429x driver=
.
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#61047): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61047" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61047</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101433218/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101433218/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000b30ca70605c58cdb--

