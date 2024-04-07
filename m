Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ECCCD128A
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 20:25:37 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.91215.1712521530411967611
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 13:25:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=h4nxbXk2;
 spf=pass (domain: konsulko.com, ip: 209.85.218.53, mailfrom: tim.orling@konsulko.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a46ea03c2a5so640422866b.1
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 13:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712521529; x=1713126329; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EkYw7JLZsOpm86l/fbBO0+BNp2fWjk1mvm29Oqb3QQE=;
        b=h4nxbXk2KPOgSVa1wMRdu4xDy/DgsB0xV2V4zlhh2+8WDRGfwF2Hfd7RI4jWLtQQ1y
         kUQXmCg7V81KzRzcHJg6uSROnoIi2mskRXX5RKowEsExqUEYmdAYCLQADmj6zFnnHQcb
         P2E3FItwWzJBfKtS27D8z2QqPyyxr81IS5+zM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712521529; x=1713126329;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EkYw7JLZsOpm86l/fbBO0+BNp2fWjk1mvm29Oqb3QQE=;
        b=UaLayfzPelS4hc8IMOMhJ2ISkJM7PpoH88fJz9m3cO4W8D1Ri0cC57HXlbNmBg6Hbk
         TzBMkiwEVV+3mSAZQaq5zTzFLBdlapCIDPkvKTc/LcbJPy/mojlm9Q2Se2PmD2MLMCUR
         zXMJlUxWUdnZU+pCLe76gjXcnlDwBTmnIsxoG8ljLxI0IsrI+n92S09oW2NePf++th2k
         487hJ21uhynpU9HV6zjtPL5FMmLxIpVJ9tux775zcjuqUwTwVO955DtKapje8mlBMwI9
         +Wra+DiCsaJmv6wFvsbGXEL2fzs8G1ZqbMlzkR0wMgDwK2NpHBPAk5bDRISx3+gbwLOO
         Xoiw==
X-Gm-Message-State: AOJu0YznI3vU4aql8RoWIFQeCXoN8jMhZ7a9C78ZdIqwE7vZ1BPdAcsn
	p8wi1pObW5YeiUwQ74/qCFhvPqwhQYmoFY0bq4oOkqPi76/xcsrqRKYvFJWpYq987ZEtCvNj3uR
	fLRVZRtpxVxryquy/vJONGFY8CIfpg6McJl/9Tw==
X-Google-Smtp-Source: AGHT+IFa4YrjjEjl6zHg94ORyYvoVOBcfE9n/sx2RN2TTVipUMnTPxyIFC449F+7roj05Dbz6BEMUq59nTkPRmV5nWo=
X-Received: by 2002:a17:906:c448:b0:a4e:eb64:f669 with SMTP id
 ck8-20020a170906c44800b00a4eeb64f669mr5913756ejb.1.1712521528739; Sun, 07 Apr
 2024 13:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712518899.git.tim.orling@konsulko.com> <CAMKF1sr-jARNHK4c1nW-idjuCj=tXfb1fDg8vf4kViE7XsAkMg@mail.gmail.com>
 <CAOyo-87ZhjCZ=iyF+uU2mqae-0Wp3dbZ-LpZ7Mt9ee2Tc-G_Xg@mail.gmail.com>
In-Reply-To: <CAOyo-87ZhjCZ=iyF+uU2mqae-0Wp3dbZ-LpZ7Mt9ee2Tc-G_Xg@mail.gmail.com>
From: Tim Orling <tim.orling@konsulko.com>
Date: Sun, 7 Apr 2024 13:25:17 -0700
Message-ID: <CAOyo-85HLUirXcL0W_hGaRqZVTgxVoN5V=qLZpOQGCWYQe4=+w@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/3] Initial u-boot support for raspberrypi5
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000642d070615877d2d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 20:25:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62897

--000000000000642d070615877d2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear GitHub, please let us attach a repo to another GitHub repo after the
creation. Why is a fork something opaque to us?

On Sun, Apr 7, 2024 at 1:22=E2=80=AFPM Tim Orling <tim.orling@konsulko.com>=
 wrote:

