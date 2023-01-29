Return-Path: <mail@oripessach.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655AAC38142
	for <webhook@archiver.kernel.org>; Sun, 29 Jan 2023 03:07:58 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web11.9831.1674961675609733177
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 19:07:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@oripessach-com.20210112.gappssmtp.com header.s=20210112 header.b=GLOeOyB1;
 spf=none, err=permanent DNS error (domain: oripessach.com, ip: 209.85.210.170, mailfrom: mail@oripessach.com)
Received: by mail-pf1-f170.google.com with SMTP id cr11so3965578pfb.1
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 19:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oripessach-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=chDsf6pfVj2KgHfbv6RC24SD+TDIeto6tPGQii6NcZM=;
        b=GLOeOyB1f9ojtD3fIloFDAaSd+5YNYLdjK+PyMCM/Nlwar2b9IsSIsx1iW1dyBzeB/
         ZZ8XfoPRJYArd0If72z8mm7BACvM7g/H2rtcJvDCobjgeIg5trg+NeZxZmhPsaSiBPBH
         xaQSRFOXA0r/nusMHyPcuvQbOrqJ4KiGSJ3RVwMFDrSjryhjzVAET8PnI8V+kCMM93GM
         8by4/PzYYH878v/ndGLRQdd1ETAs/Iq7sM02YxtrMgc94XAIScVdWQ9nP3KJTFPPRVdV
         qnSO9vXkjgQAzoPK7l05J+xHSpq6MRvAmEgYBY1Rdhj8gtvhEGLpF4TFiojRK8Dr/6u7
         6FAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=chDsf6pfVj2KgHfbv6RC24SD+TDIeto6tPGQii6NcZM=;
        b=TxYzl4w3WElZE7/qnvMiUiH5GN8ZxOPIOy74gE7TrGvf42W2NrQkjJfTu/88C/OWID
         l/I61em+aDDuS00cnyBUV6r7+uPmM2UkMezL3e97DDdepI2lSzFHlzKO0XwJNOcHzEN0
         hp8T0SmLHzyrdKiGilqmB/b3eHFjikQLbOxJ+7BwShXa8TxBXOUGvW0LddRo1K6Xr5H6
         AvyxtXoQsQmDJuXHCLQeQ6cJ6aLSsAgtm5N8RUj1MAXgZ89TNuqeNfVcAvdvhdq1gR43
         WhqknRe0T5J+gts+Iv/UziSg86BrPfShnaJm9zpXq0PFOpKoIp8EXSZHNImoMgssgzvN
         l6vg==
X-Gm-Message-State: AO0yUKXn3zGJufXonc34NuisG0n+wBbxzPm/xR2KTH6smtk5MLBfbAks
	9xDMkFOdE6MaZwmTGKUKJIDqbr9vI/mjSERbWg6iQg==
X-Google-Smtp-Source: AK7set8DZAFABmzOThU7CeXvOdVkQNJIr6bKy/K5Uu+f4uRcn9kC/3L1ykzPyWmydiDOx5mhGNnR68X+1KYP7TPgaOQ=
X-Received: by 2002:aa7:9af8:0:b0:592:6299:43d2 with SMTP id
 y24-20020aa79af8000000b00592629943d2mr1080522pfp.1.1674961674892; Sat, 28 Jan
 2023 19:07:54 -0800 (PST)
MIME-Version: 1.0
References: <CAJekvNToLOBwvDRmST97En5K6vEb-KB1oe8GOSZHd+qzp3sqcQ@mail.gmail.com>
 <CANx9H-A3Y0WR5zwvqvNm7MwW85aa4KZ2Rq-CTnEpc7gCW8Gt6Q@mail.gmail.com>
In-Reply-To: <CANx9H-A3Y0WR5zwvqvNm7MwW85aa4KZ2Rq-CTnEpc7gCW8Gt6Q@mail.gmail.com>
From: Ori Pessach <mail@oripessach.com>
Date: Sat, 28 Jan 2023 20:07:28 -0700
Message-ID: <CAJekvNS0=+MHczMHbAZHZUsNiihVBp2sRhRBePUCbmVnFusgWQ@mail.gmail.com>
Subject: Re: [yocto] Hardware accelerated video decoding and display on AMD hardware?
To: Tim Orling <ticotimo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a50f5505f35e6761"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 29 Jan 2023 03:07:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59096

--000000000000a50f5505f35e6761
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks.

Unfortunately, neither xf86-video-amdgpu nor linux-firmware seem to be
available. meta-amd certainly doesn't have them, and  xf86-video-amdgpu is
only in a newer branch of meta-oe than the one I'm currently using.

xf86-video-ati is available and I already use it - it doesn't accelerate
OpenGL or video decoding, unfortunately.

Regarding meta-amd, its FEATURES.md suggests that it doesn't support any
multimedia features on any of its targeted machines. I'm left wondering
what it does support...

Any other suggestions? Or ideas why the mesa recipe doesn't want to build
the radeonsi driver even though the version I'm building (21.2.4) seems to
include it?

