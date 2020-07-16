Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2447.1594931265905407023
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 13:27:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=QE5quVmj;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33944E01E9A; Thu, 16 Jul 2020 13:27:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.173 listed in list.dnswl.org]
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0D12E01E98
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2020 13:27:43 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id k22so6186095oib.0
        for <yocto@yoctoproject.org>; Thu, 16 Jul 2020 13:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i2yUVhQmx911jQNd++OuA1ban4YoCMb3dpIAxKw5J3g=;
        b=QE5quVmjaw8L6y5Xred+yZ4rR4QYg5MZU576IviTqe0PbxKik2vlVykLFyaPowlWId
         Pos8C0XrcPI6RK92s0YAZMC2gsmEXy3uAIYOOTU1JRPU2OVh/qWS8+o96VAC5hjfPU9n
         Nt9Hlrdf3bPt0ZHpFTTrSVNOocScmffik0ZIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i2yUVhQmx911jQNd++OuA1ban4YoCMb3dpIAxKw5J3g=;
        b=n/XQcXcmoEdBGjxXct6gm0XsFIffzpyneC4nhuuuArq2840/Bfiftc4OgwvuiDwQTP
         ZDXrTKrwOn7q8mX+x6dIHQBCP61KZtx5I+M414nItEcNbFJk9erBr1BeHK2juhD+qk50
         BsMqQc61YOpO5OrjTSHn34/LoCtgP+48HbSYBdETq6PHo/d1hz+N4mW+NnO4l4tXrmj/
         3rgg7WsvFvNx9TiH9uyMf68R0BUrU3gbYt9HsLJcPw1tBNLylUIvU0a2DU6ZuggocW5R
         Py6yOENWaSG37yV1l9v0DIoYCHUCM1A13aG+S2rWZY9PyErlfRKkigKhI0zxNbnQGV3l
         6nxg==
X-Gm-Message-State: AOAM532tAhp3qXtklTMcCEJgf6Y1HxLp0YnrCjGAO+awvSuboSdTs0OF
	+kDrxUJJLg+biQ/7xfMvThjbuhJqSkNUWaIZ4A19YYRa
X-Google-Smtp-Source: ABdhPJwrNg7WKuCUlgAJttOqDAVXX9RbjCxc2CRIL7NiPx54a5ZVj4G5QbWx1qzEc2Egv+Xz6zieFTtBaWL4krM+u4M=
X-Received: by 2002:aca:4a04:: with SMTP id x4mr4952578oia.152.1594931262758;
 Thu, 16 Jul 2020 13:27:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200716200503.GA11596@linux-uys3>
In-Reply-To: <20200716200503.GA11596@linux-uys3>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 16 Jul 2020 21:27:32 +0100
Message-ID: <CAM9ZRVvTKizo0evwzkh6GUbb=KUgLYh929BV+1inBY=LsTYYNA@mail.gmail.com>
Subject: Re: [yocto] Yocto Technical Team Minutes, Engineering Sync, for July 14 2020
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Jul 2020 at 21:05, Trevor Woerner <twoerner@gmail.com> wrote:
>
> Yocto Technical Team Minutes, Engineering Sync, for July 14, 2020
> archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

Many thanks for taking these notes, I missed the call this week so
good to be able to keep up to date :)

-- 
Paul Barker
Konsulko Group
