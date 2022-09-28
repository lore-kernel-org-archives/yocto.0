Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA296C54EE9
	for <webhook@archiver.kernel.org>; Wed, 28 Sep 2022 02:02:35 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web11.3162.1664330551488277011
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 19:02:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bq8y0Js2;
 spf=pass (domain: gmail.com, ip: 209.85.167.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id o64so13867712oib.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 19:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=hOpEKXh1E/RLSKQ75Tl233J7lkVTzSBYKBNbpNiaUxA=;
        b=Bq8y0Js2UNBcPrMw026aDa4sGsrhZNb9PcFXqppgHKVpNgT98plfaNP/C5g5uys+L+
         AmPxfTclyMPrBkcaQT8XEwTeHwsrnmNuGyRFaLq1OVFtdvR1DH9DloPD11C4IRxopgdT
         afD2AjR2Vyn4i1OzPBr9eUeCknpwh8r9yVi6ODWy6fH+pEQJ0GVLMacLcBFXfRh7tIE3
         1PhT2NrsN6TXP4dkHWXnK0OJUKoRLNbrQyRW3vmdC4XW3kE8jx8uEym929MYHt79Yvcw
         gzWkQORoJ25C+5rHON4awNfyx+yDa0CRmSgnkXlH2jj+IJcU26+XXohCUx1WN0Vmx1qo
         XUyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=hOpEKXh1E/RLSKQ75Tl233J7lkVTzSBYKBNbpNiaUxA=;
        b=ixsTfp5AhlZ09fRyTce4jL4KsMO8L4deUtiWKeUsIW29LHz2pwWs4HPz//jgx0rUIT
         lyzFZwjOkqq55bb7VUieM0/KNgrccyZLZSDykwhInL5bv3rym7UGPBQCu+m9xvVescIb
         9gD4hBhBXyZTq/B6XfCXygjC2PIq6qIQuG1jSpoLL2h7PogtTw7mWitxuXo4rd1Wm0Gw
         nGLqxjK+WcBPAtwXd4kwOpyxjtE81VCr7u3HNqLwndu6YWy8KgY3i+AfhvWPHT/VermZ
         BtZlkx+UNmWWlutMB7ZVmiI2KqdzHMBszsEVqRN+PRDVIxdLcLHF4KkFY5mwQS09j+c7
         vDaw==
X-Gm-Message-State: ACrzQf2ekmgfxQYS90OzWkrPojfLkkkFiJZfkqT5Yvw28j+m82pCkqly
	ITDLnAH+FgQquwm1VCNAd8zs7iYFiuuZpfYe8Ik=
X-Google-Smtp-Source: 
 AMsMyM5ga9cm4qAbeokKpH7qjc8mPMXfIo9M/mWBvU3lMLIqeYfppSYld1oCCCClem73HbcS/jKA0v8PLTcXsly5+iQ=
X-Received: by 2002:aca:ad8f:0:b0:350:8c87:c5be with SMTP id
 w137-20020acaad8f000000b003508c87c5bemr3171430oie.55.1664330550592; Tue, 27
 Sep 2022 19:02:30 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835B452A0D3EC6E973596CAC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <e7d7e080c94d78f6cf9711aa28ecdf484a9ee491.camel@linuxfoundation.org>
 <PH0PR84MB183560163B152E0F72D6CA8EC7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <0124314022d5ab2c61ecdbe42819b6d5b9f2a950.camel@linuxfoundation.org>
 <PH0PR84MB183582080EA5499AA5B93CF1C7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB183582080EA5499AA5B93CF1C7559@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 27 Sep 2022 19:02:19 -0700
Message-ID: 
 <CAMKF1srEJ4D4=yYvygt49mWutmHErcKPtJhmDBp0MAEiCJk24Q@mail.gmail.com>
Subject: Re: [yocto] Builing Gcc fails Poky
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000041cb6105e9b32711"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Sep 2022 02:02:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58193

--00000000000041cb6105e9b32711
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 27, 2022 at 3:41 PM Edgar Mobile <heideggm@hotmail.com> wrote:

> Yeah building gcc alone worked.
> Now I'm concerned about the health of my machine.
> Thank you!
>


Your machine is fine I think bitbake is extremely parallel and that might
be issue that it=E2=80=99s eating up all the memory. How many cores does th=
is
machine have? And ram ? Usually it=E2=80=99s good to keep 3-4gb ram per cor=
e for
default operations you can also pin how much parallels tasks and -j
settings bitbake should use during build look for PARALLEL_MAKE
documentation

>
>
> Am 27. September 2022 21:02:40 MESZ schrieb Richard Purdie <
> richard.purdie@linuxfoundation.org>:
>>
>> On Tue, 2022-09-27 at 20:51 +0200, PHIL wrote:
>>
>>> Am 27. September 2022 20:40:31 MESZ schrieb Richard Purdie
>>> <richard.purdie@linuxfoundation.org>:
>>>
>>>> On Tue, 2022-09-27 at 18:11 +0200, Edgar Mobile wrote:
>>>>
>>>>> Greetings,
>>>>> Trying to build core-image-weston from current master fails for
>>>>> gcc
>>>>> 12.2.0-r0 with lots of linker errors.
>>>>>
>>>>> Names of missing functions are strange ala gen_cmulvnx16qi3.
>>>>> In insn-output.o
>>>>>
>>>>> System is an ubuntu 22.04.1 LTS Build Target is qemuarm64
>>>>>
>>>>>
>>>> We build that regularly on the autobuilder so something seems odd
>>>> here.
>>>> Could your machine have memory issues? Do you get the same issue
>>>> each
>>>> time you build?
>>>>
>>>
>>>  What do you mean with memory issues? Memory broken? Not enough
>>>  memory? The errors are the same on every run of course I don't build
>>>  from scratch I just retype bitbake core-image-weston. Gdb also failed
>>>  so I took that out.
>>>
>>
>> I mean that the build system places more stress on the system than many
>> other workloads and we've sometimes see gcc failures like this as a
>> sign of failing system memory. Running memtest86 might show that up.
>>
>> If recipe X is failing and you "bitbake X -c clean" and then "bitbake
>> X" and it doesn't fail the same way, that would be a sure sign of
>> memory failure or another hardware issue.
>>
>> You can see here:
>>
>> https://autobuilder.yoctoproject.org/typhoon/#/workers
>>
>> we have Ubuntu 22.04 workers in the autobuilder and we build qemuarm64
>> here:
>>
>> https://autobuilder.yoctoproject.org/typhoon/#/builders/42
>> https://autobuilder.yoctoproject.org/typhoon/#/builders/131
>> https://autobuilder.yoctoproject.org/typhoon/#/builders/127
>>
>> so this combination is well tested which is why I suspect something
>> else is wrong.
>>
>> Cheers,
>>
>> Richard
>>
>> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58191):
> https://lists.yoctoproject.org/g/yocto/message/58191
> Mute This Topic: https://lists.yoctoproject.org/mt/93953325/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000041cb6105e9b32711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Sep 27, 2022 at 3:41 PM Edgar Mobile &lt;<a href=3D=
"mailto:heideggm@hotmail.com">heideggm@hotmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>Yeah building gcc alone worked.<br>Now I&#39;m concerned about the hea=
lth of my machine.<br>Thank you!</div></blockquote><div dir=3D"auto"><br></=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Your machine is fine I th=
ink bitbake is extremely parallel and that might be issue that it=E2=80=99s=
 eating up all the memory. How many cores does this machine have? And ram ?=
 Usually it=E2=80=99s good to keep 3-4gb ram per core for default operation=
