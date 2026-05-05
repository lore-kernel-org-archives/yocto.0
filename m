Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DFDCD342F
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 10:18:14 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.35733.1777976288896099829
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2026 03:18:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=eVsIUzGH;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8b6ea7716bfso30492056d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 03:18:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777976288; cv=none;
        d=google.com; s=arc-20240605;
        b=e+QxM5iiHdIlXuUPWS49MMubuJZiCGeMU1jk2DcL0XUVm5lTC6yM4HL7jYlB2uSi7s
         KxCte9dU6z37kB6wtTlSnxJ0fspoz5Nj79+HVDWKFrr99lvQ2n5mITwHav9TpUF9Lhql
         Joa2LR40FPBYq86jKCUFV7Pjb0NtNSNjOddw0WfNw8CAICXCmJT8k0eT4tbwpqRgdfi0
         4AmkH6fH3Sh1AdliOSk0I5/RcFJ+MJhJF6dXQ8QhtexoH07DOYkKSBcKMHX2Mca7Xtcl
         XyV9FhrsxOSDsd1c36lO55SWq43rmI5oBrRxHk5RspLl0NNE1Xp+AxMbhiAMky0kgdbv
         IbdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=yLH7T/q9GlnulcBlgWduRvWX+JuQf6bMzZp1jQz/M/o=;
        fh=K3802rmFjrIKYPqNhd37tBw/Cvrf0QkXN7fpcfkKE14=;
        b=bsrdgzdqsRCcTszMq2i6a4EGvRJH1rsJdw66pvU311U/EvGaW2neJNjWkEjez3SBxE
         iiDC4+XuOY6OVK4cVSZw1Q1fIgMpttrLlPKlCUE3t7ugZpJG4W0kooO+2ssgo+K9nZnf
         NdF9Hfo9qnLAWR4j4N4D/LcK1HkOFVZX3K2xv+t0vL8RoVO+ttNACMB4HNf/8wkXIBbK
         6ok5JoqkTcDN0u/rOsGte6AxC1moO/coU2P8QNNnExRrRhHma4yPLiYz2qA7I0XiqkIY
         2t1BIAnKhGwH9mA/4GhaDDGvklP9Pr1Zx3G4YJlVrTxFz718JULTcXYqQa/oNqADZWaZ
         Fhpg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777976288; x=1778581088; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yLH7T/q9GlnulcBlgWduRvWX+JuQf6bMzZp1jQz/M/o=;
        b=eVsIUzGHU1gu3vJe/l5UnglUjW14BLoCLTHHABvzROc8p5b/oGrKC5wPZpY4WBcjjW
         jIcJgdfYF5VZcTqo3jpDWCDMeW7FT6frst/hGKJWnSA3sDDojOjbJ9TWrmUuJJnI7QPR
         PDvYQd/1fPJntDuLm9KCcEUw+y89GlnxVeyZeVfwd4cxZDnKDwW2OnHe7eiHpBiVY5th
         XODPVqB6z5YkYIIPeOeiFL5+qWcC4+KlKz65zP8orx/KQ5kJD/fd/BjB5zfW7rFArGnP
         zgk4sSQBkbvOX8fEGrOcqijMkTBgJg/t/T3waiggQz9rnGjX4pqEspnvZh68SDvk5tUe
         4pUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777976288; x=1778581088;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yLH7T/q9GlnulcBlgWduRvWX+JuQf6bMzZp1jQz/M/o=;
        b=BWp68UKmwQ5l3v5TXsgcwojxIJUVW9WKF+S4K5suMcv+RZ0RmU+PQ1vo5VsUUXQYGQ
         cz4fNj+68hDCEopI/oPOwQvMsBznkAQ/4r8EQM760pQhvGL2OXm73YZhEFZlCAdWKDbT
         bMUwG0CXd2tIWAzcL8ktDFdKvSk3yYk8rWKwhiJjbLFWzG/HXPErNXp4LgDTyRDkn0pr
         aLmS0iMWNLfYOadbKcXO1G/8oZsTnSjk6K6yQtPyhIO2k87eeWfird6SCDrlK2Advso6
         ArFYk8dF0+nZf8yg4I5xwuZsAq1RsPAd+JDmiGaezX7Nsp3rg0DQDJF4DINxeyY2E3pr
         vmmA==
X-Forwarded-Encrypted: i=1; AFNElJ+O9vmeX7dUwE/RDiqzWOG/l6ecfTkfKNWGH96gpLuf22wRQdh7p+KPmO+rflPNoLAuH5CRgg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzA7HTm/NyXU2VFODU1u39b2Azq1NkiUuN8FjI6tZ/CNZhAtyEF
	EHtSz4RrOlKIWdVpOeq9luGN8ZvBwkVZDgTf375nekNH2UhGO2SHRtLmTBBB8UBpvIO2DORnT2s
	IvT7kDaPaUUkZS8KPJqUrNGfkC+5+y4U=
