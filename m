Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3992.1608103026000123170
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 23:17:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SpbSfTo9;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C7C6338C0630
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 07:17:05 +0000 (UTC)
Received: by mail-ed1-f52.google.com with SMTP id v22so23683482edt.9
        for <yocto@yoctoproject.org>; Tue, 15 Dec 2020 23:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bfh+nS6uc+qgf0mYKEtJsGm2z+lHsYwV4Ni/0vtfLII=;
        b=SpbSfTo91FGO6koYmsEMv21y12rYjiZoATRDZuI0hcs+Ht3xivwqOrMfY0dLpe71HB
         SCd7srGvt5laGz1g5AQcyx6MqO2lhu5nqJsxhBeN+qjSgTGl2TOT663b9F4Zx9ZNQEa1
         LC7Q+TT8PeXMKj9/gCxBCFoMFFRjsA5zTThuWAsYXAZgKp+7buskLXBgGYnkWqXRoV3v
         D7YZWWj0vwb700VNtSQCH/xzRO+PxQX11wpI6D0IZavHDnrJqyrXDZ6H7rPAWtmNh4dy
         Qq1g6GYsRfD3WBb2zgE44RTAFBZWe6luSUXsChnZhVMIgvQrCj0xgZu5RHfwRe9KdELs
         ACXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bfh+nS6uc+qgf0mYKEtJsGm2z+lHsYwV4Ni/0vtfLII=;
        b=pBeMNQc8AHNG4HF2xgOxWGAuSV/a/wQX9ed/+V6Yvoq+TOlMM5Ma45ZMcIChM7zDO6
         cc0o5sl0QVjfyXOs8jnL/BTlxtoJf8EiMqtuUrjGWZHY+GFvRYOy18+svx1YM7k5rBf5
         gkFbeEIeSpgF+ao7pfxMUtDUlHVYf3KQ//ha1iTO5B3tKi0S1pntBTs3ylrrZsGx4p+6
         Mzj0Sm6KzXFM4IpSRAAs7kj2xJ6EvG/FGegAyseti8qrSv8leRlIju2nD6H4g5AdQGKS
         sj6yjq0qXDEevXlOhXUNWT3RXkh30YC3VczI7HcbARnWNU6gRlQbt8QVxC6nyl7Tx8sX
         WBTw==
X-Gm-Message-State: AOAM533lIXa7h5Z2jHV+EY1kHdLgEyLx0ztSTtI5qziTJwOkl/bRlGA8
	4zuJjXviq2lhJh/CreEP//28EKcPE6D2kVzJXM4=
X-Google-Smtp-Source: ABdhPJzU4msljEIFnkxqEDI43BVJ176D4451s8bVhWQYK53Gv3UX5J8BPgUQfsOVLcNKHo29uQagoEVLw7stRpjNudo=
X-Received: by 2002:a50:bacb:: with SMTP id x69mr17162599ede.39.1608103023919;
 Tue, 15 Dec 2020 23:17:03 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv34BX_E69-9bPbT2NRikT+uXHSsNVvxg29Tsoi490ameig@mail.gmail.com>
 <48736258-f839-ab1f-dacb-aa667dd2297e@windriver.com>
In-Reply-To: <48736258-f839-ab1f-dacb-aa667dd2297e@windriver.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Wed, 16 Dec 2020 08:16:52 +0100
Message-ID: <CAAfyv36Gt_CYfw6KY3WZeodcUjhvXO_LVkrT1cqSuHKiBss6HQ@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow] maintained?
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto <yocto@yoctoproject.org>, "Jia, Hongxu" <Hongxu.Jia@windriver.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 16, 2020 at 1:07 AM Randy MacLeod
<randy.macleod@windriver.com> wrote:
>
> On 2020-12-14 7:56 a.m., Marek Belisko wrote:
>
> Hi,
>
> I'm l;booking for a tensorflow recipe and forum that meta-tensorflow
> have support for it (also saw that gatesgarth branch is there) but I
> cannot build tensorflow + tensorflow seems to be a bit outdated.
> Anybody know if this layer is maintained? Thanks.
>
> I succeeded in building tensorflow last night on master with
>
> the layers in WR Linux:
>
>    https://github.com/WindRiver-Labs/wrlinux-x
>
> Can you explain what host distro and collection
> of branches and versions you used and what error you saw?
I'm using poky, meta-openembedded and meta-tegra all dunfell releases.
I added dunfell to compatible layers in meta-tensorflow and then getting this:
WARNING: --batch mode is deprecated. Please instead explicitly shut
down your Bazel server using the command "bazel shutdown".
INFO: Invocation ID: cd0ca5b3-b48c-458a-9ca1-11fb5292749b
Loading:
Loading: 0 packages loaded
Loading: 4 packages loaded
    currently loading: tensorflow
Analyzing: 8 targets (5 packages loaded, 0 targets configured)
Analyzing: 8 targets (179 packages loaded, 2877 targets configured)
Analyzing: 8 targets (282 packages loaded, 8970 targets configured)
Analyzing: 8 targets (308 packages loaded, 11447 targets configured)
Analyzing: 8 targets (315 packages loaded, 12715 targets configured)
Analyzing: 8 targets (341 packages loaded, 16192 targets configured)
Analyzing: 8 targets (345 packages loaded, 18281 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
Analyzing: 8 targets (346 packages loaded, 19684 targets configured)
ERROR: /home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow/1.13.0-r0/git/tensorflow/tools/pip_package/BUILD:149:1:
no such package '@icu//': java.io.IOException: Error downloading
[https://mirror.bazel.build/github.com/unicode-org/icu/archive/release-62-1.tar.gz,
https://github.com/unicode-org/icu/archive/release-62-1.tar.gz] to
/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow/1.13.0-r0/bazel/output_base/external/icu/release-62-1.tar.gz:
Checksum was 86b85fbf1b251d7a658de86ce5a0c8f34151027cc60b01e1b76f167379acf181
but wanted e15ffd84606323cbad5515bf9ecdf8061cc3bf80fb883b9e6aa162e485aa9761
and referenced by '//tensorflow/tools/pip_package:licenses'
ERROR: Analysis of target
'//tensorflow/tools/pip_package:build_pip_package' failed; build
aborted: no such package '@icu//': java.io.IOException: Error
downloading [https://mirror.bazel.build/github.com/unicode-org/icu/archive/release-62-1.tar.gz,
https://github.com/unicode-org/icu/archive/release-62-1.tar.gz] to
/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow/1.13.0-r0/bazel/output_base/external/icu/release-62-1.tar.gz:
Checksum was 86b85fbf1b251d7a658de86ce5a0c8f34151027cc60b01e1b76f167379acf181
but wanted e15ffd84606323cbad5515bf9ecdf8061cc3bf80fb883b9e6aa162e485aa9761
INFO: Elapsed time: 21.350s
INFO: 0 processes.
FAILED: Build did NOT complete successfully (346 packages loaded,
19684 targets configured)
FAILED: Build did NOT complete successfully (346 packages loaded,
19684 targets configured)
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in:
/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow/1.13.0-r0/temp/log.do_compile.6577
>
> ../Randy
>
>
BR,

marek
--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com
