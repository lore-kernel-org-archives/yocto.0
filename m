Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D33BE93813
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 05:15:59 +0000 (UTC)
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.265385.1776057352056045106
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Apr 2026 22:15:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=xdLBnVW2;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.172, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2b4520f6b32so4073767eec.0
        for <yocto@lists.yoctoproject.org>; Sun, 12 Apr 2026 22:15:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776057351; cv=none;
        d=google.com; s=arc-20240605;
        b=acrtEoosgrRV/45up/JwyGr8DTFhTvgAq+3l0wvVHdP991VMbo0nBBGd70UGneAwC0
         eXjyJXZPFshqIfaTuQMMenwK92itOb2Xz/HHIP38cH+8gC3cnWMlf/W6XndUteGJSKwH
         8BvcgF2Rfij3KJHCFVjucfNWrNiKjW3poxBM1tziMGKIp67sEVUVPUzBrkHVQnPdEVRG
         6Z7qt6rGCQ3fLhtJ99+VKeHTrZuDyp4LvFwCY3NBCTIP8o2WB4887d+OvbnPG+BVxdVJ
         X8BaxQRHKKAt4AHMAASJgSlja8dkWVf8DQ3Vv4LxlboJFTjMQC/x9Bex3ueZBn0ChOul
         iDNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eUh5SWojyOBTiHh4jxBQfCZReQZfjQU4yDGOjH6SDKQ=;
        fh=K3VesToiuUAp1UqeNcWc8kbUNHEL6hbmBlcbvesdiew=;
        b=fqP4Tqf2+PZaullxB0cqj3ytf5NsB8kfrvrOfuU9k4+8zN0y20n337R54jGC6uUKTR
         BtnGyXnsrYlcuwWeS9DDBz7m2qkLzGwC9xWcviXHlR3bSZjApF8Mgc7TV/iGUYW67YOj
         nyfUzo6jBHZf5l1NF3E5xdakLotEb8KDn6gpI/DldPRmHacSm7rRvh0I01iY6mRP9zj5
         +o0ZMzrVvUJl+pWUgHPitV0GU2Un7x25FzgxjQMAZ9CAjt8pCUX5YVBk+pCVthTRd2nr
         vBgj9nO8QE6rUCnubYzdIIULk9LUtbQ4tOzZ/GcorAw1jvZm6971WvI2661MtL3RuZbx
         MpqA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1776057351; x=1776662151; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eUh5SWojyOBTiHh4jxBQfCZReQZfjQU4yDGOjH6SDKQ=;
        b=xdLBnVW2pzsL4UMeBJ5zhx5RdVUOls2Zs3AhCWBRxTNAKFLzxy19C3wcwjEqa2QoRd
         fIQoUi3HNLtCIMAuZQbm6TtISY+UJ76IO4pBr3k5ktH3S4WsxgMizKHNJyFJnFrboqCN
         NpynhiyCs4aOwrZF16ffnbedFBF+ttLcPGndyJHyLavxpr9mjbaS0TAS15tCj6oQItet
         onU+LK8IZnnrqt+mtcKuFBMalUQJdmcZLTVmELrmZw30F0j1gRNAByG6IlQMjrcXF48c
         G90LgT9oIr6YQ+hupH0hwBGez1FQEJJmsvlekbdp0e+JTCVkqzuGpx0mTOIqvsDCyl+0
         H+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776057351; x=1776662151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eUh5SWojyOBTiHh4jxBQfCZReQZfjQU4yDGOjH6SDKQ=;
        b=JUccDEdQU9zvOf6AXgKubYlbEh09Y6seNcF1d/LUW+8UPiznsiWrPTlXt65/esdiOn
         dIUsn4OMfvUHUrMypEQuc14FT9DTqbsHH0SdxHeehSjyJIpnrdyBWEtKDEaN4q6fa85U
         Bqw2+OH+dUfkJYNe74r+bBqf78sC199FdKQE42xPTQHVMdoFoPsTQMb94pW8YQOtX4qJ
         qc2xxAdpob0APNHBfqlW8MBO9cqvX6IY+bBAW+sMQvDXuMwTqmjDDH7D/EwBjJI4O7Ec
         OId2em8XI3mCZJ3JIYXNLiodQpOYJ+tPyIpDWvrXPBb3N0EJPROS6v7bFiQQhWev4Etv
         tx7w==
