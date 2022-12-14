Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0550CC4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 13:55:45 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.104067.1671026144100197542
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 05:55:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IMGK9cmM;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 1so10588335lfz.4
        for <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 05:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=n/WKb82ChgyPWtwtiBKnY1XrhJMD5IT77OAqpd8IWXc=;
        b=IMGK9cmML/aYElw2e0ZZdim9s3Q+75WLC54K1HAb8mwBO/rNY6A+uIUeRyVQbnlM+j
         /FtgvXkOPp7UhDNaBIWujIN7VYpWVyBkvQVX3Hzf4hHsUbakmzNrM2QGcOzKsVVpmtNj
         OJW6FC45A+6x4iFqTTzZ5jBFS74CoPBmfe0UR47NBk0JnXawQap+jwDp0xOUkO2MdTQy
         DF40lL37tvofjiexOE+YCzhim2WQ3I2DuXsrA8uCV+dzN78NaH6lomRuPVhIQr8gXcOa
         Hn5Hp/gvsXneCC8fHyPOaeKp74KXZRMsSi0bwUtCi4uthzkbvhIo8N4swH0x/Yq5lL5K
         4g5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n/WKb82ChgyPWtwtiBKnY1XrhJMD5IT77OAqpd8IWXc=;
        b=hYgAzMoU+W4qz6+vF9YLMch9iosXDQ6VFIBsyh7gvWB9aIoi47f8L/92h/LtiKACy/
         VTtck5EApIi7MqqemWq2VWPtRZY24Iqm8yDrOwg9Kasz15qkJjw8y+VahBdXR9YoUUHM
         OuPM/LotOFalGp0vS4V5/vUEjZ8u7oWepGbGKjP6BC2V3dhj8aROF0WpnTf8hOcFZEuB
         ouSeRiFXLSF4yjb1H704dP2A2IB7HueoQEOcjfx5vigde6yfjlq2WhcqQ3lvRiHIDiit
         4e4ubdQOc1H5ott6tKDOFUrikJmKxGCbuI21PZFKkytewCAE4Z/NQXTTNCDbCTOyJtUE
         Rvgw==
X-Gm-Message-State: ANoB5plYEITawWQFInLyFj9ske88lEoDFb+kVwHJohlZIAlmNh39B3lC
	RJKwjLGcSeOTLIzu3FL3NQhhGzIY4j0aU/yN79A=
X-Google-Smtp-Source: AA0mqf6DIqMRfo2VCixA55si+PTP9WSAhOnf0VhtTCLSNau+ooFAelByN+bJvIXOiOvYRtBp5CwFzkkAXcY11xEfsbg=
X-Received: by 2002:a05:6512:746:b0:4a2:4f74:f47c with SMTP id
 c6-20020a056512074600b004a24f74f47cmr31748840lfs.367.1671026142173; Wed, 14
 Dec 2022 05:55:42 -0800 (PST)
MIME-Version: 1.0
References: <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com> <a254ed09-8ccc-7968-58b8-3e01ddb883b9@huawei.com>
In-Reply-To: <a254ed09-8ccc-7968-58b8-3e01ddb883b9@huawei.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Dec 2022 14:55:30 +0100
Message-ID: <CANNYZj8sLB86he9Xngue6NAVzD+xzOcbOs7cP0WQkpSCBHG60w@mail.gmail.com>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
To: Junling Zheng <zhengjunling@huawei.com>
Cc: Wang Nan <wangnan0@huawei.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 13:55:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58799

On Wed, 14 Dec 2022 at 14:28, Junling Zheng <zhengjunling@huawei.com> wrote:
> Can this method detect source code changes for incremental building?

You need to experiment with this. If you list a local directory in
SRC_URI, bitbake will checksum everything in it, and will detect when
things change and then copy over the new tree, but whether this can
allow incremental builds, I'm not sure.

'devtool modify' is designed specifically for incremental builds.

Alex

