Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B6BCDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 15:33:59 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.220705.1697556836354341748
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 08:33:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=C+h4eKZf;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2c51682fddeso35140231fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 08:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697556834; x=1698161634; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvjNtUN038Xdr2XCaMr/mE1UX5PDwuxFCZgpziDDCiM=;
        b=C+h4eKZf1e4OcLtMFnhW+14nNzOtotf9IgBU9Yq+U+AjgZZtochq8BHNtG+0GBXzpz
         +kR3jMeKdqnfr28QKPx8UjJK9j5bKgg2XQo/PckZdg2t38Bfg8t2YxDVIptr1TNrtH7T
         SI/ZGUiD44bhZQuwynus5S1trsnI8EwVt0Us2jPR/5rGadT2WG/w31kC2jLgsFJgrH2C
         cqSmvzPsYUjL9fS/DnDSoeDfikWyK9LmWlb1ZoRef28aQyVQgxH+Qny7wRsE5qRInIcK
         3TtpvnK2Ql93LOkVf42CrOwuzm0VOH3x1GsRpZpqIkrT/zNZXMh5qqiDFTcWryw3GB4y
         QEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697556834; x=1698161634;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yvjNtUN038Xdr2XCaMr/mE1UX5PDwuxFCZgpziDDCiM=;
        b=D/bYnuJTyyWNrzOIc7iozMm+3ycTnMBkTDP/Q/346gXDfQ60/wJNgeyjevjvLlRCEA
         K9nFBmmF0ljp1ne95QfPmsz3sDIYteU/O4sRo+h11+FUyYCi4ecSBRF3MPHa17dlxHW6
         E7qeTc3fTK2Std9Fup5XqgQokj6wjp9T99fV/SrRfCsC8yAZ6yBfBV0hEL/LJvMHnO9k
         YWX/tbj3ZtrMG3Qzvjh2UCPUTMcaA3Y5VgEKqfwxp8gP1rGEW/LgQ4Dh7aBbq7x+Psaz
         2b28InRfmBcywhmhJfAjaUQcxXUvJAOEhJ6lK3aP91iINQcn+ZoYJVCMdR5NmJ1vzVnT
         eCnw==
X-Gm-Message-State: AOJu0YzxFdEjbb+l4TaofuQW8MFj+3JPpUXZGXy+blLcMNj8xMcqm6M1
	e4CzRwbV490gPzpHm6OM5fjPXTIPe+n7H37StE/8pU2zSxU=
X-Google-Smtp-Source: AGHT+IGZ4AaeK/ayg21imCPVnMKo5gJ6f9gA5VF85bouMXc2VxzLo81Rldvbk4WeHkSSN0GXntQG+omf1rUYCmifB9w=
X-Received: by 2002:a2e:9106:0:b0:2c5:8e7:77f with SMTP id m6-20020a2e9106000000b002c508e7077fmr859056ljg.22.1697556834156;
 Tue, 17 Oct 2023 08:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
In-Reply-To: <CADfgfoaiTO20VqND_cW19rcx3zKvDR2vh69GZMA0Ox3Pb-pF2Q@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 17 Oct 2023 17:33:43 +0200
Message-ID: <CANNYZj_SLzpPUct_BEnsm2mSJrZViHYdh0yqjwA-KfKRhymdyw@mail.gmail.com>
Subject: Re: CDN for sstate.yoctoproject.org
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 15:33:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61381

Thanks for working on this! I finally got to playing with CDN mirror a
bit, and it seems to basically work ok, so next I'm going to write AB
tests that check that it remains useful. Specifically:

1. What should the test be?

I tried 'bitbake -S printdiff core-image-sato' on a blank build
directory, and the result against current master is:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Checking sstate mirror object availability: 100%
|##########################################################################=
########################################################################|
Time: 0:05:35
The differences between the current build and any cached tasks start
at the following tasks:
/srv/work/alex/poky/meta/recipes-sato/images/core-image-sato.bb:do_deploy_s=
ource_date_epoch
/srv/work/alex/poky/meta/recipes-core/base-files/base-files_3.0.14.bb:do_in=
stall
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

I think this is pretty good! The two missing objects depend on the
current date, and so should go to the exception list in the test, and
otherwise there is a 100% match rate. The bitbake targets could be
'world core-image-sato-sdk', and target machines could be qemux86_64
and qemuarm64.

