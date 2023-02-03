Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85D73C6379F
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 00:00:46 +0000 (UTC)
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web11.8205.1675382439375680695
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 16:00:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CFIjmF/K;
 spf=pass (domain: gmail.com, ip: 209.85.217.53, mailfrom: joel.winarske@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id m1so1838567vst.7
        for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 16:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5LHAaCK84xjj49KMw88R5CdVI9tPl4ps/rAygxcZWUs=;
        b=CFIjmF/KDiE09gWDQX53QfCXWNBBY4aCZuzMX1Y7s+OMGPbAgkkKNQCpANCMVpriXa
         RskfsHvivugP0+KgQwAXfgoE89jq62OCIpy4QFDF8TANSbIS+HgsNdw+DsSr0zT7T14l
         2kMCkC/bcjWsIVc42M1GbfkvZjzqjIN8Ozkre+xhktvY/OdW7UxBfRWMCtR+hVcL9Cll
         lGANoVMVkgT1i0fBV2hGP2dao4HYzW3W+F4+Kwlt0FE3fnTLM7igCUSz5mhlCgz21nMg
         A/2zaYy7REfSwvmvJuyeefYXG3QqvKu0Ca991bnwmy/MVA65gIDdbtvxpR0cE4aCbk2T
         Yvhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5LHAaCK84xjj49KMw88R5CdVI9tPl4ps/rAygxcZWUs=;
        b=NPhNj8auYpGSi4OoGoVcXpIGvuRClkJaEN2CHDJ3EBAH0OiUr6+6j0efA25ycw3k20
         /ojcUmSTc7y4NcPOyU7R0KPGgu2HKWaiPXqFYDLXDP050wyilrngi3FTckD/9RnYMyan
         AO72jSoVpnaCkqFxhxkkwSAY9gtJ0wewEhIuAftqviU7WsXar/JGvQZBrXL45OmA5cYw
         p+6VSg4j90pqltqN8Q/+rMaCbcZYeeXsYMrRfFeqIH20DSR3LgN76yDM68iSepiLjmFS
         Y/HCNfu3v4Ob9Unhm/S/8LEeL9Z9Hn+yDM84hdO5R6vb76e7O22ahsoUlfJBCkgCz+5A
         H4IA==
X-Gm-Message-State: AO0yUKX05NcVrK/IWVW8iKjXXEke9MR7/81h89TNlufi/efISFhwDVJf
	fiak7tAuiM5YPW/0ZQSE18AyFkpCS58hs0hzG2M=
X-Google-Smtp-Source: AK7set/D7rXdoTAz9zmRhGeYO+WXn4wfVoLynzFPs9UBHlmg69L0r+D8s8FMpnyWlegeFR2ByfPceWCUrjnb1qyRIkU=
X-Received: by 2002:a67:ce18:0:b0:3e8:de1b:53f1 with SMTP id
 s24-20020a67ce18000000b003e8de1b53f1mr1234298vsl.60.1675382438302; Thu, 02
 Feb 2023 16:00:38 -0800 (PST)
MIME-Version: 1.0
References: <CABKMkPLAZQBE7kZfxxLX0RLdtv6kd2fYMXkE2XH_n8fz3o_onQ@mail.gmail.com>
 <1601.1675333465508890012@lists.yoctoproject.org>
In-Reply-To: <1601.1675333465508890012@lists.yoctoproject.org>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 2 Feb 2023 16:00:27 -0800
Message-ID: <CABKMkPKaoqM8U0CShdQxRk+a6iYWNqqd-ADuP9_z==x9ZW31_Q@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Is Preempt-rt still supported in
 master / latest releases?
To: Carles.SoleMendi@de.bosch.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001918dd05f3c05fb0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 00:00:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59152

--0000000000001918dd05f3c05fb0
Content-Type: text/plain; charset="UTF-8"

In the case of kirkstone, this is what I get using `LINUX_KERNEL_TYPE =
"preempt-rt"`:

    Linux raspberrypi4-64 5.15.34-v8 #1 SMP PREEMPT Tue Apr 19 19:21:26 UTC
2022 aarch64 aarch64 aarch64 GNU/Linux

I've experienced KERNEL_FEATURE conflicts using meta-virtualization with
DISTRO_FEATURES += "virtualization kvm" with meta-raspberrypi.  Where the
fragment applied is not compatible with Aarch64, and it just disables the
linux-raspberrypi default config.  It's quite possible you are also
experiencing something similar.  I would check the kernel build logs and
see what fragments are being applied, and if there are any complaints with
any of them.  The error may be a single line in a log file, and not
entirely descriptive.  More context here:
https://github.com/agherzan/meta-raspberrypi/pull/1141

Working CI job:
https://github.com/meta-flutter/meta-flutter/blob/kirkstone/.github/workflows/kirkstone-rpi4-64-vulkan.yml

On Thu, Feb 2, 2023 at 2:24 AM Carles Sole via lists.yoctoproject.org
<Carles.SoleMendi=de.bosch.com@lists.yoctoproject.org> wrote:

> Hello Joel,
>
> thanks for your reply. I was not aware about this possibility. I have
> tried it and the preemptive rt kernel is built instead of standard
> ("linux-raspberrypi4_64-preempt-rt-build" is available in
> build/work/linux-raspberrypi/...) but still the configuration file does not
> set the CONFIG_PREEMPT_RT=y for raspberrypi4-64, even if a .cfg is added
> using a .bbappend file. So in the end the RT option is not enabled.
>
> Any idea why it works for raspberrypi4 but not for raspberrypi4-64?
>
> Best Regards,
> Carles
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59145):
> https://lists.yoctoproject.org/g/yocto/message/59145
> Mute This Topic: https://lists.yoctoproject.org/mt/96470693/2167248
> Mute #raspberrypi:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> joel.winarske@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000001918dd05f3c05fb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In the case of kirkstone, this is what I get using <span c=
lass=3D"gmail-im">`LINUX_KERNEL_TYPE =3D &quot;preempt-rt&quot;</span>`:<br=
><br><div>=C2=A0=C2=A0=C2=A0 Linux raspberrypi4-64 5.15.34-v8 #1 SMP PREEMP=
T Tue Apr 19 19:21:26 UTC 2022 aarch64 aarch64 aarch64 GNU/Linux</div><div>=
<br></div><div>I&#39;ve experienced KERNEL_FEATURE conflicts using meta-vir=
tualization with DISTRO_FEATURES +=3D &quot;virtualization kvm&quot; with m=
eta-raspberrypi.=C2=A0 Where the fragment applied is not compatible with Aa=
rch64, and it just disables the linux-raspberrypi default config.=C2=A0 It&=
#39;s quite possible you are also experiencing something similar.=C2=A0 I w=
ould check the kernel build logs and see what fragments are being applied, =
and if there are any complaints with any of them.=C2=A0 The error may be a =
single line in a log file, and not entirely descriptive.=C2=A0 More context=
 here:=C2=A0 <a href=3D"https://github.com/agherzan/meta-raspberrypi/pull/1=
