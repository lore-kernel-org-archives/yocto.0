Return-Path: <maik@quatt.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7309C4345F
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 09:08:20 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.13981.1713776894163051817
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 02:08:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@quatt-io.20230601.gappssmtp.com header.s=20230601 header.b=3XfJXZQh;
 spf=pass (domain: quatt.io, ip: 209.85.167.52, mailfrom: maik@quatt.io)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-51abd9fcbf6so4986863e87.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 02:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quatt-io.20230601.gappssmtp.com; s=20230601; t=1713776892; x=1714381692; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eBznyyRY/MAOHabkOXhEyamEBLJizZhoHx2k62BIi3Y=;
        b=3XfJXZQhkierKgssSxY+Juof3UQBAFH97rw1pjLMb/o/hGlylhrtjZyHYzw88z4ne8
         D7V+jW3q08RFShXr71WZ7k0h7j8M0qh7RjlLG1EVAvoVnpmNeQgwe3HYuQFKip+eb9XU
         mme2X3t64CBFqxk6/GE3okMqbY70vzrZdyK2U5RWMrz5nkPs6iMOwiLJhPP6GZL3DvF4
         q+86ps5bce9wN7TdqUDZmkpNcE13NiUrcdPT8yQLP9+V4P7QwQKuBsnhg08yYvzgF11Q
         I2dDrxJWij5tQ0lSsjgAGyfdjnQiCsmevq/WoDDuvPxSnewmlVrPVx3Y/zbDxDUPMtCm
         NMtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713776892; x=1714381692;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eBznyyRY/MAOHabkOXhEyamEBLJizZhoHx2k62BIi3Y=;
        b=UyQedURKyhXsvprikFKQmziR+X1jNAUmmC0BXqia5/AfnsCxwrxFOaz87vpKktY3YW
         FBlsV26WP6usRDorq0ntXjurenGcmcug8yQXAt2Xy1UYKec9IgWMD+TCOVz+/kYqG4gc
         LOIf/jvAY2olxlMD3dITt7cksJCRkx142nR0Mf14o4+Jnb38EjaR0CIgyg5AbTqm4/HL
         rO1b/1VdXqsE9mm/9fm3NQfHnCmp8PHu+csO12ZjQm8hRS/jQ42L/D6qyDQBZR25yVn4
         56EArb2maHWDxBoMOZQDpMZ3MLjM5nsz01sUQ4n5qze+9x7KTHutIq+/IXNcVx7SYSCK
         nhVA==
X-Gm-Message-State: AOJu0YxKGb5IATkES9fa7NAIk4yvZjQSJlW6AD58Zgzywdeb3GIfFKac
	5xksxaThxiWWtnLkqIQpP7UpLCZqhP1aDHUi7/fXXDMAZywQtvheSK2GcnPMngypzOuItO0JQIC
	v+FS0sTBwKS1VdPOFeIGXxew6rUsUeG8XPYr3H2621kw6Vidio3Z0W/Ug
X-Google-Smtp-Source: AGHT+IHw9q4C8SpXOttzx2pM+T2b8TIxl9rtqI1twwfBGx/Xi+w6ushkQ4wvuKDF0Vemt4LkckzSqC/Ox57VK/Ejo6E=
X-Received: by 2002:ac2:4bd0:0:b0:516:9f03:6a92 with SMTP id
 o16-20020ac24bd0000000b005169f036a92mr9063294lfq.43.1713776891821; Mon, 22
 Apr 2024 02:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <CALEqzqcC1PrqzEuQRe3W-6z75QgcpN9jBAaoseOGKEyGFZQsXA@mail.gmail.com>
 <CAB=6tBR1RRkOd33ymxtWUj_=usy1GLcYcwTEPDx43FyqVbKQjQ@mail.gmail.com> <17C88D1A5A183672.10861@lists.yoctoproject.org>
In-Reply-To: <17C88D1A5A183672.10861@lists.yoctoproject.org>
From: Maik Vermeulen <maik@quatt.io>
Date: Mon, 22 Apr 2024 11:08:01 +0200
Message-ID: <CALEqzqcvW=dTrCuv1VOmHRWQTSOQPY=daUQs08vCz5jz9SOsKw@mail.gmail.com>
Subject: Re: [yocto] EXTRA_USERS_PARAMS and recipe file ownership
To: yocto@lists.yoctoproject.org
Cc: Chuck Wolber <chuckwolber@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000dc9c6a0616abc673"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 09:08:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62975

--000000000000dc9c6a0616abc673
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Actually I think this log may be more telling, showing that the
useradd.bbclass is using gid 1007 thanks to useradd-staticids, but that
1007 group is only available after extrausers.bbclass

