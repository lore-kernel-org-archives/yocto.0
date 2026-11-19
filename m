Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5534.1795051230478943029
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Nov 2026 17:20:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20260707 header.b=Eaoxz9nj;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: colinmca242@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-6b894a5ce3dso2046341a12.2
        for <yocto@lists.yoctoproject.org>; Wed, 18 Nov 2026 17:20:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795051229; cv=none;
        d=google.com; s=arc-20260327;
        b=HDKNMxhqzoMJbk6p9ybvt1QUq9ss6HxclcnluUvg2ebW6OmKemdNTbGMdKV6TSYdPF
         rW+theiQtp8cBJKcSFzIOQcDxo9ow9GpWBXs0gnlwnr/XQf6GfxX+wZorvhnbsUSiy+L
         qj30g8Hky9ur9UXfIXOUAK3rHmpszjRXKAXN0ZKBm65kp7C3m7PqXyeb9SdezZ0zhP25
         ZlrjZ5ZuTCbSrzqFcKgmZqf8oTE5j4cRbRRDtSe2bidgAy3DtaF9w1oBsRL8WfIM3mz8
         FQ8Si8fM/BnJK+rh1yH4sqf6iZ1kWIbDD7xBtVhXMyPK0Sveldz5ggrujAGcU/ifzpl6
         BfsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=1yCrsdzD1mr5mU/PRfZ58iIZZMYdWeTE3FoRP1k4TJM=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=MeuH9PKr8m0JcgBMUjwfp3DutgIRTSa5Xk7DHPRWMC7pKRde4gG3n1wteZ4WQHJLfo
         TVO7JxHEOzjjDHoBu/wwPM94ElXW+ZFsdl30fOwoPCHosFeGD9gHwc5J6O7W7mic3+27
         QM78G4gQuta1EkajeWTK9Og+7y0gCmrlK7hZ0ixik3MtMIFxkJeGWYXc2QLqGk9Ak8J0
         zv1pUeAhD91d/+HLx7RMBoNwxPvSt1E7WQL7BfQef2w53ooOKXB6J1GHa9HWXXx1Z4PT
         0xJUWfCa0i4/3Jddt6ALRo0jwX8EcnSlvZ8RWSPg0Tc8rTrBeT2tkLuEAkz7ujDOjE9q
         dVxQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795051229; x=1795656029; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1yCrsdzD1mr5mU/PRfZ58iIZZMYdWeTE3FoRP1k4TJM=;
        b=Eaoxz9njqiGJSpxmvm8mzkJ5QuBlJ0G9uiY3QEu5oPrGd5lJPXSDqOJ99yrG8nc+PQ
         1339/29oXIyYLyEusn86QPmIxe3v+boj391kIMbv8w3paWi8pt14jwFfrzvco2aDhZoP
         UVtaurPJ8fGny3nbjN8SJ7s34zLHwMYHhqf9DLhxK7sOw0OubHhYS0ZOkPexECB2EcnE
         F1aAnNDKznvUDMQ0klbcB7+lF3t2+02rSVB5gHKIox7mgEArE+bFLDCYuQthSdyOpvIc
         +JveRSRXPYvyaSHq9+V0T9QHMI1ImZ5F85F7khACr5bCdMtcA5RLSHCkaROGOQbhoS5s
         5TgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795051229; x=1795656029;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1yCrsdzD1mr5mU/PRfZ58iIZZMYdWeTE3FoRP1k4TJM=;
        b=kNsZr11+MoDxdn22CIwJtPQjiDOvf+n4aS9YNFxYgi9uQAQCZb+N8lWWK3V8Zhff1U
         8wFyd6AEZl9goFr/yV5jv3fULlw2xfC7s6NtMZwTxaLpFd4swhRCMkpB/whwxc5SMsia
         pk/Do3m4Eg786/MpbT8O/uOlWuD5tZ8q0DwMzQBOCCxBh4KLCz7gowgIwfPCui4MH91X
         bj123DE5TyRJx9xnp47WlzNNs2exkkRF9blSYgQSwMGKtMumwotZWvV9llOLhXPWfRSn
         gNc+3D9zUegx8udEYwyNfbQrTI2YzrZY1Ck2B9FY2VbLL7S0vCF/hY8ZX3r9eOgB9zwl
         8ZyA==
X-Gm-Message-State: APuU4Z8ZJVWDAFQeRSLN9ieAb9Dz9SykcDpU/LbI5TRnFKd8H7gU2JQi
	7eHeCAB8QJOFU9IvkXBTKYUtPixZbewxUx7mA073lLVtd1EHZmvK7bj3gvQyI6FRYl10SlAWLKf
	XtyAHVYKTSGNuYvx7als/yzrUz9kNx6luSGok
X-Gm-Gg: AYBFou0VcYXXmp8zK10o0RCQzRrwrlWVHFEQD+CvaOy54MIxbBEZps9M42IweGlPmPl
	adGxBJfB3k7ymUT5Lc5yGFkwqXVLDR5B6V67xUFAwiVYXgNaFKQ4z6JaFRbAPEuJRma12ZGPkba
	9a9K3zbOR1Zr1r5YLt3MFFBx52RSvqTtON+vJmMngfia6XY5dcv8YhbB8YdUDYYh6s6zMwdpCi2
	zONvm3gWrN4wVfoDNKIDR5Q4QcVWcNKSaG5+mziLrVnigSlPjp9fe7nF86KTz1ZwbPnqsLvQUos
	EZ6saFRWF1CfC/lofK3FozxMdkQA2SOdnMxtMvJ2NKId8sUck6xQi+MoMZtttC6AN1cSUkmV5hT
	AYy0fLrBkBmEqVkqzXYDekaE/LVxk8G9HNzevBJ9PyBlRGCMwhEsMsRK9FpU0ydfVp/vT1w==
X-Received: by 2002:a05:6402:1d4a:b0:6b5:4baf:ad96 with SMTP id
 4fb4d7f45d1cf-6b887f0d98emr3552291a12.17.1795051228520; Wed, 18 Nov 2026
 17:20:28 -0800 (PST)
MIME-Version: 1.0
From: Colin <colinmca242@gmail.com>
Date: Wed, 18 Nov 2026 19:20:16 -0600
X-Gm-Features: AclHuK_c4jnmJHBPK0XLBINGGg6QeJWoTAe-grTKeVDmRV5js5bCINQXD8PONfc
Message-ID: <CAAyLwgT2sJp-x_tBBpZ-xSWM2t+fUkupmja6mv7ZiP0jVL9knA@mail.gmail.com>
Subject: OpenEmbedded Workshop 2027
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2026 01:20:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66806

Hello everyone,

Mark your calendars: the annual OpenEmbedded Workshop will take place
on February 1, 2027, in Brussels the day after FOSDEM. We=E2=80=99ll be at
Silversquare Bailli (Avenue Louise 231), the same venue as last year.

## Call for Proposals

The CFP is open. If you have something to share, please submit a proposal a=
t:
https://pretalx.com/openembedded-workshop-2027/cfp

## Tickets

Tickets are now on sale at:
https://pretix.eu/OpenEmbedded/OEW27/

Early-bird tickets are 75 EUR until December 31, 2026 (or until the
first ten are sold), then 100 EUR for regular admission. There is also
a business ticket if your employer is covering the cost.

## Sponsorship

We=E2=80=99re still looking for sponsors for lunch and for the after-event
social hour. We also have a supporter sponsorship tier, which includes
a ticket and recognition for being a sponsor. If you or your employer
would like to get involved, contact board@openembedded.org or me
directly for details.

Hope to see you there!
Colin
