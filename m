Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 457B010F2874
	for <webhook@archiver.kernel.org>; Fri, 27 Mar 2026 22:48:18 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.835.1774651690180614702
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2026 15:48:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=X2dsp+k5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.49, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5a2a58b0cbdso1891112e87.2
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2026 15:48:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774651688; cv=none;
        d=google.com; s=arc-20240605;
        b=bfpdHR1CzpkT/kP6AacaUY86EnBot0pjf9Ovh5U7f96va8R5+874o0rvWq2O27jXw0
         kDFVqNbS77DcClrFrjF74PffGvPYx81OfrevMUBasgVNq446EXWE3gye5A0CxZ71LS0m
         ntg8fkTf4jcP11+9ipZJ4D/j832RIfNWYy2LIG/d5tpOC12xp+bQbNrMI33Zj24yQ7OM
         doXJM83WQkd4ci1G+WgMsq3eysL0XLKI6Red+9GQ7oCXv42YRj65v93bB2UeALK6rU5C
         UsVIQ1eSa6g6rtBX3YclMOkMFqi/O39Xpojv5HBo/aSRPvVQB9pJBKDJjyvuvUFkZ02a
         Qpqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=47siyC7EB+3VPEaeROVvw3ZvOzFyGE0b2YRayCAj6Vo=;
        fh=WzAkmRyBZacmqA3zBr/oAINdA5poOrZzIqPOh4PhaxI=;
        b=auegW64kZ0xTV9q77Unoi+9vdFU7BBafKRCBx5z+aGP16V9SZ6onxXbY8f4OInrGMa
         jG2xHSiFlcyRxKVtQxeZt5tQlXOLF9RhB8iNwXxOVVqEOLLUoML9cxg1CZzp2zr21e2D
         CA6vBAXD0v7wrB3/ORzxHf0NzgcuwX+Ka95W2I0+ymTV2Zq1zb+61RByHTLS6sVE5LaO
         C+P6vZZeQO52Zg62oPleecj43bnuFQGwFbg/C6n0MxNkVe7DQRYGXSkxuvTaiNFFkeEt
         06X2Y+UkA3Svc0+tSk+O3oVSYiNGKJuk6HXy4/TqsXWq/CjgBKgO4Axu8F6X4xqqA1H6
         NQ6w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1774651688; x=1775256488; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=47siyC7EB+3VPEaeROVvw3ZvOzFyGE0b2YRayCAj6Vo=;
        b=X2dsp+k5HxgbROhcFurQpEFOaM7gLCiLDoVCYyy9VnCxLNsx58lDDNq+zPOIH48xER
         +ZM3rTvauAVOc0QuJceR3avwZf9JoLvYtA9FXhlDcRSLWBWZHU0o+9aKPFA2ByPDwnsZ
         aB9P8CbUKVnMc0k1wDVsna6in41aSCZwa2ePw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774651688; x=1775256488;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47siyC7EB+3VPEaeROVvw3ZvOzFyGE0b2YRayCAj6Vo=;
        b=Cd8hbC6Mwk0/RXKwrrheRs8wND/BkP7nnmFf2PIxXv34aFKFtDheLPy1aYaan+GNKO
         k5J7JHqhpFzg9amSgn39/kBAWgjLXrXJ2otCCshDNQ9viFjba0n8eXW4uf6PhI5IBe/C
         wYz+aBlpgYUwnCPTBFWTJhMOiDYOVVWDEYceo5SQupebiCZWtaAaMBRVKDM9raMCJXVS
         xM9/yTVA0Tr6g4qSRTvG0Q+nNDqEIcyHkfT8333Afjl1BWbSohUWIGGZV+Zxksi7fQry
         4PlWAoYtF30lbmpCDhdju7YrGzLbu1Xity+Csw+gxmM2unbrpy5gbGUNu3rbq48xDzIp
         04kQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKnzxz5328+93sFQyUs013ZNYofByFT/ZdtyffrqvTm1jI+SbEfjq3flrn/CXYH319T5PMlA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyZI1DSEq9nrj1zQvidyqTxk6qliHw+nBcVd5gNGfwVAFvCpP9Q
	c7Ki241LQSUCbokUnQ0nHcE4DbPhKeC6eCsLwwmqnt1qlc9IneEODVD0MKZ0QHFdPUXS8cgVRTw
	21IBvFf0v7q+QVGyhp20h7Qw2COKM4u3aqlVaP2yE8g==
X-Gm-Gg: ATEYQzxLDs7WMfx/TFG3Bi7k7gSzLKyDo6seUYIhjZO62yvZzAaC01izOYR0MB2aZdM
	ktBn8vDSz0ZsvFHTY48yHKruQv0nm8l3biw7ZgeR8KGVVYuXLrw9LUcxbgaUY3ALEstlpjahOsP
	PPBJSScTVBjCNQqQGOZozzeug1qpRsU1gNx9W8WuEw4Gk2xEkduFF83sHzfMlRwjHToPAgqwhsq
	2Kyx56QIfHFj0/gwArLz5WqbdQZRqi6smmIUViRroU8SMXmDTtgW+pyLV9Xsw4z0JKIE9LXu+pW
	KbBrwqtRI7MLaR/XokC9/WzDmrK/Fi4=
X-Received: by 2002:a05:6512:3c90:b0:5a2:7e82:d9c2 with SMTP id
 2adb3069b0e04-5a2ab5fa44fmr1451470e87.5.1774651688028; Fri, 27 Mar 2026
 15:48:08 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Fri, 27 Mar 2026 15:47:57 -0700
X-Gm-Features: AQROBzD6XZ_c7gtVAtd6eYVXbGaDVtX9OXacehvQoeyRS9j71-XvxCJSlturNkA
Message-ID: <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
Subject: Yocto Project Release Tagging Changes
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "Lee, Chee Yang" <chee.yang.lee@intel.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2026 22:48:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66360

Following discussions in the Yocto Project and OpenEmbedded TSCs we
have begun standardizing git repository tags across the Yocto Project.
This is being implemented to ensure consistency and simplify our
automation around releases.

Going forward, the following tagging standards will be enforced:

Yocto Project Release Tags: All official Yocto Project release tags
will consistently match the yocto-v.v.v format.
Branch-Specific Tags: Tags that include the branch name (e.g.,
kirkstone-4.0.34) that duplicate the official yocto-* tags will be
removed from all repositories.
Milestone Tags: Existing milestone tags will be replaced or converted
to align with the new standard format, ensuring consistency with our
versioning scheme. For example, 6.0_M2 will be replaced with
yocto-6.0_M2.

Please adjust any local scripts or workflows that rely on the older
tag formats. Let me know if you have any questions or concerns
regarding this change.

Thank you,

-- 
Michael Halstead
Linux Foundation / Yocto Project
Staff IT Engineer

