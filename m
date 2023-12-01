Return-Path: <mans.zigher@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5027DC4167B
	for <webhook@archiver.kernel.org>; Fri,  1 Dec 2023 11:56:16 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web10.21074.1701431765941214108
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Dec 2023 03:56:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mPbJiI54;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: mans.zigher@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-54c5ed26cf6so579297a12.3
        for <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 03:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701431764; x=1702036564; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SdYZxNyxnF6Wzwem99BsDIv5KQyAfAExsWjFGUQEOGU=;
        b=mPbJiI54n66Se6EQ/G09IDNCMyaD6vDL0zLKbuGgG1QxIojjEn/c59RaglQ78qZKvh
         sJuuNI3emH0LmF9x1JzGsUGcjmrZk5B3VTmLMgw7Q9Mj3tIjtzvLslsFuMtmuFpUGK8H
         IA0X/2g6MkN+parhNRlkur45YLRc3sOFFToNPGYmV4mbuErYSOagv5pdqNLBxEk3M84f
         ZWHl+yNRx9N8CCnakxAufa3gN+bLzugvGWgfHgnmVQlBDKYH/uyggU2KE9SFOi3SMtq3
         BFaNrYp7pitFKmhBh0TMeN7Nvt/o0VYNOz/gjXBvQu5zaN3FNoVx+/hfk9VVRTQAY6Y+
         wlKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701431764; x=1702036564;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SdYZxNyxnF6Wzwem99BsDIv5KQyAfAExsWjFGUQEOGU=;
        b=GC+4k7iDkzI8Kz3b5uVX5yixzqkhz4iHl08SEGJMA099woFNQz8hqf9erMMbx/ckWj
         4r42i9w05KqopuUVhBk4TkSlzYiNJRVe8ZVXYiQjz1EuvWRVQBJ3WLhTjFme+ExIm/Uo
         hrVbD6ifB3+wR/D0ruIQdMvEoDqUPGqW7YZ1wmbjxIkMmCdq6xT1eASsj3bLprblKfXC
         zhYlhSyQvXGmD3ccpz4fVQRODbSEvb+S9dVjFOYIzWyZF84nNWm6litxtBHZPIee15rg
         zCfwHriC3QolNn9VOI3qRLPTsRLywb/J/Zac4NNJUeHWKqBDLFjb5TnRus9Dzp2d5hXB
         ehNg==
X-Gm-Message-State: AOJu0YxdWEs1Wa91byQ/zsZoB2SOKLNC7+oa74lHKVbOuGYWrBbyCeD8
	HlpXT23edEMKdDq7imLWxhjOxrRv8j8GmRN34/Cfg8QvHlEHuw==
X-Google-Smtp-Source: AGHT+IGVeB8z10iTJ6bMAXhmsyL6xJQG57oGBWSlPdMnTG0nG05AVhNxZ+FMPpgP0mKvMTYnoa6GdcPZYPDKCAB7W0g=
X-Received: by 2002:a17:906:10ca:b0:a19:a19b:55f4 with SMTP id
 v10-20020a17090610ca00b00a19a19b55f4mr817079ejv.132.1701431763937; Fri, 01
 Dec 2023 03:56:03 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8=ieuy1EnnH9Z02k7a7XicZYBtXX92yi4Ac_dE5PG1QjQ@mail.gmail.com>
In-Reply-To: <CAEhQi8=ieuy1EnnH9Z02k7a7XicZYBtXX92yi4Ac_dE5PG1QjQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnM=?= <mans.zigher@gmail.com>
Date: Fri, 1 Dec 2023 12:55:52 +0100
Message-ID: <CAEhQi8=gnb9LU6B4TBYuz0nCgWk9_9w=aXs0wg+CjL1K0t0MDw@mail.gmail.com>
Subject: Re: The postinstall intercept hook 'update_mime_database' failed
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Dec 2023 11:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61786

I have now tried building a multitude of different machines and
switched to core-minimal-image and still I get these postinstall
intercept scripts failing. Depending what distro and machine I build I
get different errors but It is always a postinstall intercept hook
script that fails and it is always related to missing some directory
under the rootfs of the image that I am currently trying to build.

BR

Den tors 30 nov. 2023 kl 19:11 skrev M=C3=A5ns <mans.zigher@gmail.com>:
>
> Hi,
>
> I have taken over a imx8mm project that is based on kirkstone. I don't
> think it is an official release and some layers are not even a
> kirkstone release. The project has a reference build but currently it
> is not possible to build from scratch. I have been fixing some issues
> on the way to try and build a complete build from scratch but now I
> have encountered an issue when creating the rootfs that I am
> struggling with. The issues that I am getting is
>
> ERROR: fsl-image-gui-1.0-r0 do_rootfs: The postinstall intercept hook
> 'update_mime_database' failed, details in
> /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl-i=
mage-gui/1.0-r0/temp/log.do_rootfs
> ERROR: Logfile of failure stored in:
> /workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-linux/fsl-i=
mage-gui/1.0-r0/temp/log.do_rootfs.335539
> ERROR: Task (/workspace/mender-imx8mm/sources/meta-variscite-sdk/recipes-=
fsl/images/fsl-image-gui.bb:do_rootfs)
> failed with exit code '1'
>
> checking the log file
>
> NOTE: Running intercept scripts:
> NOTE: > Executing update_mime_database intercept ...
> NOTE: Exit code 1. Output:
> Updating MIME database... this may take a while.
> Directory '/workspace/mender-imx8mm/builds/tmp/work/imx8mm_var_dart-fslc-=
linux/fsl-image-gui/1.0-r0/rootfs/packages'
> does not exist!
>
> In poky/meta/classes/mime.bbclass there is a comment that seems to
> refer to this issue
>
>         # $D${MIMEDIR}/packages belong to package shared-mime-info-data,
>         # packages like libfm-mime depend on shared-mime-info-data.
>         # after shared-mime-info-data uninstalled, $D${MIMEDIR}/packages
>         # is removed, but update-mime-database need this dir to update
>         # database, workaround to create one and remove it later
>         if [ ! -d $D${MIMEDIR}/packages ]; then
>                mkdir -p $D${MIMEDIR}/packages
>                update-mime-database $D${MIMEDIR}
>                rmdir --ignore-fail-on-non-empty $D${MIMEDIR}/packages
>        else
>                update-mime-database $D${MIMEDIR}
>        fi
>
> This is not called so no packages directory doesn't exist and the
> intercept script failed. I can adjust the script
> poky/scripts/postinst-intercepts/update_mime_database
>
> echo "Updating MIME database... this may take a while."
> update-mime-database $D${mimedir}
>
> By adding a similar logic I will get forward but with my build but
> that doesn't seem like the right solution. Also I just get some other
> issue related to a second intercept script update_desktop_database so
> to me it seems more like something is not correctly set up in the
> build. I am trying to understand how these intercept scripts are
> configured and why they are not working for my build. Any pointers on
> how to move forward would be much appreciated.
>
> BR

