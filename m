Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
 by mx.groups.io with SMTP id smtpd.web10.4074.1594809523238299078
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jul 2020 03:38:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=WiTxx1I8;
 spf=pass (domain: konsulko.com, ip: 209.85.222.194, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f194.google.com with SMTP id 145so1252849qke.9
        for <yocto@lists.yoctoproject.org>; Wed, 15 Jul 2020 03:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=Wd2p5tDF2lrmEslEC9bQjadwCHy0CYl3C8gyZf/TMSI=;
        b=WiTxx1I8IT2eaD5R9JQfj545ff1qeIxr3JpZIdTINO9/40tHuYT6n9bMfNLSWEGwxE
         6RfGsyTZ5Mec7Q0XnXtxyBSrNmbhaq7z4V2rVVNpJqwPqbuqxFbWD2X2sL6Vocfva12Z
         KcnC/XWcy75raSclpEiHEgsBUG94UIKYu5jvk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=Wd2p5tDF2lrmEslEC9bQjadwCHy0CYl3C8gyZf/TMSI=;
        b=SghwbLUTA482xRcWK8213rSOzYjneOpqd1gQX4EbLau9zLUKTn2q/OXWBF3aqClIse
         QQpbLAeN+JrT76GJg9k7MnDX1VAg26DQyfRg49TKUgeaSWNe2Bb8z58buBwh4WQZNX+J
         ZzfFSgQ+Bm7kWwzDswJd+NM+2kc1NgXsKCNm5CdZ2SAYjoNwtjkGHgCLeh1zyoTO1Ikb
         30Us4rCmiqQ3JifX3yRl2UqOv7ZC971b27/a8ZfBzuKMAhSh5NVdMNDixWu8oUWX2M53
         hiI9lXI9txNkuOCgmx8k5me5c9ytNo9SOkK1kWb08oxeDmXxVnPSUaHsqJlktcmOcT8e
         q0Mw==
X-Gm-Message-State: AOAM532nmmBPY9Wk/OoaeLgYZbADzL/m+maqyzHsWmElQml95vd03fTl
	MD5+dsZ+yqSoRCOZdmWUUfbsJQ==
X-Google-Smtp-Source: ABdhPJxtb6kX+HLBI1IiC/V1cyNcUzNYyj3sxdxb+bPxV/Rle91+H3BzTiPZP9HqQImYobpGwROUsg==
X-Received: by 2002:a37:43cb:: with SMTP id q194mr9021792qka.154.1594809522297;
        Wed, 15 Jul 2020 03:38:42 -0700 (PDT)
Return-Path: <scott.murray@konsulko.com>
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id b186sm1954447qkd.28.2020.07.15.03.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 03:38:41 -0700 (PDT)
Date: Wed, 15 Jul 2020 06:38:37 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: Yi Zhao <yi.zhao@windriver.com>
cc: yocto@lists.yoctoproject.org, joe@deserted.net
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
In-Reply-To: <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com>
Message-ID: <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
References: <20200707082914.30094-1-yi.zhao@windriver.com> <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org> <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-1213792922-1594809521=:11165"

---1463811583-1213792922-1594809521=:11165
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Wed, 15 Jul 2020, Yi Zhao wrote:

>
> On 7/15/20 12:19 AM, Scott Murray wrote:
> > On Tue, 7 Jul 2020, Yi Zhao wrote:
> >
> >> Here is the changelog for this is patchset:
> >>
> >> * Drop refpolicy 2.20190201
> >>    If we still keep two versions of refpolicy, it is difficult to maintain
> >>    two huge local patchsets. So drop this version and only keep the git
> >>    version.
> >>
> >> * Add patches to make systemd/sysvinit can work with all policy types.
> >>
> >> Here are the results with this patcheset:
> >>
> >> Machine: qemux86-64
> >> Image: core-image-selinux
> >> Init manager: sysvinit and systemd
> >> Policy types: minimum, targeted, standard, mcs, mls
> >> Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1
> >> enforcing=1" qemuparams="-m 1024"
> >>
> >> 1. All refpolicy type can be built without problems.
> >>
> >> 2. With parameter selinux=1 & enforcing=1
> >> The qemu can boot up and login with all policy types.
> > [snip]
> >
> > I suspect I'm really missing something, but I'm unable to successfully
> > make this work with poky + meta-selinux and its meta-openembedded
> > dependencies with either sysvinit or systemd; I see denials on boot and
> > cannot log in due to denials on reading /etc/passwd.  That's also the
> > behavior I see without this update, so I'm wondering if I'm just doing
> > something significantly wrong with respect to configuration.  My
> > local.conf additions for testing are just:
> >
> > DISTRO_FEATURES_append = " selinux"
>
>
> Please set the following DISTRO_FEATURES:
>
> DISTRO_FEATURES_append = " acl xattr pam selinux"

Ah, poky is missing "pam", I somehow missed that when I checked
previously.  I can get logged in when I add it and rebuild.  It likely
would make sense to use the check_features class in e.g.
core-image-selinux to catch this.  Would you be okay with a patch that
does so?

> If you see some AVC denials for {map} like below:
>
> avc:  denied  { map } for  pid=249 comm="dbus-daemon" path="/etc/passwd"
> dev="vda" ino=345 scontext=system_u:system_r:system_dbusd_t:s0-s0:c0.c1023
> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> avc:  denied  { map } for  pid=319 comm="avahi-daemon" path="/etc/passwd"
> dev="vda" ino=345 scontext=system_u:system_r:avahi_t:s0
> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> avc:  denied  { map } for  pid=379 comm="login" path="/etc/passwd" dev="vda"
> ino=345 scontext=system_u:system_r:local_login_t:s0-s0:c0.c1023
> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
>
> They are harmless.

Having spurious denials seems like it would make using them for detecting
actual bad behavior harder, I'll likely start looking at the policy to
see if some of this can be fixed.

Thanks,

Scott

---1463811583-1213792922-1594809521=:11165--
