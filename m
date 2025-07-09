Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E081C83F09
	for <webhook@archiver.kernel.org>; Wed,  9 Jul 2025 06:26:32 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.8857.1752042382434334535
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jul 2025 23:26:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dj8JZST6;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ae3ec622d2fso900854666b.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Jul 2025 23:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752042381; x=1752647181; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=B+r8m+5uVlP2iQaCfeoOCtbg3trKqhlcaoOzZKKM4DQ=;
        b=dj8JZST6HQTs+O/euD1RZTVWPHP7eNrvorb+S1pGnYTUJ/l8SCTgu0WOH7CtuYXAxA
         Rcy9bWuPD8gQZHKM0iACzDBgcNQpyymuffqEScfvM7cqIjDF7hBpAiG3vntB0kt5XaoH
         zBbxTDBSIvbaWFoM3Hh4VWoCvfEeycBMDmQ4484neJd5mbFVtG7ECT/qWtfwzG2Mi2vr
         YrR4Z/kgc+HABkVhpF+wUgvN4h3EWskLuHs0NmIW2Y4sY43AZ7fYQpsL9F12JeYs8AFB
         e1Ii1piN0Ou1o7v/2HDEJIN55V1tr923G2xjCwNEmmGN/x8vsVdBXbWYVhYvIushi4Pt
         oR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752042381; x=1752647181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B+r8m+5uVlP2iQaCfeoOCtbg3trKqhlcaoOzZKKM4DQ=;
        b=u3yPm4f8e41NWBpyWeCkObPYyY2bWo25rxXTXgWnWjJI+lwcdt5CbR5znDrMfF6B4A
         kQtzt4nQAsijbfJx4WFxdznSF4CLQ9xs8cBPWzKHEfVafGykP2MqXyfXJF/3xSUHhi+U
         e1IlJOrd/jy1zRpa8wJDg6uHSyVT28J9CwKpDMjHFEYuaCr1jB60I5EofLS4jKletg5c
         ubNxofi7OFgKy+Pg+nAnoi21eowpgYXyd0LhHOsG986TE2aq9tFnhnzqTgIothUnJurw
         ssN8/EYIu50oZ8POV4OcLnx9VB2tdHYY+/WKqVumvpgSY/fM1RQeCbmupgZVxvU2HGId
         PNSg==
X-Gm-Message-State: AOJu0YwdZGUs8GDSlekEYZWVK9mtVh3mAz7V1Ou4ui9I+32mXzPv8iQC
	ZMfxJLAegiY0REiiVvAyGcBUQ6YGWZCYfvxWTmW1xYcn/4S4ubBvqPmBRjK8e9bx94z18Rcdb4P
	iiHXK2XnyaVNQrNJhK1qpQiew/ZqLciw=
X-Gm-Gg: ASbGncu69jFtdqEu0SHOY03cEhqvnYDM4VjDlhT6PxVMd2XqfdJUsFC2ptr2uhSmBNE
	AgcfQ7pVk4hom3EVYQ+AStTJ22GPKzC+86E8x4NCVAkyIE+2JgRBvfl94074CNSdJloyJWV6+Fn
	UZ+iFdfT+yTDyfi3DNvYPtFZte4w5lSFdfwxKFgkZrFTEQe5yIWCX4l7cJD4XHZHUQChde5ZK1P
	L2RQw==
X-Google-Smtp-Source: AGHT+IHgRarVtacukdS7udzmu+wAnlhA01qzFBBQ/eaOxXuTqKIO9sst6jW0qMPRET20Wxp0TkLwz+RT6VeXpErBbWU=
X-Received: by 2002:a17:907:7292:b0:ae3:595f:91a0 with SMTP id
 a640c23a62f3a-ae6cf5cb41dmr137919066b.16.1752042380421; Tue, 08 Jul 2025
 23:26:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
 <CAM6O0Zg1r1dDObuzs+SA2eWrP0h=RRUVZmozXDjtovtSNuogbg@mail.gmail.com>
 <CAPJWBngF=9FHWdL3AcLdUY4Mbz-kcJzx-VjmhrKKu4dN0ZGEaQ@mail.gmail.com> <CAP2OjcirYyi-7eQQYS8Wx9gcwaUv2snuooom78aw0m8GeKBBug@mail.gmail.com>
