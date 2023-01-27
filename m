Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF7BC54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 06:46:38 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web10.96874.1674801996685873239
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Jan 2023 22:46:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KEIJG968;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: nikitagupta2509@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-142b72a728fso5295444fac.9
        for <yocto@lists.yoctoproject.org>; Thu, 26 Jan 2023 22:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F91FWjOMADx9Rw8rNxCbWvNmjtCKowrUz2mAzTxRLvQ=;
        b=KEIJG968GfErk+wnYivFRx+Y8sDyyftuyIIZH+kcB55qO4NWhluIltrq4mGL+Bp72v
         HcV61EeaFeacRygXamJjhE+Ft3nU2nNBHVYsxrorBGIfDGPaxPuYVgUkadLwqAvXqlrj
         ayFFNfFFpkPY4vizpml7QAEl63q9qiaNCfXBpcudXfE1w1PnWbQinQ6EBzdhVPnlVmpz
         OyYjutUkUGVFHInLvhDo6spzsogMcc2w7IjVDhS68ciDmAW/fstkYADo/50S8C15jqD8
         RkakJQwdfiWrv9Pd2al3iFNmuz9V/u/EbKxJgwU6iEGNSAAe/B/xr+OG1P98hMggFjc0
         uEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F91FWjOMADx9Rw8rNxCbWvNmjtCKowrUz2mAzTxRLvQ=;
        b=EIRb4PT9nnsPkrThhnj6W7byW0GG1f/ou2pH1AlYAPXhc+uajMh7RDOEZXAHO8cuOs
         w5AWS3p76oDE8XdmdDu1P7prVLWsXd/2GZFLPgT2dcdg8x0hf1IYZ5HQDbwiMjbX53iL
         XdGeFf3X/IDgM4tajFJJwvEV0E0pfGl7oJXtANk0BO0Eh6EweiVEaS7yAACxR6wdXzCX
         f/vRu6W/2i89ceFOhE1X1WSBpa25z0qJq50aBXWk6A7XhvnjTH3eeiyFb6jSLfveWS8r
         FYIX8ChPJD9Y8klGHVjW8CtaX59pJXa8DIQxiHtQJncgO59u79QqcdfTKqjKdXjp8S8s
         Eq3w==
X-Gm-Message-State: AFqh2kofbMNATe3+IJfBF9wfgKZ7CJYDIgSKm7ViPwPvf2LWMpPuXBxA
	5Vek8jDfD0FHwR26BmEWv3tS7bOFsrfKZ2TIUHthfx/S
X-Google-Smtp-Source: AMrXdXtRvavAIKdwz+du6cwibQcpTMo4aFZK0ke2tqy4Jf94Qbwunz/nvsH7FoAYy1iNqKzVr9ttEezO9OekDcl5Sng=
X-Received: by 2002:a05:6870:9b08:b0:144:7b93:f9d5 with SMTP id
 hq8-20020a0568709b0800b001447b93f9d5mr2377118oab.184.1674801995556; Thu, 26
 Jan 2023 22:46:35 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
In-Reply-To: <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
From: Nikita Gupta <nikitagupta2509@gmail.com>
Date: Fri, 27 Jan 2023 12:16:23 +0530
Message-ID: <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000003aa5605f3393a3e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 06:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59071

--00000000000003aa5605f3393a3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander

I am not getting your query . Can u please explain your question?

Regards
Nikita Gupta

On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> What happens if you bitbake libimx=E2=80=A6 thingy directly?
>
> Alex
>
> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509@gmail.com>
> wrote:
>
>> Hello list,
>>
>> I was just making image for imx8mplus by adding few pkgs in my local.con=
f
>> but encountered few errors so i am here for your help.
>> I added below pkgs in my local.conf file
>>
>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base
>> gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>> gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d
>> imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server
>> gst-variable-rtsp-server"
>> IMAGE_INSTALL:append =3D " gtk+3"
>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev
>> libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
>> libopencv-ml-dev"
>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>>
>> So my local.conf file now looks like this
>> So i am getting below error after baking my recipe ( Attached image).
>>
>> Please tell what should I need to do to resolve this.
>>
>> Thanks in advance
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#59056):
>> https://lists.yoctoproject.org/g/yocto/message/59056
>> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> alex.kanavin@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000003aa5605f3393a3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Alexander<div dir=3D"auto"><br></div><div dir=3D"au=
to">I am not getting your query . Can u please explain your question?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Regards</div><div dir=3D"auto=
">Nikita Gupta=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Wed, Jan 25, 2023, 18:35 Alexander Kanavin &lt=
;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">What happen=
s if you bitbake libimx=E2=80=A6 thingy directly?</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed 25. Jan 2023 at 13.47, Nikita Gup=
ta &lt;<a href=3D"mailto:nikitagupta2509@gmail.com" target=3D"_blank" rel=
=3D"noreferrer">nikitagupta2509@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-widt=
h:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,20=
4,204)"><div dir=3D"auto">Hello list,<div dir=3D"auto"><br></div><div dir=
=3D"auto">I was just making image for imx8mplus by adding few pkgs in my lo=
cal.conf but encountered few errors so i am here for your help.=C2=A0</div>=
<div dir=3D"auto">I added below pkgs in my local.conf file</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><div dir=3D"auto">IMAGE_INSTALL:append =
=3D &quot;gstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good =
gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly=C2=A0 gstreamer1.0-libav=
 imx-vpuwrap imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-pl=
ugin&quot;</div><div dir=3D"auto">LICENSE_FLAGS_WHITELIST =3D &quot;commerc=
ial&quot;</div><div dir=3D"auto">IMAGE_INSTALL:append =3D &quot;kernel-devs=
rc&quot;</div><div dir=3D"auto">IMAGE_INSTALL_append +=3D &quot;gstreamer1.=
0-rtsp-server gst-variable-rtsp-server&quot;</div><div dir=3D"auto">IMAGE_I=
NSTALL:append =3D &quot; gtk+3&quot;</div><div dir=3D"auto">CORE_IMAGE_EXTR=
A_INSTALL +=3D &quot; opencv libopencv-core-dev libopencv-highgui-dev libop=
encv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev&quot;</div><div d=
ir=3D"auto">IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;1048576 &quot;</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">So my local.conf file now looks like =
this=C2=A0</div><div dir=3D"auto">So i am getting below error after baking =
my recipe ( Attached image).</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Please tell what should I need to do to resolve this.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Thanks in advance=C2=A0</div></div></div=
>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59056): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59056" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/59056</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96519310/1686=
489" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/96519310/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_bl=
ank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--00000000000003aa5605f3393a3e--

