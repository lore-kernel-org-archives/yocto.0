Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BC96C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:44:42 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.67068.1672760676348010881
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:44:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MCciBDzw;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id co23so29900705wrb.4
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 07:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vJAuwxX+lKt5nmyrKqYUCDRDyaPoNfZiYyz4quCOE0I=;
        b=MCciBDzw4AYUWlsG1VkaG3xxd+cfbZJ5TFis0rjSayY68LBterrlm1zWRC6vyv7KNx
         8yz/pfb8Y/fKUvaURLPFxTEfqjBvs6gQMO9oDF5x0i+xfblhqkvQGeTFJC9gyvJguomh
         XRx7eXkSOWrY0gCpPuFoSx/jN1sUf5bwwysUfwWHS2gUCBJ3B9xH1uuT0t43S9piG73C
         nNL+j1n7kFnL6SWextOSgKtb4aIDj1Z8nrogsFbkBGF/7DPJnjxYEhNa+v3UAG6IcOLb
         a4ClAuibwL0iC/3RAH01OZyHdYmqb2cpntpB637Cc07A2m9HoPnLNo1DkJKCMlBScWQz
         SA+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vJAuwxX+lKt5nmyrKqYUCDRDyaPoNfZiYyz4quCOE0I=;
        b=iYf89MIl8aFDAUSwwOU7Gj3QxxmLU/QdsbzA++FDEQE1fmy2LrwwSc4D0eGrGeGPh6
         P4tjHHjcAKdSwZXLCbesRSuGRfpbNIH+w+BrKjpBsL6KmfbZwm5387FeWxPRQsQbyGxI
         HWiFhyLt+Rxk7bXMfAyGOxOA5YUFUaEqAp88o0ya8rCHGU3GiIQqYpRfdYKQM5JeSEu+
         0yekzoHJrPrIDIgWel53JHeeTQXgC+c1yLtuAhMoo7ZltM15MWts3KOEjXoB7w7LeqGz
         hUH7679enj/QA/JkLfjJVNoktNaLHy6F32ppTiwER9XtndUHHGC8OQG0J9UAHzGgiJnf
         xvTQ==
X-Gm-Message-State: AFqh2kqjxnh2OodbSwZ9j80ysOybXJiIUHVvpJ/73NFjp1Vi8TZponOd
	ib+MmdUT8/6FQdyuZNu4wWqTMcuuHWxxsndZ3ys=
X-Google-Smtp-Source: AMrXdXs8W2+szudKf0nCfDoCxihROFf+Q6Eb0g3PCnKcAXSUM0b8FLh9FgU0CEBQR121wJ78zVKpzsvPeY2i8WuugBo=
X-Received: by 2002:adf:a39c:0:b0:276:a564:80c8 with SMTP id
 l28-20020adfa39c000000b00276a56480c8mr823379wrb.129.1672760674702; Tue, 03
 Jan 2023 07:44:34 -0800 (PST)
MIME-Version: 1.0
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org> <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com> <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com> <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com> <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
In-Reply-To: <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 3 Jan 2023 16:44:18 +0100
Message-ID: <CA+chaQcdLsjxSqcR6oQ5RjgoFRzBj5kso3AxxZtMHeQUGKZsWQ@mail.gmail.com>
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cf5b3a05f15df186"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:44:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58906

--000000000000cf5b3a05f15df186
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 3, 2023 at 3:29 PM Ferry Toth <fntoth@gmail.com> wrote:

> Op 03-01-2023 om 15:18 schreef Alexander Kanavin:
> > I have to note that even the most expensive 16 Gb RAM module is less
> > than 100 Euro, and can be obtained for half that much. Surely you
> > value your time more than that?
>
> Of course. And if I didn't I could reduce the number of `PARALLEL_MAKE`.
>
> But I have also seen bitbake attempting to build nodejs, nodejs-native
> and binutils in parallel.
>
> I think by default there are 4 tasks, with 16 threads, each could
> require 1GB RAM. Would you say, in such a case Yocto requires 64GB RAM?
>
> And with increasing #cores it gets worse.
>
> Not that it is too expensive to throw hardware at it, but it seems to be
> a fundamental problem that I would like to resolve. In my spare time of
> course.
>

