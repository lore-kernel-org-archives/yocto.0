Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F39FF8875
	for <webhook@archiver.kernel.org>; Thu, 30 Apr 2026 12:30:40 +0000 (UTC)
Received: from mail-dy1-f171.google.com (mail-dy1-f171.google.com [74.125.82.171])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19379.1777552238279764372
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2026 05:30:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=cS9MUa84;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.171, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f171.google.com with SMTP id 5a478bee46e88-2d891442388so2037109eec.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 05:30:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777552237; cv=none;
        d=google.com; s=arc-20240605;
        b=QnkSoaDqSflrR17QsP52yhUVGq4mlBcqXFaBsbL98s3s5EqPZxpfx5rjj900k9ICix
         PanJaJteenWANDV9Di3nW6ghHI685ZlwtZ4qxcHtSBRED926GFa2ygLT6plot9vrNINc
         3AGJqDuG4A2j76VaaOF9EOs8k2oYS4spHtc5eq/f7asUGhCEyCnxt9crxopoPDrWViJJ
         RBqJqZ/zLevJGrOkJ5rc+/LwiuKqNdEUN5HX+Aay9o8GWT7+q9XQnc8xDy9OZMiGhHgH
         GGm2Kf2Dyf1mGDnkD4W4p46uez06lnqgWwPfdbyDx0ylteoaX4XiqIFa+7yc4NHv4ogn
         TaJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8Zvzg/TmkfO2HJyVyV1JgP/sNJPlMfF10D9vC7loRbM=;
        fh=A1XTmGEUfbogHMm9dgqdLDnhvp1TGi0iq/wDHoa2xVI=;
        b=fGUi6OuOt1L515A4hy7rbMMus6Mhi3tCzuRrsnYuPDPddxTZl0ima0SC9pdrhjrKug
         L3BxtMW/Lo/l5f/X5Eq9Y1cgzLQmWcRVvksvNDf5VIETxl2/R26EUykKI+2+44IrmzoK
         tgrpZmOL1jEkUw6VhtGtIpPRVDTPWdI8pt4e7UiemsvFnMkA00YqlEIpAbYVy9VUTUpH
         Xg6OjvnuQDKO6/pRpZHondfQSoAdAiZt10IaJdeb/1MjuI3TPNLu8qC9ofR/9ZIsJQfe
         wyCTqedX95dzi1cVcYUoynrmmJ+JTu8xtIh3bB7X+3qYEqwLwfove0KmBVWuwkttnh1h
         Kjow==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1777552237; x=1778157037; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Zvzg/TmkfO2HJyVyV1JgP/sNJPlMfF10D9vC7loRbM=;
        b=cS9MUa84JRomCPCoaf64cIxg+tZ6HfxTKj6id/rT6m4/UE8DG3d7DTZMcYTS3LxOPZ
         bF8mHXo8eS/JYV7MNOmhngfRJb3hyOFWDTXpFjJ1ARdQZIqnNd+/AXw1aV3bLnUth0nT
         F8LKbc3l5UPzkTKRLins8m+4o1przgKVaaaz7tEjKj1OdBqzIYIhZifG7dSRxzGzA93J
         w5Gt4PDvM0rBXXFAm1ORul0ZSJAhVe4RLqn4tHPtp4XaMi2Y5RnMV7RxHb20LrEMTts5
         kZGMtxxuy/l/8rMkfE/kAjfIsO9ZFqZPCWTZ77gieDU/tc/bzNh9P1b7euBscy44nJiF
         vKAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777552237; x=1778157037;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8Zvzg/TmkfO2HJyVyV1JgP/sNJPlMfF10D9vC7loRbM=;
        b=RZi7OrGPuP16EN6BJJw2ZN+adEQBmkcMhXLfcBfskDLfBnT8JRqVIKKKJT1yMr8xCc
         Z+JQ8QNiqs/3j2EAbL/9UXYNJMORt3Le9dCSh6Cz91LoVE2AlXQfexFHYRMasPlbrr4O
         tQoJMujmA0RZk3s1FL40fmuntzNRB00IgW+FPIqJgjmy2UEorCmm2FAnW2CFZ2IGhfWK
         05Ynr5wP+zArqCuKE+B+gfmsHV/Qtt5nBk99JLAgJHa8RMKZxp1LD3gUEJtNc/p1wlW0
         n3dFNbGxTAg4kLE4oSMkWmxf2cy+IFJHFqxAwRjquaqvXvFcTSdh1N9rnIcBOuONqZhu
         sTVA==
X-Gm-Message-State: AOJu0Yz7S3PsmnAXeuBoSzUHwHnU1bkVt0J1aVWAcoZkbHz/1CIEZS2u
	iw3sgd3ZCMJjlDMVm6XgX1+XlCOsI9a3b0sa6is0jOCRQ/uk1I/KKiHyywPhJe+z4tmHLf2zxxL
	/q4XkCCW49tbWg6CzxzaVyq45ksxyDv6B6f+PxQ8SMUHsPMPBuK2zQ3o=
