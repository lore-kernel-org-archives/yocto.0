Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CC98C54EAA
	for <webhook@archiver.kernel.org>; Mon, 30 Jan 2023 16:44:59 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.web10.46333.1675097097332787363
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Jan 2023 08:44:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nT/6s0DU;
 spf=pass (domain: gmail.com, ip: 209.85.167.173, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f173.google.com with SMTP id t19so2264679oiw.10
        for <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 08:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4LQBURelr80rgbJ0UJYSFp8TwSUKKU/QtKCr4wG9/s=;
        b=nT/6s0DU2652vjlIkhnjWfRLt1+nyjCfH80JU7OQum3UwW3uFoZUf+Ew2nC/h6JHqw
         I1I/SEDg9FKL+KcqSVCzXjGOdmBq0qcThzcvSK92+W3u9Ysq77JflmItz5QWpLCFRwQv
         HGARbQdGJG8v2ilxgL/p0R0B2XkdjwT8UV8oKqAm2ikRb8x5oYqYCDH9BiGvzdV/OIQN
         0fBauF2oRDB/v0LNdqaRGSjbyLJLhA7jly71r9Reax76Nwerw4LrhV2Qtc1mCJ7vkHED
         m510VPvOrKr8Jrcm1c9qo64IJqgZ1+V1QiVlY/R4yKqHuNUAFr6nsyal9q+zRL5sbc/j
         k2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4LQBURelr80rgbJ0UJYSFp8TwSUKKU/QtKCr4wG9/s=;
        b=dewGRcs7Jo2uQzjxFeAc3kVftQX5GkvV52SHYZYrJz+S19EWRZymLhTfSfBFgXTnEj
         5IjoQOK8pbK8T7hhmXOrsUuURn9aEgSJSQ2WFmVXb2jf3BxE0+u3/BI8g2qq7NHsjm5w
         JkOqMN6/ZryJldvq44pArzCnK5a60G5yOloibPbifcxIgNvPAUWUmdYN7PtkoHceqwe3
         elcf9DuP4yNq/wRK2/qLT5nVjQH5GOCL+CLE0i4/LEGnjKr2CO5rEkWMiPPkMeGDV+x9
         l9u2zwrqZck1P8jErWgpTFX22uP11IbMvwccg//KQrqGMbBfht9ELJrcqfRGcGkBo6bG
         2FPQ==
X-Gm-Message-State: AFqh2kr1QA7HGkZjlqTlhL8quOh15skP+Owe/8xqDt/ZnBqZZnPRcNnS
	c1hVCDEwe2uf6k6jJRjP4vMx01UKDbNK7qolj0s=
X-Google-Smtp-Source: AMrXdXtNWDCt29+xVT3dAVSNeRLfIs934c+665aq/5F0vouQxSlZFSRMeQU7ymP1kp2iNrkVJukCYuc/3offWusc62U=
X-Received: by 2002:a05:6808:16:b0:36e:f5f8:ccd9 with SMTP id
 u22-20020a056808001600b0036ef5f8ccd9mr1330626oic.55.1675097096197; Mon, 30
 Jan 2023 08:44:56 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
 <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
 <CAGQ3h1598A-7_uX9RsN_zrw2eyRSuPCdFhLT9zODBmxrYxVzDg@mail.gmail.com>
 <ba145544-a63e-9002-198d-5dd902bfcd1d@lineo.co.jp> <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
In-Reply-To: <CAGQ3h16F1N_sM3sQs6c+bJFdCmpqWUkSPfDeMGP1mQhqJHQ+_w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Jan 2023 08:44:30 -0800
Message-ID: <CAMKF1srhu=iF4--fn_eQSA1RioNdhCjV1Brrh9coJwuU1AB5nQ@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Takayasu Ito <ito@lineo.co.jp>, Alexander Kanavin <alex.kanavin@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jan 2023 16:44:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59101

there should be a config.log file generated in the build dir of this
component. Can you share that ?

On Mon, Jan 30, 2023 at 3:19 AM Nikita Gupta <nikitagupta2509@gmail.com> wr=
ote:
>
> Hello Takayasu
> Thanks for your suggestion,  but after implementing i am facing same thin=
g (see attached image).
>
> Regards
> Nikita Gupta
>
> On Fri, 27 Jan 2023 at 17:55, Takayasu Ito <ito@lineo.co.jp> wrote:
>>
>> Hi Nikita
>>
>>  > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gst=
reamer1.0-plugins-good gstreamer1.0-plugins-bad
>>
>> If you do not put a space after the double quotation marks, the package =
names before and after will be attached to each other
>> during the merge.
>>
>> See
>> https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-us=
er-manual-metadata.html#appending-and-prepending-override-style-syntax
>>
>> On 2023/01/27 20:48, Nikita Gupta wrote:
>> > Hello List,
>> >
>> > As i earlier mentioned that i want to do some customisation in local.c=
onf by adding few pkgs (below).
>> > *IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gstr=
eamer1.0-plugins-good gstreamer1.0-plugins-bad
>> > gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d =
imx-gpu-viv gstreamer1.0-plugins-imx imx-gst1.0-plugin"
>> > LICENSE_FLAGS_ACCEPTED =3D " commercial"
>> > IMAGE_INSTALL:append =3D "kernel-devsrc"
>> > IMAGE_INSTALL:append =3D "gstreamer1.0-rtsp-server gst-variable-rtsp-s=
erver"
>> > IMAGE_INSTALL:append =3D " gtk+3"
>> > CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev libopencv-hi=
ghgui-dev libopencv-imgproc-dev libopencv-objdetect-dev
>> > libopencv-ml-dev"
>> > #LICENSE_FLAGS_WHITELIST =3D " commercial"
>> > IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "*
>> >   and iafter bitbake m getting below errors.
>> >
>> > nikita@nikita-HP-Laptop-15-bs0xx:~/Yocto/imx-yocto-bsp$ *bitbake imx-i=
mage-full*
>> > Loading cache: 100% |#################################################=
#########################################################|
>> > Time: 0:00:01
>> > Loaded 4736 entries from dependency cache.
>> > Parsing recipes: 100% |###############################################=
#########################################################|
>> > Time: 0:00:02
>> > Parsing of 3190 .bb files complete (3188 cached, 2 parsed). 4738 targe=
ts, 262 skipped, 3 masked, 0 errors.
>> > NOTE: Resolving any missing task queue dependencies
>> > ERROR: Nothing RPROVIDES 'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-r=
tsp-server' (but
>> > /home/nikita/Yocto/imx-yocto-bsp/sources/meta-imx/meta-sdk/dynamic-lay=
ers/qt6-layer/recipes-fsl/images/imx-image-full.bb
>> > <http://imx-image-full.bb> RDEPENDS on or otherwise requires it)
>> > NOTE: Runtime target 'imx-gst1.0-pluginkernel-devsrcgstreamer1.0-rtsp-=
server' is unbuildable, removing...
>> > Missing or unbuildable dependency chain was: ['imx-gst1.0-pluginkernel=
-devsrcgstreamer1.0-rtsp-server']
>> > ERROR: Required build target 'imx-image-full' has no buildable provide=
rs.
>> > Missing or unbuildable dependency chain was: ['imx-image-full', 'imx-g=
st1.0-pluginkernel-devsrcgstreamer1.0-rtsp-server']
>> >
>> > Summary: There were 2 ERROR messages, returning a non-zero exit code.
>> >
>> > These packages are needed i can not remove So please help me what can =
i do in this.
>> >
>> > Thanks in Advance.
>> >
>> > On Fri, 27 Jan 2023 at 17:00, Nikita Gupta <nikitagupta2509@gmail.com =
<mailto:nikitagupta2509@gmail.com>> wrote:
>> >
>> >     Hello Alex
>> >
>> >     When i run bitbake libimxvpuapi2 and it shows below error (images =
attached).
>> >     Can you please tell me that is "libimxvpuapi2" compatible with imx=
8mplus board?
>> >
>> >     Thanks in Advance
>> >
>> >     On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin <alex.kanavin@gmai=
l.com <mailto:alex.kanavin@gmail.com>> wrote:
>> >
>> >         The screenshot indicates the problem originates in libimxvpuap=
i2
>> >         recipe. So you should get more information by running 'bitbake
>> >         libimxvpuapi2'.
>> >
>> >         Alex
>> >
>> >         On Fri, 27 Jan 2023 at 07:46, Nikita Gupta <nikitagupta2509@gm=
ail.com <mailto:nikitagupta2509@gmail.com>> wrote:
>> >          >
>> >          > Hello Alexander
>> >          >
>> >          > I am not getting your query . Can u please explain your que=
stion?
>> >          >
>> >          > Regards
>> >          > Nikita Gupta
>> >          >
>> >          > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin=
@gmail.com <mailto:alex.kanavin@gmail.com>> wrote:
>> >          >>
>> >          >> What happens if you bitbake libimx=E2=80=A6 thingy directl=
y?
>> >          >>
>> >          >> Alex
>> >          >>
>> >          >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta250=
9@gmail.com <mailto:nikitagupta2509@gmail.com>> wrote:
>> >          >>>
>> >          >>> Hello list,
>> >          >>>
>> >          >>> I was just making image for imx8mplus by adding few pkgs =
in my local.conf but encountered few errors so i am here
>> >         for your help.
>> >          >>> I added below pkgs in my local.conf file
>> >          >>>
>> >          >>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugi=
ns-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
>> >         gstreamer1.0-plugins-ugly  gstreamer1.0-libav imx-vpuwrap imx-=
gpu-g2d imx-gpu-viv gstreamer1.0-plugins-imx
>> >         imx-gst1.0-plugin"
>> >          >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>> >          >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>> >          >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server gst-v=
ariable-rtsp-server"
>> >          >>> IMAGE_INSTALL:append =3D " gtk+3"
>> >          >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev=
 libopencv-highgui-dev libopencv-imgproc-dev
>> >         libopencv-objdetect-dev libopencv-ml-dev"
>> >          >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>> >          >>>
>> >          >>> So my local.conf file now looks like this
>> >          >>> So i am getting below error after baking my recipe ( Atta=
ched image).
>> >          >>>
>> >          >>> Please tell what should I need to do to resolve this.
>> >          >>>
>> >          >>> Thanks in advance
>> >          >>>
>> >          >>>
>> >          >>>
>> >
>> >
>> >
>> >
>> >
>>
>> --
>> Takayasu Ito
>> Solution Department, Lineo Solutions, Inc.
>> https://www.lineo.co.jp/english/
>> Email: ito@lineo.co.jp
>> Yocto Project Ambassador
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59100): https://lists.yoctoproject.org/g/yocto/messag=
e/59100
> Unfollow This Topic: https://lists.yoctoproject.org/unft/96519310/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