DEBUG: Executing shell function useradd_sysroot
/workdir/build_runner_maik/tmp/work/cortexa9hf-neon-tps-linux-gnueabi/our-w=
atchdog/1.0-r0/recipe-sysroot-native/usr/sbin/useradd
Running groupadd commands...
NOTE: our-watchdog: Performing groupadd with [--root
/workdir/build_runner_maik/tmp/work/cortexa9hf-neon-tps-linux-gnueabi/our-w=
atchdog/1.0-r0/recipe-sysroot
--gid 1000 --system company]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
Running useradd commands...
NOTE: our-watchdog: Performing useradd with [--root
/workdir/build_runner_maik/tmp/work/cortexa9hf-neon-tps-linux-gnueabi/our-w=
atchdog/1.0-r0/recipe-sysroot
--gid 1007 --no-create-home --system --shell /bin/false --uid 1021 watchdog=
]
configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator)
configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator)
useradd: group '1007' does not exist
ERROR: our-watchdog: useradd command did not succeed.

On Mon, Apr 22, 2024 at 10:33=E2=80=AFAM Maik Vermeulen via lists.yoctoproj=
ect.org
<maik=3Dquatt.io@lists.yoctoproject.org> wrote:

> Hi Chuck,
>
> Thanks for the quick response!
>
> I'm not sure if it's the same issue, ours isn't systemd specific at least=
.
> Btw, we're using Kirkstone.
>
> Here is an example log of the issue we see when we use USERADD in a recip=
e
> to create the user, and set ownership in do_install, while using
> EXTRA_USERS_PARAMS to manage extra groups and user options, and using
> useradd-staticids.bbclass too:
> DEBUG: Executing shell function set_user_group
> NOTE: company-img: Performing groupadd with [-R
> /workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1=
.0-r0/rootfs
> --gid 1000 company]
> NOTE: company-img: group company already exists, not re-creating it
> NOTE: company-img: Performing useradd with [-R
> /workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1=
.0-r0/rootfs
> --gid 1000 --system --shell /bin/false --uid 1001 mender]
> configuration error - unknown item 'SYSLOG_SU_ENAB' (notify administrator=
)
> configuration error - unknown item 'SYSLOG_SG_ENAB' (notify administrator=
)
> useradd: group '1000' does not exist
> ERROR: company-img: useradd command did not succeed.
>
> But then when I check
> tmp/work/machine-linux-gnueabi/copmany-img/1.0-r0/rootfs/etc/group, no
> entries for GID 1000 are found.
>
> Kind regards,
>
> On Fri, Apr 19, 2024 at 5:44=E2=80=AFPM Chuck Wolber <chuckwolber@gmail.c=
om>
> wrote:
>
>> On Fri, Apr 19, 2024 at 7:29=E2=80=AFAM Maik Vermeulen via lists.yoctopr=
oject.org
>> <maik=3Dquatt.io@lists.yoctoproject.org> wrote:
>>
>> %< SNIP %<
>>
>>
>>> I've also tried using the useradd.bbclass in the recipes, which allows
>>> us to set permissions from within the do_install task, but that started
>>> causing trouble when we tried to start using useradd-staticids, which w=
e
>>> need to keep compatibility between software versions using the same fil=
es
>>> from a persistent partition. The useradd.bbclass in combination with th=
e
>>> central extrausers.bbclass and useradd-staticids.bbclass is messy and
>>> hasn't resulted in a working build yet, with recipes complaining certai=
n
>>> groups e.g. aren't available yet.
>>>
>>
>>
>> You are not very specific about what is going wrong, but it sounds
>> familiar so it is possible that
>> I am to blame for not following up on an earlier observation that may
>> potentially benefit your
>> situation.
>>
>> Take a look at this message and let me know if it sounds familiar.
>>
>> https://lists.openembedded.org/g/openembedded-core/topic/88922422#161387
>>
>> If so I can probably submit an RFC patch.
>>
>> ..Ch:W..
>>
>>
>>
>> --
>> *"Perfection must be reached by degrees; she requires the slow hand of
>> time." - Voltaire*
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62974):
> https://lists.yoctoproject.org/g/yocto/message/62974
> Mute This Topic: https://lists.yoctoproject.org/mt/105618946/8452744
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [maik@quatt.io]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dc9c6a0616abc673
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Actually I think this log may be more telling, showing tha=
t the useradd.bbclass is using gid 1007 thanks to useradd-staticids, but th=
at 1007 group is only available after extrausers.bbclass<br><br>DEBUG: Exec=
uting shell function useradd_sysroot<br>/workdir/build_runner_maik/tmp/work=
/cortexa9hf-neon-tps-linux-gnueabi/our-watchdog/1.0-r0/recipe-sysroot-nativ=
e/usr/sbin/useradd<br>Running groupadd commands...<br>NOTE: our-watchdog: P=
erforming groupadd with [--root /workdir/build_runner_maik/tmp/work/cortexa=
9hf-neon-tps-linux-gnueabi/our-watchdog/1.0-r0/recipe-sysroot --gid 1000 --=
system company]<br>configuration error - unknown item &#39;SYSLOG_SU_ENAB&#=
39; (notify administrator)<br>configuration error - unknown item &#39;SYSLO=
G_SG_ENAB&#39; (notify administrator)<br>Running useradd commands...<br>NOT=
E: our-watchdog: Performing useradd with [--root /workdir/build_runner_maik=
/tmp/work/cortexa9hf-neon-tps-linux-gnueabi/our-watchdog/1.0-r0/recipe-sysr=
oot --gid 1007 --no-create-home --system --shell /bin/false --uid 1021 watc=
hdog]<br>configuration error - unknown item &#39;SYSLOG_SU_ENAB&#39; (notif=
y administrator)<br>configuration error - unknown item &#39;SYSLOG_SG_ENAB&=
#39; (notify administrator)<br>useradd: group &#39;1007&#39; does not exist=
<br>ERROR: our-watchdog: useradd command did not succeed.<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 22=
, 2024 at 10:33=E2=80=AFAM Maik Vermeulen via <a href=3D"http://lists.yocto=
project.org">lists.yoctoproject.org</a> &lt;maik=3D<a href=3D"mailto:quatt.=
io@lists.yoctoproject.org">quatt.io@lists.yoctoproject.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Chuck,<div><br></div><div>Thanks for the quick=C2=A0response!</div><div>=
<br></div><div>I&#39;m not sure if it&#39;s the same issue, ours isn&#39;t =
systemd specific at least.</div><div>Btw, we&#39;re using Kirkstone.</div><=
div><br></div><div>Here is an example log of the issue we see when we use U=
SERADD in a recipe to create the user, and set ownership=C2=A0in do_install=
, while using EXTRA_USERS_PARAMS to manage extra groups and user options, a=
nd using useradd-staticids.bbclass too:</div><div>DEBUG: Executing shell fu=
nction set_user_group<br>NOTE: company-img: Performing groupadd with [-R /w=
orkdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1.0-r=
0/rootfs --gid 1000 company]<br>NOTE: company-img: group company already ex=
ists, not re-creating it<br>NOTE: company-img: Performing useradd with [-R =
/workdir/build_runner_maik/tmp/work/tppg2-tps-linux-gnueabi/company-img/1.0=
-r0/rootfs --gid 1000 --system --shell /bin/false --uid 1001 mender]<br>con=
figuration error - unknown item &#39;SYSLOG_SU_ENAB&#39; (notify administra=
tor)<br>configuration error - unknown item &#39;SYSLOG_SG_ENAB&#39; (notify=
 administrator)<br>useradd: group &#39;1000&#39; does not exist<br>ERROR: c=
