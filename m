Return-Path: <janmkubalek@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE19C433F5
	for <webhook@archiver.kernel.org>; Sat,  8 Oct 2022 19:39:14 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web09.7294.1665257945175764649
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:39:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZZ7CZzTT;
 spf=pass (domain: gmail.com, ip: 209.85.221.53,
 mailfrom: janmkubalek@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id w18so11690048wro.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 08 Oct 2022 12:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3+FNgRnkRlKerpW1YXbyJTL7ioA2LGfSMzNfZFoWVD4=;
        b=ZZ7CZzTTx/lZ4xqoH7v5ti9ZzvRb1tUfgT58O4IAQquc0R2E3ILUzx93M5o1jRbQKh
         v0C3f3qobyIFpBPTDhGbRwAe8YGxkGDfoAas1Y934NQj1ICrdWJZex8lsPHMa5MDZekQ
         Xx7ypE2OeiIxhDt+JO2f/2IdY6vzAQXxBaemF2AXIMLlH61WJ8H1gYP2MMVLHzMtXK7+
         Ec3Ncpsg5Zx0eb4dQVptpJt2WsANYGCdnu6YvbWLoR39KDaBqtNestzAcjSc+r+UzQCX
         tS5BqkBpOH6CTdRdRLnofVyaB1ybhph4Yn+UvMV+TmEQBGPnkgI4ygc8rYT6BEyYeufY
         bVQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3+FNgRnkRlKerpW1YXbyJTL7ioA2LGfSMzNfZFoWVD4=;
        b=y7FISBzJxswM7oC1wUan7JgojsI0ZPjYffAykTwCCxCCXzsCiW6Y4DoRIqqo96EX4q
         /lmser07uZ8NAR6hAFWBXytbG2Xe1aOmebmB6605t+lKHdZnWlf7UycBb8pwRYfJAnYS
         ooAGr00wLwuvTQv33jqMm8xrKPPkLP5vpan8DaEBvg/8pj3Yo6mnwaxCDS5GDipdDHma
         FK/UtQ3xE3OrNInANGKdaKKoDRQm7YBDv+7smTDPRIsEvkWs4ZcsqJ1JUKcFmrsKxuDU
         p3h0imboqvZekG1l6TswoaH0w6QlUUxE+zWy2aYYmzRPvui5sYfV9HguULBnRw3cWuVb
         IgNA==
X-Gm-Message-State: ACrzQf34WPDq4EEPUzrcz6XLqMgdqZJd7oGqznxrMXHOlMdixGsfJWEz
	S5QaRPaoHVYhWVpNR6ZDvden+dtPiRLMVHRLk00=
X-Google-Smtp-Source: 
 AMsMyM6pTkzqr81FZu+tX9xL0Po54mgtOI04gMSNWoio7Ok/tj9aspvYtCotCDi55qFB1CGvdfYd3KvXuN3aq8hQZz4=
X-Received: by 2002:a05:6000:1f9e:b0:22e:61fa:3f1c with SMTP id
 bw30-20020a0560001f9e00b0022e61fa3f1cmr6710451wrb.546.1665257943178; Sat, 08
 Oct 2022 12:39:03 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAD7aZ34WijQFsY_=znbZ+0RToxEYnfZY=p-wuqnKwz+GsTdUrw@mail.gmail.com>
 <CAMKF1sq8RCkV=LCYjRxCueOLQzY+eLK4Z+=dn_BEPQSytJy=nw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sq8RCkV=LCYjRxCueOLQzY+eLK4Z+=dn_BEPQSytJy=nw@mail.gmail.com>
From: Jan Kubalek <janmkubalek@gmail.com>
Date: Sat, 8 Oct 2022 21:38:52 +0200
Message-ID: 
 <CAD7aZ34LZYzdWT6yst_jNuTp+=HDeJgmD5NreLmqTE17rTLEOA@mail.gmail.com>
Subject: Re: [yocto] Problem with download files during CMake configure phase
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Jakub Trubka <jakub.trubka@bringauto.com>,
	"martin.hofbauer@bringauto.com" <martin.hofbauer@bringauto.com>
Content-Type: multipart/alternative; boundary="00000000000029a10705ea8b14d2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Oct 2022 19:39:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58295

--00000000000029a10705ea8b14d2
Content-Type: text/plain; charset="UTF-8"

Hello,

Thanks for a prompt reply.

Can you point me to the correct loc. in documentation? I cannot find it :(.
(just for the future that so I can read a doc properly... :) )

Thanks a lot
John

On Sat, 8 Oct 2022 at 21:35, Khem Raj <raj.khem@gmail.com> wrote:

> On Sat, Oct 8, 2022 at 12:25 PM Jan Kubalek <janmkubalek@gmail.com> wrote:
> >
> > Hi,
> >
> > We have a C++ projects configured by CMake.
> >
> > Our CMake files download some dependencies from our git by standard "git
> clone" command during configure phase.
> >
> > If I add our project as a recipe to Yocto the git command always fails
> with exit code 128 (resource unavailable - no internet connection, protocol
> not supported etc.).
> >
> > What's wrong? How Can I solve this problem? In a standard env the
> configure proceeds without problems.
> >
> > We use
> > - Yocto >= 4,
> > - Bitbake >= 2,
> > - Ubuntu 20.04 as a host system
> >
> > Src URI spec:
> >
> > SRCREV = "<commit_id>"
> > SRC_URI = gitsm://<path_to_git>;protocol=ssh;nobranch=1
> >
> >
> >
> > Thanks a lot for your advice :)
>
> yes cmake has the downloader module which perhaps is good from
> development point of view, however, with yocto where one goal is about
> reproducibility its important to have
> sourcecode immutable and ensure that all of it is available before
> system goes ahead with building it. Therefore recently bitbake has
> started disabling network access after fetching
> task is finished, just so that it does not get modified under it
> without notice. One approach is to use git submodules in your project
> instead of doing it with cmake then use gitsm fetcher
> in yocto and you have best of both worlds.
>
> > John
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#58293):
> https://lists.yoctoproject.org/g/yocto/message/58293
> > Mute This Topic: https://lists.yoctoproject.org/mt/94205284/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--00000000000029a10705ea8b14d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Thanks for a prompt=
=C2=A0reply.</div><div><br></div><div>Can you point me to the correct loc. =
in documentation? I cannot find it :(.</div><div>(just for the future that =
so I can read a doc properly... :) )</div><div><br></div><div>Thanks a lot<=
/div><div>John</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, 8 Oct 2022 at 21:35, Khem Raj &lt;<a href=3D"mailto=
:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">On Sat, Oct 8, 2022 at 12:25 PM Jan =
Kubalek &lt;<a href=3D"mailto:janmkubalek@gmail.com" target=3D"_blank">janm=
kubalek@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; We have a C++ projects configured by CMake.<br>
&gt;<br>
&gt; Our CMake files download some dependencies from our git by standard &q=
uot;git clone&quot; command during configure phase.<br>
&gt;<br>
&gt; If I add our project as a recipe to Yocto the git command always fails=
 with exit code 128 (resource unavailable - no internet connection, protoco=
l not supported etc.).<br>
&gt;<br>
&gt; What&#39;s wrong? How Can I solve this problem? In a standard env the =
configure proceeds without problems.<br>
&gt;<br>
&gt; We use<br>
&gt; - Yocto &gt;=3D 4,<br>
&gt; - Bitbake &gt;=3D 2,<br>
&gt; - Ubuntu 20.04 as a host system<br>
&gt;<br>
&gt; Src URI spec:<br>
&gt;<br>
&gt; SRCREV =3D &quot;&lt;commit_id&gt;&quot;<br>
&gt; SRC_URI =3D gitsm://&lt;path_to_git&gt;;protocol=3Dssh;nobranch=3D1<br=
>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks a lot for your advice :)<br>
<br>
yes cmake has the downloader module which perhaps is good from<br>
development point of view, however, with yocto where one goal is about<br>
reproducibility its important to have<br>
sourcecode immutable and ensure that all of it is available before<br>
system goes ahead with building it. Therefore recently bitbake has<br>
started disabling network access after fetching<br>
task is finished, just so that it does not get modified under it<br>
without notice. One approach is to use git submodules in your project<br>
instead of doing it with cmake then use gitsm fetcher<br>
in yocto and you have best of both worlds.<br>
<br>
&gt; John<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#58293): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/58293" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/58293</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94205284=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/94205284/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--00000000000029a10705ea8b14d2--

