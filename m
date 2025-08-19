Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ECD2CA0EF5
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 08:47:42 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.9183.1755593254678264029
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 01:47:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZWC4EVXz;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-70a9f5d4d97so53269186d6.3
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 01:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755593254; x=1756198054; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BIqfxGhQDoZpX3fIS8HgxZ49mQNogpVwNnqTxtDUNSk=;
        b=ZWC4EVXzRH709CCRvRWLrQPLhts+nomV7e+spW+EfdGAc1kHCFKdKicZ+ZelhWd6ks
         TX1eQLvUsVneDnB3XcI6P8kXp19qANakaHHxIOs0W0gMW9PbqlN4FqQ2DhTMRSBMK82J
         +uPT/INqjnBXV4k6VD3300wkP+ZBDFqYYRHnYKdW9UCO67qwM765giBps3U6VUR1ZGgw
         KkQduQ+F4SXob2WaRHSDWNXj/rcfjxXGKy03nRwzLCCQqA4TXqssYrxU43mHqyPQlKQp
         bSkZSbmB1/gO8kfYKYorq0MnkcN9SY3MAtMPUR8kSFB+0/jO30IBgvVgVU8+U0Aqlc6h
         DT7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755593254; x=1756198054;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BIqfxGhQDoZpX3fIS8HgxZ49mQNogpVwNnqTxtDUNSk=;
        b=W0yY53u8jF8W6P0TaVCgwgb87ughEYqeBNbDz8MARD1krywDGJPmUu7pm9IR3/pvCj
         QAGjQ8KzqhLd52tRfuGfpJ3AL7W1yQdt0cdxOjmqCXMr9vD4f24C8IcrBXkGGhdLFGiV
         6OFFlAO8xsUvaU8Vgrlotfv6PpmgqvDEySu0xxZxkpFL/y8w2kTKJeLueR0Vcx4VxQVg
         JHwqWKhCkaWyPdgVaRBb3UwuwGWIB6C9i4XS+R5thonDAti6YqhSnLiI0MTVj+bWagmK
         iStuL+a+67axcjEZVZYKyqmOLxeUnm+f4KAVARsndlkEtqbGpzwQFWebpUlmEkFUZudm
         4InQ==
X-Gm-Message-State: AOJu0YxYi72ifIL4bnHG4GBEL0pTxU3bLEMIeST7s2pe8eWZeRqu8uwQ
	QP3MEZTzA8i+LMOBmeEOcthcvh1yfbPljQzTpwgrl8dUZJHtYXv8Kqtiv4uy9mqMMyoS5S695iw
	n+TCkyOnT42GC4c42+sW2VRRQ2YiQ98pJcg==
X-Gm-Gg: ASbGncu8Ajtiw4r6O/ZJtupE8z/+HnWY6wYAh+lFUsWCVut12FR52UAoSRYJvoxpLvP
	PnZ4wxq2EetvfwQBD5tnEkdwajcY9YMiu+vhEJ+lpf67zR7hLpNYQCjZ8dnlqOi+nj/cWAN9NBZ
	eG07eA5BaUrPP8/DqVdcsdRW1U1K/1z5A1wJcpRIZyeO59S5W7DE1eN9Svk4Xohdje9TUWO8qlt
	rsr6/P3IE6fVxcrSjbnrKHPl5pexYJHA6yySmQ7+Cm45ACW7m6c
X-Google-Smtp-Source: AGHT+IG2P4qiT419zuep6S4zFLRr9tOiM4oPH5IwzoXGBX9MtWrTx6MjvHK6aTpj3skxx2k5hENxuWX8M8J16mjzH3E=
X-Received: by 2002:a05:6214:4015:b0:707:6977:aa77 with SMTP id
 6a1803df08f44-70c35b6ad29mr15669986d6.33.1755593253614; Tue, 19 Aug 2025
 01:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAHEoWwt8tL-QMTB=jT1VQNitMm+sFwc=jVwjs=HmpNFm=ue94w@mail.gmail.com>
In-Reply-To: <CAHEoWwt8tL-QMTB=jT1VQNitMm+sFwc=jVwjs=HmpNFm=ue94w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 19 Aug 2025 10:47:21 +0200
X-Gm-Features: Ac12FXwmrJrUAHjac4cHWHR-8Lnxsarjyx8JC24YjfJvlKpNPepETkUdJGMlA08
Message-ID: <CANNYZj8u_BSZh65OYZO8GORHmDGt0AC_RuJPQp-jemKqMbaiZg@mail.gmail.com>
Subject: Re: [yocto] Need help debugging devtool modify command.
To: yocto@lists.yoctoproject.org, michael.williamson@criticallink.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 08:47:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65768

On Sun, 17 Aug 2025 at 16:11, Mike Williamson via
lists.yoctoproject.org
<michael.williamson=criticallink.com@lists.yoctoproject.org> wrote:
> devtool -d modify --keep-temp virtual/kernel

Does this fail in the same way when you are using pristine poky master
with no other layers?

Alex

