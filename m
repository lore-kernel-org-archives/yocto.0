Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B8D1C38142
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 12:32:40 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.100835.1674822752361079666
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 04:32:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BbtWZNcM;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id bp15so7866628lfb.13
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 04:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zJ9K4xecthiA4oTuhLUCOegNMPW3lggQ0sfHucNM86M=;
        b=BbtWZNcMKJPJ+kNBmsSKZtZPQ7mRHUbCrtoerHWoDjqip5vl98mG4z4dJVMK63RcAL
         Sm7dxC/cmf3auNpzAXE+rYLNpxiBqWN6vVJMIrlM/5oWh125taBZhFEkbhP86juGHy9U
         V4lKwI7I1ObCjkDLb+zKAJToPX4fx8YTn4Zi3B4OJOcP8HRCJPRyD3/YWAnSI2U5K5YT
         znpmUhSTJ/K17Rj4Skng/C79NZ6UXGuTCWFOI6/xmjmAT/+8CdjrS74x0YWHjG275G3f
         MN3sdXpGZ3ZJvSPSzUS1JwKWCOuvSMvsWJ8XlnGZmS6vaiC57GZGftyxEH8TE9QL9GaD
         rPeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zJ9K4xecthiA4oTuhLUCOegNMPW3lggQ0sfHucNM86M=;
        b=2Ql0cAwfbNdVCYHCEFUW21vDV5FpjxkXiYMU6s4JnfVuB1PZ0eN1w52Cmp2gNYhKD6
         YiPmMb3A5KPs0w98wESKpW+v+fGXwYny7CkJ3oIZfGS0cZf841Krh5Lr8ZHowaRBvfEB
         k5zDsd8Amjs/qcWzqDh/cQilY7oUsDwvQNPy6jlwjj+Sy7LC7Oii+uHTaLPUWzyxC+lg
         StSrbKUgETMz93At22P+8SmbGnZgWCpSxnR0Esf2rhlSzEtqi3gzaIr6CYfmPbKGwRMO
         VgTRFAeTlEK61/TzLWcKfphHEJomlpHS85AgG+85Xkx5mykh5PZzYKMUdqpmJAjyE82f
         DaCw==
X-Gm-Message-State: AFqh2kriPYz2s+qe3s2BC2j5CIhnjZyG4tfKZznPZV3EnTXuo5uCZ6ya
	SJWycS84lYPNmWmX/eD0Vz6zwmnM6lTy3uk62l8=
X-Google-Smtp-Source: AMrXdXsureFfQxComLrxaqrtl4pVCH5oifIwyS+RDvUbpDOhaBpUL7NPV+Unv6S2JLoCTLf6O6V8+bhxs6yM/hBCkVQ=
X-Received: by 2002:ac2:548a:0:b0:4cb:6bcb:de45 with SMTP id
 t10-20020ac2548a000000b004cb6bcbde45mr4800064lfk.272.1674822750255; Fri, 27
 Jan 2023 04:32:30 -0800 (PST)
MIME-Version: 1.0
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
 <CANNYZj976z0Xdk0Bt1uJkwbXBqkR0yXVz14ZaJ6s_muXXUtXWQ@mail.gmail.com>
 <CAGQ3h157uE84DWRVnXJJ6Oxbx=CORhX6Gp6PDs9re=V9E6EU6g@mail.gmail.com>
 <CANNYZj_MXwVHE7oA7peLKGQfi8GnM90N9d=1Kn8o0ZWGa83MVg@mail.gmail.com> <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
In-Reply-To: <CAGQ3h14CC3LeP++cfs1k2u-4aeYNqyCJjusNUOWbz4d49k=TwQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 27 Jan 2023 13:32:18 +0100
Message-ID: <CANNYZj9DAg_Zy1hXjkVtaLjqde9hir74q9DeSnYZrzK-P6JVOg@mail.gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 12:32:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59082

This is different to the previous error. Yocto itself does not prevent
the recipe from building, but something inside the component is
producing an error during configuration. One of the screenshots
mentions that 'hantro_h1' is not found, so you need to investigate why
is it being searched for and why it's not where it should be. There's
also a message about 'complete log' that you can check.

Alex

On Fri, 27 Jan 2023 at 12:30, Nikita Gupta <nikitagupta2509@gmail.com> wrot=
e:
>
> Hello Alex
>
> When i run bitbake libimxvpuapi2 and it shows below error (images attache=
d).
> Can you please tell me that is "libimxvpuapi2" compatible with imx8mplus =
board?
>
> Thanks in Advance
>
> On Fri, 27 Jan 2023 at 14:35, Alexander Kanavin <alex.kanavin@gmail.com> =
wrote:
>>
>> The screenshot indicates the problem originates in libimxvpuapi2
>> recipe. So you should get more information by running 'bitbake
>> libimxvpuapi2'.
>>
>> Alex
>>
>> On Fri, 27 Jan 2023 at 07:46, Nikita Gupta <nikitagupta2509@gmail.com> w=
rote:
>> >
>> > Hello Alexander
>> >
>> > I am not getting your query . Can u please explain your question?
>> >
>> > Regards
>> > Nikita Gupta
>> >
>> > On Wed, Jan 25, 2023, 18:35 Alexander Kanavin <alex.kanavin@gmail.com>=
 wrote:
>> >>
>> >> What happens if you bitbake libimx=E2=80=A6 thingy directly?
>> >>
>> >> Alex
>> >>
>> >> On Wed 25. Jan 2023 at 13.47, Nikita Gupta <nikitagupta2509@gmail.com=
> wrote:
>> >>>
>> >>> Hello list,
>> >>>
>> >>> I was just making image for imx8mplus by adding few pkgs in my local=
.conf but encountered few errors so i am here for your help.
>> >>> I added below pkgs in my local.conf file
>> >>>
>> >>> IMAGE_INSTALL:append =3D "gstreamer1.0 gstreamer1.0-plugins-base gst=
reamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly  =
gstreamer1.0-libav imx-vpuwrap imx-gpu-g2d imx-gpu-viv gstreamer1.0-plugins=
-imx imx-gst1.0-plugin"
>> >>> LICENSE_FLAGS_WHITELIST =3D "commercial"
>> >>> IMAGE_INSTALL:append =3D "kernel-devsrc"
>> >>> IMAGE_INSTALL_append +=3D "gstreamer1.0-rtsp-server gst-variable-rts=
p-server"
>> >>> IMAGE_INSTALL:append =3D " gtk+3"
>> >>> CORE_IMAGE_EXTRA_INSTALL +=3D " opencv libopencv-core-dev libopencv-=
highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"
>> >>> IMAGE_ROOTFS_EXTRA_SPACE =3D "1048576 "
>> >>>
>> >>> So my local.conf file now looks like this
>> >>> So i am getting below error after baking my recipe ( Attached image)=
.
>> >>>
>> >>> Please tell what should I need to do to resolve this.
>> >>>
>> >>> Thanks in advance
>> >>>
>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>> Links: You receive all messages sent to this group.
>> >>> View/Reply Online (#59056): https://lists.yoctoproject.org/g/yocto/m=
essage/59056
>> >>> Mute This Topic: https://lists.yoctoproject.org/mt/96519310/1686489
>> >>> Group Owner: yocto+owner@lists.yoctoproject.org
>> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kana=
vin@gmail.com]
>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >>>

