Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 702C5C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 23:46:33 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.web11.8807.1709855190456223254
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 15:46:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=HlOje2Po;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.179, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-4d35b644c1bso97971e0c.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 15:46:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709855189; x=1710459989; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hko7LHOdHohcwAYo7+vUYiE0kp2JSm1GFSftkuBGXj8=;
        b=HlOje2Po+9HHm7DrFGQtwWfNliPgnYRkH1motAabghrghTffWJj7WmNMfe0CrYopmf
         vKGNcaD+SnNYhVQUTOCPM61hUjIg51xQ+4OdAA9JVtN2ySVBLhcEaqYK44CRH/EORA4B
         oCUD6OIfE6YBsl8Z7rSvOAn4A854wT+Nr+k5m/qF81n/djBeG7OJGC9JGnWf+j0kfkt+
         4Wd94wxXXyboq5RxxPtKiAx7ZnjzwetZmMR2x6s0bK0EIraq8emrdj6CGzS+d66uIfQ+
         WLuAlKYddxIAJnnX5IBksiLnXksswVxWX8tncl5NuQWPXHV0FNCgk7h84ADAjSu4JOnp
         NRMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709855189; x=1710459989;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hko7LHOdHohcwAYo7+vUYiE0kp2JSm1GFSftkuBGXj8=;
        b=pF7+QapaBpIiLx/2jWb1gG4Po44Dsdf57NCHL9O7qK3a+mAgJ9M8gC7wYpkWeFDix+
         jSzgMioSH1Dnxq+c2+c8bQwIJ4zemCIKfnERCaq9OpAvssTJDnfqRCchbzPTvE7ksYWW
         vApn9EkGTP6QB97cgqCD+2zRtEoTZoVeckplB799nZOXFFmQp69HVXNqRu6LoxQju/Mm
         VoFtOtUT2Yvu4s+g63jKHXxCtOiXVmkcTXbMSMHyjJsU85efbHdID5AeKAf4pkJbyhBV
         q5cufVmTn6YFF5oYiK8W/xU7B5iV7zkvuG2K2g3BJJmBl4mQoHzBqHrJE681TwI37ktT
         0PFg==
X-Gm-Message-State: AOJu0Yy6CRa3UCbOne4qREV6Zpd2P6CIHU4c9qfljD5j8Yw1DUwgsPAg
	r+iY/Qh3iSySbc0Se+DSenNlS8XEHUwgdIhveGXKaMvoiVMZVJcZ87D/cmQSssmYNjPzUnv7pc2
	gj80sBLOCKwE3EFcjY2EJgXirceBJUje+PPeC/y8bnRcjX1ryFRA=
X-Google-Smtp-Source: AGHT+IEEVPv64Il5+Ep7jMDB8ycs9p8ChHmfiJphGi5MIBGqrhuN2h90YwDi2g1PnQw3RTEG/HKDl6bG7RhmRjTgZdw=
X-Received: by 2002:a05:6122:3b89:b0:4c8:e834:6cf2 with SMTP id
 fs9-20020a0561223b8900b004c8e8346cf2mr11865150vkb.3.1709855189236; Thu, 07
 Mar 2024 15:46:29 -0800 (PST)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 12:46:18 +1300
Message-ID: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
Subject: Yocto Project Quick Build - MACHINE
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002c1b0d06131aaf6c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 23:46:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62702

--0000000000002c1b0d06131aaf6c
Content-Type: text/plain; charset="UTF-8"

Progressing I am at the stage:

Customizing Your Build for Specific Hardware

I have unpacked the `meta-altera` repository as instructed

I edited my build/conf/local.conf

MACHINE ??= "cyclone5"

I get the error:

MACHINE=cyclone5 is invalid. Please set a valid MACHINE in your local.conf,
environment or other configuration file.

Thrashing around a little I re-ran "source oe-init-build-env" but that did
not help

What have I done wrong?
W

--0000000000002c1b0d06131aaf6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Progressing I am at the stage:</div><div><br></div><d=
iv>Customizing Your Build for Specific Hardware</div><div><br></div><div>I =
have unpacked the `meta-altera` repository as instructed</div><div><br></di=
v><div>I edited my build/conf/local.conf</div><div><br></div><div>MACHINE ?=
?=3D &quot;cyclone5&quot;</div><div><br></div><div>I get the error:</div><d=
iv><br></div><div>MACHINE=3Dcyclone5 is invalid. Please set a valid MACHINE=
 in your local.conf, environment or other configuration file.</div><div><br=
></div><div>Thrashing around a little I re-ran &quot;source oe-init-build-e=
nv&quot; but that did not help</div><div><br></div><div>What have I done wr=
ong?</div><div>W<br></div></div>

--0000000000002c1b0d06131aaf6c--

