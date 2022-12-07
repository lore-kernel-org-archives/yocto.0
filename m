Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1D5C352A1
	for <webhook@archiver.kernel.org>; Wed,  7 Dec 2022 14:08:41 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.15968.1670422116778550841
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 06:08:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=2PB57Ocz;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.45, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f45.google.com with SMTP id n20so14383029ejh.0
        for <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 06:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JTZBViVLV8UduoGjE7AaUR1crsj11E5meDhFHdUo+UU=;
        b=2PB57Ocz4IOvzqsKHj53qGhpk4iDGIkYG9wRTmKjoxjJSvHoU8yzNkuBewUIRNgEjg
         wCqUByD7ClFiPvs75Li2yWEbzqecjlCxTIRtAQ7ieQiVMydxMoxzphTzkUOsisTJIwx6
         U6niXE6t5/fjkTMcEwOoOs0GYuJVr+F5TtJEQ3q7EYFGHSNz7w0+PwJ71skBNaK6WD97
         KVO6VFiTYPeNiYHJgy8LqKzoZ4RR2iC+X+5MuG6XMX/yUcW7S/lgRUTUBgmNQ9Lo/SEL
         ptsACB28SA3yLiYfBFPHW5Z9nsm8L4vyD8ndRiACi5LOU5Ua6asAEVLVMTaUnL9kjt1/
         Q2lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JTZBViVLV8UduoGjE7AaUR1crsj11E5meDhFHdUo+UU=;
        b=KSlxVej08P0E66xCZuHLLhw8AtfE6PgY+rMt3AjLmo/VGzzSG0/WqToCcJX/TN3eGw
         HDIbNVjkc3kFU2Bj9lkwaqQLaKZFP/rm0TJ7qpVB23Dz7HQe59eq6LCVn1JhdzJAyrVc
         0APBazZYryqom+KrfF/vEyxjoGgl/d+ZnOjAsb9UZFft1HmfZZpfzRKS+Kv2plUt9wOU
         DVVp31WRGtBIP5wAgnn/IUwdLcXfqNF5tLjeEEJLRS09FYTu63lDro9exeIu9leyOdEb
         KBWM8JzdJ5PfvgysZ+Y8kRhXzQwTDSkVccMm2A/BrkM5hfnGFlrPk3YpKXsGSqEkyiNR
         l2Ew==
X-Gm-Message-State: ANoB5pl1zH8MqUWOTjxOFL6wzdklvEnegNdW7gyXiNYodDEEIbtoGN6M
	n/n46MKHMQeVaOxJ/zQCXhKaSp1qjNUAh6qyLfmasg==
X-Google-Smtp-Source: AA0mqf7f2u1ea8cT8Zk5dYc4NkvgDWuaRkUBQHKw5oWlaOd+Hi2dCDNoSeHp8xrKCPiFxrvsZ0epdmJw2yjTUIQLET0=
X-Received: by 2002:a17:906:a1cb:b0:781:fcf6:e73a with SMTP id
 bx11-20020a170906a1cb00b00781fcf6e73amr75346136ejb.352.1670422115112; Wed, 07
 Dec 2022 06:08:35 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
 <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
In-Reply-To: <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 7 Dec 2022 15:08:09 +0100
Message-ID: <CAEt6NwpbzwDmnmnkpUXwo=L1KjGsxeHGNTOUpD-WN1w8DqhOdg@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Christopher Friedt <chrisfriedt@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cbf36605ef3d74ca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 14:08:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58747

--000000000000cbf36605ef3d74ca
Content-Type: text/plain; charset="UTF-8"

Is it maybe the restricted network access thats biting you?
See third item:
https://docs.yoctoproject.org/migration-guides/release-notes-4.0.html#new-features-enhancements-in-4-0

On Wed, Dec 7, 2022 at 2:37 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Tue, Dec 6, 2022 at 5:07 PM Christopher Friedt <chrisfriedt@gmail.com>
> wrote:
> >
> > In all cases, the problem is traced back to a Makefile, where
> > something calls $(shell git ... ) to get a git version.
> >
> > I was able to find out because one shell had executed a script called
> > scripts/setlocalversion that looked kind of suspicious in terms of
> > error propagation. In this script, if I manually echoed "1.6.0" and
> > then exited, do_install would not hang.
> >
> > Some early discussion suggests that it might be avoidable with 'set -o
> > pipefail' in the shell, but I haven't investigated further.
> >
>
> I don't have anything super helpful to add, but when that git command
> is hung, are you seeing any stalled network connections or processes
> in D state ?
>
> It wasn't clear from your first message. Are all native processes hanging
> at do_install ? or is it a subset ?
>
> Bruce
>
> > C
> >
> >
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58746):
> https://lists.yoctoproject.org/g/yocto/message/58746
> Mute This Topic: https://lists.yoctoproject.org/mt/95499663/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000cbf36605ef3d74ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is it maybe the restricted network access thats biting you=
?<div>See third item:=C2=A0<a href=3D"https://docs.yoctoproject.org/migrati=
on-guides/release-notes-4.0.html#new-features-enhancements-in-4-0">https://=
docs.yoctoproject.org/migration-guides/release-notes-4.0.html#new-features-=
enhancements-in-4-0</a></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Dec 7, 2022 at 2:37 PM Bruce Ashfield=
 &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On=
 Tue, Dec 6, 2022 at 5:07 PM Christopher Friedt &lt;<a href=3D"mailto:chris=
friedt@gmail.com" target=3D"_blank">chrisfriedt@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; In all cases, the problem is traced back to a Makefile, where<br>
&gt; something calls $(shell git ... ) to get a git version.<br>
&gt;<br>
&gt; I was able to find out because one shell had executed a script called<=
br>
&gt; scripts/setlocalversion that looked kind of suspicious in terms of<br>
&gt; error propagation. In this script, if I manually echoed &quot;1.6.0&qu=
ot; and<br>
&gt; then exited, do_install would not hang.<br>
&gt;<br>
&gt; Some early discussion suggests that it might be avoidable with &#39;se=
t -o<br>
&gt; pipefail&#39; in the shell, but I haven&#39;t investigated further.<br=
>
&gt;<br>
<br>
I don&#39;t have anything super helpful to add, but when that git command<b=
r>
is hung, are you seeing any stalled network connections or processes<br>
in D state ?<br>
<br>
It wasn&#39;t clear from your first message. Are all native processes hangi=
ng<br>
at do_install ? or is it a subset ?<br>
<br>
Bruce<br>
<br>
&gt; C<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58746): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58746" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58746</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95499663/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95499663/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000cbf36605ef3d74ca--

