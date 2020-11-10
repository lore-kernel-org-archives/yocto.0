Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.25299.1604999639028792580
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 01:13:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=yoOiQEmk;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.181, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f181.google.com with SMTP id y25so12921598lja.9
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 01:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=BmuH6t9mGDBkWSnKAGNrTNWwrNiEG+Q6Ypw9CtGc+ro=;
        b=yoOiQEmkZaZMWd9Th+c2je9S2UoOEL+mV2IAkWRWUTcf/3X7/vo0fPFAnlzkIT2SHD
         gdShV/NChejWm9Mcf4rkUDPfmOVN/jI91BNznHQe2I6HvgNlc/2OjHkD2y7Ypq0ziqXA
         j4ALJEOg5xWYlPBQU3r3PuKa3hR3R01lqDRfnEZCDBy200yprZpsynF4/p3fmKuc8HdD
         6AJowkcp0UNopr/qNZEs0hN2kf5FRvsfysZcTZlC5TtJ+7MWWpbO92HNHWEr8ncD0dAD
         qCF4jXAbw8BLbLykyHB5E3XtoS7GztZroDnCKi/hg0+Ky+SHY18DPhSA2G+Bm0gnWNzR
         qj/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=BmuH6t9mGDBkWSnKAGNrTNWwrNiEG+Q6Ypw9CtGc+ro=;
        b=T1WH2ONxWEbssl/S15rVZZt+ioqIqIAIXHjaCnkf+IhMlvVc/nVjj/BxpXuNG54q93
         FgJS5zw3l5kbicE3zAzuCAIp3ojHn6WvfYhcfA10I0x6AzsFIy00FbzGVlY3F7Ao6uaU
         KDX6W4kdgVY5Ln5Vzy5b4kDr4rPHL1ci1XSPRmZrjqPI2mt/24jUUFdRwK3BiO318AJS
         3LPhBvzPKeqSvzOYVPehtFKT8wL+yzU8D3y8xtBOktOqy7BtQug30Ye8pCMO23EgcAAG
         xWN/iYbcqjzFvDW89Ru6UMNn/+q/qrIbDGR8L22RivO9s43q92Qbb9THvdvUAKLyEZ44
         X51Q==
X-Gm-Message-State: AOAM533/xM1CcT+sLJApNUvphfXh+yFTEjygiNhSImLtmtHde24S+1Z1
	CaSWUwCLSzCFuY/N6pzGnbg3/rwgN2jq9pST9udnlg==
X-Google-Smtp-Source: ABdhPJwNoMrAXjszBQFqToUrNfVAg0Eey8M2Fwax7v5onU1V4bwTG/AmQDMeNb4J8XpwtGTrLLxnYqZbpLedzO+BLmA=
X-Received: by 2002:a05:651c:130d:: with SMTP id u13mr3396817lja.425.1604999635833;
 Tue, 10 Nov 2020 01:13:55 -0800 (PST)
MIME-Version: 1.0
References: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com>
In-Reply-To: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com>
From: "Josef Holzmayr" <jester@theyoctojester.info>
Date: Tue, 10 Nov 2020 10:13:29 +0100
Message-ID: <CAEt6NwqMjZN6_1497LjDLhxb-Xn+5xu1O7jEKbnywHOKOju5XQ@mail.gmail.com>
Subject: Re: [yocto] Error when building eSDK for a `docker load`able tarball
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: yocto@lists.yoctoproject.org, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Am Sa., 7. Nov. 2020 um 16:04 Uhr schrieb Manuel Wagesreither
<ManWag@fastmail.fm>:
> ERROR: Task linux-dummy.do_fetch attempted to execute unexpectedly
> Task /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linu=
x/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manw=
ag/recipes-core/images/bora-container.bb:do_image_qa, unihash d18d2179024bc=
6595110c2f10112e7a8e2bd6021d3ea754af30ad9b68ebd9844, taskhash d18d2179024bc=
6595110c2f10112e7a8e2bd6021d3ea754af30ad9b68ebd9844
> Task /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linu=
x/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manw=
ag/recipes-core/images/bora-container.bb:do_image_complete, unihash c2d86d4=
2a7fc84df5f6ad94b3ed65f6991b3e680d99d40e07ee631aedee9970b, taskhash c2d86d4=
2a7fc84df5f6ad94b3ed65f6991b3e680d99d40e07ee631aedee9970b
> This is usually due to missing setscene tasks. Those missing in this buil=
d were: {'/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-l=
inux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-m=
anwag/recipes-core/images/bora-container.bb:do_image_complete',
>  '/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/b=
ora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manwag/=
recipes-core/images/bora-container.bb:do_image_qa'}
> ERROR: Task (/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-p=
oky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/m=
eta/recipes-kernel/linux/linux-dummy.bb:do_fetch) failed with exit code 'se=
tscene whitelist'
> NOTE: Tasks Summary: Attempted 142 tasks of which 141 didn't need to be r=
erun and 1 failed.
>
> Summary: 1 task failed:
>   /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/b=
ora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta/recipes=
-kernel/linux/linux-dummy.bb:do_fetch
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ERROR: Logfile of failure stored in: /data/proj/poky/build-bora-docker/tm=
p/work/containerx86_64-poky-linux/bora-container/1.0-r0/temp/log.do_populat=
e_sdk_ext.8096
> ERROR: Task (/data/proj/poky/build-bora-docker/../meta-manwag/recipes-cor=
e/images/bora-container.bb:do_populate_sdk_ext) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2358 tasks of which 2356 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>   /data/proj/poky/build-bora-docker/../meta-manwag/recipes-core/images/bo=
ra-container.bb:do_populate_sdk_ext
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ```

I can reproduce it, the issue being caused by the combination of
linux-dummy as kernel provider and the esdk. While there is no obvious
fix at the moment, Bruce (CCed) knows about it and will have a look.
Additionally it might be worth filing a bug.

Greetz
