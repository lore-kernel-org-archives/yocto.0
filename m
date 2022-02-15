Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27B4C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Feb 2022 21:16:53 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web08.3325.1644959812727623579
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 13:16:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J8PVdMHl;
 spf=pass (domain: gmail.com, ip: 209.85.167.175,
 mailfrom: mattwood2000@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id o23so385874oie.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Feb 2022 13:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=L9Skz7oGsJSD9DkKzCFCAOSEujwzmBLs9zWmePsD+wE=;
        b=J8PVdMHlCmVa10/KkGmk0RyPVL8A1MKKs6VRKHRNPpPTEzrxGmiwHu7CdXBogJLMkv
         Fh64YBRiWp22BUpKwxzYpCaPCdal2Z6zAxruZ6GRmXkyIqIsvdRGw4KhpC3xcA5+edsk
         iwLO4lSGI1AdEIny2Gll/j0E1fOj4aKO3b6s1+9HSPYoEG399e57+bBb7sBjlTUynLB0
         v5+Bum/pFmc0ptN+gQ6if91HdWx/mwwQtfiSOdRzKEpRqBGVynKnupaROMVyN+FXJbKw
         KwA71WhEmyI9s+Mg2iOFqXOiFC5BAH9PXRSLXS7JdNZzSpXgYSH1Wgz8/5ABuz4JGsXu
         8wcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L9Skz7oGsJSD9DkKzCFCAOSEujwzmBLs9zWmePsD+wE=;
        b=apf625OdSno88ssrHo1nn/InMXqsFcnHWs7jAUIfOwJx8QJqy8V197ZGbX0kJwDN38
         vCQQLHusbUtI5Dk56N22dhH5fWrE9iiOkvusK1CDZXfp459cEXXWphvdXCFMewlyHNN5
         NSsZzoXnKLt8FqN0xB9CeBMhdsDX/JRuW4R1VShO9ltfnwsgArPwri0DDtOX7OSzSEuV
         RYAFTMCmS6eGKNuD8Iq25OIrbDLprIa/WrIGX7M1p6Hp/oVY0/9JqtkWIVtodr9vm7Dw
         IkdRwkqF+FbYC420RMf5UZAyCrhLyt5484A/OSbzu5zrANekBUu4MbtyEfM4PpiZluX3
         +URA==
X-Gm-Message-State: AOAM531bXHhNzjNE1h+g1zNJoZNz1bNMsbzPJ5wKHS8dvsBHYo6C7B/m
	B2Hb7Xr1EzhEAiZlBf1spLVvqAxXnb/oWTBZ044W2s9ObcM=
X-Google-Smtp-Source: 
 ABdhPJz/tly5zSbAPK4jJta5AfyWyXKHYbtybTapFq9GmEC+jtO3aWfMCDyqZz5x/WCUa1Sv/KH7k5QCKxLVCXY8rsc=
X-Received: by 2002:a05:6808:19a4:: with SMTP id
 bj36mr308895oib.193.1644959811741;
 Tue, 15 Feb 2022 13:16:51 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Tue, 15 Feb 2022 16:16:40 -0500
Message-ID: 
 <CADjezmZ+M+UxW4JKYfLxMX6k6MKU7UfromUdG9Z9GiOEj67PTw@mail.gmail.com>
Subject: gpsd bbappend adding new file causing QA errors even with
 FILES_${PN}:append set
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Feb 2022 21:16:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56203

Hi,

I've seen many questions about this with proposed answers but I cannot
seem to get this to work for my bbappend to gpsd.

I'm simply trying to add an additional systemd service file I created
for the gpspipe client.

What is strange is that I'm already appending the
${systemd_system_unitdir} in this bbappend to replace gpsd.socket with
no error.

I'm confused why adding one additional file to a directory that is
already being appended could cause the QA error:
ERROR: gpsd-3.23.1-r0 do_package: QA Issue: gpsd: Files/directories
were installed but not shipped in any package:
  /lib/systemd/system/gpspipe.service

The recipe is below - I've commented out the three lines that cause
the error.  Anyone have any ideas why this is happening?

Thanks, Matt.

gpsd_%.bbappend:

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "\
        file://gpsd.default \
        file://gpsd.socket \
        file://gpspipe.service \
    "

inherit systemd
SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_AUTO_ENABLE = "enable"
SYSTEMD_SERVICE_${PN}:append = " gpsd.service gpsd.socket gpspipe.service "

do_install:append () {
    install -d ${D}${sysconfdir}/default/
    install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants/
    install -d ${D}${sysconfdir}/systemd/system/sockets.target.wants/

    install -D -m 600 ${WORKDIR}/gpsd.default ${D}${sysconfdir}/default/
    install -D -m 600 ${WORKDIR}/gpsd.socket ${D}${systemd_system_unitdir}
#    install -D -m 600 ${WORKDIR}/gpspipe.service ${D}${systemd_system_unitdir}

    ln -s ${systemd_unitdir}/system/gpsd.service
${D}${sysconfdir}/systemd/system/multi-user.target.wants/gpsd.service
    ln -s ${systemd_unitdir}/system/gpsd.socket
${D}${sysconfdir}/systemd/system/sockets.target.wants/gpsd.socket
#    ln -s ${systemd_unitdir}/system/gpspipe.service
${D}${sysconfdir}/systemd/system/multi-user.target.wants/gpspipe.service
}

FILES_${PN}:append = " \
            ${sysconfdir}/systemd/system/multi-user.target.wants \
            ${sysconfdir}/systemd/system/sockets.target.wants \
            ${sysconfdir}/default/gpsd.default \
            ${systemd_system_unitdir}/gpsd.socket \
#            ${systemd_system_unitdir}/gpspipe.service \
        "

