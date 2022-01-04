Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D086C433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 12:05:34 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.5811.1641297932455774312
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:05:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=LO/i1jWG;
 spf=pass (domain: burtonini.com, ip: 209.85.128.50,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f50.google.com with SMTP id
 g191-20020a1c9dc8000000b0032fbf912885so1309847wme.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:05:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TzRrKrfXfBNNXRiGG+8uQnobc6LEJATj9gYv8sKwbAg=;
        b=LO/i1jWGM2V6JW9MJEf39S5Xfm82FxbTqF45im3gTbMll8Pq1avn6ulV1zCk4ym55q
         VmjzqTP28QmZeYC+SlthLnv7XkFd+q/eLLIJah/ODdbf0O00Mw3lVacEumT6sn4UuTUy
         QKmyOrNNmu0JO1OatV9J5iPC9WFlQCn9eGsOKkP0iPuKxXzVSbNuRrAS0S/1Z7FZdC9w
         UIvTTFQmkUedkrFsPbW4UTZGlov0J+/O4NFdYS/FnbGNL3JcYUqPhiSF9SJHRlkshzYb
         XYUfxQJKK67A0EUVAr4HkBqwZoSRrFJdh/hu1fp+QF6GNBRcf8kYRWHGX9jbX19bk38U
         aA7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TzRrKrfXfBNNXRiGG+8uQnobc6LEJATj9gYv8sKwbAg=;
        b=bZgDIm3VId3bUhe/dAbKojEzBLatMJlxsdV09IYJ5sR42CIIfvFv4cusng+oAksS5M
         WiNNx+U4j1rBQfM/o0xOGIt4bOHt/STkvMeCt0E+8umcCkC4XG++YpY44ErOASnMNnWV
         J+MVe8vucSKfoIXKkiYZPbjbcLRMt461wTzVUVlEpIicRBAO2yUsX+VkoLA5TFi4B1NU
         GYb+a42X5W4Y6DBHCoGo7nwQl10UHURQt7yryPHx50R4S9Ifi0qcK/m+3ogtTkS4jvYc
         OPnBich6fFO8CT3WFodbITcyAeFcFkHL6T+zCukbsOVltCN3qHmnNH7Devs6UaNsC8yX
         qnpA==
X-Gm-Message-State: AOAM53062W2jwZ+WC5X+9PNil0sbPuN/zRqD8x+sXreZ+/kqwLqlXzwh
	rIvWR1EvFmaK3/dyYnhU/MPw3QLINMpOSWErG+CNDA==
X-Google-Smtp-Source: 
 ABdhPJxaSw5YMCa76DjMCFAtccauUCckaciUJM4ZWQugRYd/lMzq8GbWcmdeBcbnApYWrRxchJ5d9+jgJ+0U3zdubVM=
X-Received: by 2002:a05:600c:600a:: with SMTP id
 az10mr41485260wmb.69.1641297930437;
 Tue, 04 Jan 2022 04:05:30 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
In-Reply-To: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Tue, 4 Jan 2022 12:05:19 +0000
Message-ID: 
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Arik Kleiman <arik.kleiman@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 12:05:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55715

Just use something like NTP to sync the local time. There's a number
of recipes that can do this, such as systemd/ntp/ntpdate.

Ross

On Tue, 4 Jan 2022 at 07:47, Arik Kleiman <arik.kleiman@gmail.com> wrote:
>
> Hi,
>
> Is there any way to update my Read Only system (which connected  to the world via cellular) with local time?
>
> Im able to get the local time zone from ip lookup ... but can't use it to update the system current time.
>
> Thanks,
> Arik
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55714): https://lists.yoctoproject.org/g/yocto/message/55714
> Mute This Topic: https://lists.yoctoproject.org/mt/88186305/1676615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross@burtonini.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