X-Gm-Gg: AeBDievL2tbAT2L3REyGTkQ1artIN+Fc/lBVgW04Tk2w1pCzZ6AbupykOTmPep0i3mH
	gYECS3ZLwUpHkyRMHIVFNkpD06JSk3YNd52Yndpb6WLRagqlLYlBo5GYxVO6oghr7yLsQo5J9Er
	P+n71C37yjRystj87QGfY8Nj1f3eYmlbab6Oj1htfP6HHJFaIt113OMeRMn0kcYmpGW5iAO71WW
	TYYQqnIJ+158SWC+1X6Wfy4mR2FkCYX7y59k4tTVpew6grNY1vBO5qoh7qR6R2IAKOEhfT985ER
	YYw7KLOEJkwCTHyk/2l2lrypkJ8ShrS5ILNAbUifwEU0kL9eJ4TD
X-Received: by 2002:a0c:f40c:0:b0:8ac:a62a:a451 with SMTP id
 6a1803df08f44-8b6667ee786mr228338486d6.12.1777976287813; Tue, 05 May 2026
 03:18:07 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 5 May 2026 12:17:56 +0200
X-Gm-Features: AVHnY4LDlgd8L4ccdLjUQRzUXFt9PQH3zC1NelmB_8Gd1bEl84Gq1OtOseKbz4w
Message-ID: <CANNYZj-hrSdEoX5XRmM1MYhXMVkqpa0CBHHbMqVhjM034bKTDg@mail.gmail.com>
Subject: proposal: build pipelines in bitbake-setup
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 10:18:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66482

Hello,

bitbake-setup currently doesn't support describing build pipelines: a
sequence of commands that actually produce something useful. For a
true end-to-end solution this gap should be filled.

Here's my proposal, which probably has obvious shortcomings, that I
would like to hear about :)

0. Design goals:

- something suitable for most situations, including newcomers running
a local build, and CI doing a nightly job
- avoid custom scripts in most situations
- self-documented; everything must be described
- extensible; if there's something missing that no one thought about,
it can be added later in a way that supplements existing features
without replacing them.

1. Specification in a build configuration would look like this:

"build-targets": {
    "steps" : [
        { "name": "build-apple", "description": "Build an apple for
the purpose of making apple pie", "command": "bitbake apple-image"},
        { "name": "build-orange", "description": "Build an orange for
the purpose of making orange juice", "command": "bitbake
orange-image"},
        { "name": "test-apple", "description": "Test an apple using
testimage class", "command": "bitbake -c testimage apple-image"},
        { "name": "test-orange", "description": "Test an orange using
testimage class", "command": "bitbake -c testimage orange-image"},
        { "name": "qemu-console", "description": "Start the last built
image in qemu with console UI", "command": "runqemu kvm snapshot
nographic"},
        { "name": "publish", "description":"Copy build artefacts to a
public download server", "command":
"path/to/publish-image-executable"}
    ],
    "pipelines": [
        {"name": "publish-apple", "description": "Build, test, and
publish apple (requires publishing rights on the download server)",
"steps": ["build-apple", "test-apple", "publish"]},
        {"name": "publish-orange", "description": "Build, test, and
publish orange  (requires publishing rights on the download server)",
"steps": ["build-orange", "test-orange", "publish"]},
        {"name": "qemu-apple", "description": "Build and start apple
in qemu with console UI", "steps": ["build-apple", "qemu-console"]},
        {"name": "qemu-orange", "description": "Build and start orange
in qemu with console UI", "steps": ["build-orange", "qemu-console"]}
    ]
}

Configurations would include a list of possible pipelines:
        "configurations": [
        {
            "name": "fruitgarden",
            "description": "Alex's fruit garden",
            "bb-layers": ["meta-fruit"],
            "oe-fragments": [ "distro/fruit-garden", "machine/earth" ],
            "pipelines": ["qemu-apple", "qemu-orange",
"publish-apple", "publish-orange"]
        }

2. Nomenclature:

- "step" is a single command that is also given a short name and a
longer description. Steps are building blocks for pipelines and can't
be individually executed.
- "pipeline" is a sequence of steps, that is also given a short name
and a longer description. Pipelines can mix and match defined steps as
they please.
- each configuration includes a list of possible targets, and once it
is set up, any of them can be executed (see below for the UI).

3. User Interface to pipelines

Once there is a setup, there are two ways to execute a pipeline:

a) For each pipeline there is a shell script that can be run directly:

/path/to/bitbake-builds/fruitgarden/qemu-apple
/path/to/bitbake-builds/fruitgarden/publish-apple
etc.

qemu-apple script would look something like:

#!/bin/sh
# Build and start apple in qemu with console UI
. init-build-env
# Build an apple for the purpose of making apple pie
bitbake apple-image
# Start the last built image in qemu with console UI
runqemu kvm snapshot nographic

e.g. assembled from pipeline steps and their descriptions.

b) Interactive UI :'bitbake-setup build'

This would present an interactive UI similar to 'bitbake-setup init', e.g:
$ bitbake-setup build
Available build pipelines:
1. qemu-apple  Build and start apple in qemu with console UI
2. qemu-orange Build and start orange in qemu with console UI
... etc
Please choose one of the above: 1

The following commands will be executed:
# Build an apple for the purpose of making apple pie
bitbake apple-image
# Start the last built image in qemu with console UI
runqemu kvm snapshot nographic

Proceed? [y/N]
etc.

4. Implementation

This should actually be fairly straightforward. There's no need to add
new features to bitbake (e.g. 'standard target definitions' in layers
was considered at some point, but after more consideration I think it
can be postponed or perhaps altogether avoided), or modify oe-core.

Alex

