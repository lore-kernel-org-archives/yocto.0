Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67193C433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Feb 2022 21:50:59 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web09.99.1645825858324192137
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hV+PYV0o;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id p9so6331376wra.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 25 Feb 2022 13:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=JdAdciXAU7Zx29MdXeg1d8QKhw3G3JGqMYxFhiEzxR0=;
        b=hV+PYV0oGnJNKfXRTMOQlFz+hoAJ1KUkKMCQf2ZyBADftZLfVmUsGy6WwHOF5AEbhk
         Z4dVuJeGf4KVLLB8cYEUzNwyQ3E4zJCvL9lwQ8M5KVpadRRtvdFdNx1DliYcPm2wgrWW
         HPDLS8t1LWRAMo2tYkF8ucSH1vPD3DjDNciV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JdAdciXAU7Zx29MdXeg1d8QKhw3G3JGqMYxFhiEzxR0=;
        b=RFTaHLEsnPOZOou775XrNIbMtRySyyaZb+m4ei14QW0eAafKAHGWMeTY9h2wYCgzOE
         GQERTG2Gb27sMPesnIUPlIbMeMc/GkcUrEi3pOBsS6q1rr2gd/G7Z+C+MoqPI5Kz4Uhi
         CrrjfpHaSwYINMD7wWNl18Vvnc/gXTRY6T4rfhlpiLtqts9v6MM17CY8F+fGVe9IK33f
         rBrAFSx3Jo6nn2d/kQrYRP91W72JM0HoTaZVuwZBlA4OQlZwj5zxd1h5oFslGPieWat6
         BdnHSUkWoR1cXgmahwImA5UU2mwFN/L8LDpSkmpToFsgJ4MVJXm+XWlAcotzaaAWPLoN
         OAnQ==
X-Gm-Message-State: AOAM532VI2wH5NIuSr0RYV3PQznD+82eIrH1NA5OU1B/oYGTQcnOlUdY
	PoNw+Mw5TlzTRs2qofTRa1A+kQ==
X-Google-Smtp-Source: 
 ABdhPJzbwMDrGVRyUztgxNqP1fGir5Sbe1+Yfs+xRgpKTNT+c8j+7mCSb5zdhAh2yT22+3+MEoAVlA==
X-Received: by 2002:a5d:4d0e:0:b0:1ed:bbed:fbe4 with SMTP id
 z14-20020a5d4d0e000000b001edbbedfbe4mr7545569wrt.198.1645825856757;
        Fri, 25 Feb 2022 13:50:56 -0800 (PST)
Received: from hex.config (5751ab90.skybroadband.com. [87.81.171.144])
        by smtp.gmail.com with ESMTPSA id
 u23-20020a7bcb17000000b0037bdfa1665asm8978370wmj.18.2022.02.25.13.50.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Feb 2022 13:50:55 -0800 (PST)
Message-ID: 
 <bca2d6e1d8fb7bcb2bd76ffbd03891c95755a2c7.camel@linuxfoundation.org>
Subject: Re: [yocto] QA change - reduced number of reproducibility builds
 tests?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Joshua Watt <jpewhacker@gmail.com>, Steve Sakoman <steve@sakoman.com>,
	"<yocto@lists.yoctoproject.org>"
	 <yocto@lists.yoctoproject.org>, "Mittal, Anuj" <anuj.mittal@intel.com>
Date: Fri, 25 Feb 2022 21:50:53 +0000
In-Reply-To: 
 <CANNYZj9GGo5pjfz1R+vpR1TFS==uyj4JmshpcUYg2+Gi23ahNA@mail.gmail.com>
References: 
	<6234ac5289c4ca5846e6f80c13686f61ed340116.camel@linuxfoundation.org>
	 <CAOSpxdaG1XDuKni+_=Cwi3cxTrXHA0M7vyrnyVsL5i7p5PhkiA@mail.gmail.com>
	 <CAJdd5GbCXeZFURAAs+vn7Z5KqJdiDPXR42aR8PJPcJ-zfEW9AQ@mail.gmail.com>
	 <8a471cd9aa5a2aee65a3dc7558e6d54360a4cbfd.camel@linuxfoundation.org>
	 <CANNYZj9GGo5pjfz1R+vpR1TFS==uyj4JmshpcUYg2+Gi23ahNA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Feb 2022 21:50:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56291

On Fri, 2022-02-25 at 22:00 +0100, Alexander Kanavin wrote:
> On Fri, 25 Feb 2022 at 21:55, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > Yes, I'll leave the targets available, we'd just run them manually or re-enable
> > them but I'd take them off a-full for now.
> 
> With this change, what are the remaining differences between a-full and a-quick?

There is quite a bit of difference. oe-selftest on multiple distros vs a single
one. It triggers several more minor builds (e.g. edrouter-alt, qemux86-world-
alt, ltp targets), runs full ptests rather than ptest-fast, some of the other
layers  and has the toolchain testing too.

Cheers,

Richard