In-Reply-To: <CAP2OjcirYyi-7eQQYS8Wx9gcwaUv2snuooom78aw0m8GeKBBug@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 9 Jul 2025 11:55:54 +0530
X-Gm-Features: Ac12FXxb1rGhLLA9-JARKFQss0reOkQq0M1lk7YNodZhHtd699nvSE1LznPG6-0
Message-ID: <CAPJWBngo5uF3XOmS6z2+WBOjkXbYfi-QM+FMM0F9yroR0GGyAg@mail.gmail.com>
Subject: Re: [yocto] Building nodejs with only 16GB RAM
To: Ashish Mishra <ashishm@mvista.com>
Cc: yocto@lists.yoctoproject.org, Federico Pellegrin <fede@evolware.org>
Content-Type: multipart/alternative; boundary="000000000000b76e5806397927e7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 06:26:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65631

--000000000000b76e5806397927e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tried and it worked for yocto 3 sdk. Had around 22gb ram allocated in vm
ubuntu.

Thanks

On Fri, 20 Jun 2025 at 10:58=E2=80=AFAM, Ashish Mishra <ashishm@mvista.com>=
 wrote:

> Hi Mohammed ,
>
> I faced a similar issue while working with yocto scarthgap with 16GB RAM.
>
> I tried to increase the swap area of my laptop & the build goes fine
> (takes around 2 hour )
> but the build goes fine .
>
> Can you try to check by increasing the swap area.
>    3   =E2=94=82 sudo dd if=3D/dev/zero of=3D/extraswap bs=3D8M count=3D1=
024
>    4   =E2=94=82 sudo chmod 600 /extraswap
>    5   =E2=94=82 sudo mkswap /extraswap
>    6   =E2=94=82 sudo swapon /extraswap
>    7   =E2=94=82 free -m
>
> Thanks ,
> Ashish
>
>
>
>
> On Fri, Jun 20, 2025 at 10:13=E2=80=AFAM MOHAMMED HASSAN via
> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.or=
g>
> wrote:
>
>> Hi Federico,
>> In notice that do_compile is the only task running and then it would
>> fail. Checking log errors on stack overflow indicate RAM needs to be
>> increased.
>> Maybe I can build nodejs on my desktop and then move the sstate-cache,
>> will that work?
>>
>>
>> On Fri, 20 Jun 2025 at 10:11=E2=80=AFAM, Federico Pellegrin <fede@evolwa=
re.org>
>> wrote:
>>
>>>
>>> Hi,
>>> Increasing processor cores will usually make things *worse* as more
>>> processes may be spawned at the same time and therefore more RAM used.
>>>
>>> Instead you could try to reduce numer of parallel processes
>>> (see BB_NUMBER_THREADS and PARALLEL_MAKE for example) albeit of course =
this
>>> will make the compilation (even) slower.
>>>
>>> Another possibility: create a swap file/partition on the system. Also
>>> this will make things slower, but you will have "more RAM".
>>>
>>> Cheers,
>>> Federico
>>>
>>>
>>>
>>> Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via
>>> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.=
org>
>>> ha scritto:
>>>
>>>> Hi all,
>>>> I have to build nodejs which I noticed takes 32GB RAM. Unfortunately, =
I
>>>> only have 16GB and can't upgrade. So I want to know if I can increase =
the
>>>> processor cores and hopefully that might help. I am using the Lenovo
>>>> Thinkpad P15v laptop. Let me know if this can work or any one has trie=
d it
>>>> here.
>>>>
>>>> Thanks
>>>>
>>>>
>>>>
>>>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#65530):
>> https://lists.yoctoproject.org/g/yocto/message/65530
>> Mute This Topic: https://lists.yoctoproject.org/mt/113737892/4806067
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> ashishm@mvista.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000b76e5806397927e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Tried and it worked for yocto 3 sdk. Had around 22gb ram =
allocated in vm ubuntu.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Thanks=C2=A0</div><div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 20 Jun 2025 at 10:58=E2=80=
=AFAM, Ashish Mishra &lt;<a href=3D"mailto:ashishm@mvista.com">ashishm@mvis=
ta.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;paddi=
ng-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hi Mohamme=
d ,<div><br><div>I faced a similar issue while working with yocto scarthgap=
 with 16GB RAM.</div><div><br></div><div>I tried to increase the swap area =
