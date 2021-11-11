Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1652C433EF
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 22:33:16 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.7092.1636669995946532034
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 14:33:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GMxoFcm9;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id
 c71-20020a1c9a4a000000b0032cdcc8cbafso5429598wme.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 14:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=WEQajN1SBD62bfEoIhBCNoQ8Vbaq0d/qH3ORMMxt+Io=;
        b=GMxoFcm9O0bwfjQyOjdLZLw81goXTzlYwRfHtAo+1pY58V5A0+AhTqQYdcDII5lJXy
         7XP4BLO+/fHk0aHgSDhheNSNa2ruXKqeQao0EXwuT511uc/xB7AGPm8APywLQi1tS7ZU
         7fSlnhcnu2SNEbOUEi5OzPwp0PQJ7psh6X9s4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=WEQajN1SBD62bfEoIhBCNoQ8Vbaq0d/qH3ORMMxt+Io=;
        b=JBlVAHTj/udDr2bZa6Ea8higiADY3e+ltVdgHFgkYchq6Tsn4NIw1u6ZPEXkeOJg6r
         0iKQOBBkvM3aGrEwpu2/KuSbYihkrRk84E/HsFrAdcJWapxh0aF3X1R7yc0y5OPyPk/c
         PxJcvf24kqfhF7KaN33JYjwJjm2ZCmlkt3QjpYqmwOpXOH4JT8RewdFK5LVQkDeP6zbX
         aRYfGP4qrgjoTYRbagr+rCpO5+WLbkjey3wT6SNIMe0cTXKfAdkg5bHy/pcEaY9ybmwL
         2Yw3ZvSr8Zg5WkabHYRIGtqoLWeDgqEoruMdRXOC5DuFjeZ70KouKATVQyuAwI9xchEa
         ic+g==
X-Gm-Message-State: AOAM530cPkgDuiBmFFFqcXe489sqxNyph3YCSK8io8RhcGK0zdm1athL
	PQ1cjUHB4h3sNb31/Bp2nui7Hg==
X-Google-Smtp-Source: 
 ABdhPJysSSEDpOe9DrnoqU3Oe9SiW/5slb2U1kC3bLAKntRWqJQN4cFpnw7GoBV8qwhKE8cASqwTTw==
X-Received: by 2002:a05:600c:202:: with SMTP id
 2mr11794049wmi.167.1636669994309;
        Thu, 11 Nov 2021 14:33:14 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c0bd:72b4:105a:2914?
 ([2001:8b0:aba:5f3c:c0bd:72b4:105a:2914])
        by smtp.gmail.com with ESMTPSA id
 x13sm4318323wrr.47.2021.11.11.14.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 14:33:14 -0800 (PST)
Message-ID: 
 <de2b688dc149dff679bb597c99f5c4bf6b77319f.camel@linuxfoundation.org>
Subject: Re: [yocto] Yocto suddenly creating directories with 700 instead
 755.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Manuel Wagesreither <ManWag@FastMail.FM>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Thu, 11 Nov 2021 22:33:11 +0000
In-Reply-To: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
References: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 22:33:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55318

On Thu, 2021-11-11 at 17:10 +0100, Manuel Wagesreither wrote:
> tl;dr:
> If recipes install directories with `install -d path/to/dir`, how is the default
> mode determined? What can cause it suddenly (that is, without updating
> metalayers or similar) to change from 755 to 700?

You don't mention which version of the project this is with which may be
important and relevant as we've fixed things related to these kinds of issues.

Bottom line is that file mode you see on disk will be determined by the umask
bitbake is being run under. The file modes on disk are not the file modes used
though since pseudo emulates modes as well as users like root.

The 134 exit code is usually pseudo aborting and there should be information in
the rootfs logs about which files it had concerns over, likely inode mismatches.
Also see the WORKDIR/pseudo/pseudo.log. This has it's own wiki page:

https://wiki.yoctoproject.org/wiki/Pseudo_Abort

I'd also add that the core directories have permissions determined by:

http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/files/fs-perms.txt

and code in package.bbclass should be ensuring those directories always have
consistent permission bits.

This brings me back to which release/version of the metadata is this?

Cheers,

Richard


