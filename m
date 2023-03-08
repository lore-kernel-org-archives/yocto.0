Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9FC678D5
	for <webhook@archiver.kernel.org>; Wed,  8 Mar 2023 18:35:28 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.1024.1678300519211629914
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Mar 2023 10:35:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p2WP4GvY;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id s20so22518529lfb.11
        for <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 10:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678300517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cQsv1ecGZUCAAcF5HXk9PkrE32biOW7MOfBIKTKB01I=;
        b=p2WP4GvY2tij/kl0vdVnQu08TCCvWUTk/d3gZRSMD9qQH+X72D3iox3/3ocRAwnqPW
         vdZyRTPK7fWF74aWKaEJws8zCtUXe3LXB6qIoyzSMLLG+diptcmP7sh26V5wtGHLH+Yh
         QACTZfiFiWMyL6l+BQrhkL//qbqLhfyMcmnf3MIyEbqZusZNi2A1xktkFNuUnt0p0o0G
         9lPfcIF8F2rxzdUZTO2XrIciml81oyTZZFLNstPJDz4mmlDeROur0DJ/Z+sk7+IO8dE4
         2ERdPVfnR6EASyLHO56NyK8fopBZPM8L/xO5wt5YdmLWiVbibA86DOh3IJSlEDWYKS1t
         bY5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678300517;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cQsv1ecGZUCAAcF5HXk9PkrE32biOW7MOfBIKTKB01I=;
        b=cuIRGmgtZnP8Csd2NVtgtyA/5pb7sjTFU6QaO+Sc4LnFj4VAc+jlKrPAC2s7dH0nVQ
         1YIWD3Jim+Aod1xH/Ro5T+mh1q6vTdIihbXChpT969Y6SdXmbNDYQwXzpxzkutn+5GkZ
         7xtj4tFo7NAm2odVotIS5F8/hj7fYKtdaCdQuTpuTLn4TtRC747DRfhq3Hq6rAJVgcys
         gePoiBCozj6rHhmNbhb0rOOvAAcSM/GgaanKb8qCinZsCUE0QjeTF0wZxLydOqyi6ZoT
         F8DpXV0BAUGva4wJfAfYLvxYQ0xqZZkZuGgw5bAqy76es9ijJq9A2SKfXjD5FrMdX29N
         QHrw==
X-Gm-Message-State: AO0yUKWU0Ps/Ssl/8lEUunJqxjN9RdA0u63dwuw6wQKX0v4ASf0iUAZJ
	ZbrKRdzqyG9koEd22exZgntc2mASBL293lyZrbY=
X-Google-Smtp-Source: AK7set9XbZzvOEehPCtvXHLZi4rNwktLjaMhltMSZc7rXHWbAZYSD3FMd6Crtd1TxWH/yhXxldncEOi9GSU3y8Ouss0=
X-Received: by 2002:a05:6512:24f:b0:4dd:fd4e:5a21 with SMTP id
 b15-20020a056512024f00b004ddfd4e5a21mr5908131lfo.11.1678300516935; Wed, 08
 Mar 2023 10:35:16 -0800 (PST)
MIME-Version: 1.0
References: <26451.1678292286573455950@lists.yoctoproject.org> <5682.1678293289751585846@lists.yoctoproject.org>
In-Reply-To: <5682.1678293289751585846@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 8 Mar 2023 19:35:05 +0100
Message-ID: <CANNYZj-Y_mC7ZDejg4fO88V3JKuJ2wKR6ervo6GWq5Hfd9MQJg@mail.gmail.com>
Subject: Re: [yocto] How to install files to custom partition?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Mar 2023 18:35:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59370

On Wed, 8 Mar 2023 at 17:34, Sourabh Hegde <hrsourabh011@gmail.com> wrote:
> Update: Tried below approach
>
> do_install() {
>     install -d ${D}${custom}/
>     install -m 0755 ${S}/sample.sh ${D}${custom}/sample.sh
> }
>
> FILES_${PN} = " \
>     ${custom}/sample.sh \
> "
>
> But, getting the error "Files/directories were installed but not shipped in any package"

This is not enough information. To be able to help, I need to see the
complete recipe, the command you are issuing, and the complete error
message that happens. You can simply publish your work in public git
somewhere as well.

Alex

