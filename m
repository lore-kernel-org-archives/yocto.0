Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2AEDC4332F
	for <webhook@archiver.kernel.org>; Thu, 13 Oct 2022 19:11:36 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.249.1665688295573369018
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 12:11:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=BWDedBo4;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.41, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f41.google.com with SMTP id d26so5944403eje.10
        for <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 12:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=16E/IsPNYKxzOVqw5LUOL8qnc/thD9Mol6Fb8vLEdro=;
        b=BWDedBo41QVoxYGyowc6rE7ENslAsIs/mrqVxuukkWDXxAnW0tKLk1i9AYo6v/+Dg2
         iDdvwFu5h86vYz2IoNrzrVrXFdt3Kb6ATKvkjE1sWQLwaW+XuzXPkPBA/yqHjLuaxNkn
         WYaX6qXtyHJgqzxtkUux9/FMc4pAP6fL0kHVsw8TS2BJpuiKgwtWQhlUn3Mj5yAau5yP
         TwrMcyz4m8qyoAHqRucbPViljgc4h50nsKrED8UNcy6TTlMwRuQYE2axaIecgzLHaeke
         fWf72dKe44jwAUmVhS+eWYquJy0Jn1/2HjaFJAIoBHZyC1jaHSGfbTDuHrZWDsVDcz0+
         e1dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=16E/IsPNYKxzOVqw5LUOL8qnc/thD9Mol6Fb8vLEdro=;
        b=B+xgDoSv4H+u+zF47zROnQAebgagxnsV9RkZqc2OHalUMhK+dw070sa4MaSEHzyAVB
         I4osZdL9KA2KIYpFlyTQSqr5x+wGIouAsIhgZahlHbUYVS9PobuZavv/NGYrRf2HdZf7
         EUVIZkcvJPNfMYs+cP/lvaGyCW0Zb3QMQ9Q/+wAdWe30dK3ddADfvczDXYQOcEhXo6Op
         7Uky8f2FsuPNhOoKZtwAQ+ez1cPF4Zrax6t2rItS03luAqwut/8GGACUImQ1IyrAB2b2
         IdCBrspS4vyuBvADj7iDEVq2e7f+p6m94EiYHamqiXxj7zu4L8bW6Alzir+SSRW27L33
         JdDQ==
X-Gm-Message-State: ACrzQf08cdPrKoVg+tbvEwRUyc77oOVlb2dLicxDpDpc8x9ba+FdZX/W
	v4wgYPqrEGGOffjmziNSD0N7vP0b+XQdShWJ7Pp5Rw==
X-Google-Smtp-Source: AMsMyM4zU4Ev/nNcr1bGfMvlVDrY4XApT5GuABHTdsJU5c3XRdHQpAaoeAbfPSVlsoaBhf3ugHSWypuXLsjXIBl5KtM=
X-Received: by 2002:a17:907:75f1:b0:78a:f935:647d with SMTP id
 jz17-20020a17090775f100b0078af935647dmr870159ejc.587.1665688293858; Thu, 13
 Oct 2022 12:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAKO9uzo34iJPxD42PkYbBoh_2-=8cd64_pYTMBd7TtPeTnFeRA@mail.gmail.com>
 <CAMjhiJi+hAWys-n1U34nx_xYncChTSg2UjweDYYBtejepaK6MQ@mail.gmail.com>
In-Reply-To: <CAMjhiJi+hAWys-n1U34nx_xYncChTSg2UjweDYYBtejepaK6MQ@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 13 Oct 2022 21:11:07 +0200
Message-ID: <CAEt6Nwo4v6khJznECf73tdiAcs-Evq1A6d-ynfdKgqiP_Vz2ow@mail.gmail.com>
Subject: Re: [yocto] Disabling SSH by default (but keeping the service)
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Maik Vermeulen <maik.vermeulen@lightyear.one>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001003c005eaef47f1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 19:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58333

--0000000000001003c005eaef47f1
Content-Type: text/plain; charset="UTF-8"

Hi Maik,

this is a number of things being mixed up.
1) a recipe cannot affect another recipe. the image is a recipe, sshd is a
recipe. so you either can set this in a bbappend to thesshd recipe, or in a
config file (distro, machine, local) - but not in the image.
2) the override separator is : these days (since dunfell), not _, and you
are targetting a specific recipe. so in a config file, it would be
SYSTEMD_AUTO_ENABLE:pn-openssh-sshd
[3] 7.6p1 suggests that you are on some release made in 2017, or
comparable, and the first thing you should do is upgrade, or otherwise you
will be shipping outdated and vulnerable software right from day 1.

Greetz

On Thu, Oct 13, 2022 at 3:34 PM Leon Woestenberg <leon@sidebranch.com>
wrote:

> Hello Maik,
>
> On Thu, Oct 13, 2022 at 3:17 PM Maik Vermeulen
> <maik.vermeulen@lightyear.one> wrote:
> > We tried two things to disable SSH by default in our image recipe:
> > However, both methods don't seem to work.
>
> Hmm, something else might override it elsewhere? I don't know.
>
> Seems like a similar question came up in stackoverflow, where some
> potential solutions are given that you might want to give a try:
>
>
> https://stackoverflow.com/questions/50651371/disable-a-standard-systemd-service-in-yocto-build
>
> Regards,
>
> Leon.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58331):
> https://lists.yoctoproject.org/g/yocto/message/58331
> Mute This Topic: https://lists.yoctoproject.org/mt/94303163/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000001003c005eaef47f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maik,<div><br></div><div>this is a number of things bei=
ng mixed up.</div><div>1) a recipe cannot affect another recipe. the image =
is a recipe, sshd is a recipe. so you either can set this in a bbappend to =
thesshd recipe, or in a config file (distro, machine, local) - but not in t=
he image.</div><div>2) the override separator is : these days (since dunfel=
l), not _, and you are targetting a specific recipe. so in a config file, i=
t would be SYSTEMD_AUTO_ENABLE:pn-openssh-sshd</div><div>[3] 7.6p1 suggests=
 that you are on some release made in 2017, or comparable, and the first th=
ing you should do is upgrade, or otherwise you will be shipping outdated an=
d vulnerable software right from day 1.</div><div><br></div><div>Greetz</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Oct 13, 2022 at 3:34 PM Leon Woestenberg &lt;<a href=3D"mailto:le=
on@sidebranch.com">leon@sidebranch.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hello Maik,<br>
<br>
On Thu, Oct 13, 2022 at 3:17 PM Maik Vermeulen<br>
&lt;maik.vermeulen@lightyear.one&gt; wrote:<br>
&gt; We tried two things to disable SSH by default in our image recipe:<br>
&gt; However, both methods don&#39;t seem to work.<br>
<br>
Hmm, something else might override it elsewhere? I don&#39;t know.<br>
<br>
Seems like a similar question came up in stackoverflow, where some<br>
potential solutions are given that you might want to give a try:<br>
<br>
<a href=3D"https://stackoverflow.com/questions/50651371/disable-a-standard-=
systemd-service-in-yocto-build" rel=3D"noreferrer" target=3D"_blank">https:=
//stackoverflow.com/questions/50651371/disable-a-standard-systemd-service-i=
n-yocto-build</a><br>
<br>
Regards,<br>
<br>
Leon.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58331): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58331" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58331</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94303163/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94303163/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001003c005eaef47f1--

