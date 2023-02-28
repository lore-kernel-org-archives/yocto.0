Return-Path: <chetan.byalihal@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A78C64ED6
	for <webhook@archiver.kernel.org>; Tue, 28 Feb 2023 02:25:15 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.14178.1677551112341377274
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Feb 2023 18:25:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=phYMOFT/;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: chetan.byalihal@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-536bbe5f888so231960077b3.8
        for <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 18:25:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Re1AHOi5hXYGc1zzJ7SkQ+BouWMMcgyElquReQfSqsg=;
        b=phYMOFT/tA5iqujnkSBA/5aSFtGARQHHwWGGbH5hmsccxp2Ti9z77wZkrOlU+siKH/
         +JWHDaFslHWQGygNhGa3bLGlTT6dsu8ZkB52FhT0Sn3w51oOWBie2G3vEn/Gz0e1pxGQ
         Yo8rsO/Z+3DC96jJ2awAMIwVEpJYaMzPAhEXiE6K9U+Rv4OVg9SnUbPpjhRPk16lFuk2
         +QtYwlJ+BXJ+2tn3+riAK524XuMvB5BsQ2D5f3WIh2McYwJR4z6UweDJW2CW+PmyKAVw
         +X7oGvHLyd0led/t6nAdVv/7zEWw+MAwFSZxSCJtJshARqs3GwozHDzFNGW2YBEhzsXZ
         P2rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Re1AHOi5hXYGc1zzJ7SkQ+BouWMMcgyElquReQfSqsg=;
        b=524CySbC9eUyEsLBpnYqgZEIickXJk2V/7jYWJIObRD21tO3ntgPtnSrw99l3Mg3ym
         Iwv8pjs+RI5prw2aO6mZD68RGIEZeIzHJDdSgX3jRx1SNgNYq0GWz0V/fc/geRR9sUva
         TtbmGDxCx77tMGJKuFivv0eSg9zyjshJ7H4DrBOqm53xj3FZOpe79ry6OvpODrslmlwB
         YjDR6RBvOZwWN1HcJj27DMduXwkUsdfgyGGC/KaGIc4emTeUZfRzNalGrHz+g1LWq6y4
         Gxcvb8ihSJeYA6mmpFx3aL/quZgGEWL8ofCg+Zxfxrm7+mF7GNMpeQGHzF72+VmdRVIo
         y7Bw==
X-Gm-Message-State: AO0yUKXmzelW+mKfDEee9ttVkAPQvvrnpaVr3nGq3P90QVhXqJHWlTPY
	Mi/qkpmVi1KuMfIG/zkJkjCnHVn4/ayIQmUzNuM4p2rg
X-Google-Smtp-Source: AK7set/HrmLeOA+8DVLdnIkuFoUisjytQAyORF3V7650M4ro+lMnpShW64UYdGFzHqyNMlFM3pDYn8uavs8Qry4qlsE=
X-Received: by 2002:a81:b305:0:b0:536:155a:b73d with SMTP id
 r5-20020a81b305000000b00536155ab73dmr562894ywh.2.1677551111176; Mon, 27 Feb
 2023 18:25:11 -0800 (PST)
MIME-Version: 1.0
From: Chetan <chetan.byalihal@gmail.com>
Date: Tue, 28 Feb 2023 07:53:43 +0530
Message-ID: <CA+6q8-4q50f8bZPUAA4+xsyfX2_uxbkX4F72meB5Gry-ztMNgQ@mail.gmail.com>
Subject: How to Run the Unit Test cases on Ubuntu
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000013096105f5b94e22"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 02:25:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59314

--00000000000013096105f5b94e22
Content-Type: text/plain; charset="UTF-8"

Hi All

I need to generate the Unit Test cases for the code written for the Yocto
Recipes. How can I run the same in the Ubuntu machine? As cross compiled
binaries will not get executed at the Ubuntu.

Thanks
Chetan

--00000000000013096105f5b94e22
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi All<div dir=3D"auto"><br></div><div dir=3D"auto">I nee=
d to generate the Unit Test cases for the code written for the Yocto Recipe=
s. How can I run the same in the Ubuntu machine? As cross compiled binaries=
 will not get executed at the Ubuntu.=C2=A0</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Thanks</div><div dir=3D"auto">Chetan=C2=A0</div></div>

--00000000000013096105f5b94e22--

