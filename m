Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD51C7619A
	for <webhook@archiver.kernel.org>; Sun,  2 Apr 2023 21:25:40 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.55028.1680470739470961769
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Apr 2023 14:25:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20210112.gappssmtp.com header.s=20210112 header.b=7ItXjbC+;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.160.175, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qt1-f175.google.com with SMTP id cn12so23247648qtb.8
        for <yocto@lists.yoctoproject.org>; Sun, 02 Apr 2023 14:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20210112.gappssmtp.com; s=20210112; t=1680470738;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sY9jANrgunypcQB0BlfN3MGgGP/HeLcUNNDwXQC/2KI=;
        b=7ItXjbC+if1do3rJ4TZ1i+xhXrfCxHhOhhx0aZrbDDscEB7zWI2zqJevIaEX4Fqrb6
         hQ/z2ZtZm0Q2CmkzTRB0W7VrSiPIxIJK7Pf0orE8tx1DHRwNLvgwxkPeIxffGXB8nG+g
         K0Bbn5RFkflTFDEmY4+7BYgTGeJ8l6Md/Elx8G9qw4SUgIRLe60fhZxy2WKzPiNfpH67
         HAy9o67bv8vHp4Ro8Mtoab7K4WDeO83JWGX8lvBOgRVOQz1noraZ7JL+vx5mP58G3Gtg
         WRg4fjli5RfcBn4Q8WvLonQxrs5RwMbWSkm5Umn3avmpRANfXlJX2oro1ACgz6xqXWRP
         PFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680470738;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sY9jANrgunypcQB0BlfN3MGgGP/HeLcUNNDwXQC/2KI=;
        b=YzaAvBMxKurMFoGltn2UCeJLPDEhPI+x6Fs4RY+iDXvrwn9AGssx8M3SX0h1aOiPff
         FElEPnjkB/syNx9kqTlV9xHtJ98AubNTf/oSuxSO/Fa/Xbrw3jaM4yu5IC3FmHhWILFP
         FQn5AIRtwUDU8ZLsCxqYJhsaAoRLIjbywUwAhFsk0YBLrK9vShxOTbUqr9g6LbJV6Fuu
         j0B28zLiKCAHw0M3FIrmyU3cKSf2jAb68SPw5rK5+8KZqUNAN6S/qVUgsBOLMsPUaPo1
         kOQinl8LpAvDOX6aq184mmWG5hD01oUHhishbEcSPGtaztb/DWzjeZ9ukmfrNM0Z+PJk
         0rng==
X-Gm-Message-State: AO0yUKVLYV02MN6YFD8YfgCNuBcl8ngCsJB+kgPIzRkqoTrZvsaUHnyN
	LvqxHGgCflOmwgYvIkBUECSuXj8QbFdaQ4I9DiTU8nli5kxzmXm1F4k=
X-Google-Smtp-Source: AK7set9UH7UXhqR68O2Uw/RiSQny2F4fiqvO+NayNEbJydVk2Xtoc3Mb9Z4oSSbn8jj4FFEjba9CiXxdO6UlSA/GJ5U=
X-Received: by 2002:ac8:7f87:0:b0:3c0:1f6:ac8d with SMTP id
 z7-20020ac87f87000000b003c001f6ac8dmr12914213qtj.12.1680470738250; Sun, 02
 Apr 2023 14:25:38 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Mon, 3 Apr 2023 09:25:33 +1200
Message-ID: <CA+EiEZKEGCOO0LKF2qokCGMULSHKZWOmC+bp7pOaeKBhT7-xPA@mail.gmail.com>
Subject: How do I symbolically link /etc/resolv.conf to /var/run/systemd/resolve/stub-resolv.conf?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Apr 2023 21:25:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59591

I'm trying to setup a Yocto build using NetworkManager v1.22.16 and
systemd 244.5. https://www.freedesktop.org/software/systemd/man/systemd-resolved.service.html#/etc/resolv.conf
recommends I setup /etc/resolv.conf as a symbolic link to
/var/run/systemd/resolve/stub-resolv.conf. Initially it was linked to
/etc/resolv-conf.NetworkManager but I've fixed that by adding a
networkmanager_%.bbappend file with:

    ALTERNATIVE_${PN} = ""

But now I find /etc/resolv.conf is a symbolic link to
/etc/resolv-conf.systemd, which is itself a symbolic link to
/run/systemd/resolve/resolv.conf. This seems to come from
systemd_244.5.bb:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/systemd/systemd_244.5.bb?h=dunfell#n289

    if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true',
'false', d)}; then
        echo 'L! ${sysconfdir}/resolv.conf - - - -
../run/systemd/resolve/resolv.conf'
>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
        echo 'd /run/systemd/resolve 0755 root root -'
>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
        echo 'f /run/systemd/resolve/resolv.conf 0644 root root'
>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
        ln -s ../run/systemd/resolve/resolv.conf
${D}${sysconfdir}/resolv-conf.systemd
    else
        sed -i -e "s%^L! /etc/resolv.conf.*$%L! /etc/resolv.conf - - -
- ../run/systemd/resolve/resolv.conf%g"
${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
        ln -s ../run/systemd/resolve/resolv.conf
${D}${sysconfdir}/resolv-conf.systemd
    fi

But there doesn't seem to be any support for making /etc/resolv.conf a
symbolic link to /var/run/systemd/resolve/stub-resolv.conf. Is there
any way of doing this that I'm missing or is this functionality just
missing?

(Apologies if this is the wrong forum for this, I'm relatively new to
Yocto and systemd).

Thanks.

-- 
Tom Isaacson

