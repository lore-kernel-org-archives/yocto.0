Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.968.1616686328659219195
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 08:32:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=AG+LKwjr;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.43, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f43.google.com with SMTP id e18so2716286wrt.6
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 08:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UZJ6RDznpZgoUdfYuF7kKj+j3M8BU0+Csw5neIaqGRY=;
        b=AG+LKwjrXqUlDdneb9UonM/m4rKgukDsLlskxSk5jjn1yL13hXxdc9x+abMS81AZ5T
         fKc0ZlAiiAqMgzBUNBYMGEwNCXVzC6eEjTyx3/Fx+nGC817fPAbOFZlyEstoAReCUm0K
         CtmmbfTOC1l7DpKF3FUocTFWssGD/p/MB4JaP5p9/sGNJwoBIEMnKVwrYX5QCSPMTtPl
         IAdX3Jj3ynIswWRVAYR3iNSNeWqbG/SqFu7w4U6SjSooefwNzuFUnXgk5J3MVeF7qJep
         9IO6ajaH3kM+KVBkcr8agZ6TeonXDZdCnvpf580E/04maGqNHZr1nXSpfEM295HMS6qI
         PYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UZJ6RDznpZgoUdfYuF7kKj+j3M8BU0+Csw5neIaqGRY=;
        b=OA+IvVi+ADQxRFLpRLS3yWTEZ7s2zva1sYXydnV+9SDbj+ZfBuKEXAMak9CkOIbHmL
         Elu2F1g304U+HZYDj7a9BhxHWiN7MqxEihI8Kv9ql837R7LpsnO6LjQ2yrkoZ/hyWSTz
         1VThPdr9Ny1mTg56Cwx3KcvIhYydTOBPYrBhjR3Ugr1B7wmWz1vB5nDkwGj0oIVXMJvr
         OsFDQBEVJxArDx8ZSpYQbeovvVkiUoXZMoXSUTohA9lZAFQYSGUfzi80WuR+nVCmgJ7f
         5zJI6sAeqMKckzark2jJn+noBvS3WvWCXc7wOCURHXVPpJ0P0cujbszaHRb4O6U4Oryh
         IMvA==
X-Gm-Message-State: AOAM530uj/YwTgPMCKO//jn8NfpwaDXYkO5clBQeqgeE1Zw1FJdXmTCg
	yt6FPpq20NqT3Wi25GW/ar6dOf/mvkv2sDUUwWDkeQ==
X-Google-Smtp-Source: ABdhPJzTHEp/2XN73RRN+ogPiutnRWaxF9u4MKcc0TH+ecWZuU7OwiJLWuXFQkisd2tF3TDUmxlQOIWZreoPlKg+IYs=
X-Received: by 2002:adf:ed46:: with SMTP id u6mr9587290wro.350.1616686326912;
 Thu, 25 Mar 2021 08:32:06 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1616625264.git.steve@sakoman.com> <347bae056acff57ee70d8dedd121ed04e4e4c554.1616625264.git.steve@sakoman.com>
 <3af78152f03202ea5b93ea02c6fc4314cfae52f3.camel@linuxfoundation.org>
In-Reply-To: <3af78152f03202ea5b93ea02c6fc4314cfae52f3.camel@linuxfoundation.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 25 Mar 2021 05:31:54 -1000
Message-ID: <CAOSpxdbVDHJFRtuROth0VT8k-sa8zpZ8dj0E5E-KjfQtmOZc5A@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell 01/23] scripts: Add runqemu-renice.c for renicing runqemu
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 25, 2021 at 4:20 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Wed, 2021-03-24 at 14:39 -1000, Steve Sakoman wrote:
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> >
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > (cherry picked from commit 838be1a00c0383b63d1ab60aa991919404b82655)
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  scripts/runqemu-renice.c | 44 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >  create mode 100644 scripts/runqemu-renice.c
>
> This is another one which is only relevant to master, it isn't used from the
> older branches.

OK, removed!

Steve

> [Basically the autobuilder has some code which it pulls from the helper
> but uses it from the master branch, it isn't release specific. This is
> the janitor, index code and renice offhand, there may be other bits I forget]
>
> Cheers,
>
> Richard
>
