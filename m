Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E60CC4167B
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 19:37:50 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.3243.1701373061289686513
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 11:37:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KK9fx8Ar;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: mans.zigher@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a04196fc957so178327366b.2
        for <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 11:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701373059; x=1701977859; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5VMaRXx76YPLhomR5MeoWsszGcHw2LChnssHxqEuq6E=;
        b=KK9fx8ArR2nI3wRdJAKETc9T/0ESA7tosUdMTMs+OLeOiTQe83Lp2iloMPr+mKHjgj
         L5vxwl/C3S+3EUjhbrza+/lq48dDOR68GnuRmXTfdP1fB82OIq6vlExoemae35Ka0S73
         0Ddy1O8ZeamXUy+cpJT977kyF2U+tZ9CFpqFOtz3GEdC4PhkW5CkIJc8ois94MNqDRPK
         717ztHFyyESMXfi9e++8lRnnOe32KA+nNOzj/MNJKj/kC7lR3HX4vLyy1cmQR27osNoQ
         PZy2oDTo7zQ5KWZmktbn0zY1bM8y9qLwuIiP8aSeMnmQDoU6u8f9F5Ooa0Lp+1+aPrIt
         3/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701373059; x=1701977859;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5VMaRXx76YPLhomR5MeoWsszGcHw2LChnssHxqEuq6E=;
        b=NHeNpHPEQk5kPEM3sG1QMm+cT+2JAJc7D/UWt3R9rNYG+IeV4uKQeJ8iE8j1DH+G2i
         DPXz7iFVvDdhD75EL3g9X6MtZ8MytxVeZ121JfYdUqDd9fERDcf9Nu8QGitcLpMiBv6z
         YFvkz47+f0blL21gxLodU7MZuGJFukx/6jcaQ2mG1yZemnObUvhysXU8m2WxHquPYIuA
         mxgJYkyiee/cXU19isSbPKDYf3SEtozfqK9sR2e6CtqaU8jNcn1KrBRWa7U7TIS7VMer
         UMSqCSWDYpTtE+M17Ekyb27hbOZPBtXDe424N8SF17bJrucqd4awo+ov0UHXWnJJ6KUa
         /kFA==
X-Gm-Message-State: AOJu0YzcRZ0kvFRw4vAv3AmIUmbevKcAxq6XBQs2N731yQ8IWIRQ/whv
	7C3XYAFt4EF6FL3yQfnPDBfrE+M5KuqIzGOfNMwVxMzdJas=
X-Google-Smtp-Source: AGHT+IG7XSp3RjiNZL9SlU962GEsMxTum8L2mZzFPt6BWQ396GVHPjdhf998ZoKTYx1qniwATNDnHNajwXXKVmSg5yg=
X-Received: by 2002:ac2:4282:0:b0:50b:d764:8e77 with SMTP id
 m2-20020ac24282000000b0050bd7648e77mr4284lfh.137.1701367880452; Thu, 30 Nov
 2023 10:11:20 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Thu, 30 Nov 2023 19:11:09 +0100
Message-ID: <CAEhQi8=ieuy1EnnH9Z02k7a7XicZYBtXX92yi4Ac_dE5PG1QjQ@mail.gmail.com>
Subject: The postinstall intercept hook 'update_mime_database' failed
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 19:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61782

Hi,

I have taken over a imx8mm project that is based on kirkstone. I don't
think it is an official release and some layers are not even a
kirkstone release. The project has a reference build but currently it
is not possible to build from scratch. I have been fixing some issues
on the way to try and build a complete build from scratch but now I
have encountered an issue when creating the rootfs that I am
struggling with. The issues that I am getting is

ERROR: fsl-image-gui-1.0-r0 do_rootfs: The postinstall intercept hook
'update_mime_database' failed, details in
/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl-image-gui/1.0-r0/temp/log.do_rootfs
ERROR: Logfile of failure stored in:
/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl-image-gui/1.0-r0/temp/log.do_rootfs.335539
ERROR: Task (/workspace/mender-imx8mm/sources/meta-variscite-sdk/recipes-fsl/images/fsl-image-gui.bb:do_rootfs)
failed with exit code '1'

checking the log file

NOTE: Running intercept scripts:
NOTE: > Executing update_mime_database intercept ...
NOTE: Exit code 1. Output:
Updating MIME database... this may take a while.
Directory '/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl-image-gui/1.0-r0/rootfs/packages'
does not exist!

In poky/meta/classes/mime.bbclass there is a comment that seems to
refer to this issue

        # $D${MIMEDIR}/packages belong to package shared-mime-info-data,
        # packages like libfm-mime depend on shared-mime-info-data.
        # after shared-mime-info-data uninstalled, $D${MIMEDIR}/packages
        # is removed, but update-mime-database need this dir to update
        # database, workaround to create one and remove it later
        if [ ! -d $D${MIMEDIR}/packages ]; then
               mkdir -p $D${MIMEDIR}/packages
               update-mime-database $D${MIMEDIR}
               rmdir --ignore-fail-on-non-empty $D${MIMEDIR}/packages
       else
               update-mime-database $D${MIMEDIR}
       fi

This is not called so no packages directory doesn't exist and the
intercept script failed. I can adjust the script
poky/scripts/postinst-intercepts/update_mime_database

echo "Updating MIME database... this may take a while."
update-mime-database $D${mimedir}

By adding a similar logic I will get forward but with my build but
that doesn't seem like the right solution. Also I just get some other
issue related to a second intercept script update_desktop_database so
to me it seems more like something is not correctly set up in the
build. I am trying to understand how these intercept scripts are
configured and why they are not working for my build. Any pointers on
how to move forward would be much appreciated.

BR

