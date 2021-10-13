Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1BB5C433F5
	for <webhook@archiver.kernel.org>; Wed, 13 Oct 2021 03:01:36 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.3026.1634094095438939594
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 20:01:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: fede.evol@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id h4so1797338uaw.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 20:01:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MwKb/T3mM/Dl2ivLzMUBON7kFL40ry7+oAHxIda+m7U=;
        b=JXErgUcvEqQLrEWqF1NeuFnEPeZ9gD1zZFKHgJOgKRB9GG2n+HhDiv/wxMDMKt0D/T
         fmsxKUBwBnWG4qEFOOyPlCv2vzGXMJM+HTTfcwnBMCETELpHRTCORkyyYQXxPfcBlEa6
         vdddhpEKRyN3ror4p5kYxCeEL9L/AynB2AEqyof/12AI/bd2DkskM1VtfgEyTthfJgtV
         rsE3aWxV+UnPkE/nCQkJ6qVNosdpiyLOqPkXO5QggdO/L+uPBb79bk3HFuzHtub7aEJv
         Z+FDWhV9sMCOVtEILwflLjeL5Gdvwn8Yy3weeRnzSwJlOZAEit8tkgoXco/rwCGKbzoK
         W8zA==
X-Gm-Message-State: AOAM530OD+hBFW4Z+nySd5tvYe0Q7KQmN4iaEuonU25gFPA2F6McwsD8
	kSwQDF0NQjSJgQmpPFt+Y/zgyzNwyoWYN4WxVla253/YRi8=
X-Google-Smtp-Source: 
 ABdhPJxtO2qaoQnPfZs2QdrpMX8Zd9ArO9Nvmysgps1pyWUZEA9/TjITCpR+3tQYJoltz1TongQ5Stn8j3vtpDi1gGc=
X-Received: by 2002:a67:e159:: with SMTP id o25mr36038318vsl.44.1634094094478;
 Tue, 12 Oct 2021 20:01:34 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAM6O0ZhZKspmeE02cgh1coOvjMUmhdUTMR8en3UbpJm3SL5fhA@mail.gmail.com>
 <deee2a0d-5de0-d18b-3b95-2e3132c8915a@gmail.com>
In-Reply-To: <deee2a0d-5de0-d18b-3b95-2e3132c8915a@gmail.com>
From: Federico Pellegrin <fede@evolware.org>
Date: Wed, 13 Oct 2021 05:01:22 +0200
Message-ID: 
 <CAM6O0ZiLWqu9cY1em9aqJ41JWccNup80XC_GQ0VXT3TTiXZXHA@mail.gmail.com>
Subject: Re: [yocto] util-linux and --enable-raw with recent kernels
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000007f21d05ce332e6b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Oct 2021 03:01:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55045

--00000000000007f21d05ce332e6b
Content-Type: text/plain; charset="UTF-8"

Thanks Khem!
Indeed I checked on master but got cheated by the web git interface and I
was looking at an older commit :-/
Glad it is the right way to go and already solved on master!

Cheers,
Federico

Il giorno mar 12 ott 2021 alle ore 18:55 Khem Raj <raj.khem@gmail.com> ha
scritto:

>
>
> On 10/12/21 9:27 AM, Federico Pellegrin wrote:
> >
> > Hello,
> > Running on a quite recent kernel (5.14.10 from Fedora 34) I've came
> > across a problem when building util-linux (2.35.2) native, namely in the
> > configure phase:
> >
> > configure: error: raw selected, but required raw.h header file not
> available
> >
>
> you might want to use latest master, fix that you might find useful is
>
>
> https://git.openembedded.org/openembedded-core/commit/?id=7f577c10913104860121f682b9b3754870c4db23
>
> > After a bit or research I believe it is due to:
> >
> https://www.mail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html
> > <
> https://www.mail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html
> >
> >
> > Which is related to the change in the recent kernels here:
> >
> https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a
> > <
> https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a
> >
> > where the raw.h file was indeed removed.
> >
> > As per first link it may not be obvious to fix, and don't see an
> > upstream fix for it, but from the Yocto perspective my current
> > workaround is basically just to remove "--enable-raw" from the
> > EXTRA_OECONF to disable the raw feature.
> >
> > While the whole image seemed to build fine with this, I'm not very sure
> > if that configuration option had a precise use (which maybe it's being
> > skipping in my specific build) or not, so I wanted to ask the experts if
> > there is any opinion on this and/or should I do a merge request that
> > removes it to handle this problem, at least until there is a better
> > solution upstream in util-linux?
> >
> > Many thanks,
> > Federico
> >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#55041):
> https://lists.yoctoproject.org/g/yocto/message/55041
> > Mute This Topic: https://lists.yoctoproject.org/mt/86266370/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--00000000000007f21d05ce332e6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Thanks Khem!</div><div>Indeed I checke=
d on master but got cheated by the web git interface and I was looking at a=
n older commit :-/ <br></div><div>Glad it is the right way to go and alread=
y solved on master!</div><div><br></div><div>Cheers,</div><div>Federico<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">Il giorno mar 12 ott 2021 alle ore 18:55 Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; ha scritto:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 10/12/21 9:27 AM, Federico Pellegrin wrote:<br>
&gt; <br>
&gt; Hello,<br>
&gt; Running on a quite recent kernel (5.14.10 from Fedora 34) I&#39;ve cam=
e <br>
&gt; across a problem when building util-linux (2.35.2) native, namely in t=
he <br>
&gt; configure phase:<br>
&gt; <br>
&gt; configure: error: raw selected, but required raw.h header file not ava=
ilable<br>
&gt; <br>
<br>
you might want to use latest master, fix that you might find useful is<br>
<br>
<a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D7f57=
7c10913104860121f682b9b3754870c4db23" rel=3D"noreferrer" target=3D"_blank">=
https://git.openembedded.org/openembedded-core/commit/?id=3D7f577c109131048=
60121f682b9b3754870c4db23</a><br>
<br>
&gt; After a bit or research I believe it is due to:<br>
&gt; <a href=3D"https://www.mail-archive.com/debian-bugs-dist@lists.debian.=
org/msg1820154.html" rel=3D"noreferrer" target=3D"_blank">https://www.mail-=
archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html</a> <br>
&gt; &lt;<a href=3D"https://www.mail-archive.com/debian-bugs-dist@lists.deb=
ian.org/msg1820154.html" rel=3D"noreferrer" target=3D"_blank">https://www.m=
ail-archive.com/debian-bugs-dist@lists.debian.org/msg1820154.html</a>&gt;<b=
r>
&gt; <br>
&gt; Which is related to the change in the recent kernels here:<br>
&gt; <a href=3D"https://github.com/torvalds/linux/commit/603e4922f1c81fc2ed=
3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1995c=
0698ba0936754304a" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d697d=
ff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a</a> <br>
&gt; &lt;<a href=3D"https://github.com/torvalds/linux/commit/603e4922f1c81f=
c2ed3a87b4f91a8d3aafc7e093#diff-10d697dff14540ee1eb6539dcc53b2b88844b6187c1=
995c0698ba0936754304a" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/torvalds/linux/commit/603e4922f1c81fc2ed3a87b4f91a8d3aafc7e093#diff-10d=
697dff14540ee1eb6539dcc53b2b88844b6187c1995c0698ba0936754304a</a>&gt;<br>
&gt; where the raw.h file was indeed removed.<br>
&gt; <br>
&gt; As per first link it may not be obvious to fix, and don&#39;t see an <=
br>
&gt; upstream fix for it, but from the Yocto perspective my current <br>
&gt; workaround is basically just to remove &quot;--enable-raw&quot; from t=
he <br>
&gt; EXTRA_OECONF to disable the raw feature.<br>
&gt; <br>
&gt; While the whole image seemed to build fine with this, I&#39;m not very=
 sure <br>
&gt; if that configuration option had a precise use (which maybe it&#39;s b=
eing <br>
&gt; skipping in my specific build) or not, so I wanted to ask the experts =
if <br>
&gt; there is any opinion on this and/or should I do a merge request that <=
br>
&gt; removes it to handle this problem, at least until there is a better <b=
r>
&gt; solution upstream in util-linux?<br>
&gt; <br>
&gt; Many thanks,<br>
&gt; Federico<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#55041): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55041" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/55041</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86266370=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/86266370/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
</blockquote></div>

--00000000000007f21d05ce332e6b--