141">https://github.com/agherzan/meta-raspberrypi/pull/1141</a><br><br></di=
v><div>Working CI job:=C2=A0 <a href=3D"https://github.com/meta-flutter/met=
a-flutter/blob/kirkstone/.github/workflows/kirkstone-rpi4-64-vulkan.yml">ht=
tps://github.com/meta-flutter/meta-flutter/blob/kirkstone/.github/workflows=
/kirkstone-rpi4-64-vulkan.yml</a></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 2, 2023 at 2:24 AM Carle=
s Sole via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org=
</a> &lt;Carles.SoleMendi=3D<a href=3D"mailto:de.bosch.com@lists.yoctoproje=
ct.org">de.bosch.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Hello Joel,<br><br>thanks for yo=
ur reply. I was not aware about this possibility. I have tried it and the p=
reemptive rt kernel is built instead of standard (&quot;linux-raspberrypi4_=
64-preempt-rt-build&quot; is available in build/work/linux-raspberrypi/...)=
 but still the configuration file does not set the CONFIG_PREEMPT_RT=3Dy fo=
r raspberrypi4-64, even if a .cfg is added using a .bbappend file. So in th=
e end the RT option is not enabled.<br><br>Any idea why it works for raspbe=
rrypi4 but not for raspberrypi4-64?<br><br>Best Regards,<br>Carles
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59145): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59145" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59145</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96470693/2167=
248" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96470693/2167248</a><br>
Mute #raspberrypi:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehas=
htag/raspberrypi" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/mutehashtag/raspberrypi</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.=
winarske@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000001918dd05f3c05fb0--

