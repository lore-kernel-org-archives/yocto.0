Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6376.1793258141953377924
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2026 00:15:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20260707.gappssmtp.com header.s=20260707 header.b=Tl6WHesp;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.174, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-369f3e9e431so370690eec.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2026 00:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793258141; cv=none;
        d=google.com; s=arc-20260327;
        b=He9QCNQAW7508Kf2qWRbOUQ+YAGt81lyMTFsL74jYv8ZbYz68x8GI4LOCJUlCmmH3d
         IjUXVaYSVxJMJfMwmr17l4yNbCVAIPsIP8FNjUFAZESP59smeRkfRbXOKRaBWlss61cn
         C6MsoeHqpZNBIj8z2UsjGqUZhS926iZp0tPlcc8kPLTHJGatn9OkdQMj7W0YZAL6enw3
         D2tPkmz05RVF/XB+m/HAIHibXq1S3TPYrJD3PW4PEU4MvErFuVBHK0oo0Y+2GujuubG4
         7rwSsdP2fGK++MIxI56/G4lCdXDJcpdlJnKpiW+zOpFye9g+Lbi/Go/OOU53kZ/HVrYD
         xbGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=hZxDfDIuv9MgEufTO2unosVvVwKlKdpRX0TWP9b6zNc=;
        fh=eYCXQ9+X/9/ahBNvZt3rK68XvZd1I80qQRv8eIIVTd8=;
        b=RqPglis++E7nQNZoHpg2zpY7BVADX+oD0uOqYV3n6R2U6I0h4litilXwVkrTUNTZwG
         Ev/Vbc04wZ4r1maXb67hYoI1kzdrH7Lp+CT/9jDd7s0nV2YDiyiS1ShcXchvnsFfweGO
         YdRr3V5iEHVVcg9hTtsCQcp9B5qN+6NnZe91lZAIhHLO5ylUuobauAZwh0qC3KV3SN7q
         L59J/WeInAIy4uEcYclsBzPBV/s3c0FPp/hYcMKQQGPG04Et99PRzh1rFk+rz3Z4Z20C
         WKna5kSTcZuWwtA8n5zu+FfEtQxVRgBlvrmsfcUkfUjowS7l474SbmjoUFwLXCOVCI8B
         X+Qg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20260707.gappssmtp.com; s=20260707; t=1793258141; x=1793862941; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hZxDfDIuv9MgEufTO2unosVvVwKlKdpRX0TWP9b6zNc=;
        b=Tl6WHespG9TY6szzMHPenmnuMx1tJg7tkGjnk8O1tnVYT0lwqh06vXpGJ6tInFVTeI
         wrJx18yseKR7qM269BxrHBy72LXAOF2itw2B7m1opxXPqybKKXxl599QJriwsj9RFmCH
         neU8q7gle6AMW000Jm+EsbAA5iEwyF8BjtIwq2u/Y/tb5YQh7omm+Pvb4856WsR5T0R9
         eoCwPfh2VIIg1E4HuW9Vb079Q2T6ssyuQoXroEKUXPoKf/Iq/57SHXF4l/hxhytlvEsh
         mxMTLlfaxnLfm8FKha28I3iGZ2sOX9eXD0ClmboDg0qv6mEH1hOL9nb7jmJ3i76vZLqx
         ftnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793258141; x=1793862941;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hZxDfDIuv9MgEufTO2unosVvVwKlKdpRX0TWP9b6zNc=;
        b=iOpsSu2Yitw0vD3iEhdNUMyLcXZP6xasWjU4Vzxu7ciIploWIwrjWKMNhpD3Hdj/pk
         blmwyN6TPBqOHPjo+mIaQbJ/7hWgAlCDZxtIUrbtENKOXh3L3VWVTh+UigGZOz+/yQnw
         +bGDYGwez4emXhcMRWHw/oPmV2v3FRInsmLmRup2hpHAg9RFA7wlUtuV15v70srIRErx
         N3vOQmFGNMM8rtpDCoap4mcM54vGJijx6SfViT8r4rep8IOQfqya8ifxxiRBlMThsEhZ
         vws0wdsp+6c2e5l8i0T/kChpf41O4zbSYrFY/sOEVYIWgbuf8utGWuFKwvUiopfs27zB
         lLbw==
X-Forwarded-Encrypted: i=1; AKwUvBzNpyoMJPnYJiAe/0p7+ud2eZACkwZbNkuSLmzc1GECZQocqd+J26J97yC7B56O8XtIp9ONIg==@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYJNRwm8dWq4jaGVNt3ZTRaqsyaTNSY1LU1t/WZhfzQdFRgsNAEE
	xNpm1DzfnDQ0jN5sPdyojv1Xq5Rf0J5PSIvCQLg6T5cLHCrc4DaN+A0OW2b2bc8cLyHCkBxSQtb
	JmlHV3FUKZ19SnVAXXusMnrKqSLx9h730TFbDl5Bxng==
X-Gm-Gg: AYBFou3ehMxvUptCQLCnVUVmnO7WyrRqnVz+wSoHgNobvM4/vOqmt03quk6wlQhYXMz
	Ppr4nXfxXJayzd03ynJGbi4XlLrFzu+Ougg88NPjC6I7w8MtXRfDfOOyN4fOx/Ei8bLQ6xL18OA
	zuZoQ7igvxLvtguNxWjjRGyoVs4prou1ZnN9coQNAVB8xWbilY1aEvs6jhW+uVGUazCOej1dB5s
	XQpX8pyv9OQJlB0jdU3GolsVFu+vGlN4/xBgtMDmAm9ynFCoQ6kwnjDNPtbS89uEHFNfUZMM7ok
	nBIkb5268/Gi1R/jy0uVmsu45Q3pfSCsS4hk+ql42IOtGdUNTIJNvJUSgmCm/fDQADRtQgz5Myv
	MuJO2SjtNZYPjkbqdpmiV+IrUx53MRHKJuf1xJDD2Uf4ENICkvoj7c9isObAUO3Dt+zv3vkb/3o
	/N/i/bFxSyAUyURMRn/dcB
X-Received: by 2002:a05:7300:7aa7:b0:359:fb64:11d7 with SMTP id
 5a478bee46e88-36a2fe8578amr2433458eec.11.1793258140955; Thu, 29 Oct 2026
 00:15:40 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 29 Oct 2026 08:15:14 +0100
X-Gm-Features: AclHuK8dAGreQ0uhIsCfVfsWrSo4kT4A4MWOJFJY99_BlMByixxvMM1rOP4O7xM
Message-ID: <CAEt6Nwq=_BWSu+UCVS2zYMOHbKaNa5OM0RXZ5gcaonJpowYzvw@mail.gmail.com>
Subject: Yocto Project Summit 2026.12 CFP, closes after Halloween weekend!
To: Josef Holzmayr <jester@theyoctojester.info>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Bcc: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2026 07:15:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66792

Hi all,

Quick reminder: the CFP for Yocto Project Virtual Summit 2026.12 (Dec
1=E2=80=933, 12=E2=80=9318:00 UTC) wraps up Monday, Nov 2nd, 23:59 UTC, rig=
ht after
you've finished spooking (and stuffing yourself with candy). If you've
been hiding a talk idea on security/CRA, YP & AI, reproducibility,
containers, DevOps, or just something you've built with the Yocto
toolbox that doesn't involve trickery, now's the time.

Submit here: https://pretalx.com/yocto-project-summit-2026-12/cfp

Tricks are forbidden, treats are encouraged.

Greetz,
Josef (on behalf of the usual event pumpkinheads)
