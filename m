Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50E3EC433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 20:42:11 +0000 (UTC)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com
 [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web10.1161.1635885730028383403
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 13:42:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=g9wahIbq;
 spf=pass (domain: gmail.com, ip: 209.85.222.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id ay21so426702uab.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 13:42:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0pBRVMQUtYQRIfHql9WcTBTdAiyHm5NPC2BMyDXGJ1M=;
        b=g9wahIbqpWBRdPgf0+KJnYJw3SSsfWGVQQGEd0HtqP6vTqrACaCc+gDIBSV4ly+yNz
         tOB4ikk4scOP0yXYE5U5MaiMa2xHwkU2Goh4xyjcNSt/jBjq9lXMvxvwnKRwHJ+Koc1x
         PMRvS6nCi2ArIZXMgCTRPHUPCHJUCSuBjaR/UE9b7MmTULjUpMBitYW5arHhnRGdeh5i
         f42v7ZIBJerJkIWT9/oJ7yoeBFpljUtCbR/6pmEpjOpqbw2HZPjejnMXoykeRpEaOcip
         aAeEU7m0O5VluQQIdAeHDvfeUVMLc08NkmzTe5V1NQuTPJGrgHOMJ2VFY+lPFdeNmEyy
         QRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0pBRVMQUtYQRIfHql9WcTBTdAiyHm5NPC2BMyDXGJ1M=;
        b=2Jl4O2EKeXy8/jFRS9ZFo4yS/dHvPxrDHmuMHg9BThnXTfQyOYWjHEl91HILwAzaD3
         3EgLqC8cfwijv+imlyLPeOyBUB/Jaab46TpmsTyw93755n8eUcvw45DYLxbdLGNqQdP7
         7nDBpgP74PBL9gBNUg79jEhdQF1+GXyIo6Vy4UdQwUTbc1Myq45zBF6Ap4+OG9R4nIjT
         b97Nl5AxCVB/NMKAA5qHzTbOYtenfmkYwmSTp8M3qr8qr3NAx4kwL+ZD8ypOTQqkX0U6
         h6LBJvCWldgAJ85KlIGloUoPGzmLiLWPA6F+KR3hPXlQK6J2OQdZ+ylUV4Oy//KeA1cR
         iXsA==
X-Gm-Message-State: AOAM532prucu0jxUyTCID64MUynI9AU7UwGUcaHgTeTx788oUe+l6lsE
	BlXdoAiPdFyffVg/NRr/uSaORb+uCZBtziSgY+g=
X-Google-Smtp-Source: 
 ABdhPJxAZzAQxY9nTg7kdk6v2i9+JooWfiEpKQs+2zMjExeN5AaSpXVqvVc7Bzsmct71IRmsUAnF7kG71vqc18Mv7kA=
X-Received: by 2002:ab0:30e1:: with SMTP id d1mr40731481uam.22.1635885729135;
 Tue, 02 Nov 2021 13:42:09 -0700 (PDT)
MIME-Version: 1.0
References: <63c81a59-469d-41b4-2053-269465491bf5@systech.com>
 <CANNYZj83J3Z5FKyLK4jytGQULHNqTaPFnHN1OAm9OZgRqj3zyg@mail.gmail.com>
 <75f51cd6-5afc-2856-c180-4bc032b8ec49@systech.com>
In-Reply-To: <75f51cd6-5afc-2856-c180-4bc032b8ec49@systech.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 2 Nov 2021 21:41:57 +0100
Message-ID: 
 <CANNYZj9M48zP04TApty4NsL3bXndPmSY7yAPqKkKuxByZRf4zg@mail.gmail.com>
Subject: Re: [yocto] Yocto Unauthenticated git Protocol No Longer Supported
To: Jay Foster <jay.foster@systech.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c73dab05cfd45308"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 20:42:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55222

--000000000000c73dab05cfd45308
Content-Type: text/plain; charset="UTF-8"

This, I think:
http://git.yoctoproject.org/cgit.cgi/poky/commit/?h=master-next&id=164bb5e9287497b492f21985dd1a8d85e1a4ed23

Alex

On Tue, 2 Nov 2021 at 21:18, Jay Foster <jay.foster@systech.com> wrote:

> Thanks.  Can you provide links to these patches?  I have no choice in
> using rocko.
> Note that the failure was in the do_packagedata task, where it is issuing
> a 'git -c core.fsyncobjectfiles=0 ls-remote <git-url>' command.  I am using
> a source premirror so it has not (yet) shown up in do_fetch.
>
> Jay
>
> On 11/2/2021 1:03 PM, Alexander Kanavin wrote:
>
> There are patches in master-next for this. You can backport them, but you
> really shouldn't be using rocko.
>
> Alex
>
> On Tue, 2 Nov 2021 at 20:50, Jay Foster <jay.foster@systech.com> wrote:
>
>> My yocto builds started failing today (November 2, 2021) due to this
>> (
>> https://github.blog/2021-09-01-improving-git-protocol-security-github/#no-more-unauthenticated-git)
>>
>> issue.  Is there a fix for the yocto fetcher?  I using rocko.
>>
>> Jay
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55219):
>> https://lists.yoctoproject.org/g/yocto/message/55219
>> Mute This Topic: https://lists.yoctoproject.org/mt/86775338/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>
>

--000000000000c73dab05cfd45308
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This, I think:</div><div><a href=3D"http://git.yoctop=
roject.org/cgit.cgi/poky/commit/?h=3Dmaster-next&amp;id=3D164bb5e9287497b49=
2f21985dd1a8d85e1a4ed23">http://git.yoctoproject.org/cgit.cgi/poky/commit/?=
h=3Dmaster-next&amp;id=3D164bb5e9287497b492f21985dd1a8d85e1a4ed23</a></div>=
<div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Nov 2021 at 21:18, Jay Foster &=
lt;<a href=3D"mailto:jay.foster@systech.com">jay.foster@systech.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

 =20
  <div>
    Thanks.=C2=A0 Can you provide links to these patches?=C2=A0 I have no c=
hoice
    in using rocko.<br>
    Note that the failure was in the do_packagedata task, where it is
    issuing a &#39;git -c core.fsyncobjectfiles=3D0 ls-remote &lt;git-url&g=
t;&#39;
    command.=C2=A0 I am using a source premirror so it has not (yet) shown =
up
    in do_fetch.<br>
    <br>
    Jay<br>
    <br>
    <div>On 11/2/2021 1:03 PM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>There are patches in master-next for this. You can backport
          them, but you really shouldn&#39;t be using rocko.</div>
        <div><br>
        </div>
        <div>Alex<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Nov 2021 at 20:50,
          Jay Foster &lt;<a href=3D"mailto:jay.foster@systech.com" target=
=3D"_blank">jay.foster@systech.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">My
          yocto builds started failing today (November 2, 2021) due to
          this <br>
          (<a href=3D"https://github.blog/2021-09-01-improving-git-protocol=
-security-github/#no-more-unauthenticated-git" rel=3D"noreferrer" target=3D=
"_blank">https://github.blog/2021-09-01-improving-git-protocol-security-git=
hub/#no-more-unauthenticated-git</a>)
          <br>
          issue.=C2=A0 Is there a fix for the yocto fetcher?=C2=A0 I using =
rocko.<br>
          <br>
          Jay<br>
          <br>
          -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
          Links: You receive all messages sent to this group.<br>
          View/Reply Online (#55219): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/55219" rel=3D"noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/message/55219</a><br>
          Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/867=
75338/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/86775338/1686489</a><br>
          Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
          Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a>
          [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex=
.kanavin@gmail.com</a>]<br>
          -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>
</blockquote></div>

--000000000000c73dab05cfd45308--

