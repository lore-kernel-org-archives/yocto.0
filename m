Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFCA6EB64DA
	for <webhook@archiver.kernel.org>; Sat, 22 Jul 2023 15:45:28 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.7961.1690040718623906198
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jul 2023 08:45:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=W9b63Pew;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.52, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5221c6a2d3dso721976a12.3
        for <yocto@lists.yoctoproject.org>; Sat, 22 Jul 2023 08:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1690040717; x=1690645517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IASi/2PwDsCcNBw4hxd1bnSWOHLOdXAtSRpPBAcEzdI=;
        b=W9b63PewJ8GwWBQGA3+jsXms5cBhsIT46wkRAUYZmTck+W6qvFRa9OMD8Yrf8smu/R
         V/KCQfl2huFhgSF6PCXDKEwbIkbvqZpZ6HFJDfW5LEc2UKCl2CjrdRiprIglUJCp+i2y
         QTKTyGlQTSx80SeSbVSv69gz5iTF4R5IEfoiEh2qbbR4ZaoiAXscWgBVdR+l0G73WCyo
         X5TL9jISaHMAjD6fFmQOMe9nGIttP5i4FS5WjxjmbUjJxROX18oRUsBZjHQAH0qieQ6F
         3N54+CcSpaqgyKym9nqhpjTxEecpbdG/Jag1Ue5sgrtEHQPphqFfcNcJcQ0YbqzZon1l
         VwOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690040717; x=1690645517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IASi/2PwDsCcNBw4hxd1bnSWOHLOdXAtSRpPBAcEzdI=;
        b=Npgnr0BgHrGJTiCRsQY225yb1hxnSJBCg1R8qYWjyC597S35yuX5Mk9jxLPsNIIaBk
         W2x7bKhvdrMVLwfIp6VyqbUjC0EEQSzgKJbAuinvxTSAvmW+dYssAMXPihtKRkIhDQzj
         8NPuqg0F0R4tpS5Gp8IMvDycG510o3IsvPsRle+iS9RhHTe4sQ3nu6lV9zaLzi1TxYw5
         TvN4zpsu0gdvbK5av/E2woju4g+hiJKd6iBiEfuwLIUDa93J4TEckGQ3DGsfB6GusjDg
         HEL0dJViiuolW2Lae/BQaUsRASHZVKH0TuXiJ2ftbnzqM3wx1+wvSYTDTfw2tHdyujQ+
         lsBg==
X-Gm-Message-State: ABy/qLb330DWaxuAZDiYbETB+n3T1Zq9gNEL1OVmscxQOX86bZtU7piW
	+QOj9kMVkaTu2A5PgZeov7ALkUYpwK66QrKLn88Usg==
X-Google-Smtp-Source: APBJJlGMIx4PvAWzko4H/E7mTyggyVKhUb2nOeBAck66lhImBajAdTwn/ERF7EoS4/3DTiGY1Ph1oENxRkPDt5o2Da4=
X-Received: by 2002:aa7:d4d2:0:b0:51e:cb4:2b40 with SMTP id
 t18-20020aa7d4d2000000b0051e0cb42b40mr3902635edr.6.1690040716804; Sat, 22 Jul
 2023 08:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <P4mt.1690002373731047850.DF58@lists.yoctoproject.org>
In-Reply-To: <P4mt.1690002373731047850.DF58@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Sat, 22 Jul 2023 17:44:51 +0200
Message-ID: <CAEt6NwrMaqzQJevVOq1Nvd_X54Ogtqaf8bUaRjotNJBpgRZNDg@mail.gmail.com>
Subject: Re: [yocto] owner and group of sysroots changed to nobdoy #bitbake #kirkstone
To: yong.9.wang@outlook.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jul 2023 15:45:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60632

See https://docs.yoctoproject.org/4.0.4/migration-guides/migration-4.0.html=
#fetching-changes,
last bullet.

