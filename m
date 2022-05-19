Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90658C433EF
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 19:57:37 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web12.382.1652990251424197694
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 12:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Y3K/wfL6;
 spf=pass (domain: linaro.org, ip: 209.85.208.52,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ed1-f52.google.com with SMTP id g12so8289657edq.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 19 May 2022 12:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M/26b5RaydP/tdxYmb7girEC8vyBAbsfqSr0l94VLD8=;
        b=Y3K/wfL6OeQc6SOV3REQFMdG/qAwvOvcPs/DTZIJ+1bTrr+gQvIwhqEquNZI3yEGnq
         8tSxpxe1/LQ7+Hlp3kxxjQVXE+JmhG+Mgs4XUsSEd4FB6YVUzW2KT4hgYH+ZZEdorsDw
         Lt9mhGTipNbODyG7ZZKcDTIqdhQ6QooA286XltMuSbybyGrmvMUHfhlrfZGMMIkDEk7M
         pbDpzk34Tj7dxfqUeNyO2gEV4KsYDuLEmcoWAJtnUv43LJ4+2LbRdzps5OJSOSxxGDeA
         24IFSo04CkmVWGQCtZsl/lZRD+SKfwK8FhFKRi9qaeMFnhca/BgBWXvRH3xNT0Ct0Zj6
         aB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M/26b5RaydP/tdxYmb7girEC8vyBAbsfqSr0l94VLD8=;
        b=weRT6wdHMkG+poLz8nSistwlMMuG7Z4E58y285CpUfRba/0H2Tj0Rcm26Wcpb2uPeG
         dmWp6zeLH6YYQkJ557kNQCNLXVFcp9pgtc1/dEmxmTVRIVDFIiklPw8C3i/Ugj6Siv+S
         tXma3kPps6nl4y0A+lEBGP3FmXcf6t2Oa+hWvt2nQpMVQYlaiN/ko4tjH3TsYM5mEHb0
         oy0H4EztnpIc3++wiDOdsLPoDnFsPtPeL4o1ZhfhFRO4RxIBgc4nRq5NMDA1w5B+exwX
         2dbVQm2eFD4vWZSwrOKJD4YlEdOQJDLHgPZ1ytaAlEt/59Q25yfD3QLrAA52M0isIO2F
         g+EA==
X-Gm-Message-State: AOAM5304dku00IQKbhqGRPacuMuPuOe7600YgzX9bpSbGqRxLIEypD8y
	GbtfyT6GiB6kU+63FnZ+m6/+Exxm3mQSaIW6FR0jCw==
X-Google-Smtp-Source: 
 ABdhPJzAKXTDM2ekf0jQxggAWGMuaFjelNV6L94Bz3lM7zIoNAtG9tGYSG/glQQ72q8lMdoT9rCBlgcyfzANV1XrlC8=
X-Received: by 2002:a05:6402:3301:b0:42a:ee56:310b with SMTP id
 e1-20020a056402330100b0042aee56310bmr7171607eda.69.1652990249742; Thu, 19 May
 2022 12:57:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220519153045.Horde.57XFl8OYL9JwVcKGidyDPhs@crashcourse.ca>
In-Reply-To: <20220519153045.Horde.57XFl8OYL9JwVcKGidyDPhs@crashcourse.ca>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 19 May 2022 21:57:18 +0200
Message-ID: 
 <CAP71WjyVwYWUcHig1yshunggwba1ngksFimHCnsjrL+0yx=FNA@mail.gmail.com>
Subject: Re: [yocto] what's the situation with yocto support for qualcomm
 qcs{410,610} eval boards?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a746dc05df62c8b6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 19:57:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57140

--000000000000a746dc05df62c8b6
Content-Type: text/plain; charset="UTF-8"

hey,

On Thu, May 19, 2022 at 9:31 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>    colleague just asked if i had any useful advice (spoiler: no) on how
> easy it would be to build a yocto-based image for *some* qcs410-based
> eval board. i'm familiar with meta-qcom, and machine definitions for
> dragonboards, but this is clearly(?) different, and i see nothing in
> the meta-qcom layer for this.
>

the underlying chipset , e.g. the Qualcomm QCS410 (or 610) is not supported
upstream. So a 'regular' OE + meta-qcom is not going to be straightforward.
meta-qcom typically supports 'machines' and soc which have enough upstream
support (mostly the one we, at Linaro, work with).


>
>    what i see is that qualcomm supplies a linux sdk, and i quote from
> https://linuxgizmos.com/module-and-dev-kit-run-linux-on-qcs610-camera-soc/
> :
>
> "A Linux SDK is built on Yocto Thud with Linux kernel 4.1.4. The SDK
> integrates Qualcomm optimizations, GStreamer wth RTSP streaming support,
> and AI support for TensorFlow Lite and Qualcomm SNPE. Android 10 support
> is coming later."
>
>    the more i read in the last half hour, the more it seems that one
> needs to bury oneself in qualcomm SDK, and repo-based checkouts from
> codeaurora and so on. is this the way to go? or have i missed something?
>

Yes, you are correct. that is a description of the QCOM/vendor 'SDK'. It's
typically built from one version of Yocto + the vendor kernel (they
recycled the Android kernel used in similar devices) + some open source
user space (sometimes inherited from Android) + some non open source user
space, distributed as binary blobs.


>    colleague has some freedom in choice of qcs410-based eval board, if
> that makes things easier.
>

I would be happy to merge new machines in meta-qcom, assuming their BSP is
a 'vanilla' BSP which does not require any of the user space components
from the vendor SDK.. Depending on the use cases needed it might be very
feasible to have enough upstream support for this board.. we (at linaro)
provide such services too..



> rday
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57139):
> https://lists.yoctoproject.org/g/yocto/message/57139
> Mute This Topic: https://lists.yoctoproject.org/mt/91216262/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a746dc05df62c8b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hey,</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 19, 2022 at 9:31 PM Rober=
t P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse=
.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><br>
=C2=A0 =C2=A0colleague just asked if i had any useful advice (spoiler: no) =
on how<br>
easy it would be to build a yocto-based image for *some* qcs410-based<br>
eval board. i&#39;m familiar with meta-qcom, and machine definitions for<br=
>
dragonboards, but this is clearly(?) different, and i see nothing in<br>
the meta-qcom layer for this.<br></blockquote><div><br></div><div>the under=
lying chipset , e.g. the Qualcomm QCS410 (or 610) is not supported upstream=
. So a &#39;regular&#39; OE=C2=A0+ meta-qcom is not going to be straightfor=
ward. meta-qcom typically supports &#39;machines&#39; and soc which have en=
ough upstream support (mostly the one we, at Linaro, work with).=C2=A0</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0what i see is that qualcomm supplies a linux sdk, and i quote =
from<br>
<a href=3D"https://linuxgizmos.com/module-and-dev-kit-run-linux-on-qcs610-c=
amera-soc/" rel=3D"noreferrer" target=3D"_blank">https://linuxgizmos.com/mo=
dule-and-dev-kit-run-linux-on-qcs610-camera-soc/</a>:<br>
<br>
&quot;A Linux SDK is built on Yocto Thud with Linux kernel 4.1.4. The SDK<b=
r>
integrates Qualcomm optimizations, GStreamer wth RTSP streaming support,<br=
>
and AI support for TensorFlow Lite and Qualcomm SNPE. Android 10 support<br=
>
is coming later.&quot;<br>
<br>
=C2=A0 =C2=A0the more i read in the last half hour, the more it seems that =
one<br>
needs to bury oneself in qualcomm SDK, and repo-based checkouts from<br>
codeaurora and so on. is this the way to go? or have i missed something?<br=
></blockquote><div><br></div><div>Yes, you are correct. that is a descripti=
on of the QCOM/vendor &#39;SDK&#39;. It&#39;s typically built from one vers=
ion of Yocto=C2=A0+ the vendor kernel (they recycled the Android kernel use=
d in similar devices)=C2=A0+ some open source user space (sometimes inherit=
ed from Android)=C2=A0+ some non open source user space, distributed as bin=
ary blobs.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
<br>
=C2=A0 =C2=A0colleague has some freedom in choice of qcs410-based eval boar=
d, if<br>
that makes things easier.<br></blockquote><div><br></div><div>I would be ha=
ppy to merge new machines in meta-qcom, assuming their BSP is a &#39;vanill=
a&#39; BSP which does not require any of the user space components from the=
 vendor SDK.. Depending on the use cases needed it might be very feasible t=
o have enough upstream support for this board.. we (at linaro) provide such=
 services too..=C2=A0</div><div>=C2=A0</div><div><br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
<br>
rday<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57139): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57139" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57139</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91216262/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91216262/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a746dc05df62c8b6--

