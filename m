Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA5C4C25B75
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 14:51:57 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.85599.1717426315165391412
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 07:51:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YEh2iTP+;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e95a883101so58424861fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 07:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717426313; x=1718031113; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NRAK5hIF0j37SEncXvPOqpIQs471FzaVB8nG/tTiMJI=;
        b=YEh2iTP+kXPD85uzL7wZsJ7LhPc2zYX33fzEFxvWaJzvLgrOhA3ohqfPXOVxrYp5BJ
         WbpXyvv+dQ7nPjutc2DNYcdZ7QBxUZdTLWAohaMiJ/iNbuwfHlX8jI4XwWd5sIX6ONDO
         Mo1E758D+umERH9GEzLEmVa9GNT7vS8Pxdt2nqCk/Tg9CfmnmcvmALmyZoL9bbH1IWuF
         as5q2ixF8c0AvngQf2cUSPQlGs/nsmy4fvQRozwMKIDuXNwuLknX3S+UlRqAMHj9cgfb
         CndMFYc3gAfA63+rysodpWcdE/z6vXBxwjbUsyDdHe0h6tQI3jvy3IFL3GzpcUdiMrkk
         F8dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717426313; x=1718031113;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NRAK5hIF0j37SEncXvPOqpIQs471FzaVB8nG/tTiMJI=;
        b=R3Cwl7iq3oxU9xYTEoK4siIhXBGv+8QbVvtydcLpuLI1Wk286D2C04fv4QoDaRorus
         GtRJkRk8PWIY67QE8L97eHis/Kw0D0BhXK/rsYYHYINM63Qg/bkcYeHN1sU2PTHynDqy
         AqksE+4HOmbjAkD1UcfGWNbF/ot+7GgAXHl33SOuaBZiXnIZup0DcmASohZh2dMzFPm0
         VDCBhnvS8ybRa10akNUqV94uYPI5dO0oNMvAvWdz++NpcM3/tPA9JhPIE4qmYQNZHz80
         9B+N24Z+1eul3flhg+f4AGkAQ1Re6/xf2lLqteeo09l/tIeBIg7euW5gSnXYxlh9vVuL
         KQ3w==
X-Gm-Message-State: AOJu0Yz4zHalmr98GB1+hz5hUJZ9+hrJcxINTdf5sgT4CbmghKgli304
	1HTA7MD5CMUwSjM7ZxlGuie2n2/LVjI7H1Tqk4VSHgAlNSY5zag+qAMHs4oArJIyNjD9pL/l/6y
	lrbFHy8u1RYlzNIpiY+l3Bx8I8xL8Sg==
X-Google-Smtp-Source: AGHT+IEQsBpqv/7OTGj+9HcvARRsbN0ITTnMtfUW2xkzjTlrZboJKf4KqtWb0NSXJkm6iARBJO9DmigVVAqzuvp1j+k=
X-Received: by 2002:a2e:9181:0:b0:2e9:87f6:b133 with SMTP id
 38308e7fff4ca-2ea950bfd7emr60013181fa.3.1717426313001; Mon, 03 Jun 2024
 07:51:53 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
In-Reply-To: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 3 Jun 2024 16:51:42 +0200
Message-ID: <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: yocto@lists.yoctoproject.org, ayoub.zaki@googlemail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 14:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63261

Yes please; can you send a patch for master?

Alex

On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.org
<ayoub.zaki=googlemail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> after upgrading to scarthgap, I noticed that the name resolution doesn't work anymore:
>
> ~ # ping yocto.org
> ping: bad address 'yocto.org'
> ~ #
>
> ~ # ping 217.160.0.14
> PING 217.160.0.14 (217.160.0.14): 56 data bytes
> 64 bytes from 217.160.0.14: seq=0 ttl=57 time=24.174 ms
> 64 bytes from 217.160.0.14: seq=1 ttl=57 time=19.452 ms
>
> --- 217.160.0.14 ping statistics ---
> 2 packets transmitted, 2 packets received, 0% packet loss
> round-trip min/avg/max = 19.452/21.813/24.174 ms
>
>
> ~ # ls -l /etc/resolv.conf
> lrwxrwxrwx    1 root     root            20 Mar  9  2018 /etc/resolv.conf -> /var/run/resolv.conf
> ~ # cat /var/run/resolv.conf
> cat: can't open '/var/run/resolv.conf': No such file or directory
>
>
>
> After linking manually :
>
> ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
> ~ #
> ~ #
> ~ # ping yocto.org
> PING yocto.org (217.160.0.14): 56 data bytes
> 64 bytes from 217.160.0.14: seq=0 ttl=57 time=17.577 ms
> 64 bytes from 217.160.0.14: seq=1 ttl=57 time=18.716 ms
> ^C
> --- yocto.org ping statistics ---
> 2 packets transmitted, 2 packets received, 0% packet loss
> round-trip min/avg/max = 17.577/18.146/18.716 ms
>
>
> shouldn't be that added in the systemd recipe :
>
> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/systemd_255.4.bb?h=scarthgap#n352
>
> Best regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63260): https://lists.yoctoproject.org/g/yocto/message/63260
> Mute This Topic: https://lists.yoctoproject.org/mt/106463010/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