On Sat, Jul 22, 2023 at 7:06=E2=80=AFAM <yong.9.wang@outlook.com> wrote:
>
> Hi,  experts
>
> I'm moving my bb recipe to kirkstone but met a problem which causing ssh =
operation in bb recipe failed.  after some investigation I found out that t=
he owner and group of the sysroots accessing in the bb recipes were all cha=
nged to nobody.  below is the shell commands run in the bb recipes and erro=
r log.  So I'm curious how this owner and group changed and how to fix it=
=EF=BC=9F
>
> check_gerrit_authentication() {
>
>     ls -ld /*
>
>     if ! ssh -o BatchMode=3Dyes -p 29418 gerrit-essl2.int.net.nokia.com g=
errit version; then
>
>         bberror "SSH connection to Gerrit failed.\n\n\
>
>     Please check that your public key is installed and Gerrit host is in =
your known_hosts file.\n\
>
>     To check the connection:\n\
>
>         $ ssh -p 29418 gerrit-essl2.int.net.nokia.com\n"
>
>         exit 1
>
>     fi
>
> }
>
> and the output :
>
> DEBUG: Executing shell function check_gerrit_authentication
>
> lrwxrwxrwx   1 nobody nobody       7 Jan 28  2020 /bin -> usr/bin
>
> dr-xr-xr-x   2 nobody nobody       6 Jan 28  2020 /boot
>
> drwxr-xr-x   5 nobody nobody     360 Jul 21 07:44 /dev
>
> drwxr-xr-x   1 nobody nobody     139 Jul 21 07:44 /etc
>
> drwxr-xr-x   1 nobody nobody      21 Jul 21 07:44 /home
>
> drwxr-xr-x   4 nobody nobody      33 Jul 21 07:44 /host
>
> lrwxrwxrwx   1 nobody nobody       7 Jan 28  2020 /lib -> usr/lib
>
> lrwxrwxrwx   1 nobody nobody       9 Jan 28  2020 /lib64 -> usr/lib64
>
> drwx------   2 nobody nobody       6 Apr 27  2021 /lost+found
>
> drwxr-xr-x  10 nobody nobody    4096 Jun 11 01:56 /make-4.3
>
> -rw-r--r--   1 nobody nobody 2317073 Jan 19  2020 /make-4.3.tar.gz
>
> drwxr-xr-x   2 nobody nobody       6 Jan 28  2020 /media
>
> drwxr-xr-x   2 nobody nobody       6 Jan 28  2020 /mnt
>
> drwxr-xr-x   1 nobody nobody      22 Jun  1 07:08 /opt
>
> dr-xr-xr-x 314 nobody nobody       0 Jul 21 07:44 /proc
>
> dr-xr-x---   1 nobody nobody      58 Jun  1 07:08 /root
>
> drwxr-xr-x   1 nobody nobody      22 Jun  1 07:08 /run
>
> lrwxrwxrwx   1 nobody nobody       8 Jan 28  2020 /sbin -> usr/sbin
>
> drwxr-xr-x   1 nobody nobody      27 Jun 11 01:56 /scripts
>
> drwxr-xr-x   2 nobody nobody       6 Jan 28  2020 /srv
>
> dr-xr-xr-x  12 nobody nobody       0 Jul 21 08:18 /sys
>
> drwxrwxrwt   2 nobody nobody      40 Jul 21 07:44 /tmp
>
> drwxr-xr-x   1 nobody nobody      45 Apr 27  2021 /usr
>
> drwxr-xr-x   1 nobody nobody      30 Jun 11 01:56 /var
>
> -rw-r--r--   1 nobody nobody      16 Jun 11 01:55 /VERSION
>
> Bad owner or permissions on /etc/ssh/ssh_config.d/50-redhat.conf^M
>
> ERROR: SSH connection to Gerrit failed.
>
> Best Regards
> Yong
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60631): https://lists.yoctoproject.org/g/yocto/messag=
e/60631
> Mute This Topic: https://lists.yoctoproject.org/mt/100291025/4689568
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