Thanks,

Ori Pessach

On Sat, Jan 28, 2023 at 4:29 PM Tim Orling <ticotimo@gmail.com> wrote:

>
>
> On Sat, Jan 28, 2023 at 2:47 PM Ori Pessach <mail@oripessach.com> wrote:
>
>> Hello,
>>
>> I asked this on the meta-amd mailing list but got no response.
>>
>> Can anyone tell me what needs to be added to an image if I want to enabl=
e
>> accelerated video decoding and display on commodity (PC) AMD hardware?
>>
>> The image is currently running Xorg and, at least on Intel hardware, is
>> capable of accelerated decoding and display using VAAPI and OpenGL. The
>> user application uses gstreamer for decoding and display.
>>
>
> I don=E2=80=99t have any direct experience, but a search for =E2=80=9CRad=
eon=E2=80=9D on
> layerindex gives some hints:
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3DRad=
eon
>
> So you probably want xf86-video-amdgpu and linux-firmware-amdgpu.
>
>
>> Thanks,
>>
>> Ori Pessach
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59092):
>> https://lists.yoctoproject.org/g/yocto/message/59092
>> Mute This Topic: https://lists.yoctoproject.org/mt/96596912/924729
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> ticotimo@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000a50f5505f35e6761
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks.</div><div><br></div><div>Unfortunately, neith=
er xf86-video-amdgpu nor linux-firmware seem to be available. meta-amd cert=
ainly doesn&#39;t have them, and=C2=A0 xf86-video-amdgpu is only in a newer=
 branch of meta-oe than the one I&#39;m currently using.</div><div><br></di=
v><div>xf86-video-ati is available and I already use it - it doesn&#39;t ac=
celerate OpenGL or video decoding, unfortunately. <br></div><div><br></div>=
<div>Regarding meta-amd, its FEATURES.md suggests that it doesn&#39;t suppo=
rt any multimedia features on any of its targeted machines. I&#39;m left wo=
ndering what it does support...</div><div><br></div><div>Any other suggesti=
ons? Or ideas why the mesa recipe doesn&#39;t want to build the radeonsi dr=
iver even though the version I&#39;m building (21.2.4) seems to include it?=
</div><div><br></div><div>Thanks,</div><div><br></div><div>Ori Pessach<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Sat, Jan 28, 2023 at 4:29 PM Tim Orling &lt;<a href=3D"mailto:ticot=
imo@gmail.com">ticotimo@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><br></div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 28, 2023 at 2:47=
 PM Ori Pessach &lt;<a href=3D"mailto:mail@oripessach.com" target=3D"_blank=
">mail@oripessach.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div style=3D"box-sizing:border-box;f=
ont-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:=
14px;color:rgb(51,51,51)">Hello,</div><div style=3D"box-sizing:border-box;f=
ont-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:=
14px;color:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div st=
yle=3D"box-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)">I asked this on the=
 meta-amd mailing list but got no response.</div><div style=3D"box-sizing:b=
order-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:14px;color:rgb(51,51,51)"><br></div><div style=3D"box-sizing:bor=
der-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;f=
ont-size:14px;color:rgb(51,51,51)">Can anyone tell me what needs to be adde=
d to an image if I want to enable accelerated video decoding and display on=
 commodity (PC) AMD hardware?</div><div style=3D"box-sizing:border-box;font=
-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14p=
x;color:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div style=
=3D"box-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif;font-size:14px;color:rgb(51,51,51)">The image is currently=
 running Xorg and, at least on Intel hardware, is capable of accelerated de=
coding and display using VAAPI and OpenGL. The user application uses gstrea=
mer for decoding and display.</div><div style=3D"box-sizing:border-box;font=
-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14p=
x;color:rgb(51,51,51)"></div></div></blockquote><div dir=3D"auto"><br></div=
><div dir=3D"auto">I don=E2=80=99t have any direct experience, but a search=
 for =E2=80=9CRadeon=E2=80=9D on layerindex gives some hints:</div><div dir=
=3D"auto"><div><a href=3D"https://layers.openembedded.org/layerindex/branch=
/master/recipes/?q=3DRadeon" target=3D"_blank">https://layers.openembedded.=
org/layerindex/branch/master/recipes/?q=3DRadeon</a></div><br></div><div di=
r=3D"auto">So you probably want xf86-video-amdgpu and linux-firmware-amdgpu=
.</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div style=3D"box-sizing:border-box;font-family=
:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color=
:rgb(51,51,51)"><br style=3D"box-sizing:border-box"></div><div style=3D"box=
-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif;font-size:14px;color:rgb(51,51,51)">Thanks,</div><div style=3D"bo=
x-sizing:border-box;font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:14px;color:rgb(51,51,51)"><br style=3D"box-sizing:bord=
er-box"></div><div style=3D"box-sizing:border-box;font-family:&quot;Helveti=
ca Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;color:rgb(51,51,51)=
">Ori Pessach</div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59092): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59092" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59092</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96596912/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
96596912/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--000000000000a50f5505f35e6761--

