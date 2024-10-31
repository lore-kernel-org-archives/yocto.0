Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3F4E68959
	for <webhook@archiver.kernel.org>; Thu, 31 Oct 2024 07:34:05 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.7295.1730360040246254208
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Oct 2024 00:34:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=AFmqb95z;
 spf=pass (domain: smile.fr, ip: 209.85.221.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d50fad249so467602f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 00:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1730360038; x=1730964838; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e3t4CDzY/MPPxnLiwP3NW289fXjiTsr6D4SoAwPSs9c=;
        b=AFmqb95zAbssXFKIoMbJOtRi0l6KbzpFipn0PzSTFNN4OGqoZc+SqWazFGjVy1iJga
         wlcoDpHwKEma10/mVPQiYeDpwFZCY1Md3S0crXBsZYJmb5a/c5aKZzsqMduiymc2EP6m
         vydDRcMgG92Pdh/JILFQ6SSRbCy5IbfNj3vTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730360038; x=1730964838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e3t4CDzY/MPPxnLiwP3NW289fXjiTsr6D4SoAwPSs9c=;
        b=KunVM5s2b2KHQAj1mxRgUwN5ZEwDohpPcO4idrcuLLMbNHB5/Yi+wvaBisTLyZgHNy
         1i40f60+fubSr3rvCfvr22zAeUupCkUbgYs3eprGJZtN44pZWX+WxanKCwh6ku/NGLhy
         sIT07HKH+cRtHmCW1OilHxcfE9tqaHLhbk/hahiyPWPF+Z7F5MilM7r9t4n+pYqlOF+i
         /iwSEAyOwmWUzbkjRMJk1r/ANbPvfBgkqZLR9qCsk1vs03U1PIt0Kjr75I69PD9+La32
         EW1Kx4o0RofMZ2wY+GThKlHI4gQ2XYqeVauoUcQys8x2RBrbwmrgLYyy1rQSfLdib/e3
         IsLw==
X-Gm-Message-State: AOJu0YygK9nZ9rbUrd2Mtx61nWeCoauCPde1hoxLe/sKA5DzOrd2MFQh
	s1A86MPefT0EE6s9WPdqOyRX3isU2Vnrqr9i/diIve/6pDdEfrcF+tMLEiQXwlmCxPf5sV6ErYA
	dYPhNssdmpRPwT9aVRLa2NeM3gZuKpie/t6U4SIunNaqEY/TR
X-Google-Smtp-Source: AGHT+IHPcinjUkAHGgPcQDJnMCz2pWsGbm42sfCp5RA2RtfL0IZ7iR1VeMRXoZqBUPNXjGqy3QxYs0jabXUrYcwi39U=
X-Received: by 2002:a5d:530e:0:b0:37d:4fab:c194 with SMTP id
 ffacd0b85a97d-3806115a933mr12283346f8f.25.1730360037324; Thu, 31 Oct 2024
 00:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <7affdd4a-b9f2-4177-b336-100b0e475337@cherry.de>
 <21197.1730300069131332219@lists.yoctoproject.org> <b91237f1-539c-42cd-8223-5ac4ef471f9b@cherry.de>
 <CAJw49vpo++FVsfwMHe7c=A8-L7b_6NK7MuKmbj0WDK_b=J8Aaw@mail.gmail.com>
In-Reply-To: <CAJw49vpo++FVsfwMHe7c=A8-L7b_6NK7MuKmbj0WDK_b=J8Aaw@mail.gmail.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 31 Oct 2024 08:33:44 +0100
Message-ID: <CAMSfU+5kdUJxkvYZTPoQJ1qkToNBGOj_ZgEcpxFtJbSN3coW7Q@mail.gmail.com>
Subject: Re: [yocto] Out-of-tree Kernel Modules
To: Yocto Mailing list <yocto@lists.yoctoproject.org>, yishai1999@gmail.com
Cc: Quentin Schulz <quentin.schulz@cherry.de>
Content-Type: multipart/alternative; boundary="0000000000005be1bc0625c0d7f6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Oct 2024 07:34:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64191

--0000000000005be1bc0625c0d7f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 30 oct. 2024 =C3=A0 20:01, Yishai Jaffe via lists.yoctoproject.org
<yishai1999=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi Quentin,
>
> On Wed, Oct 30, 2024 at 5:01=E2=80=AFPM Quentin Schulz <quentin.schulz@ch=
erry.de>
> wrote:
>
>> Hi Yishai,
>>
>> On 10/30/24 3:54 PM, Yishai Jaffe via Lists.Yoctoproject.Org wrote:
>> > You don't often get email from yishai1999=3D
>> gmail.com@lists.yoctoproject.org. Learn why this is important<
>> https://aka.ms/LearnAboutSenderIdentification>
>> > Thanks Quentin,
>> > Changing the include to uapi/linux/sched/types.h solved the issue.
>> > But just so I'm clear on this - Can you explain when I should use uapi
>> headers vs when to use the regular linux/xxx headers?
>> >
>>
>> You should include the header where the structure is defined.
>>
>> The "issue" in Yocto is that the headers aren't coming from your kernel
>> sources but from a generic linux kernel header recipe, and this is made
>> on purpose. The generic linux kernel header recipe is at 6.6 in
>> Scarthgap. Styhead has 6.10. The structure is defined in a different
>> header in 6.6 and in 6.7+ (including 6.10), so your out-of-tree module
>> needs the path from 6.6 in order to compile in Scarthgap, but will need
>> another path from 6.7+ in order to compile in Styhead.
>>
>>
> I think my question wasn't clear enough.
> I meant to ask about the general usage of uapi header files.
> When are definitions put in the uapi headers and when are they in the
> regular linux headers?
>

The best explanation I could find when I hit this issue a few weeks ago is
a stack overflow answer:
https://stackoverflow.com/a/18858544 (+links inside)

Does that help?



>
>> You can handle that via #if in your code, if you need the exact same
>> source code to build on different Yocto/kernel versions. That is the
>> cross to bear when one develops out of tree kernel modules sadly.
>>
>> Cheers,
>> Quentin
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64189):
> https://lists.yoctoproject.org/g/yocto/message/64189
> Mute This Topic: https://lists.yoctoproject.org/mt/109295266/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000005be1bc0625c0d7f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Le mer. 30 oct. 2024 =C3=A0 20:01, Yishai Jaffe via <a=
 href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;yish=