Hi Ferry,

don't get discouraged from working on jobserver related issues by some
remarks. Yes your HW configuration is a bit extreme, but similar issues are
easily reproducible on beefier HW as well (seeing it often enough on 32c
64t AMD 3970X with 128G ram).

bitbake pressure regulation helps a bit, but it's often triggered too late
and also a bit too coarse grained, when single chromium do_compile task can
take over an hour.

I agree that make job server (or there is similar solution proposed for
ninja from Andrei
https://gitlab.eclipse.org/eclipse/oniro-core/oniro/-/merge_requests/196/commits
) should be more efficient solution (as it will hold off additional
"shorter" jobs only during the "critical" time when some other jobs take
all resources - while bitbake pressure cannot know that triggering
nodejs+nodejs-native+chromium do_compile task might end badly, because the
pressure was still low when these 3 were queued for execution).

Also check this thread about pressure regulation in bitbake-devel:
https://lists.openembedded.org/g/bitbake-devel/message/14178

Cheers,

--000000000000cf5b3a05f15df186
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jan 3, 2023 at 3:29 PM Ferry Toth=
 &lt;<a href=3D"mailto:fntoth@gmail.com" target=3D"_blank">fntoth@gmail.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Op 03-01-2023 om 15:18 schreef Alexander Kanavin=
:<br>
&gt; I have to note that even the most expensive 16 Gb RAM module is less<b=
r>
&gt; than 100 Euro, and can be obtained for half that much. Surely you<br>
&gt; value your time more than that?<br>
<br>
Of course. And if I didn&#39;t I could reduce the number of `PARALLEL_MAKE`=
.<br>
<br>
But I have also seen bitbake attempting to build nodejs, nodejs-native <br>
and binutils in parallel.<br>
<br>
I think by default there are 4 tasks, with 16 threads, each could <br>
require 1GB RAM. Would you say, in such a case Yocto requires 64GB RAM?<br>
<br>
And with increasing #cores it gets worse.<br>
<br>
Not that it is too expensive to throw hardware at it, but it seems to be <b=
r>
a fundamental problem that I would like to resolve. In my spare time of <br=
>
course.<br></blockquote><div><br></div><div>Hi Ferry,</div><div><br></div><=
div>don&#39;t get discouraged from working on jobserver related issues by s=
ome remarks. Yes your HW configuration is a bit extreme, but similar issues=
 are easily reproducible on beefier HW as well (seeing it often enough on 3=
2c 64t AMD 3970X with 128G ram).</div><div><br></div><div>bitbake pressure =
regulation helps a bit, but it&#39;s often triggered too late and also a bi=
t too coarse grained, when single chromium do_compile task can take over an=
 hour.</div><div><br></div><div>I agree that make job server (or there is s=
imilar solution proposed for ninja from Andrei=C2=A0<a href=3D"https://gitl=
ab.eclipse.org/eclipse/oniro-core/oniro/-/merge_requests/196/commits" targe=
t=3D"_blank">https://gitlab.eclipse.org/eclipse/oniro-core/oniro/-/merge_re=
quests/196/commits</a> ) should be more efficient solution (as it will hold=
 off additional &quot;shorter&quot; jobs only during the &quot;critical&quo=
t; time when some other jobs take all resources - while bitbake pressure ca=
nnot know that triggering nodejs+nodejs-native+chromium do_compile task mig=
ht end badly, because the pressure was still low when these 3 were queued f=
or execution).</div><div><br></div><div>Also check this thread about pressu=
re regulation in bitbake-devel:</div><div><a href=3D"https://lists.openembe=
dded.org/g/bitbake-devel/message/14178">https://lists.openembedded.org/g/bi=
tbake-devel/message/14178</a><br></div><div><br></div><div>Cheers,</div></d=
iv></div>

--000000000000cf5b3a05f15df186--

