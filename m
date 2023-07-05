Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31979EB64DD
	for <webhook@archiver.kernel.org>; Wed,  5 Jul 2023 12:26:46 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.15469.1688560000615183116
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jul 2023 05:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=hihn7YnR;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-313fb7f0f80so7313156f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 05:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688559999; x=1691151999;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c541odfVpr+yOL4XnhEfeLDRVbr1L6uGnWLmYLCctUw=;
        b=hihn7YnRszgGtiTgKG/vDVY71NkB11O769ON+OD/+zpeDAvpbz8M4AU0944Wq5oY3f
         0qye2e+iQO8iif8tTqjc4r/WoCeXq/jWzRVun9gJ1CkA66/VdEVV8RcsybTSHjw38FVT
         GlCddQFRlUkF2NMSKK3ig69myp3qqGtnB/edmsR0YFm3IT+5tuuAOFQJZ0MCgcvUs1a2
         ULq6LT4q+P46dYveR49OendY4KiMvWT17QVZBM0AR128gQvUM6ETWrL90P5AKsVYWKlR
         Jsd4bQ4OGi5fjmANCDDQy41jz/yHaUKwqfV+6IiBSBj15NEG7Q2c4LbKTUi2ZkRM01Wp
         ydNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688559999; x=1691151999;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c541odfVpr+yOL4XnhEfeLDRVbr1L6uGnWLmYLCctUw=;
        b=FZzFwJiT3WrzADPcgoXquqQgGqUpnq6yxIbWCOh5IDE4bl8Yjw3L8veftsKTZHhH2h
         nb2QBBQ4lzTrU7dINj46ikbXSQlc9YHttJJJpmedxEvr6xx89QjmnRr8RQSpy6MGEawD
         8LDFpa7m+SktTsGmTbi6bNmKP8B9RC9D4dqE9Xtq1yc27o4NvCuQJPt+8V32cjJnLg1N
         t441CBdwofMIT9bmdm6OqsAp9BaVEeHBuUw7gD766addrXN7hnIpOuJHFoI3nXoKHdD1
         DXFka7oCe/eRG+imZ1Umau0cuGo/UzMFlcJ8b01zc9l7373NunE3A/LJCfL20N5EUrWX
         agPQ==
X-Gm-Message-State: ABy/qLY6WBjbFG594wxd6wU9pIMRRLAuoon6vUCbSlTW+Wamu7XZCaq5
	BUDTpBrvYBYnJwoPjuHhVz1At2y8xcgFuQCwJDU=
X-Google-Smtp-Source: APBJJlEjSaeAKJeQnaSwCzr1zqBxwk891UwR8k+3rIDoW4c7WuMekGRyqibed16zp39RjVflJzm+AuThyTHpGmTsJU0=
X-Received: by 2002:adf:fe02:0:b0:307:8c47:a266 with SMTP id
 n2-20020adffe02000000b003078c47a266mr10961015wrr.61.1688559998786; Wed, 05
 Jul 2023 05:26:38 -0700 (PDT)
MIME-Version: 1.0
References: <GHxO.1688541691010870295.8jtz@lists.yoctoproject.org>
In-Reply-To: <GHxO.1688541691010870295.8jtz@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 5 Jul 2023 14:26:27 +0200
Message-ID: <CA+chaQfN15dtssZFEv3hYiWzf2SF7aFY7Q9YcEk=r6fQHDuwmQ@mail.gmail.com>
Subject: Re: [yocto] Getting segmentation fault while creating wic images
To: mail2uvijay@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e8e73805ffbc829a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 12:26:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60517

--000000000000e8e73805ffbc829a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to apply
https://patchwork.yoctoproject.org/project/oe-core/patch/20230623093323.405=
8529-1-Martin.Jansa@gmail.com/
in your build or wait for new patchelf and new uninative tarball including
that.

On Wed, Jul 5, 2023 at 9:21=E2=80=AFAM <mail2uvijay@gmail.com> wrote:

> Hi,
>
> I am trying re-build yocto for one of the custom board having ti processo=
r.
> using dunfell branch. While creating images getting "output: Segmentation
> fault (core dumped)"
> "
> NOTE: recipe app-image-1.0-r0: task do_image_wic: Failed
> ERROR: Task
> (...................................////.//////////:do_image_wic) failed
> with exit code '1'
> NOTE: Tasks Summary: Attempted 5310 tasks of which 5306 didn't need to be
> rerun and 1 failed.
> "
> Note: i have working build created on 19.06, this is building successfull=
y.
>
>
> Regards,
> Vijay
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60516):
> https://lists.yoctoproject.org/g/yocto/message/60516
> Mute This Topic: https://lists.yoctoproject.org/mt/99960619/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e8e73805ffbc829a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You need to apply=C2=A0<a href=3D"https://patchwork.yoctop=
roject.org/project/oe-core/patch/20230623093323.4058529-1-Martin.Jansa@gmai=
l.com/">https://patchwork.yoctoproject.org/project/oe-core/patch/2023062309=
3323.4058529-1-Martin.Jansa@gmail.com/</a> in your build or wait for new pa=
tchelf and new uninative tarball including that.</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 5, 2023 at 9:21=
=E2=80=AFAM &lt;<a href=3D"mailto:mail2uvijay@gmail.com">mail2uvijay@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Hi,<br><br>I am trying re-build yocto for one of the custom board having=
 ti processor.<br>using dunfell branch. While creating images getting &quot=
;output: Segmentation fault (core dumped)&quot;<br>&quot;<br>
<div>NOTE: recipe app-image-1.0-r0: task do_image_wic: Failed</div>
<div>ERROR: Task (...................................////.//////////:do_ima=
ge_wic) failed with exit code &#39;1&#39;</div>
<div>NOTE: Tasks Summary: Attempted 5310 tasks of which 5306 didn&#39;t nee=
d to be rerun and 1 failed.<br>&quot;<br>Note: i have working build created=
 on 19.06, this is building successfully.<br><br><br></div>
Regards,<br>Vijay
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60516): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60516" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60516</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99960619/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99960619/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e8e73805ffbc829a--

