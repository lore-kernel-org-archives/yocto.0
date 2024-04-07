Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32980CD128A
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 21:58:28 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
 by mx.groups.io with SMTP id smtpd.web11.92903.1712527101829116632
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 14:58:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b7/wcQVH;
 spf=pass (domain: gmail.com, ip: 209.85.160.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-22ed72b0082so1418489fac.3
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 14:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712527101; x=1713131901; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cMNxR2XM/fAB/YF4Q+z/CHNH2idXascWyT1g8kXtFTg=;
        b=b7/wcQVHZvmBQ+FIMQVQkJu7EWC7jdegflMKCnctM0Pv2VJfudnMkKNIVu7X6nWsRr
         rpcw9eoVACBP9UjjBqBIcT33/UMvDEmr7fNvtQqMrD/a7Hnm1ABbhZHwe8iuxcdrc4Gr
         Y2P04Rm0N5juHUuS3ead1ILDlt+HXYVWVNk+3aK6B1LKFYuaqbU+qjVQ/sCBsQuVFB9m
         kddEklzfC4VPwYxjzEiUPswoMUc7gffO42U6jwddX4kZDTpBwOb+3zxguLaRePp6Vm1R
         DOgJM4vzAGtBbRx40OKXrgCPFW4tRtT11Ux/LqLuiuB/94gzcK0m7Tv6uMbN5cxi3IEf
         TOBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712527101; x=1713131901;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cMNxR2XM/fAB/YF4Q+z/CHNH2idXascWyT1g8kXtFTg=;
        b=hjI8UwSz+77GTb7fm08eDtwHU1Xji9DwrUZeCNVaCTnTh1qZwbOz5bQNNomfwR3oVP
         ue6B44AVaHJuzAg/hngS9ipy0P2A45/eQ+hqicfgpk7RqDiBayeyfZX/K4GTlWr4CdLh
         70xZFcJpIyWqZsL4q1oX1tdVmb0ZCwsv/EDGcSoAfpHeuyd8X4xBIS4MMK32wfc6FWNg
         Bi30PyqfYLqNmjnOSeHL4jbF2xl0ZEHAypMn4hsOYNP9xNtTv8tPCOjHAFGl/iXaCg2F
         FWqFZFHBwzf2giYfyL4jvuwjc/yLeBzk6bMpdCyrON1gz2F3mVO02uv6ZAFeMsypUvN8
         Z4aQ==
X-Gm-Message-State: AOJu0YyK+xcqiYPbpBvGS6e0YEvydZRn8831WhXwIXIDMJptcd3FzbN1
	SPjb4fJ5rxE5jMnpcikmyIJTtHtuAFqzR5b4CEnuF501eGCgU8PRxQvVdzJSZ2ozyZVaOk0N/x0
	6XYvJB5KOqqmfGBQZA0vEOBAi91M=
X-Google-Smtp-Source: AGHT+IHhp+0lr+1e9AGZ/+lEEPAeKLnLO0+V6OVRohE76UmECZtX1zKu0YMX18gfJfkPpAEEwrejs6j/l02C9/vvpIQ=
X-Received: by 2002:a05:6870:819d:b0:22e:bcfd:debc with SMTP id
 k29-20020a056870819d00b0022ebcfddebcmr8404387oae.13.1712527100933; Sun, 07
 Apr 2024 14:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1712518899.git.tim.orling@konsulko.com> <CAMKF1sr-jARNHK4c1nW-idjuCj=tXfb1fDg8vf4kViE7XsAkMg@mail.gmail.com>
 <CAOyo-87ZhjCZ=iyF+uU2mqae-0Wp3dbZ-LpZ7Mt9ee2Tc-G_Xg@mail.gmail.com> <CAOyo-85HLUirXcL0W_hGaRqZVTgxVoN5V=qLZpOQGCWYQe4=+w@mail.gmail.com>
In-Reply-To: <CAOyo-85HLUirXcL0W_hGaRqZVTgxVoN5V=qLZpOQGCWYQe4=+w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 7 Apr 2024 14:58:09 -0700
Message-ID: <CAMKF1soLixG_OHx9uM0OUqK8vtJY4UbditEx0V18hQguou4bfA@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/3] Initial u-boot support for raspberrypi5
To: Tim Orling <tim.orling@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000084ffaa061588c9ea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 21:58:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62898

