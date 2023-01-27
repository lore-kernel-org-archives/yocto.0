Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B8F1C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 09:05:29 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.98192.1674810328010799024
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 01:05:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HgiL2Rp5;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id g14so4822533ljh.10
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 01:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9Q8qCmFsoPzJ9mb19Y80GhKwHl3+eJnNfqdzWrU3j6Q=;
        b=HgiL2Rp5Bk8mqpG9QACqyi5fzagRJnX0taLoMVmVMzScc2k5Lf1WeXB7PGCiWryyX9
         AMTKrVH9xZDsOKKCv9xDqNY2HjrkCVsRpRoI9Qttp9vBEElt3mo8uZBj3wEo/4z0Iw1i
         cA5HBB7UrW49uydwiXGbOhyxrS3ujpkwTn/ztJ+eP8GKQphgqeH3gU1NVsbX5CPzwL5N
         2DEUGjeCOEvpmGHDivRq3FhqBdoQDqbyJ0scgf7PcZIKk5FSWjDRA6DBtqRaZtjzURTC
         8xCI9YG0ynVioxYyAegnt9iV3WrlE8Vs897dttYwI9UaE92zsyOGZbT9bS7v2K1Bp53F
         cYkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9Q8qCmFsoPzJ9mb19Y80GhKwHl3+eJnNfqdzWrU3j6Q=;
        b=X3m2q+RdH+rVNIU28lhEBgRYWSgv7dLTI2VKFr/urYEKXzBhLVR5njHcr+Jlj4Ke0j
         uCJXCRqPgH9sRBnO3/RAS1JdBiJzklrUTskVNV8knQwzXNHljYo+gmj6A6HzmH3zBsri
         o0w6cENa0yV/zvRfPK1njCJdhhUaOy/XelpaEUkl+kO23bVVQt44naE+gyy00O8Vw//B
         LBsRFfebhHj4S61vukBKNG+qxkdTbPi9ML1GmmDF0PQx/Ri1Semo65jYh9zBhUyqPbxS
         lFXZKVjO/BIdbsDATXjbAr5vvp+36d4QSXzqKB21aZ0EhSqEiFLZ3f/tCnloxuYKbeV9
         r08Q==
X-Gm-Message-State: AFqh2koP0F3sP2XIJt1MG+9H37Igrpp1xBgredcnOTTZI3p1np+LCg7L
	xnIAEGfEo4ftyfBAQKw2hS/i9Z4LGR2OIPAxmC8=
X-Google-Smtp-Source: AMrXdXs26i+93//+7coDxvxEK69EJU2VGUG5CSBVwCdWIUCMX9myIXwW6bg1MEVITPkVRV1eGxwPPFyCjb4NDO8zTzI=
X-Received: by 2002:a2e:8ecb:0:b0:27f:b765:d0c1 with SMTP id
 e11-20020a2e8ecb000000b0027fb765d0c1mr1991805ljl.169.1674810325859; Fri, 27
 Jan 2023 01:05:25 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com> <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
In-Reply-To: <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 27 Jan 2023 10:05:14 +0100
Message-ID: <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 09:05:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59074

The screenshot indicates the problem originates in libimxvpuapi2
recipe. So you should get more information by running 'bitbake
libimxvpuapi2'.

Alex

On Fri, 27 Jan 2023 at 07:46, Nikita Gupta <nikitagupta2509@gmail.com> wrot=
e:
>
> Hello Alexander
>
> I am not getting your query . Can u please explain your question?
>
> Regards
> Nikita Gupta
>
> On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin@gmail.com> wr=
ote:
>>
>> What happens if you bitbake libimx=E2=80=A6 thingy directly?
>>
>> Alex
>>
>> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509@gmail.com> w=
rote:
>>>
>>> Hello list,
>>>
>>> I was just making image for imx8mplus by adding few pkgs in my local.co=
nf but encountered few errors so i am here for your help.
>>> I added below pkgs in my local.conf file
>>>
>>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gstrea=
mer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly  gst=
reamer1.0-libav imx-vpuwrap imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins-im=
x imx-gst1.0-plugin"
>>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server gst-variable-rtsp-s=
erver"
>>> IMAGE_INSTALL:append =3D " gtk+3"
>>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev libopencv-hig=
hgui-dev libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"
>>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>>>
>>> So my local.conf file now looks like this
>>> So i am getting below error after baking my recipe ( Attached image).
>>>
>>> Please tell what should I need to do to resolve this.
>>>
>>> Thanks in advance
>>>
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>> Links: You receive all messages sent to this group.
>>> View/Reply Online (#59056): https://lists.yoctoproject.org/g/yocto/mess=
age/59056
>>> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1686489
>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>

