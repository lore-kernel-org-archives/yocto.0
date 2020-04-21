Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.2390.1587484542072994344
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2020 08:55:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=vcXeK5pq;
 spf=pass (domain: burtonini.com, ip: 209.85.167.44, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f44.google.com with SMTP id f8so11512566lfe.12
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2020 08:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pYIpes6hFSTmnP4ikdDNLYWBJhgyATpx77p4coMfngc=;
        b=vcXeK5pqQSBDs5h5/W8XO6ctM3kXJafndqQH5GdHe1+zLYyxyDR0J6dPFFWwTyGN49
         IqRppwFTt6ho2/1kJCR53IF1NzrzjNwjQ9mCtIbZkNux8MaxjBc7eLGQttT1lL7SQxPK
         Xq6J3qB/xsRQ+cCQBIME0Wfkh4CJ3piVAt1eh6B4mN/falU/kQaPKN8xtcng+l40sgwf
         qkQ4YB0H9Gu99Cd9Y/TdVGMXMaBYiQyYrLKSswCMVpVEBBfuW+bXHkp9LuNH3MGaJjTj
         2Z9FFMaW2uvhDPBjn7L4kQhiGwcxc3wTkItfA0uOwQ0FZvQ5Wo4HkihzkXrxKaeXeh/n
         ygDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pYIpes6hFSTmnP4ikdDNLYWBJhgyATpx77p4coMfngc=;
        b=V+VeauZTC9tvf5Zwr/whFfxYTiW5qcxViptiRS+aD9l1cP1K0NDK6WlJauAXdBEhM4
         UfMvDVqmSdbaAOTf0tNiv5Deb/XQo0BwV+pT4+xrGV265CduCg9SGxFG6sUEWQJlpIuG
         t0MEI45ihkGEf/Bvy4Aqn4MsovPWM9eIhU+acnGmvz+b0B7uSwMuLfpml90FfxegxXRb
         oTaoNNbTm5BwXMboRClT4FbHWRgjU9ggsWN3CJt0ZPE5qUQo9Vpa6FggX8a1Xf1r858S
         404OyjKjc3Pos9sr/1awuPZwAyl6QFt0jw3trYMbPub5LrxwSGlbbgd0KaL0EDYIo28J
         pUNQ==
X-Gm-Message-State: AGi0Pub0YhThricGzQosf7Rp9gfMseSFd/4J5P28VMgD8XWs0CDezXZL
	Amc+wBxlfSpl58smzeNgLeouDNg6DvrTqMpFCsg7eQ==
X-Google-Smtp-Source: APiQypLy91uPyXZ2LTSr7suGfbUdz9TnkPWzC5XkKN1lXU6xK7Fo6ZvnLOCje/QIDf04v++j/Y6y+oTkUCgAC1OdeLs=
X-Received: by 2002:ac2:4248:: with SMTP id m8mr14451801lfl.211.1587484540161;
 Tue, 21 Apr 2020 08:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <1dce445e-1744-a50e-94c6-8e8d632ecafd@northern.tech>
In-Reply-To: <1dce445e-1744-a50e-94c6-8e8d632ecafd@northern.tech>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 21 Apr 2020 16:55:28 +0100
Message-ID: <CAAnfSTsOcXS+q8PTriU4xBN0Md-a+X5yJqOHUOePOeaMKEA-Rg@mail.gmail.com>
Subject: Re: [yocto] Building XFS images
To: drew.moseley@northern.tech
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Apr 2020 at 14:43, Drew Moseley via lists.yoctoproject.org
<drew.moseley=northern.tech@lists.yoctoproject.org> wrote:
> I'm attempting to add image type support for XFS images.  The utils are
> in meta-filesystems and seem to work just fine.  However, mkfs.xfs does
> not have the ability to add files into an image as it is created, which
> the other mkfs.* utilities do.  Outside of bitbake builds, I can
> obviously just loopback mount and copy using sudo to ensure ownership,
> etc is preserved.  It doesn't look like pseudo/fakeroot support mounting
> images and the copying with ownership.  Is there a mechanism to do this?

Right, to loopback mount you need to be root, and there's only so much
magic pseudo can do.  Even if you could loopback mount as a user,
you'd not have permission to write the correct ownership.

mkfs.xfs either needs a way to create a file system from a directory,
or an offline way to edit the filesystem.

Ross