Just to be sure that mismatches elsewhere will be reported as CDN
misses, adding my shadow 4.14 update and re-running the command shows:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The differences between the current build and any cached tasks start
at the following tasks:
/srv/work/alex/poky/meta/recipes-gnome/hicolor-icon-theme/hicolor-icon-them=
e_0.17.bb:do_package
/srv/work/alex/poky/meta/recipes-sato/pulseaudio-sato/pulseaudio-client-con=
f-sato_1.bb:do_package
/srv/work/alex/poky/meta/recipes-core/initscripts/initscripts_1.0.bb:do_pac=
kage
/srv/work/alex/poky/meta/recipes-core/update-rc.d/update-rc.d_0.8.bb:do_pac=
kage
/srv/work/alex/poky/meta/recipes-multimedia/alsa/alsa-ucm-conf_1.2.10.bb:do=
_package
/srv/work/alex/poky/meta/recipes-kernel/wireless-regdb/wireless-regdb_2023.=
09.01.bb:do_package
/srv/work/alex/poky/meta/recipes-sato/packagegroups/packagegroup-core-x11-s=
ato.bb:do_package
/srv/work/alex/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-heade=
rs_6.5.bb:do_package
/srv/work/alex/poky/meta/recipes-core/packagegroups/packagegroup-core-ssh-d=
ropbear.bb:do_package
/srv/work/alex/poky/meta/recipes-graphics/packagegroups/packagegroup-core-x=
11.bb:do_package
/srv/work/alex/poky/meta/recipes-sato/shutdown-desktop/shutdown-desktop.bb:=
do_package
virtual:native:/srv/work/alex/poky/meta/recipes-support/libbsd/libbsd_0.11.=
7.bb:do_prepare_recipe_sysroot
/srv/work/alex/poky/meta/recipes-support/ca-certificates/ca-certificates_20=
211016.bb:do_package
/srv/work/alex/poky/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb:=
do_package
virtual:native:/srv/work/alex/poky/meta/recipes-extended/shadow/shadow_4.14=
.0.bb:do_recipe_qa
... (a few more missing do_package objects)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2. When to run the test, and against which commit in poky?

RP suggested that the test could run in an antiphase with the nightly
a-quick (i.e. 12 hours after). We can do that for a start, but I'm
(perhaps prematurely) worrying that this will be unstable: either
because the objects from the nightly haven't yet propagated to CDN, or
because master has meanwhile (e.g. in the 12 hours that have passed)
gained new commits without corresponding cache objects. Are those real
concerns?

Thoughts?

Alex


On Fri, 22 Sept 2023 at 19:32, Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
>
> Right now we have https://cdn.jsdelivr.net/yocto/sstate set up as a CDN m=
irroring proxy endpoint. It's fast and completely free to the project. Howe=
ver, it will only work for files smaller than 64MB and will send a redirect=
 to the main server at sstate.yoctoproject.org for files larger than 64MB.
>
> The good news is that we have a fast free CDN provided by https://www.jsd=
elivr.com/ and their many sponsors for 99.4% of our files.
>
> Here is an estimated distribution of sstate files currently available:
> 1 KB-4 KB: 103168
> 4 KB-16 KB: 1218048
> 16 KB-64 KB: 1886976
> 64 KB-256 KB: 1225216
> 256 KB-1 MB: 170752
> 1 MB-4 MB: 92928
> 4 MB-16 MB: 83200
> 16 MB-64 MB: 40448
> 64 MB-256 MB: 17664
> 256 MB-1 GB: 7936
> 1 GB-4 GB: 2560
>
> I'm still working on a CDN solution for the larger files but we can begin=
 testing https://cdn.jsdelivr.net/yocto/sstate today.
>
> Here is an example link to a file that is currently popular from each loc=
ation:
>
> http://sstate.yoctoproject.org/all/universal/c6/81/sstate:re2c-native:x86=
_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441d9bdaa8=
2319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
> https://cdn.jsdelivr.net/yocto/sstate/all/universal/c6/81/sstate:re2c-nat=
ive:x86_64-linux:3.1:r0:x86_64:11:c681f19e2786732c7920860d0b27cdcf3a79c9441=
d9bdaa82319a12e96e6246e_deploy_source_date_epoch.tar.zst
>
> I'm also attaching a list of the largest files in sstate. Anything we can=
 do to reduce the size of these or to split them into smaller pieces will h=
elp with hosting and with the user's download experience.
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer

