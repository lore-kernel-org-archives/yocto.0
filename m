Return-Path: <Shilpakumar476@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C3FED2126A
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 09:41:54 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.44574.1729158109226699961
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 02:41:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IT6a5HpV;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: shilpakumar476@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539f4d8ef84so791256e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 02:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729158107; x=1729762907; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QkmnOIeI6npL1FgQjmBm6eKqFFwT9ezeOuSEmtEqcK4=;
        b=IT6a5HpVQBjAp/74wiH9xavbMSXH6Cm30tcNf9TnR/tWJS9ypEIUTqO0tY+4cB3A+9
         tdlSXOdT3uth+1+wRQntJzIciP/xZFdj0MdcRWF+K0kKEPt5mQjgjaQS0e8PVZDIejWV
         qKe9/I3rqcYdCQ9sQuRKpt5A5nYBIEERC2NVnPSAW5Qa8DFnmkL3BdZMhUCwwhmNJuta
         7l0gDD/AnYipGra/E4zEeYCo6MTcFtTwIaToqAB9LvjWaZEEagujprvTjMMVmphaT5K5
         Md4z3wz9hHb5gQ2b/57dZGpIpqGpqIXDc0NUgdCnfKSqvYBaCeW4XaF5qVjSdfAkpKah
         Zxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729158107; x=1729762907;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QkmnOIeI6npL1FgQjmBm6eKqFFwT9ezeOuSEmtEqcK4=;
        b=kKtDVo4wTlma9vSB3HacCy5G4l4pVHrreABXNPRypaUxYObf2K9cTuFBKTkP/zU7s2
         /C+DQZ4bs6db6bN4hhcCK7GzhM9ed+70fCYcBkpqF/vYRfS0StPqQgETzu/oHqYDzVDN
         MjDENBjX0VNtjTUIe2OZgVVAfFGNM7wdAmTC949R3kNbJj7IgZz0+FhUzhgAY8AttHZP
         uHVY9CoyeBH2xwe9tUx0FUfoOeyZOzHKKFeAj3rGXNrhZg8lt6JAyhrnEueZATwvK7pl
         7cabDEhcDdIi0DPVgAJ+Fvrsva7soKM107q1KWi8O9+Co1wcGPk5Mh84mJRIcvcoxWJe
         IeLQ==
X-Gm-Message-State: AOJu0YyuGzmStCqw14UzxeSzRDyAYMgKqhzvEojHezFZh0dq4U+SAgmi
	ajDeku97lWEO+hxnI2n1fQEV2mdGW7aNE4hQeC9sV8cNVLWGmHME+N7P5QvUJwwpUXT6LHE++Wr
	6fIXhWuxcsGijYwFW04u6gnVFlro=
X-Google-Smtp-Source: AGHT+IH3K24jpqusQXRzIao6IUOGc+ZLCSFr9ZmJHEsg0u7U7q6X7w6xpAfRaQg8mn7DEOs/0DELohTHBGp3H4xQgbI=
X-Received: by 2002:a05:6512:1044:b0:530:ae4a:58d0 with SMTP id
 2adb3069b0e04-539da3c1d9bmr10611548e87.8.1729158107043; Thu, 17 Oct 2024
 02:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj93_hwUFyshedbBsX6LhBVv8k_-anA+X-wvTdQ01KCg0g@mail.gmail.com>
 <2413.1729156088511552914@lists.yoctoproject.org> <CANNYZj-q5T5_ZxEEHueHoihsuB62ynAv+vKDUoOHQX2E2=Mv_g@mail.gmail.com>
 <CAOqiPbJMC4qxJu8yL8Aa+ZRdDuzTNbz7DYBVAC=LFAbzD-pJOA@mail.gmail.com> <CANNYZj8Vg0ed5WaeeC4LvD5M2Ka6TbKSdsgEPU_9cezoTd-LvA@mail.gmail.com>
In-Reply-To: <CANNYZj8Vg0ed5WaeeC4LvD5M2Ka6TbKSdsgEPU_9cezoTd-LvA@mail.gmail.com>
From: Shilpa <shilpakumar476@gmail.com>
Date: Thu, 17 Oct 2024 15:05:13 +0530
Message-ID: <CAOqiPbLdjqaRkh8-N9idk8D6gZpx=jC0=uBpMiE9jnMUUCffRw@mail.gmail.com>
Subject: Re: [yocto] How to create Tool to update commit hash in yocto recipe
 files #bitbake #yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bb21b00624a8fe6d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:41:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64042

--000000000000bb21b00624a8fe6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here I'm trying to create a new Tool which should update the commit hash in
yocto recipe files

On Thu, 17 Oct, 2024, 2:52=E2=80=AFpm Alexander Kanavin, <alex.kanavin@gmai=
l.com>
wrote:

> On Thu, 17 Oct 2024 at 11:18, Shilpa <shilpakumar476@gmail.com> wrote:
> >
> > For every yocto recipes Can we supply the commit hash, instead of
> explicit supply do we have any other method
>
> You need to explain what are you trying to do in detail. What is the
> problem that you need to solve?
>
> Alex
>

--000000000000bb21b00624a8fe6d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Here I&#39;m trying to create a new Tool which should update=
 the commit hash in yocto recipe files</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, 17 Oct, 2024, 2:52=E2=80=AFpm Alexander Kanavin, &lt;<a href=3D"mailto:al=
ex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On Thu, 17 Oct 2024 at 11:18, Shilpa &lt;<a href=
=3D"mailto:shilpakumar476@gmail.com" target=3D"_blank" rel=3D"noreferrer">s=
hilpakumar476@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; For every yocto recipes Can we supply the commit hash, instead of expl=
icit supply do we have any other method<br>
<br>
You need to explain what are you trying to do in detail. What is the<br>
problem that you need to solve?<br>
<br>
Alex<br>
</blockquote></div>

--000000000000bb21b00624a8fe6d--