> I set up my github repo with git.yoctoproject.org so I have to destroy it
> to fork from agherzan and send a PR.
>
> It's Sunday. I'm not going to do that.
>
> On Sun, Apr 7, 2024 at 1:11=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrot=
e:
>
>> I think it would be better if you opened a github PR so it can run
>> through CI
>>
>> On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling <tim.orling@konsulko.=
com>
>> wrote:
>> >
>> > Enable u-boot for the raspberrypi5 via the meta-lts-mixins
>> 'scarthgap/u-boot' branch.
>> >
>> > This is initial support for raspberrypi5, not all features (usb,
>> ethernet) are enabled
>> > in u-boot yet.
>> >
>> > You may need to have a UART dongle plugged into the 'UART' port betwee=
n
>> 'HDMI0' and
>> > 'HDMI1' to get the kernel to boot. Your mileage may vary.
>> >
>> > The following changes since commit
>> d072cc8a48571a4af40a937f98e173b5c9468c4f:
>> >
>> >   rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:35:31 +000=
0)
>> >
>> > are available in the Git repository at:
>> >
>> >   https://github.com/moto-timo/meta-raspberrypi
>> scarthgap/raspberrypi5_u-boot
>> >
>> https://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberrypi=
5_u-boot
>> >
>> > Tim Orling (3):
>> >   layer.conf: rpi5 recommends lts-u-boot-mixin
>> >   u-boot: re-enable rapsberrypi5
>> >   raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT
>> >
>> >  conf/layer.conf                      | 3 +++
>> >  conf/machine/raspberrypi5.conf       | 6 ++++++
>> >  recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
>> >  3 files changed, 9 insertions(+), 3 deletions(-)
>> >
>> > --
>> > 2.43.2
>> >
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > You automatically follow any topics you start or reply to.
>> > View/Reply Online (#62891):
>> https://lists.yoctoproject.org/g/yocto/message/62891
>> > Mute This Topic: https://lists.yoctoproject.org/mt/105388889/1997914
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >
>>
>

--000000000000642d070615877d2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear GitHub, please let us attach a repo to another GitHub=
 repo after the creation. Why is a fork something opaque to us?</div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr =
7, 2024 at 1:22=E2=80=AFPM Tim Orling &lt;<a href=3D"mailto:tim.orling@kons=
ulko.com">tim.orling@konsulko.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">I set up my github repo w=
ith <a href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproj=
ect.org</a> so I have to destroy it to fork from agherzan and send a PR.<di=
v><br></div><div>It&#39;s Sunday. I&#39;m not going to do that.</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun=
, Apr 7, 2024 at 1:11=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">I think it would be better if =
you opened a github PR so it can run through CI<br>
<br>
On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling &lt;<a href=3D"mailto:ti=
m.orling@konsulko.com" target=3D"_blank">tim.orling@konsulko.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Enable u-boot for the raspberrypi5 via the meta-lts-mixins &#39;scarth=
gap/u-boot&#39; branch.<br>
&gt;<br>
&gt; This is initial support for raspberrypi5, not all features (usb, ether=
net) are enabled<br>
&gt; in u-boot yet.<br>
&gt;<br>
&gt; You may need to have a UART dongle plugged into the &#39;UART&#39; por=
t between &#39;HDMI0&#39; and<br>
&gt; &#39;HDMI1&#39; to get the kernel to boot. Your mileage may vary.<br>
&gt;<br>
&gt; The following changes since commit d072cc8a48571a4af40a937f98e173b5c94=
68c4f:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:=
35:31 +0000)<br>
&gt;<br>
&gt; are available in the Git repository at:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://github.com/moto-timo/meta-raspberrypi" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/moto-timo/meta-rasp=
berrypi</a> scarthgap/raspberrypi5_u-boot<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://github.com/moto-timo/meta-raspberrypi/t=
ree/scarthgap/raspberrypi5_u-boot" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberrypi5_u-bo=
ot</a><br>
&gt;<br>
&gt; Tim Orling (3):<br>
&gt;=C2=A0 =C2=A0layer.conf: rpi5 recommends lts-u-boot-mixin<br>
&gt;=C2=A0 =C2=A0u-boot: re-enable rapsberrypi5<br>
&gt;=C2=A0 =C2=A0raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT<br>
&gt;<br>
&gt;=C2=A0 conf/layer.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 3 +++<br>
&gt;=C2=A0 conf/machine/raspberrypi5.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0| 6 +++=
+++<br>
&gt;=C2=A0 recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---<br>
&gt;=C2=A0 3 files changed, 9 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.43.2<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62891): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62891" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62891</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10538888=
9/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105388889/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>
</blockquote></div>

--000000000000642d070615877d2d--

