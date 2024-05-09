Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87925C10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 16:42:48 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.488.1715272965014109764
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 May 2024 09:42:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cPNuGz56;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52192578b95so1190175e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 09:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715272963; x=1715877763; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lkomQ98NcQs0V70hefuWcwPt+ikcqg3kXtj2rqSjH1Q=;
        b=cPNuGz56ZOjE9LAZ1gZHj4DZaISFJ2KbwV0hP6bXBkan8+fn6pZZ5dmn2/qlPTafk5
         HWUt5Nm32nUumCElXbqcCi4jYJhltR8k+C42cKGYZbs7l0Uw+/HZCrMlBt9I/dVm8X0f
         4mSWyjQbEK+w0tCchwEDjChY8c9ELhS5cdRD5VwkBoHdB1QKhktupsjDKwZLDWEDQlUF
         dTSZb8bvmqOyrbgbpkVhzy2KvBoG39A2Vgykdta0DYzTcElKebXtB/BwgxOjlt3KZcf+
         VCSRVaHlyXWznuaCt3b50GBZm27QpqLMpts0grb1DURodh7Dx7dUw9IQRjxKzoDPgVih
         ytJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715272963; x=1715877763;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lkomQ98NcQs0V70hefuWcwPt+ikcqg3kXtj2rqSjH1Q=;
        b=pSShJEytOTK20Eiir32Zb4qQjqYbBT0COIzkK1iTLpOONZ66j8/UkY4FvL8/9xtCD2
         k4Frkf3t7AmtMb3jW60AzveXmIPdBwE1WEubJ1WVuFRMl+NKO6v4tuE1Ky2BzRaIUzeD
         GBO8Iu8ApOx1jw8sXZLdTV4qliH5ftFktRQYXGWqxujBAxFOHvFbbuVNk0qF4SuIwsmK
         vl7ETCP7e9ZeFN8FOn45zUWXY50VT62tJ96IqPutj2NohHvo0CnHyrULR6a616n7DE5I
         fqZ7PNy9dTet9IUjNk5wHoNv16vqaBRD6Ay323FznDGl+jw8y2ApaDmIF6KqLn/7bSfp
         8yEg==
X-Gm-Message-State: AOJu0YySm0csA2xs17kaUho2o5rrd1gI+6nGuejulfG5oSN9eDZIjF2Q
	fUw/xAXIpWWOLw/k1IfWQhWqTwfwOAjwMlfwsKoHrrz/hkWzrLqTbU1uhyUXcCzPwnIwwo66/Mt
	ZlhrxUNqN7lnBNVjmYEzHzGNDNOiaZAeA
X-Google-Smtp-Source: AGHT+IHAf7+gac2ej1QSTCap27sqo3U6ab8XqL6bnfcAfi/D1jPL7dpP4GtP29GJAVMTPAVqPf3sMXkYwiARb7LtscE=
X-Received: by 2002:a05:6512:398a:b0:519:2a88:add6 with SMTP id
 2adb3069b0e04-5220fe7999amr47544e87.55.1715272962952; Thu, 09 May 2024
 09:42:42 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
 <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
 <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
 <CAMKF1sokVhLK2muYkdM==d-OCQ66PDgcc2TcMZeK8pCa0xxbPg@mail.gmail.com> <CANuMBWG=_pScxQj=xYYc21Ks3DPhK1t+C+U0z2uTbAu2kinT2Q@mail.gmail.com>
In-Reply-To: <CANuMBWG=_pScxQj=xYYc21Ks3DPhK1t+C+U0z2uTbAu2kinT2Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 May 2024 18:42:31 +0200
Message-ID: <CANNYZj8fD0sqYWum7Otyy=dZezCuk53AV_Vj1sMoZG5zo38Eug@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 May 2024 16:42:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63064

On Wed, 8 May 2024 at 23:19, Worik Stanton via lists.yoctoproject.org
<worik.stanton=tirotech.co.nz@lists.yoctoproject.org> wrote:
> The system (before a build) has two subdirectories:
>
> * layers: Consists of "meta-*" directories, and "openembedded-core" all  git repositories pinned to particular commits
> * meta-mybuild: Consisting of "recipies-*" and a "conf" directories
>
> I expect it is that latter directory my warning is originating from.

The warning is:
WARNING: No recipes in default available for:
  /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbappend

What this means is bitbake is looking for recipe file called
gstreamer1.0-plugins-base_1.20.0.imx.bb and can't find it anywhere in
configured layers. This can happen for multiple reasons:

1. That recipe file used to be available, but someone updated the
layer containing it to a different revision where the file was either
removed or updated to a different version (which is encoded into the
filename). You need to find out whether that has happened, and either
revert to the original revision, or rename the bbappend to match. Try
using 'find' command with a generous wildcard expression to see what
would roughly match in the overall tree.

2. The needed file is available, but the the layer containing it is
not enabled in conf/bblayers.conf. Again, you need to find out how
this happened and either add the needed layer, or remove the bbappend.

3. The file is not available in any of the layers. You need to go over
the list of required layers in documentation for meta-this-build-nxp,
and find everything you can about layers it depends on, and perhaps
look at commit history for bbappend as well to find out
which layer it's meant to be used with.

Without a specific look at your setup it's hard to say much more.

Alex