--00000000000084ffaa061588c9ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 7, 2024 at 1:25=E2=80=AFPM Tim Orling <tim.orling@konsulko.com>=
 wrote:

> Dear GitHub, please let us attach a repo to another GitHub repo after the
> creation. Why is a fork something opaque to us?
>

Look into using git remote add =E2=80=A6

>
> On Sun, Apr 7, 2024 at 1:22=E2=80=AFPM Tim Orling <tim.orling@konsulko.co=
m> wrote:
>
>> I set up my github repo with git.yoctoproject.org so I have to destroy
>> it to fork from agherzan and send a PR.
>>
>> It's Sunday. I'm not going to do that.
>>
>> On Sun, Apr 7, 2024 at 1:11=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wro=
te:
>>
>>> I think it would be better if you opened a github PR so it can run
>>> through CI
>>>
>>> On Sun, Apr 7, 2024 at 12:54=E2=80=AFPM Tim Orling <tim.orling@konsulko=
.com>
>>> wrote:
>>> >
>>> > Enable u-boot for the raspberrypi5 via the meta-lts-mixins
>>> 'scarthgap/u-boot' branch.
>>> >
>>> > This is initial support for raspberrypi5, not all features (usb,
>>> ethernet) are enabled
>>> > in u-boot yet.
>>> >
>>> > You may need to have a UART dongle plugged into the 'UART' port
>>> between 'HDMI0' and
>>> > 'HDMI1' to get the kernel to boot. Your mileage may vary.
>>> >
>>> > The following changes since commit
>>> d072cc8a48571a4af40a937f98e173b5c9468c4f:
>>> >
>>> >   rpi-base: Add hifiberry-dacplusadc overlay (2024-03-28 03:35:31
>>> +0000)
>>> >
>>> > are available in the Git repository at:
>>> >
>>> >   https://github.com/moto-timo/meta-raspberrypi
>>> scarthgap/raspberrypi5_u-boot
>>> >
>>> https://github.com/moto-timo/meta-raspberrypi/tree/scarthgap/raspberryp=
i5_u-boot
>>> >
>>> > Tim Orling (3):
>>> >   layer.conf: rpi5 recommends lts-u-boot-mixin
>>> >   u-boot: re-enable rapsberrypi5
>>> >   raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT
>>> >
>>> >  conf/layer.conf                      | 3 +++
>>> >  conf/machine/raspberrypi5.conf       | 6 ++++++
>>> >  recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
>>> >  3 files changed, 9 insertions(+), 3 deletions(-)
>>> >
>>> > --
>>> > 2.43.2
>>> >
>>> >
>>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> > Links: You receive all messages sent to this group.
>>> > You automatically follow any topics you start or reply to.
>>> > View/Reply Online (#62891):
>>> https://lists.yoctoproject.org/g/yocto/message/62891
>>> > Mute This Topic: https://lists.yoctoproject.org/mt/105388889/1997914
>>> > Group Owner: yocto+owner@lists.yoctoproject.org
>>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>> raj.khem@gmail.com]
>>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> >
>>>
>>

--00000000000084ffaa061588c9ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Apr 7, 2024 at 1:25=E2=80=AFPM Tim Orling &lt;<a hr=
ef=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Dear GitHub, ple=
ase let us attach a repo to another GitHub repo after the creation. Why is =
a fork something opaque to us?</div></blockquote><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Look into using git remote add =E2=80=A6</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 7, 2024 at 1:22=E2=80=AF=
PM Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=3D"_bla=
nk">tim.orling@konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">I set up my github repo with <a=
 href=3D"http://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.or=
g</a> so I have to destroy it to fork from agherzan and send a PR.<div><br>=
</div><div>It&#39;s Sunday. I&#39;m not going to do that.</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr =
7, 2024 at 1:11=E2=80=AFPM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">I think it would be better if you op=
ened a github PR so it can run through CI<br>
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
</blockquote></div></div>

--00000000000084ffaa061588c9ea--

