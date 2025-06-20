Return-Path: <ashishm@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11E5C71155
	for <webhook@archiver.kernel.org>; Fri, 20 Jun 2025 05:28:14 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web11.1084.1750397289707199759
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 22:28:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=i9AFfyqQ;
 spf=pass (domain: mvista.com, ip: 209.85.160.44, mailfrom: ashishm@mvista.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2ea6dd628a7so843134fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 22:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1750397289; x=1751002089; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7LsCYTli8280U9PnsZg28OTReJP/7UXnmeMbegf6cZ4=;
        b=i9AFfyqQJx/APyFVcLVnq0yaw79X6mNKiD5zuVzqW/CMimv6BJChITOFHenLv0nvt6
         Q8Zl8BcMAl8Jpd1SK2dp+OFkbmj99RJQqDh8QslEUUoldkU25Cg78RUHE1eBQm1K4aoW
         lnhJqLHydAklGjPdx+qoEz8tylYZjMe6XLxw4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750397289; x=1751002089;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7LsCYTli8280U9PnsZg28OTReJP/7UXnmeMbegf6cZ4=;
        b=Yjwl9MpWjEcc+kXHWIAwv/ZOL8YuncHfIezhfyDRFROkXH0SD/EeSTfTfa6cP1wN6O
         vifEe7ARSQwwCqWbjd7IMkHjnzka/jqwb4fhn7anMsY7peYKgQipsB1cS+NTnsDZBeVk
         z6hYtQLsUUboUrF9ZR+bIfSAlYjC04X88xjM9cQFLzefmS/ifEJ/eRWSxnFPb+7u44RS
         j3EYnRycqqKO8PZ8jNmEwR+LTteFz0xAuPC6AqRWJ4Wa75YtEPAbkgKWQf8Yo+nKcI/1
         33bn6Ha2lhfJOxzSPqtdZoFPK5YdOuMm8lFdUwAS7hnJ2dNzdpZG4RsnMgjQj8D2vNVe
         B3MA==
X-Gm-Message-State: AOJu0Yyk7I4kWd8ogJlMMl/O5RWXGgLWu3AkD12TXQFC7GvfL8zoA7GJ
	IgcKSF1wlXKcQNP7MyAdL3wknCMU12wap1Js2wjnWitDvZb/fuSnsfme1byD9Ow39N2UXtObrNo
	ZVjYF9jdpuT4zz/7K8SmQ4FAA7XXTgMa5dsfD9fxyRhs9XnU2NmE9eUA=
X-Gm-Gg: ASbGnctd0Xb3QfKz45/HjDda+IkqWfO4AX2cckGTlSsPq6TdmxTrnpducFEjuqbMwrf
	GY7KGfEjM7shHT58Jkw7KsDaT0fwk4/VGnXZfaBNz7LBGs+XFAkkTXcc5MOmH+VLU/p2oG5An4o
	Hs10pHTzfZPXG87Ym0ItTd/m6991C7RXYFBUBAW5vdkcpcliB6bmUYJKjpyCVsR+6KXnQU8SHQn
	w5I+w9J7XKVaAk=
X-Google-Smtp-Source: AGHT+IG/WCOntd8g0kddaMQtbcSK9TH1m0VKngdmma/kWQnCOeDD6LW+I5uOphJ9oEUhUnkV89yXujb3z33nuIA36ZM=
X-Received: by 2002:a05:6870:1f0b:b0:2cc:4516:afc6 with SMTP id
 586e51a60fabf-2eeee5e5574mr1079085fac.36.1750397288714; Thu, 19 Jun 2025
 22:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
 <CAM6O0Zg1r1dDObuzs+SA2eWrP0h=RRUVZmozXDjtovtSNuogbg@mail.gmail.com> <CAPJWBngF=9FHWdL3AcLdUY4Mbz-kcJzx-VjmhrKKu4dN0ZGEaQ@mail.gmail.com>
In-Reply-To: <CAPJWBngF=9FHWdL3AcLdUY4Mbz-kcJzx-VjmhrKKu4dN0ZGEaQ@mail.gmail.com>
From: Ashish Mishra <ashishm@mvista.com>
Date: Fri, 20 Jun 2025 10:57:57 +0530
X-Gm-Features: AX0GCFvM0W6soq-zTw4Yiu7wNbXNkuxwp-RFAKP68U9oZCxARnzvt1uXBqQZJ0k
Message-ID: <CAP2OjcirYyi-7eQQYS8Wx9gcwaUv2snuooom78aw0m8GeKBBug@mail.gmail.com>
Subject: Re: [yocto] Building nodejs with only 16GB RAM
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Cc: Federico Pellegrin <fede@evolware.org>
Content-Type: multipart/alternative; boundary="0000000000009c2bd30637fa200c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jun 2025 05:28:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65531

--0000000000009c2bd30637fa200c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mohammed ,

I faced a similar issue while working with yocto scarthgap with 16GB RAM.

I tried to increase the swap area of my laptop & the build goes fine (takes
around 2 hour )
but the build goes fine .

Can you try to check by increasing the swap area.
   3   =E2=94=82 sudo dd if=3D/dev/zero of=3D/extraswap bs=3D8M count=3D102=
4
   4   =E2=94=82 sudo chmod 600 /extraswap
   5   =E2=94=82 sudo mkswap /extraswap
   6   =E2=94=82 sudo swapon /extraswap
   7   =E2=94=82 free -m

Thanks ,
Ashish




On Fri, Jun 20, 2025 at 10:13=E2=80=AFAM MOHAMMED HASSAN via lists.yoctopro=
ject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Federico,
> In notice that do_compile is the only task running and then it would fail=
.
> Checking log errors on stack overflow indicate RAM needs to be increased.
> Maybe I can build nodejs on my desktop and then move the sstate-cache,
> will that work?
>
>
> On Fri, 20 Jun 2025 at 10:11=E2=80=AFAM, Federico Pellegrin <fede@evolwar=
e.org>
> wrote:
>
>>
>> Hi,
>> Increasing processor cores will usually make things *worse* as more
>> processes may be spawned at the same time and therefore more RAM used.
>>
>> Instead you could try to reduce numer of parallel processes
>> (see BB_NUMBER_THREADS and PARALLEL_MAKE for example) albeit of course t=
his
>> will make the compilation (even) slower.
>>
>> Another possibility: create a swap file/partition on the system. Also
>> this will make things slower, but you will have "more RAM".
>>
>> Cheers,
>> Federico
>>
>>
>>
>> Il giorno ven 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via
>> lists.yoctoproject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.o=
rg>
>> ha scritto:
>>
>>> Hi all,
>>> I have to build nodejs which I noticed takes 32GB RAM. Unfortunately, I
>>> only have 16GB and can't upgrade. So I want to know if I can increase t=
he
>>> processor cores and hopefully that might help. I am using the Lenovo
>>> Thinkpad P15v laptop. Let me know if this can work or any one has tried=
 it
>>> here.
>>>
>>> Thanks
>>>
>>>
>>>
>>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65530):
> https://lists.yoctoproject.org/g/yocto/message/65530
> Mute This Topic: https://lists.yoctoproject.org/mt/113737892/4806067
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ashishm@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000009c2bd30637fa200c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mohammed ,<div><br><div>I faced a similar issue while w=
orking with yocto scarthgap with 16GB RAM.</div><div><br></div><div>I tried=
 to increase the swap area of my laptop &amp; the build goes fine (takes ar=
ound 2 hour )=C2=A0</div><div>but the build goes fine .</div><div><br></div=
><div>Can you try to check=C2=A0by increasing the swap area.</div><div>=C2=
=A0 =C2=A03 =C2=A0 =E2=94=82 sudo dd if=3D/dev/zero of=3D/extraswap bs=3D8M=
 count=3D1024<br>=C2=A0 =C2=A04 =C2=A0 =E2=94=82 sudo chmod 600 /extraswap<=