ompany-img: useradd command did not succeed.<br></div><div><br></div><div>B=
ut then when I check tmp/work/machine-linux-gnueabi/copmany-img/1.0-r0/root=
fs/etc/group, no entries for GID 1000 are found.</div><div><br></div><div>K=
ind regards,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Apr 19, 2024 at 5:44=E2=80=AFPM Chuck Wolber &lt;=
<a href=3D"mailto:chuckwolber@gmail.com" target=3D"_blank">chuckwolber@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Fri, Apr 19, 2024 at 7:29=E2=80=
=AFAM Maik Vermeulen via <a href=3D"http://lists.yoctoproject.org" target=
=3D"_blank">lists.yoctoproject.org</a> &lt;maik=3D<a href=3D"mailto:quatt.i=
o@lists.yoctoproject.org" target=3D"_blank">quatt.io@lists.yoctoproject.org=
</a>&gt; wrote:</div><div class=3D"gmail_quote"><br></div><div class=3D"gma=
il_quote">%&lt; SNIP %&lt;<br></div><div class=3D"gmail_quote"><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>I&#39;ve also tried using the useradd.bbclass in the recipes, which allow=
s us to set permissions from within the do_install task, but that started c=
ausing trouble when we tried to start using useradd-staticids, which we nee=
d to keep compatibility between software versions using the same files from=
 a persistent partition. The useradd.bbclass in combination with the centra=
l extrausers.bbclass and useradd-staticids.bbclass is messy and hasn&#39;t =
resulted in a working build yet, with recipes complaining certain groups e.=
g. aren&#39;t available yet.</div></div></blockquote><div><br></div><div><b=
r></div><div>You are not very specific about what is going wrong, but it so=
unds familiar so it is possible that</div><div>I am to blame for not follow=
ing up on an earlier observation that may potentially benefit your</div><di=
v>situation.<br></div><div><br></div><div>Take a look at this message and l=
et me know if it sounds familiar.<br></div><div><br></div><div><a href=3D"h=
ttps://lists.openembedded.org/g/openembedded-core/topic/88922422#161387" ta=
rget=3D"_blank">https://lists.openembedded.org/g/openembedded-core/topic/88=
922422#161387</a></div><div><br></div><div>If so I can probably submit an R=
FC patch.<br></div><div><br></div></div><div>..Ch:W..<br></div><div><br></d=
iv><div><br></div><div><br></div><span class=3D"gmail_signature_prefix">-- =
</span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div=
><b><span style=3D"font-family:monospace">&quot;Perfection must be reached =
by degrees; she requires the slow hand of time.&quot; - Voltaire</span></b>=
</div></div></div></div>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62974): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62974" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62974</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105618946/845=
2744" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105618946/8452744</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:maik@quatt.io" target=3D"_blank">maik@quatt.io</=
a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000dc9c6a0616abc673--

