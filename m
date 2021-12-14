Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15ABC433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 22:12:59 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web08.32583.1639519978417245325
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 14:12:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nD5nkrtH;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id a24so18638386qvb.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 14:12:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tF7qzJZNT1GBcxis/0nhYVk3Kmm9+YanyiA9KXeMJvc=;
        b=nD5nkrtH4pGXtHFJ9FJAac5bHiyLPvYtAu3j9r6ErVXa8Om6NKRJjFafVWTwf6tXEY
         nc5YYs//QDqAt1jFIiF1/cb21JvRm+5OrZ3f5qakcmoxgGhOFeV+YGmPK9JOiHn/27/A
         +ZEGRntQto5iUmnJAKwJlFtcG1ajk/sgmf6IZHjnBguZ13B0aIHzvtDGxR2Xe7oasVYj
         IeOsl+6+V3e5klqh6/sT+I7rY+Ibq43E6QETJ4UqIqcg2SDHnNhat+mQO41/4RlRB0xD
         i005XEiMxGtV/P/Ps5srFIo6toILzwJRWnucYlElrFuYFlgN0F8Hpur9nx51vLeFXfgW
         A5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tF7qzJZNT1GBcxis/0nhYVk3Kmm9+YanyiA9KXeMJvc=;
        b=atIVUg89xLDVWH5k7fV3xyZST8cAxHnvxrWlCyNCZyCrc6m4arQOS+2RBh7AB5sN1k
         zs+C3TCSMuHnuOczLRB90TRjZfeqfGRFekQFBYtyC1/MugJx4VAJfYixv3K4x0qJOhd2
         EpOGchSbH5Lky3GvWm75hUaP5SPK0xuTyP7pCJu27TEmnv1ymeSJOMEVs8t9kFxN0X21
         aGhcd1lJDM27TXe5WEGJlCltpHr4kfq6Sk/eG1AJ/7EwF8aQvC31sXMbHVqzkvVBxCJI
         CbdBFZd2MRwBFZaNZh+Yw8878kviYwx9XX/oNpmy2dBG0w9L+pDmGL7jEasLKZU9LfKt
         Uw6g==
X-Gm-Message-State: AOAM530yVBFhcz6SUzQHgP9MlG2MKB+a0Q93N7q1SOaEIj/T1IXKzPnw
	HvoQgPmS82nt/G46iBUTwTAyQTVa/UlEMPjOBXE=
X-Google-Smtp-Source: 
 ABdhPJwkRBGur9ufPsvtL6ZAQCOrxI4ZySD+UXPCSQ6rL8rVL9RSEU54xtkIWc4/KMh1iQibnCAMOIy0U1gehHsLD2M=
X-Received: by 2002:a05:6214:2429:: with SMTP id
 gy9mr8461682qvb.36.1639519977405;
 Tue, 14 Dec 2021 14:12:57 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAOQhzYZG8V6tfY7oy863_4s+a3y1WFc2aSOPMag2b89pLgA+=g@mail.gmail.com>
In-Reply-To: 
 <CAOQhzYZG8V6tfY7oy863_4s+a3y1WFc2aSOPMag2b89pLgA+=g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Dec 2021 14:12:30 -0800
Message-ID: 
 <CAMKF1srsSuGz3B6Qbr3MwvbR2-q058CBiOD2H9sBK_+WFPPvOQ@mail.gmail.com>
Subject: Re: [Yocto]Using FreeRadius project on Yocto
To: Rakesh Kumar <rakeshkumar0815@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 22:12:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55590

On Tue, Dec 14, 2021 at 11:34 AM Rakesh Kumar <rakeshkumar0815@gmail.com> wrote:
>
>
>
> Hi Team,
>
>
> I am trying to build radius server with the use of Yocto project and looks like freeradius recipe is already included in meta-openembedded/meta-networking/recipes-connectivity/freeradius
>
>
> I have included meta-openembedded layer in my conf/bblayers.conf file and built core-image-base image.
>
>
> But I couldn't see anything related to radius server in my <workspace>/tmp directory
>
>
> "tmp/work/ccimx6ul/core-image-base/1.0-r0/rootfs/etc/init.d"
>
>
> Could you please let me know do I need to add anything specific to build radius server apart from using meta-openembedded recipe? I apologize if this is the wrong mailing list.
>

just adding layer is not enough, you have to add it to your image as well via
IMAGE_INSTALL or some other way as indirect dependency
>
> Thanks much!
>
>
> Best Regards
>
> Rakesh kumar
>
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55588): https://lists.yoctoproject.org/g/yocto/message/55588
> Mute This Topic: https://lists.yoctoproject.org/mt/87729096/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

