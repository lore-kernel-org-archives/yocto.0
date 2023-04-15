Return-Path: <tadej.panjtar@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC67C77B70
	for <webhook@archiver.kernel.org>; Sat, 15 Apr 2023 22:41:32 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.19121.1681598486342320713
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Apr 2023 15:41:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Ba2FlUpa;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: tadej.panjtar@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id n203so10572617ybg.6
        for <yocto@lists.yoctoproject.org>; Sat, 15 Apr 2023 15:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681598485; x=1684190485;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9oszVXcLj9qU3SWWgJnovtCDlae36s5DkPXTSqfmA1M=;
        b=Ba2FlUparg70ZXTQH+56m6DfAELN2gWpH3i2J18WjSTwNl5/pbsy9Eh4z2/u4Hq+GN
         SCVhgm6iBKG6Wiel4jZhRHdcbZqEyC7BmZPBFFq/UvCz6ZV0DSsdPtHvhY2B5B3G1sxt
         1Rc+gK4dZ+YDit3ReWu9Ao2BQIxLBiE7tw4aiAGtvnywuds+rkGMVFtoPVOk/PFuYSSQ
         yHfaOqbL8YVEJurf4J0jZklcdaIR1MSstcRb/lxc8S8V59iWwEhoh/RIwYuWt+koDT9i
         jmcSTtrXMnN07TdBMGj0IO3kkpC5t0QfbZJT9uZoHVoM6qdP+Ow9jGuLqlldSebuJ+Nk
         jc0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681598485; x=1684190485;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9oszVXcLj9qU3SWWgJnovtCDlae36s5DkPXTSqfmA1M=;
        b=JD0QFhti7k0d5o6GB5Jv82lXrj/cVXiP8lNfQ/+rU9rIWgK0C3MkiUULe/Wppmx3U8
         3myLZm99xS5Z8yI2LSmxpv4Hu08uQS3lBckArkDnIXh+s190RKjUtM8l3VGjpiKK31Xh
         +rS3YlLQujB3GMT99D3U7jsajXmbg/ez19XKCNLVl/LXHYpC6TWrOhYsSq6TN0fz29CK
         iQlvbNLNx/tvRIq/CijCf3KbGIVGy1ytsQuoG3lde0VDd9KdEQEwEPOEbwkt7DojW++j
         YwLBVj/yhvYfXbnwekqztPHXwn2j/lJasWwk7FOxBytV/iEgd/kreXE0GUMETVEL4Dsq
         xIdA==
X-Gm-Message-State: AAQBX9f33yQnWrUXyJVWrKoRYmfVTlehPaLtAcjsQd1GmBcodEIhQZmE
	lJpJ/QUz+jcZL06cOFWrv94+q08cJo+qCdeVch0s/Bf042iVDQ==
X-Google-Smtp-Source: AKy350aqBk/W4N2hlwczfST4bUfjcfoymGDQQUj6DRwZzikWdIwYD5IDFC7Z1eHkWpfgfmpnvOkpPm1Do1iKT15Bbus=
X-Received: by 2002:a25:d1ca:0:b0:b8f:517a:13b8 with SMTP id
 i193-20020a25d1ca000000b00b8f517a13b8mr6598538ybg.7.1681598485320; Sat, 15
 Apr 2023 15:41:25 -0700 (PDT)
MIME-Version: 1.0
From: Tadej Panjtar <tadej.panjtar@gmail.com>
Date: Sun, 16 Apr 2023 00:41:14 +0200
Message-ID: <CAF315RXxUK9evj6-N0AFd4Us_JkEkskSNx6FdP=pBCF04bggCg@mail.gmail.com>
Subject: GLX enabled glxgears on x86-64
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Apr 2023 22:41:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59718

Hi!
Because hardware acceleration of drawing on laptop with radeon GPU
gives poor results
I am asking if adding libGLX support (and how) to build images would
help? Or something else?

Here is what I added to conf/local.conf at latest poky:
IMAGE_INSTALL += "mesa-demos"
DISTRO_FEATURES:append = "x11 x11-base hwcodecs opengl glx"

But no success to have library linked with libGLX.

I've checked installed images that have radeon firmware files, with
lsmod also see amdgpu and radeon modules.

Best regards,
  Tadej