ai1999=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@list=
s.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Quent=
in,</div><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Oct 30, 2024 at 5:01=E2=80=AFPM Quentin S=
chulz &lt;<a href=3D"mailto:quentin.schulz@cherry.de" target=3D"_blank" rel=
=3D"noreferrer">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">Hi Yishai,<br>
<br>
On 10/30/24 3:54 PM, Yishai Jaffe via <a href=3D"http://Lists.Yoctoproject.=
Org" rel=3D"noreferrer noreferrer" target=3D"_blank">Lists.Yoctoproject.Org=
</a> wrote:<br>
&gt; You don&#39;t often get email from yishai1999=3D<a href=3D"mailto:gmai=
l.com@lists.yoctoproject.org" target=3D"_blank" rel=3D"noreferrer">gmail.co=
m@lists.yoctoproject.org</a>. Learn why this is important&lt;<a href=3D"htt=
ps://aka.ms/LearnAboutSenderIdentification" rel=3D"noreferrer noreferrer" t=
arget=3D"_blank">https://aka.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; Thanks Quentin,<br>
&gt; Changing the include to uapi/linux/sched/types.h solved the issue.<br>
&gt; But just so I&#39;m clear on this - Can you explain when I should use =
uapi headers vs when to use the regular linux/xxx headers?<br>
&gt; <br>
<br>
You should include the header where the structure is defined.<br>
<br>
The &quot;issue&quot; in Yocto is that the headers aren&#39;t coming from y=
our kernel <br>
sources but from a generic linux kernel header recipe, and this is made <br=
>
on purpose. The generic linux kernel header recipe is at 6.6 in <br>
Scarthgap. Styhead has 6.10. The structure is defined in a different <br>
header in 6.6 and in 6.7+ (including 6.10), so your out-of-tree module <br>
needs the path from 6.6 in order to compile in Scarthgap, but will need <br=
>
another path from 6.7+ in order to compile in Styhead.<br>
<br></blockquote><div><br>I think my question wasn&#39;t clear enough.</div=
><div>I meant to ask about the general usage of uapi header files.</div><di=
v>When are definitions put in the uapi headers and when are they in the reg=
ular linux headers?</div></div></div></blockquote></div></div><div dir=3D"a=
uto"><br></div><div dir=3D"auto"></div><div dir=3D"auto">The best explanati=
on I could find when I hit this issue a few weeks ago is a stack overflow a=
nswer:</div><div dir=3D"auto"><a href=3D"https://stackoverflow.com/a/188585=
44">https://stackoverflow.com/a/18858544</a> (+links inside)</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Does that help?</div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
You can handle that via #if in your code, if you need the exact same <br>
source code to build on different Yocto/kernel versions. That is the <br>
cross to bear when one develops out of tree kernel modules sadly.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64189): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64189" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64189</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109295266/431=
6185" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/109295266/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_bla=
nk" rel=3D"noreferrer">yoann.congal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--0000000000005be1bc0625c0d7f6--