br>=C2=A0 =C2=A05 =C2=A0 =E2=94=82 sudo mkswap /extraswap<br>=C2=A0 =C2=A06=
 =C2=A0 =E2=94=82 sudo swapon /extraswap<br>=C2=A0 =C2=A07 =C2=A0 =E2=94=82=
 free -m<br></div><div><br></div><div>Thanks ,</div><div>Ashish=C2=A0</div>=
<div><br></div><div><br></div><div><br></div></div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Jun 20, 2025 at 10:13=E2=80=AFAM MOHAMMED HASSAN via <a href=3D"http:=
//lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;hassanchattarki=3D=
<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctopr=
oject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">Hi=C2=A0Federico,</div><div dir=3D"auto">In no=
tice that do_compile is the only task running and then it would fail. Check=
ing log errors on stack overflow indicate RAM needs to be increased.</div><=
div dir=3D"auto">Maybe I can build nodejs on my desktop and then move the s=
state-cache, will that=C2=A0work?</div><div dir=3D"auto"><br></div><div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 2=
0 Jun 2025 at 10:11=E2=80=AFAM, Federico Pellegrin &lt;<a href=3D"mailto:fe=
de@evolware.org" target=3D"_blank">fede@evolware.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><=
br></div><div>Hi,</div><div>Increasing processor cores will usually make th=
ings *worse* as more processes may be spawned at the same time and therefor=
e more RAM used.</div><div><br></div><div>Instead you could try to reduce n=
umer of parallel processes (see=C2=A0BB_NUMBER_THREADS and=C2=A0PARALLEL_MA=
KE for example) albeit of course this will make the compilation (even) slow=
er.</div><div><br></div><div>Another possibility: create a swap file/partit=
ion on the system. Also this will make things slower, but you will have &qu=
ot;more RAM&quot;.</div><div><br></div><div>Cheers,</div><div>Federico</div=
><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"></div><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno v=
en 20 giu 2025 alle ore 06:34 MOHAMMED HASSAN via <a href=3D"http://lists.y=
octoproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;hassancha=
ttarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_bla=
nk">gmail.com@lists.yoctoproject.org</a>&gt; ha scritto:<br></div></div><di=
v class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
/blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi all,<div>I have to build nodejs whi=
ch I noticed takes 32GB RAM. Unfortunately, I only have 16GB and can&#39;t =
upgrade. So I want to know if I can increase=C2=A0the processor cores and h=
opefully=C2=A0that might help. I am using the Lenovo Thinkpad P15v laptop. =
Let me know if this can work or any one has tried it here.</div><div><br></=
div><div>Thanks</div></div>
<br></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
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

--0000000000009c2bd30637fa200c--

