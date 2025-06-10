Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78808C5B552
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 15:05:17 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.89583.1749567907874396186
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 08:05:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ECHVgIN8;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6ecf99dd567so71155336d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 08:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749567907; x=1750172707; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2eHxlv5YVnZw7NRBYQmrnbsmaeS/Mi0s5ZiX56O9UtM=;
        b=ECHVgIN830TLChMhHF7TYXcSVPWU3faFG+0SeL0nuwecJM0R6djrD0eAjWRzK1oNGv
         yjsRSJpT1Sk5rNWXvxdEwIxZ3yaJbrO1ZbFWnAcLW+gFl8htad6Y1NwHVlGnIroZcAhb
         jT0ZyBuuRiCek/uU0R0LHOSL2fG7N0okAkhcmDnxxfp66N4x+VI0tAiz4DCqCdajhdTv
         BbyyUKjc2NSmDA14rtr9VyGQ6lLBOXCXZuk67yIbOeLFuKYWjvgEgzS+KRpkYdsAKK52
         YNPCgpgbD0GbucbP2wx7Jp16BcEc8rloSxIttJeCikIPuKqtaFJjruhCyXh6XRPvsznz
         SGgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749567907; x=1750172707;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2eHxlv5YVnZw7NRBYQmrnbsmaeS/Mi0s5ZiX56O9UtM=;
        b=cV+bKG/P0ydjrfbPjftuiA74BccOlsSK3AypFMTbvaQGFM5cUgPUbnD+cGCsL1k7pM
         /aYxXR3S+4ncLVhr3wGJ4klFzOAFecFajcz161woET2RV3Xv+DqKD97J7WeHajMovEYi
         Nd1ucjwHXAygOQuvu7Ku53fj7h8XT3Ad79BKWiWyZAi2z5Rkzp0FEcnoJRNrDKDg+FCc
         OSxyj0K9kkZ+3WF6I7yjZY7U8E68nUIBlgI84ZoCAttBDnbvp1JmshsFI4swFd6Ootcs
         hGRJfyXuIW8asVvzvUXmu7sP7VupE6d0xK0RyACFndSWlcMx7I7OOwfFBfTe+olyXYFn
         c2rg==
X-Gm-Message-State: AOJu0YyzILsn4/TIJfi4wAJBjgS41uGUIDIUPi/1IBgVSsHoPCf0qVtm
	DUOodys0uyPL9q88jhbUotoIPyfca5EuJZgjlwFd9xqbiVrL1kxsRCa4gsCMdWxtUtQmyfdkKSA
	ZQeEuzwHE1aHZZimF9VIOk+tjCMIIOXw=
X-Gm-Gg: ASbGncvS9AAvpN40wCIHbrRADBw5HNlX5cuB6PUzreapl1kXQ2hGVFfRmL1/U+4vlIY
	excEF55Rtb4JBSmdHZTd1Nbq844dSTrbqrGhC5nGsyuTOI7xRuonI+UM6WnU4/84f8clMfVDth8
	VR7VGFEmoZjrbTUlwjYSrEOgoUOAEVEVhyXihCli6yYaiAlvNHmvgB2RrAY3CE9zvxQtdJHwzK6
	OFQQQ==
X-Google-Smtp-Source: AGHT+IEikA1ErpM8mjus5eIxdjwYzYv9/BPy3vv2aGn+DqI4zAfYxJr81N211k4jgfIyC7mpDus2MFJRtL/1ntMpgdE=
X-Received: by 2002:ad4:5ce4:0:b0:6fa:fe02:8219 with SMTP id
 6a1803df08f44-6fb08fc6fa8mr305728256d6.7.1749567906743; Tue, 10 Jun 2025
 08:05:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb-PRoA1biG6PA_hX_RndM9QqG7G_7ikYFUZE3goEaP-_Q@mail.gmail.com>
 <8ce48df3-b8a2-4b95-96df-bf0fc1ac1eaa@gmail.com>
In-Reply-To: <8ce48df3-b8a2-4b95-96df-bf0fc1ac1eaa@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Jun 2025 17:04:55 +0200
X-Gm-Features: AX0GCFs_Z2EkCGKQdJLzCGpx17psYez5qJFVLAPGkuFp85p3tilqgwIynT_pIcY
Message-ID: <CANNYZj9EQ=xjSXRii-6RYk4uzV6kzztzWCDn1Mo5z8nNyvURhQ@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Yocto Project Status 10 June. 2025 (WW23)
To: skandigraun@gmail.com
Cc: yocto@lists.yoctoproject.org, sjolley.yp.pm@gmail.com, 
	"openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 15:05:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65500

On Tue, 10 Jun 2025 at 16:46, Gyorgy Sarvari via
lists.openembedded.org <skandigraun=gmail.com@lists.openembedded.org>
wrote:
> >     The clang build time and size increases continue to cause
> >     significant concern.
> >
>
> Is there more info available on this somewhere? I'd be interested if
> there are any concrete recipes/configurations where this is showing
> prominently and could be used as a benchmark. Or is it more like an
> overall "lot of small things add up to a big one" issue?

Please trim quotation lines when replying.

It's simply the build time of clang-native and clang target recipes. A
huge pile of c++ code, probably the heaviest recipe to build in
oe-core. At the same time clang is a critical path item for mesa (and
thus, anything graphical).

Alex