X-Gm-Gg: AeBDiesUkel2csaPHWeBZTV5/9vfhSMjfbPDZNTsAuRkdUGpS1Ab94PGYdETBd9XcXe
	hdhgKZEFQ4+CXJZlTpxR7DbBEN1d/sDt039LGxIJzElNgXMP944CUOBm29o3Pn5FpAT+k133L/B
	JAAXvQhHRKnROsXtHp74jvbqHiuIUds3mOLfAScPefp0sv9/UNxswojOfmsCZ0B+TL4t1/FlDKu
	N5MJcGYAoVgyZ7G7SZUyw/fYAoGZJja7Fzlosxq/U2WnQxBCknCv3SR94Oid1ua6d1+zQeBLjC5
	vZfxV9MgL6IvGREcquA4Iw8JCohK87tUnNEAxg0GR3GdOXvBfzP1v7UhUmKY2OU=
X-Received: by 2002:a05:7300:cb07:b0:2d8:97d6:6ac8 with SMTP id
 5a478bee46e88-2ed3f160a0emr1069779eec.21.1777552237298; Thu, 30 Apr 2026
 05:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca> <665c2ad1-c256-4462-950a-75cfb9103505@cherry.de>
In-Reply-To: <665c2ad1-c256-4462-950a-75cfb9103505@cherry.de>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 30 Apr 2026 14:30:10 +0200
X-Gm-Features: AVHnY4LCYNyVLT-PEKmsQo63tdT2fKcI-ydU4yDiY1V2EYtQnF8ArfP17C6W-7g
Message-ID: <CAEt6NwrjoEbW3NqNbxRWco2t8KiskfotKa3Z0U5iMi6v44-9SQ@mail.gmail.com>
Subject: Re: [yocto] Rockchip project: opinions on RAUC vs SWUpdate?
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Cc: rpjday@crashcourse.ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 12:30:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66464

Howdy!

My $.02 here, as I'm officially biased (Mender pays my bills).

All of the mentioned solutions have their respective pros and cons
(surprise!) but also all are able to provide a robust A/B update
scheme. My stash of random assorted thoughts here:
- SWupdate's image generation workflow, as Quentin mentioned, is a bit
"unexpected". It works (obviously), but takes a bit of getting used
to. Where SWupdate really shines if you don't want to do OTA at all,
but local-first installers, and need to cater for hardware versions,
quirks, and all of those things there, as it can have very advanced,
local, per-installation logic.
- RAUC is a strong solution (to me) if you want to do OTA without the
management. A hands-off, device driven deployment flow where all of
the logic lives in the client and you just want to drop the update
artifact on a HTTPS/FTP server is RAUCs super strong case, I think
they call it adaptive update deployment or something really similar.
- Menders claim to fame is the end-to-end offer. If you develop for a
fleet of devices which is meant to be managed (in terms of OTA
updates) by a singular entity, usually the manufacturer. Deployments
in stages, based on geolocation, or orthogonal (rootfs vs. application
vs. containers), no problem.

I definitely wouldn't claim that any one of these is "better" than the
others, but definitely "some are better suited for some use cases and
requirements than others". Which one applies to you, or anybody who
reads this, I cannot judge.
As always, happy to discuss the ins and outs of this :)

Greetz,
Josef

On Thu, Apr 30, 2026 at 10:54=E2=80=AFAM Quentin Schulz via
lists.yoctoproject.org
<quentin.schulz=3Dcherry.de@lists.yoctoproject.org> wrote:
>
> Hi Robert,
>
> On 4/30/26 12:17 AM, Robert P. J. Day via lists.yoctoproject.org wrote:
> >
> >    (I was going to poke Rockchip guru Quentin Schulz privately about
> > this but figured, might as well get lots of opinions.)
> >
> >    I'm working on a new Rockchip project and while previous projects
> > here have assumed using SWUpdate for OTA updates, I notice that the
> > meta-rockchip layer's README refers to an example of using RAUC for
> > A/B updates:
> >
> >    https://git.yoctoproject.org/meta-rockchip/tree/README#n125
> >
> >    I'm curious ... do the Rockchip folks prefer RAUC to SWUpdate? I'm
> > not wedded to SWUpdate and am open to arguments for trying RAUC
> > instead. Thoughts?
> >
>
> Trevor did the A/B thing on meta-rockchip with rauc. He's using it for
> his devices as far as I know. My previous company was using SWUpdate
> with Yocto, my current RAUC with Buildroot. I have not integrated
> either. I've done some work on SWUpdate in meta-cherry-es which I
> presented at the Yocto Project Developer Day last year, see
> https://pretalx.com/ypdd-amsterdam-2025/talk/ZRLTMG/. It was recorded
> but I don't see it on YoctoProject's YouTube channel. I really disliked
> the way swupdate handles images. As far as I remember, you have an
> SRC_URI in your image recipe (which doesn't make sense) for configuring
> your image. I was tickled by some "smart" things being done to the
> swupdate recipe to figure out what to enable at build time based on
> what's in the swupdate defconfig. This is broken logic and didn't work
> well if I remember correctly.
>
> If you're looking to provision your devices during manufacturing, RAUC
> won't be useful as it's explicitly stated RAUC is not made for that.
> SWUpdate (as shown during my talk) can be somewhat forced to do this.
>
> There's also Mender which can be a paid solution with commercial
> support, I'm sure Josef can do a pep talk here.
>
> In the end, read the docs, try things out. It's like asking which of vim
> or emacs is better, you only will know what's best.
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66461): https://lists.yoctoproject.org/g/yocto/messag=
e/66461
> Mute This Topic: https://lists.yoctoproject.org/mt/119072995/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

