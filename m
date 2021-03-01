Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web12.12446.1614606426820743353
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 05:47:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=yieAl0PG;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.51, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f51.google.com with SMTP id h98so16196229wrh.11
        for <yocto@lists.yoctoproject.org>; Mon, 01 Mar 2021 05:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KwHyB0YucdUA/zxOZ+ZK+xaV4V70ip1GsduqOhKXmqc=;
        b=yieAl0PGJpwDPguB+c8j21YiaxyPtuuza90KfAgHDoXu0Rctt0bI9ao2/4qgMhGbkF
         2VmgqBCW1ULf0hTI8qy2Sxnt8Po8kUkQdflvkg2YQVBatD2vMtHpnhY0RFnVXpattuFN
         UtUgaBJUwpY+6vbm5+84oSXEolFgxdNIsZV8dt8BiN6+p7lBpil3wJTq6yQS02rFY+L/
         Z6Dx4KfsIvLKNi9BUGlGkLP2NARqRy4YMrVBtfOyBfOmI/fRt/wuDPAC1uwI4NrmBSpS
         CWPcaem4evlq+Y3FlbIfsjJQpqmfEfqdgeCxAisol+1WBDVCYrThfzQgonjXlWGIv3d3
         Av0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KwHyB0YucdUA/zxOZ+ZK+xaV4V70ip1GsduqOhKXmqc=;
        b=ENBbRVHGsmK0kNZrhYMp5l4pLFBcnnVlnHVk4bBn1veJU619F+aDjAAosflEqqGIds
         39pmT7kP9bDDICi4ps7qupVYwSPJ1D4kxahe+DOSGiepGI2oL9SsehYJQjNI+RI/DaW5
         eCphpOV209Nf/+1dawOMW/TLhVkux+plMTLkD0CfNRVdLgegDaJ5GoaxyUeZs6vwQybu
         b7Ut3oJ3lB/JuNN+p+IibhHS/YXGdf463ZNWx4eagIOBvfZ9p04JHohx9AY+bbmzPZfV
         Y73uut2cnFMSz3KYQrOht/apl5Pb83U+wO+csvkRaN4Zb67czGkcRhRKFW93oYSAtaEs
         eApg==
X-Gm-Message-State: AOAM532+BukM8DnBwCFcQBpMgqIAvvf+GhObRGuMQv75Xl8ErSrOQC9e
	7om1S26+gbHJBnloEhi4fqrBg2H3h7PTSboHmjlvag==
X-Google-Smtp-Source: ABdhPJyvftvv0jkrTE9BvogMYWbfKBx3VDKTR/2wbhWW+a/iJ5Ts7wlaajzHvQkOPEP4ZrgI5MUbJQZ5aSA0hTrRZVI=
X-Received: by 2002:adf:a2d3:: with SMTP id t19mr16662300wra.299.1614606425276;
 Mon, 01 Mar 2021 05:47:05 -0800 (PST)
MIME-Version: 1.0
References: <44dae9d7f1574ef9a0ace0b7da68c7f7@XBOX03.axis.com>
In-Reply-To: <44dae9d7f1574ef9a0ace0b7da68c7f7@XBOX03.axis.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 1 Mar 2021 03:46:54 -1000
Message-ID: <CAOSpxda7nO9z1iXYLgqrexXb0Y2w3a8qwYwiHwprB=yZcf2RGA@mail.gmail.com>
Subject: Re: Poky Dunfell 3.1.6 broken due to pseudo changes
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 1, 2021 at 1:46 AM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> If you upgrade an existing build tree to use the Poky Dunfell 3.1.6 release,
> you are likely to see a lot of pseudo aborts. This is because commit e3cab68b
> in poky (commit 8c1084f3 in meta-yocto) was not backported to meta-poky. Due
> to this, OELAYOUT_ABI remains at 12, and thus the sanity test in sanity.bbclass
> that should prevent an existing tmp directory from being used does not trigger.
>
> Can you backport this change to get poky back to a working state?

Yes! Sorry I missed this :-(

Steve
