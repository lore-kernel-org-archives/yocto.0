Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FB7C43458
	for <webhook@archiver.kernel.org>; Thu,  9 Jul 2026 20:20:30 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.250.1783628423390638061
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jul 2026 13:20:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=b0edTeZF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.53, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5aeb91c003eso198251e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jul 2026 13:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783628421; cv=none;
        d=google.com; s=arc-20260327;
        b=AA6WAotBnDP0tQnX8ZIrY2+C92oiQ5vNV6ms5JQ3Dura9GZji5iLWR8sA5itIzlj6L
         1ZpJ+CFuyL5Ie3T+uC7DMd8EGhnCNbCSVBTy4mwIFn7NhsdNKC2SHBdm6lCdckhIWkCw
         bEaTAAuf409H3WLd/GD3pb66Tl74EV4mKxHU0FXBJuuuTOs5/9HTkAXExT9L4n/Kh1+u
         ZJHzYyXAeR5GO1LHhxgoW5C2M4IuhhXFwkAGR9JMEw+TlUEkKTubVfn73366hrk+2QBV
         RiV3nsD4Ezv79sY5/kzNyYLMTtCcplyjvEengIz/6BMPYPVsHsldHsWmqCNAyK5N98YL
         kXVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dcWRmgEEEsL0EHgRC4M8KQX9yb8kbhDHCzqyZOmeD6c=;
        fh=0975QNEwGy7odMVwHOnQlPjWBDccSkCQfLKbvVGUEI0=;
        b=F4+ykQhPBEIDbXBLzCts16YaKQjauUuUL5TOx9ZuY+C+QD+VldAusVIEnsWnVLWhwY
         m1kL5xkmGh4HAGTbPgh3Sx4jbuISWI12AFV2PAKr5PHXMS2bMWeKgKNWVNzcKkX4Lzed
         0YeQmOnT1U0Z8jbUKJ7fqx+DOYyV7Lzltxla2TBg7OaU00ycPLFYlUWhw0vgybsp1xzy
         YPu4fc+bWnLkLT4mCXjyOF4NupVmVj5w1XGmb14Q8HyxDugY1xi43m2KW9AOVdi1DDi4
         9wxjSZ1coD8D5qaOrkqTrmSVO9r5qK5LQbTFbGOkb08AXhSWDibWW903U/64CHRzTqe4
         tbFA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1783628421; x=1784233221; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=dcWRmgEEEsL0EHgRC4M8KQX9yb8kbhDHCzqyZOmeD6c=;
        b=b0edTeZFyW5kV7G2rUwMycZmAiJgcBa/pNY5gEZ0wqOwd/O4Sy5+uqs3B/2/JO2vcz
         YV3AgOGm3htw2fZlFDhzCb8pnqu+VhqETKgeHP5NoZmOB40WCcpUwbXgoNG5zp7Zr8YF
         uA97uNrCLcAuahT7z8Z36qfxAtHmEycVG7PzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783628421; x=1784233221;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dcWRmgEEEsL0EHgRC4M8KQX9yb8kbhDHCzqyZOmeD6c=;
        b=GseX79UyJlzYBwejWEYT5PWbzApWC3oQQsmJCl7CS5MvtMtHbpN9z0UYYctiHTJcmR
         yP0WPUtJRUE1JfilWJzlol9FtVOYvqrUSN/zxiI+m5kY4H0emH/GF5CgDSZK1h1RR1tk
         +i+VjmaI2S4cmT3lNBq3eQssn3i1njpkgfAbuRNVOrvS0PfSdOJDn2It1MdLaLIKbnwz
         OZbKwMlDQVNYWRid6z37wDG7AUP+N9CyFrMl5BRg6kvwjDsvPmEoVu21kuKZLlznlAuZ
         ApyoIbbkAQu7VeECdxei0kA1wRUZxHlci95TfIMSXp0kV7H+mYK4yZ3aCnBorfMZSQfZ
         JzHQ==
