Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF62C41535
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 15:41:14 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
 [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web08.3512.1649312200240805314
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 23:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ld5apyOc;
 spf=pass (domain: linaro.org, ip: 209.85.128.179,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-2eb43ad7909so50821097b3.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 23:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rl/tFxcqoir7CtzLC1xGAUj4lr1HOEJ9W+XtPBVCdV8=;
        b=Ld5apyOcjcHpyerNJ+MRIZi6L4mdyuOY7F4IALhqiFdyGgOQHnsepgtvjvbcM9AlF9
         7gT3E3iDzuWjaFUm5z6KSQpCYR3BycbrWQ14taZL5Q7XovzPYizWpHyNkgn1fPFyxri6
         0yiyoORtYDrh/y04SiK56gEwsZtvYn2DYwWmTAqAhMyjM5Amj9tXaZFpoOw67CWM0+DD
         WQba5IgnK5L8DzNxGvXopBtL5zGOaWuxXvJVL3OzyMYXHBvRwiOrep9uXJiSUN01BpDo
         6PkjU1S5YB/LVLtMHujk8enZawx5HoE39ZxAaie/R3nejotjXSpoG8zpqOPFCW0zNK2v
         BWlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rl/tFxcqoir7CtzLC1xGAUj4lr1HOEJ9W+XtPBVCdV8=;
        b=hyIB/MKTd/XzLHkxgBj3dApv9nLz7102MAR0WTqpBhusNt5pA8E3asybl6dclBNQdX
         UnwSgOZD1os1n9HdQiaWRl+/41jnVNLKP0MLczoNKVOj6QUsb7gjIFrH1C85ZWSV1ail
         BkSVVJawzzWMYnY3DcZEpFpEwfVxiiQG2sXk6+GRHvHnc1lVvgcRFYuB/BF/IGQt4feJ
         WDrLp2mwPHdd+gZfbclRsoNX/nhgaSDbilqG1591IPAH/i2/XHXYFyZV9Kro5gF59XX6
         w33xn7bXreJTW74BAjT9s3aWO9Mt4piW7EksKpI2fR3g94cW0qi05IgcMU/ZTz0HhEGD
         9MXA==
X-Gm-Message-State: AOAM531CsGxSOuKrgbUGoyesAiUOqPkPM3pQcPYxoMHSylkbFXJE7Edb
	WjU9G18OvExXjZbU0Vj5FskfM1vZdqYlakljRjS1jg==
X-Google-Smtp-Source: 
 ABdhPJyIwvwR1EGHi/ILBBl5Szvz2tYna9/gXPf8EivQ2jIUmi+YD4PybwOKv8CoEcQC5a72YV5md4+tKy7WpvDgRg8=
X-Received: by 2002:a0d:e743:0:b0:2eb:3106:9b32 with SMTP id
 q64-20020a0de743000000b002eb31069b32mr10610841ywe.512.1649312199317; Wed, 06
 Apr 2022 23:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <742687b6-8784-716e-cfe0-de9403378ac9@3mdeb.com>
 <15630.1649285473376238274@lists.yoctoproject.org>
In-Reply-To: <15630.1649285473376238274@lists.yoctoproject.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 7 Apr 2022 08:16:28 +0200
Message-ID: 
 <CAP71WjwOENPCfN0A-YBdTBFuJHrg2vK_64mSujjGxYERciAgtQ@mail.gmail.com>
Subject: Re: [yocto] How to contribute to Yocto core ?
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c3aa9505dc0a6b4b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 15:41:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56680

--000000000000c3aa9505dc0a6b4b
Content-Type: text/plain; charset="UTF-8"

hey Talel,


On Thu, Apr 7, 2022 at 12:51 AM Bel Hadj Salem Talel <bhstalel@gmail.com>
wrote:

> Thanks for the guide.
>

Thanks for reaching out!

>
> I have one more question regarding the bugs. I noticed that there is a
> Zoom meeting link
> <https://zoom.us/postattendee?mn=wVY4wgNvql1k1Mrzj4NVPellZN1oQQHGWA.fjPvBIH_i1IT6GdY&id=6>,
> do I need to join it and participate in a discussion about the tasks
> assignments and try to get a bug assigned to me in order to start working
> on it ?
>

 You are welcome to attend any of the public Yocto developers meetings, if
nothing else you will meet and hear directly from the core developers.
However it's not strictly required. Anyone is free to start contributing.
You can work either on items that are already in our Bugzilla, or work on
things that are important to you too. If you pick up a task from Bugzilla,
it's a good practice to engage on the bugzilla bug and tell them that you
want to work on it, so that everyone is aware of it.

We have a special category of bugs which we mark for NEWCOMER. They are
usually non critical items, and often 'simple' so that they are suitable
for new developers starting with Yocto. See

https://wiki.yoctoproject.org/wiki/Newcomers

Our contribution process is to send patches onto mailing lists, where they
are reviewed/discussed and eventually picked up by the relevant
maintainers. You can keep asking questions here, if you need more
assistance to send your first contributions!


> I know that is quite difficult for me to understand the contribution flow
> for the moment.
>
> Thanks,
> Talel
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56679):
> https://lists.yoctoproject.org/g/yocto/message/56679
> Mute This Topic: https://lists.yoctoproject.org/mt/90301090/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000c3aa9505dc0a6b4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hey Talel,<div><br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 7, 2=
022 at 12:51 AM Bel Hadj Salem Talel &lt;<a href=3D"mailto:bhstalel@gmail.c=
om">bhstalel@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Thanks for the guide.<br></blockquote><div><br></div>=
<div>Thanks for reaching out!=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><br>I have one more question regarding the bugs. I noticed =
that there is a Zoom meeting <a href=3D"https://zoom.us/postattendee?mn=3Dw=
VY4wgNvql1k1Mrzj4NVPellZN1oQQHGWA.fjPvBIH_i1IT6GdY&amp;id=3D6" rel=3D"noope=
ner" target=3D"_blank">link</a>, do I need to join it and participate in a =
discussion about the tasks assignments and try to get a bug assigned to me =
in order to start working on it ?<br></blockquote><div><br></div><div>=C2=
=A0You are welcome to attend any of the public Yocto developers meetings, i=
f nothing else you will meet and hear directly from the core developers. Ho=
wever it&#39;s not strictly required. Anyone is free to start contributing.=
 You can work either on items that are already in our Bugzilla, or work on =
things that are important to you too. If you pick up a task from Bugzilla, =
it&#39;s a good practice to engage on the bugzilla bug and tell them that y=
ou want to work on it, so that everyone is aware of it.=C2=A0</div><div><br=
></div><div>We have a special category of bugs which we mark for NEWCOMER. =
They are usually non critical items, and often &#39;simple&#39; so that the=
y are suitable for new developers starting with Yocto. See=C2=A0</div><div>=
<br></div><div><a href=3D"https://wiki.yoctoproject.org/wiki/Newcomers">htt=
ps://wiki.yoctoproject.org/wiki/Newcomers</a><br></div><div><br></div><div>=
Our contribution=C2=A0process is to send patches onto mailing lists, where =
they are reviewed/discussed and eventually picked up by the relevant mainta=
iners. You can keep asking questions here, if you need more assistance to s=
end your first contributions!</div><div><br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><br>I know that is quite difficult for me to under=
stand the contribution flow for the moment.<br><br>Thanks,<br>Talel
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56679): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56679" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56679</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90301090/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90301090/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000c3aa9505dc0a6b4b--

