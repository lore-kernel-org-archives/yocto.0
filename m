Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFAAC433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 20:16:46 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.1301.1646424982140139819
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 12:16:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q9hpjZAi;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id eq14so1527153qvb.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 12:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fzv5Vwzro1xL5shVPiuZp7Pn9JJYw9SKU9YAQQO3Y+k=;
        b=Q9hpjZAilNU/QXI7+Yz9ntmQit2K4/1hWbyBlns/hJ3xy7K6cYvZjqo0KqTlRWtdXw
         WkC1Kb361xQAQ1qaDMhEINuggVBAIU5S1WZp2/otsLU8+tpVbH16pNSDz16q0GZsq1uH
         cFYRMAOaAvIh7TR7XNchFBFm6Oche+u8BmHL+JpfaWUuL/jD9W/uxLMk5sbb4yUf6aHD
         /zk/xi5dCTkjLiCpacduXkg1TG8MdLCPieCDkKCUTufqNcxYFZ2wuKX5tkeUmRT459EZ
         eske2e5DEgquxxMQD/Y8/zxWBIJqrDrrhEPl9/XsViFZR9IJJTKEQpKnfYTD+V3fucZx
         GIHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fzv5Vwzro1xL5shVPiuZp7Pn9JJYw9SKU9YAQQO3Y+k=;
        b=YECoTvuValD6Zc2axm4ZEEefgKWtGzpDhxWfZ4Ds8I61a0k5qHUpHfFV4eBJa1/7HE
         s7RknEORh0ZuJzdXBx+9lU6G5aeigIqWjNQwYvcLmrIHYhmWaaUobJkJ1J97ipetpp7n
         QaQR13sWaVNxcGp6syebGjSJrt+BzQh+Eiq9TMIWb8gdCdpxTmaSzfbI7Moy9f7kHYas
         AyD/NShQ+w/EcbJy7NFtGAsnI6sZeYJmre0A7NOtEuivqwDrkvWgRUdXs/jesUxZQryi
         TZSAOvVtFzJdU81SqZ/5c9GSf65zqsWIBnZbtDD6kjH/ELY8LtW8AC2jNGeZi1+FDpfB
         goFg==
X-Gm-Message-State: AOAM5324VXs0eXgOa98xEza32RdG/1TkfuoYyj2tAoxOebGVClpVDL8q
	hzpgFUoc4Ikrqxm7xRPUg8DsGJqnpkBttlYsW3Q=
X-Google-Smtp-Source: 
 ABdhPJyCsIV3gHDEsMX70H3SviSIjHpsWeO15ZQ00xCZi84N5FILSNnZC/FqpLoId662SQ4jmF5PmCusllhKmmJF9ms=
X-Received: by 2002:a05:6214:2a83:b0:435:3075:e990 with SMTP id
 jr3-20020a0562142a8300b004353075e990mr93642qvb.110.1646424981111; Fri, 04 Mar
 2022 12:16:21 -0800 (PST)
MIME-Version: 1.0
References: <eRa7.1646421486482517035.Pqfc@lists.yoctoproject.org>
In-Reply-To: <eRa7.1646421486482517035.Pqfc@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Mar 2022 12:15:55 -0800
Message-ID: 
 <CAMKF1sqMQVeTO_FyyrUWRmV+JjLFH5mxNTvL+JxDgoBrck6V4w@mail.gmail.com>
Subject: Re: [yocto] suricata: enable lua support
To: gary@missionsecure.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 20:16:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56369

perhaps you needs to add lua to DEPENDS as well.

On Fri, Mar 4, 2022 at 11:18 AM Gary Huband via lists.yoctoproject.org
<gary=missionsecure.com@lists.yoctoproject.org> wrote:
>
> How can I enable lua support for suricata?  According to
> https://suricata.readthedocs.io/en/suricata-6.0.0/install.html
> I can add --enable-lua, so I created a suricata_%.bbappend file with
>
> # Add lua
> DEPENDS += "lua-native"
> RDEPENDS_${PN} += "lua"
> EXTRA_OECONF += "--enable-lua"
>
> But when I bitbake suricata I get this error
>
> | checking for magic.h... yes
> | checking for magic_open in -lmagic... yes
> | checking for LUA... no
> | checking for LUA... no
> | checking for LUA... no
> | checking for LUA... no
> | checking lualib.h usability... no
> | checking lualib.h presence... no
> | checking for lualib.h... no
> |
> |    ERROR!  liblua headers not found, go get them
> |    from http://lua.org/index.html or your distribution:
> |
> |    Ubuntu: apt-get install liblua5.1-dev
> |    Fedora: dnf install lua-devel
> |    CentOS/RHEL: yum install lua-devel
> |
> |    If you installed software in a non-standard prefix
> |    consider adjusting the PKG_CONFIG_PATH environment variable
> |    or use --with-liblua-includes and --with-liblua-libraries
> |    configure option.
>
> lua and lua-native appear to build.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56368): https://lists.yoctoproject.org/g/yocto/message/56368
> Mute This Topic: https://lists.yoctoproject.org/mt/89556445/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

