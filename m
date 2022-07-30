Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A28C04A68
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 17:23:35 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.5075.1659201788894494788
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 10:23:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cep1yA06;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id l3so5778094qkl.3
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 10:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/grh6PJ8jP1NbFdoz+pkhN+Cih4tiOl57fCnQckZSB8=;
        b=cep1yA06TdWBLrABVx4b3hGjrGjp+FHezI74G1593PyTSpKFFnIdzYa3rJs+XGKbmX
         kYqgqJBuxRGt5iSLOkRwnKqcp39eWxH1vkM9KbG8Jf5Sq+p2N62HjThg/qiKURc9VkCu
         zV42A0f4Cnu3CbmsFjYZMUWjQgV33gKGPl2sXoDvhCZlwJW8ES6U9V7iGYNVdJPOFdz4
         0RRkfjVsb8DcMbN2u2hjTySLYDJrL+SBrN1jaEaqNZ3I2irxYC1S8cmlOctQAj7F2yfH
         AchD+1p5zn1y1X6hQEgP/vOOrbb4f2gytrsLh/J4R+mKo3wdc4q3uf5uBSZkZvzJQMxf
         0EyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/grh6PJ8jP1NbFdoz+pkhN+Cih4tiOl57fCnQckZSB8=;
        b=mXS6VgBmXbREpudZnxxgMtJzgeH+Yord989lhsXPXGrgrSl0sR47OtD/ncl/ol1bp7
         w2jh0v2FVA71yU1d9jksl+X1FCNzSw+j+S6fSYwYByfEEMnud+4OeJnbQRFKgSWz64+y
         reX3Rb5+ixEee1A9kW9Jsex/Ha1QFIxhd4jPsa5Dxtp3glNzuo1j0Sp5/lbd0WutI8WR
         s2ShsHqDILKdDij2n4zJVNtDbikVi6fEvVCUyBdK0/otTsRSPOjTAMgHtEA3V6EkwtYs
         ew/Uxbz1nxPcF/Xse24R3rGAkmREvG8X9xAuaoplDlsMBp9PYkbkFMyawE9sBRpkY4S3
         X1gw==
X-Gm-Message-State: AJIora/Jox3qtztNLh6YQiG+exP+dPeKp8LUtRYwjzaabPKlpJ4L7F2i
	pSRBYgbx5OmaVrxvAu04XskurMwab7NUwrGvceM=
X-Google-Smtp-Source: 
 AGRyM1seoeNTwppu2fdqiJfWPDL7XOynaLA0RRdIFWdYx3BXbBNLXQEKgbAYwDFRtWImlZJUTJv95CdtgLSMEOaTX6k=
X-Received: by 2002:a05:620a:f85:b0:6b5:e2be:1d04 with SMTP id
 b5-20020a05620a0f8500b006b5e2be1d04mr6789148qkn.72.1659201787855; Sat, 30 Jul
 2022 10:23:07 -0700 (PDT)
MIME-Version: 1.0
References: <6148E1EA-62EF-485E-BEE1-035DB5CBF79E@hxcore.ol>
 <1559.1659176401576369562@lists.yoctoproject.org>
In-Reply-To: <1559.1659176401576369562@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 30 Jul 2022 13:22:41 -0400
Message-ID: 
 <CAMKF1srnN+K5D6Kf+SfRF1=fE9tFzkAje0Bk=5VZndOU3g0tXw@mail.gmail.com>
Subject: Re: [yocto] [Need help] How to add one package to build directory of
 another package
To: Kuzemko Aleksandr <kuzemkoyocto@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 17:23:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57693

On Sat, Jul 30, 2022 at 6:20 AM Kuzemko Aleksandr
<kuzemkoyocto@gmail.com> wrote:
>
> I have fixed one problem ("No package 'dotconf' found" error) by coping .pc file
> https://github.com/Kuzma30/meta-myconf/commit/6b01df5f7adaa3fec1fd1a34d74d9be5d4b9cdbf
>

I wonder why do you have do_stage task, it should not be defined in
recipes anymore as the bbclasses should be left to handle staging
sysroot creating most of times.

> But now I has problem with main package (speech-dispatcher)
> Log here
> https://github.com/Kuzma30/meta-myconf/commit/7c5e3a070f526dafe01b43aa5ba95573dd55d07d

Your package contains unversioned libraries, so either change them to
use versioning scheme, see
https://tldp.org/HOWTO/Program-Library-HOWTO/shared-libraries.html

If you really need to keep using unversioned libraries then you have
to tell the packaging system to do the right thing

add something like this in recipe

FILES_SOLIBSDEV = ""
INSANE_SKIP:${PN} += "dev-so"

>
> ERROR: speech-dispatcher-git-r0 do_package_qa: QA Issue: -dev package speech-dispatcher-dev contains non-symlink .so '/usr/lib/libvoxin.so'
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57692): https://lists.yoctoproject.org/g/yocto/message/57692
> Mute This Topic: https://lists.yoctoproject.org/mt/92675007/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