s you can also pin how much parallels tasks and -j settings bitbake should =
use during build look for PARALLEL_MAKE documentation=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"auto"></div><div><br><br><div class=3D"gma=
il_quote">Am 27. September 2022 21:02:40 MESZ schrieb Richard Purdie &lt;<a=
 href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richa=
rd.purdie@linuxfoundation.org</a>&gt;:<blockquote class=3D"gmail_quote" sty=
le=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
<pre dir=3D"auto">On Tue, 2022-09-27 at 20:51 +0200, PHIL wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left:1p=
x solid #729fcf;padding-left:1ex">Am 27. September 2022 20:40:31 MESZ schri=
eb Richard Purdie<br>&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0pt 0pt 1ex 0.8ex;border-left:1=
px solid #ad7fa8;padding-left:1ex">On Tue, 2022-09-27 at 18:11 +0200, Edgar=
 Mobile wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt=
 1ex 0.8ex;border-left:1px solid #8ae234;padding-left:1ex">Greetings,<br>Tr=
ying to build core-image-weston from current master fails for<br>gcc<br>12.=
2.0-r0 with lots of linker errors.<br><br>Names of missing functions are st=
range ala gen_cmulvnx16qi3.<br>In insn-output.o<br><br>System is an ubuntu =
22.04.1 LTS Build Target is qemuarm64<br><br></blockquote><br>We build that=
 regularly on the autobuilder so something seems odd<br>here.<br>Could your=
 machine have memory issues? Do you get the same issue<br>each<br>time you =
build?<br></blockquote><br> What do you mean with memory issues? Memory bro=
ken? Not enough<br> memory? The errors are the same on every run of course =
I don&#39;t build<br> from scratch I just retype bitbake core-image-weston.=
 Gdb also failed<br> so I took that out. <br></blockquote><br>I mean that t=
he build system places more stress on the system than many<br>other workloa=
ds and we&#39;ve sometimes see gcc failures like this as a<br>sign of faili=
ng system memory. Running memtest86 might show that up.<br><br>If recipe X =
is failing and you &quot;bitbake X -c clean&quot; and then &quot;bitbake<br=
>X&quot; and it doesn&#39;t fail the same way, that would be a sure sign of=
<br>memory failure or another hardware issue.<br><br>You can see here:<br><=
br><a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/workers" targe=
t=3D"_blank">https://autobuilder.yoctoproject.org/typhoon/#/workers</a><br>=
<br>we have Ubuntu 22.04 workers in the autobuilder and we build qemuarm64<=
br>here:<br><br><a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/b=
uilders/42" target=3D"_blank">https://autobuilder.yoctoproject.org/typhoon/=
#/builders/42</a><br><a href=3D"https://autobuilder.yoctoproject.org/typhoo=
n/#/builders/131" target=3D"_blank">https://autobuilder.yoctoproject.org/ty=
phoon/#/builders/131</a><br><a href=3D"https://autobuilder.yoctoproject.org=
/typhoon/#/builders/127" target=3D"_blank">https://autobuilder.yoctoproject=
.org/typhoon/#/builders/127</a><br><br>so this combination is well tested w=
hich is why I suspect something<br>else is wrong.<br><br>Cheers,<br><br>Ric=
hard<br></pre></blockquote></div></div><div><div style=3D"white-space:pre-w=
rap"><div>-- <br>Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-=
9 Mail gesendet.</div></div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58191): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58191" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58191</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93953325/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93953325/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000041cb6105e9b32711--