X-Forwarded-Encrypted: i=1; AHgh+RosFSDTwIy3h7QBiKl2KdwvVFkX7aowjc2F/fBaJcOaovuHSkulTKHXEQ7L6P+ECcQhbaaWtg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzI3cmiucdoyl3Ks3Y4js0sW0Xrb5ECmowCt9vJId5vh9iM9L49
	2z+UmusNQ9uzVG+rH6RK0d9njF4wzyIec6z/IjR78JxMwn0FjfXOxJo4SaN4nRpnX+YBJ5US2Li
	ZuJz1L/NLMDx5guykej9DTsg+NIExaX5coqtnY+vCjpgEhvl5L/Kbd6J7+A==
X-Gm-Gg: AfdE7ck1wU6Ztsw//PXPvPYhzwsyn40TOjbju+3ocRYpX+7HpuwtzCOveV8MANpUcDk
	xt31BOpAx8PmkWm27qHe44nZKS/c/H+EAQ0DHRSdSQm+SMTZGJ3Vp8lROq7Mv/ZTQSOuykdQFaa
	bNbN2xSDi3ohE8qr8cpBynf7NFBEmxfANMe+/8xccyu/sQrU5V/FIvlRhzXwt7rWVobIvQIvZXZ
	s3S3fX5vEHFW9NBl0ZiEooxpkPxRxJevWrI+/1TITgkjjhU+B5holU5RmjCLxsYmuiqe1urTDdf
	hMmFHdV7k0nEsQUp36uHg5HJWb5Rn94uKAt++nwSbxGmDia8gCCkMuD2qg==
X-Received: by 2002:a05:6512:3412:b0:5b0:1852:934a with SMTP id
 2adb3069b0e04-5b01852951dmr716873e87.64.1783628420894; Thu, 09 Jul 2026
 13:20:20 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Thu, 9 Jul 2026 13:20:09 -0700
X-Gm-Features: AUfX_mx-wQAbFvNFVnACWvIzjFCp-xBz39IZo457ox_9OAUUGx23hM1x3Q92ZSE
Message-ID: <CADfgfoZh4DJPd6WE6vbWyQvAo3Kfraw5tFha+CnjKNGLSyYL_g@mail.gmail.com>
Subject: Downtime announcement 2026-07-09 20:30-22:00: downlaods.yoctoproject.org
 and sstate.yoctoproject.org
To: yocto-infrastructure <yocto-infrastructure@lists.yoctoproject.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007064270656335aab"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jul 2026 20:20:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66627

--0000000000007064270656335aab
Content-Type: text/plain; charset="UTF-8"

Please be aware of an urgent maintenance window scheduled for today, July
9, 2026, from 20:30 to 22:00.

We are performing a major update to the Yocto Project NAS to address NFSd
locking issues that have been periodically stalling work on the Autobuilder.

During this upgrade, downloads.yoctoproject.org and sstate.yoctoproject.org
will be intermittently unavailable.

We will do our best to minimize disruption and keep services available
during this window.

Best regards,

-- 
Michael Halstead (he/him)
Linux Foundation / Yocto Project
Staff IT Engineer

--0000000000007064270656335aab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"background-color:transparent">Please b=
e aware of an urgent maintenance window scheduled for today, July 9, 2026, =
from 20:30 to 22:00.</span></div><div><br></div><div>We are performing a ma=
jor update to the Yocto Project NAS to address NFSd locking issues that hav=
e been periodically stalling work on the Autobuilder.</div><div><br></div><=
div>During this upgrade, <a href=3D"http://downloads.yoctoproject.org">down=
loads.yoctoproject.org</a> and <a href=3D"http://sstate.yoctoproject.org">s=
state.yoctoproject.org</a> will be intermittently unavailable.</div><div><b=
r></div><div>We will do our best to minimize disruption and keep services a=
vailable during this window.</div><div><br></div><div>Best regards,</div><d=
iv><br></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr">Michael Halstead (he/him)<br>Linux Foundation / Yocto Project<b=
r>Staff IT Engineer</div></div></div>

--0000000000007064270656335aab--

