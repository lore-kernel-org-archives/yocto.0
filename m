Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F2AC5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 09:29:37 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.67474.1673256567150526034
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 01:29:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HLVjbSlY;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id n5so7695276ljc.9
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 01:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oP/MFc41v7DXak+X17TfW3QhFg/5i2JPm9+B//cjD5U=;
        b=HLVjbSlYDsmT/l85+4k69yLQD3We8xMdce0PVEguCZ2NQSC9CXih6QubRJRheTCqKg
         9z0JDulW1e1FJ9zotnxhwWTyeWPpn6L0yXci7i9MdgpmXrdpk49Jh84vKEXocRNc9C6f
         HNCmdeI5b7f3VRtduKCGJZcHaggy2+JhLEXr9jYAVeO0y19WEp6jJuMxQ8fcE6YBps41
         +pHL783GMBk+WO3XQyTMYsiHJGMKQke3hN4o3pg1ChndEUc7+YY1WcveKN7T49mj/+px
         UCO+xqscRoq43c9uNSSnBapiCtsHdqoSFP5fCbRTgythrW3DfhSJBMaH9QRZ4V/L2Xdz
         2mmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oP/MFc41v7DXak+X17TfW3QhFg/5i2JPm9+B//cjD5U=;
        b=bD6h5q/bIlYP+E1hNBdpoV5h9YYBCVCsunklxfmFnsOhh7o7dvauf3c1CMYB30eEpz
         h+vXhJHVefcpa9Jf/E27Hx0+llfgWWg0gcX7QFx9SyEycphQytGL6rR45R1nVRzRb27E
         ZV8VmC0WDSzFHQT0j+rsEVGrfiKUh9ra0r1AlwhtRw8bzkFuzPv0Pz9Lhr3dY0NeCaRe
         Z2Z7X6uI/0d8GzjW7TxgIal7AtacIRXxwAKvAtQjV6TfATlqsb3l4SxmhYQ1Lweojd1x
         DZYzrE98MXw0qNtqpBFVMWTIQVt5yzhFtfzavrMa3+AsLkFzwHvnTdkedyhOA+nKiu6Q
         N4Ig==
X-Gm-Message-State: AFqh2kpRmZNu/4A/xSTiyHMiRhI3kG27zc28+lKNWg2q7LlGbctOMnPC
	Wv+F+7ToMhT97SG+8cPe3/qGUDec/O0KI3ZQlBQ303Mv
X-Google-Smtp-Source: AMrXdXtUW0bvwyJMWmQyEKKNgLX4xGdshtIuLs/0qPlt6t4ZNPBHgFZkdcm27hzugssbiccgMJQJhZyf9fin4MpKGUo=
X-Received: by 2002:a2e:b5a1:0:b0:283:7671:a305 with SMTP id
 f1-20020a2eb5a1000000b002837671a305mr477979ljn.33.1673256565074; Mon, 09 Jan
 2023 01:29:25 -0800 (PST)
MIME-Version: 1.0
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
In-Reply-To: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jan 2023 10:29:13 +0100
Message-ID: <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
To: Yoann Congal <yoann.congal@smile.fr>
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 09:29:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58940

I've been making patches against an integrated poky checkout for many
years, including bitbake patches. They're usually correctly picked up
and applied; you only need to ensure you route them to correct mailing
lists.

Alex

On Sat, 7 Jan 2023 at 14:05, Yoann Congal <yoann.congal@smile.fr> wrote:
>
> Hi,
>
> Since I plan to work regularly on upstream Yocto and contributing, I
> wonder about the best way to best setup my git repos to do that...
>
> I've started with the upstream poky repo but when I make a commit on,
> for example, bitbake, my patch applies on a bitbake/some-path file which
> does not exist in the bitbake repo (only "some-path" exists in the
> bitbake repo).
>
> Is this something I should address ? I found some patches for bitbake in
> the mailing list that are for "bitbake/..." paths... So, maybe, basing
> my patches on the poky repo is totally OK for now...?
>
> To the Yocto maintainers, how do you manage this (poky repo, combo-layer
> and individual bitbake/doc/meta-yocto repo) ?
>
> Note: I have found the "combo-layer splitpatch" tool but it does not
> look like a full solution... Maybe I'm missing something?
>
> Thanks!
> --
> Yoann Congal ("yocton" on IRC)
> Smile ECS - Tech Expert
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58933): https://lists.yoctoproject.org/g/yocto/message/58933
> Mute This Topic: https://lists.yoctoproject.org/mt/96112311/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