X-Gm-Message-State: AOJu0YxByZVAH/nj30XftNc+lMzNCOvNnwJRZ/D5W4YFmChZ4h/zDhK9
	4kM/sLuvz5pPxUQ9WwK1awuuVKwPnmUSRhCfvf5tIPFdMPmBFzF4UMjh+9TIGiEAtiSWt5boHls
	WFBV6NazRPphmQ2yeyO6nyikiRloUQb/nkujwziQwiciYQlMNsHW/
X-Gm-Gg: AeBDiesBnzd1ngRVFZGxkommuuo5VhnGD3VuGaWUXo1FyDrOmNpjCHIVrT1eET4fmM0
	e47RMEI7F4UvXSWBsj5EY7ydjYBBp91hut2nHHw+jD53E1rkU6l7/UaYCIuRLV15hHuWoGakv2e
	w4Sv6HVjU6ZRjvIIInP+5e02zJ0b6rfORR1zwnwPu/l2Q8M901hzpyOhoXHMD4pShHcuJGx0i40
	6Z1gaNZmImalO6Cn0a2oBYIKCnTKFtSnc4tokhNZssVGMBhFh/YOrBJbh7uvdl4KcOoHYDWk0QG
	NM4Dq9QbyeQBYmmMkVHQRKXELoArm8brFv6riBWC8w==
X-Received: by 2002:a05:7300:220d:b0:2c1:6676:5ed6 with SMTP id
 5a478bee46e88-2d589669863mr5869340eec.25.1776057351320; Sun, 12 Apr 2026
 22:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org> <CAM=40tVV57_198qBoOorCtPLcf_WSYY2w9jybvuSixhr665CmA@mail.gmail.com>
In-Reply-To: <CAM=40tVV57_198qBoOorCtPLcf_WSYY2w9jybvuSixhr665CmA@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 13 Apr 2026 07:15:24 +0200
X-Gm-Features: AQROBzBGkitLKQtEDlaN3L_ILVSYPmoO05kMQw6lqTobKDFefV0l-UlL0CRgmz4
Message-ID: <CAEt6Nwpn47io0fsrJp-YUjXwoJqesj0qge0AZ+6mOrF7Q4GNGg@mail.gmail.com>
Subject: Re: [yocto] Fetch Issue
To: yocto@lists.yoctoproject.org, aurelien@hackers.camp
Cc: helpdesk@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 05:15:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66405

Hi Aurelien,

If your wiki access request was lost somewhere, then apologies. I've
added helpdesk on CC to hopefully fix it soon.

Greetz,
Josef

On Sun, Apr 12, 2026 at 10:00=E2=80=AFPM aurelien via lists.yoctoproject.or=
g
<aurelien=3Dhackers.camp@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I just can say that I have requested for a wiki access that I never get b=
ack.
> So I continue my project on my side ... it seems that Gentoo is not consi=
dered as a "distro"
>
> But I am running a lab on Gentoo full of yocto VMs for HPC and now dev so=
me stuff for Kernel 7RC7 for yocto arm64 to run a filesystem I am developin=
g from papers for HPC in Space.
>
> Well, a lot of fun and hope that things will soon go better :)
>
> "Put the fun back in you hack" --Cynbe Ru Taren .. a filesystem for space=
 to send you a sign to your paradise island
>
> https://github.com/roastercode/yocto-hardened/tree/yocto-hpc
>
>
> Aurelien DESBRIERES
>
>
> Le dim. 12 avr. 2026 =C3=A0 21:45, sneha Dhar via lists.yoctoproject.org =
<snehadhar39=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :
>>
>> Hi
>>
>> Is anyone else experiencing issues accessing git.yoctoproject.org? We ar=
e seeing fetch failures for meta-intel, poky, etc.
>> Thanks.
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66402): https://lists.yoctoproject.org/g/yocto/messag=
e/66402
> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

