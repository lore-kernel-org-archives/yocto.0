Return-Path: <pidge@pidge.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4339CC433EF
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 12:51:51 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.31094.1641819109998667480
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 04:51:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pidge.org header.s=google header.b=T9P8T9yh;
 spf=pass (domain: pidge.org, ip: 209.85.221.48, mailfrom: pidge@pidge.org)
Received: by mail-wr1-f48.google.com with SMTP id t28so19805267wrb.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 04:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pidge.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OSHp5362O05zoOcgxLjlnHBKXzSP1uyh/3G2WwBzTjI=;
        b=T9P8T9yhIKYhr0rDUr2YfqMrxxV3bsNLdcKlk89EnbSv/TgfcPyWjISVFjTXszjP9e
         4R6mtIdOaMHjkLAjUWrr/afl4vL+KLe0KCL0XQtttru+oy7ZhjIABx9m5kaClq1vgO8M
         aYqF+Ha4+AABhVyAjiLdBt3molhRk4Y40oV6XWi7QndWR6ELqr5BN3aZFNRfd5aDmggg
         JoxYmHuakMS1RZGTYsfMnXVMt6U4xGDTakMW/6WcP9awOwnj95kORBqfp8vK/hzhYao8
         hb9Bx3IhjrrbRGTu0V/rcrTWb+bv2xceKHfvVpyj2s9FuDUvV3bPxJfbTlhU6vnRac2J
         UsPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OSHp5362O05zoOcgxLjlnHBKXzSP1uyh/3G2WwBzTjI=;
        b=V+Ee1uK78VYqulZD2jSZZCEVVoO3macNVvIsVWly6yJPEiwF2x32hZBC3VJ/fxjRKN
         IT+XSAz5Lil7RbdiQ0SjouC6vn1XhgtaRT6XXcOYn1FoJ6PonZEv6zivkfAJFZvGgL65
         CYHyXnKKQOcpjYV+XSfv7YoV1cD7d3e3pgRNMItwl2DFuB4tElgami+ynYt9zwL2HrGZ
         atmVCV4BLUR9QINe1EHYgIUsWmhV5IkC5T0gC06Iqzl7RxFq7z8xF7SjSnapWrxPKMDZ
         YLZuHTbgyZF73FK1/Cfz/eKs6kwFvRi9bdY7yOal4oV96Jdskb+YTM2G1Tp5wJP0rQWF
         BFKQ==
X-Gm-Message-State: AOAM533KKkvrG/Z5y4dyAQSp5Jj6TmzoyoaK5XOUWzNgSKtH9FJBseZt
	MqCG0UCz86yh3rOAuxorXwGXicBfNf6YX0iC2uRgXw==
X-Google-Smtp-Source: 
 ABdhPJzZUJFVNuM2FNC2rJR+6sM9z8X+42mXsyV8n8lPZt6a7t/bVMS/kHx4sNCxzEFbfebAoG6VVhLfCdsy0Qa+fno=
X-Received: by 2002:a5d:6f18:: with SMTP id
 ay24mr3270578wrb.694.1641819108092;
 Mon, 10 Jan 2022 04:51:48 -0800 (PST)
MIME-Version: 1.0
References: <20220107141025.218084-1-pidge@pidge.org>
 <CO1PR11MB5026AA3C25B9A702ECC5FB1BC4509@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: 
 <CO1PR11MB5026AA3C25B9A702ECC5FB1BC4509@CO1PR11MB5026.namprd11.prod.outlook.com>
From: =?UTF-8?B?RWlsw61zIE7DrSBGaGxhbm5hZ8OhaW4=?= <pidge@pidge.org>
Date: Mon, 10 Jan 2022 12:51:12 +0000
Message-ID: 
 <CALnXEm6CfFjoAiBNzEQwF4rc6EA9K6AqBrHsH1UJynCqz0ykBA@mail.gmail.com>
Subject: Re: [meta-zephyr][RFC][PATCH 0/6] Additional machines and removal of
 MACHINEOVERRIDES.
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	=?UTF-8?B?RWlsw61zIE7DrSBGaGxhbm5hZ8OhaW4=?= <elizabeth.flanagan@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 12:51:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55770

On Mon, 10 Jan 2022 at 09:36, Saini, Naveen Kumar
<naveen.kumar.saini@intel.com> wrote:
>
> Thank you Eil=C3=ADs N=C3=AD Fhlannag=C3=A1in.
>
> I faced failures, when I tried to build few recipes:
>
> (1)  'zephyr-lvgl' with 'nrf52840dk-nrf52840' machine.
>
> Error log:
> abi/zephyr-lvgl/2.7.1+gitAUTOINC+e4da3e5280_b0612c97c1-r0/recipe-sysroot-=
native/etc/quiltrc push', 0, 'stdout: Applying patch 0001-cmake-added-missi=
ng-file-ext-to.patch
> patching file CMakeLists.txt
> Hunk #1 FAILED at 58.
> 1 out of 1 hunk FAILED -- rejects in file CMakeLists.txt
> Patch 0001-cmake-added-missing-file-ext-to.patch can be reverse-applied

This patch is now promoted to zephyr-kernel-src-2.*.1.inc so removing
this from zephyr-lvgl fixes this.

>
> (2) 'zephyr-http-client' with '96b-nitrogen' machine:
> | Merged configuration '/home/saininav/work/development/zephyr-workspace/=
poky/build-zephyr/tmp-newlib/work/armv7m-yocto-eabi/zephyr-http-client/2.7.=
1+gitAUTOINC+e4da3e5280_b0612c97c1-r0/git/samples/net/sockets/http_client/p=
rj.conf'
> |
> | error: Aborting due to Kconfig warnings
> |
> | CMake Error at /home/saininav/work/development/zephyr-workspace/poky/bu=
ild-zephyr/tmp-newlib/work/armv7m-yocto-eabi/zephyr-http-client/2.7.1+gitAU=
TOINC+e4da3e5280_b0612c97c1-r0/git/cmake/kconfig.cmake:269 (message):
> |   command failed with return code: 1
> | Call Stack (most recent call first):
>

Ah, yes. This is caused by having ZEPHYR_MODULES in the sample
recipes. I've removed them from all the samples builds and have each
one building now.

<snipping a lot of lines>

As for python recipes, I'm removing dups that are in meta-python.

And as far as I can tell, the last is documenting the machine
generation recipe. I'll have a new patchset today for you.

-b