of my laptop &amp; the build goes fine (takes around 2 hour )=C2=A0</div><d=
iv>but the build goes fine .</div><div><br></div><div>Can you try to check=
=C2=A0by increasing the swap area.</div><div>=C2=A0 =C2=A03 =C2=A0 =E2=94=
=82 sudo dd if=3D/dev/zero of=3D/extraswap bs=3D8M count=3D1024<br>=C2=A0 =
=C2=A04 =C2=A0 =E2=94=82 sudo chmod 600 /extraswap<br>=C2=A0 =C2=A05 =C2=A0=
 =E2=94=82 sudo mkswap /extraswap<br>=C2=A0 =C2=A06 =C2=A0 =E2=94=82 sudo s=
wapon /extraswap<br>=C2=A0 =C2=A07 =C2=A0 =E2=94=82 free -m<br></div><div><=
br></div><div>Thanks ,</div><div>Ashish=C2=A0</div><div><br></div><div><br>=
</div><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Jun 20, 2025 at 10:13=E2=80=AFAM MOHAMME=
D HASSAN via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">li=
sts.yoctoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@=
lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"auto">Hi=C2=A0Federico=
,</div><div dir=3D"auto">In notice that do_compile is the only task running=
 and then it would fail. Checking log errors on stack overflow indicate RAM=
 needs to be increased.</div><div dir=3D"auto">Maybe I can build nodejs on =
my desktop and then move the sstate-cache, will that=C2=A0work?</div><div d=
ir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, 20 Jun 2025 at 10:11=E2=80=AFAM, Federico Pell=
egrin &lt;<a href=3D"mailto:fede@evolware.org" target=3D"_blank">fede@evolw=
are.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padd=
ing-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div><br>=
</div><div>Hi,</div><div>Increasing processor cores will usually make thing=
s *worse* as more processes may be spawned at the same time and therefore m=
ore RAM used.</div><div><br></div><div>Instead you could try to reduce nume=
r of parallel processes (see=C2=A0BB_NUMBER_THREADS and=C2=A0PARALLEL_MAKE =
for example) albeit of course this will make the compilation (even) slower.=
</div><div><br></div><div>Another possibility: create a swap file/partition=
 on the system. Also this will make things slower, but you will have &quot;=
more RAM&quot;.</div><div><br></div><div>Cheers,</div><div>Federico</div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"></div><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven =
20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via <a href=3D"http://lists.yoct=
oproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;hassanchatta=
rki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank"=
>gmail.com@lists.yoctoproject.org</a>&gt; ha scritto:<br></div></div><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1e=
x;border-left-color:rgb(204,204,204)"></blockquote></div><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)"><div dir=3D"ltr">Hi all,<div>I have to build node=
js which I noticed takes 32GB RAM. Unfortunately, I only have 16GB and can&=
#39;t upgrade. So I want to know if I can increase=C2=A0the processor cores=
 and hopefully=C2=A0that might help. I am using the Lenovo Thinkpad P15v la=
ptop. Let me know if this can work or any one has tried it here.</div><div>=
<br></div><div>Thanks</div></div>
<br></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-lef=
t-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">
<br>
<br>
</blockquote></div>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65530): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65530" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65530</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113737892/480=
6067" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113737892/4806067</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ashishm@mvista.com" target=3D"_blank">ashishm@mv=
ista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div></div>

--000000000000b76e5806397927e7--

