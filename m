Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
 by mx.groups.io with SMTP id smtpd.web12.51.1595001660377890993
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jul 2020 09:01:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LkdQix+f;
 spf=pass (domain: konsulko.com, ip: 209.85.160.194, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f194.google.com with SMTP id w27so7972142qtb.7
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jul 2020 09:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:content-id;
        bh=Zf4viC7eQvwYbtBGvWqui09mBC1yHQbG6twOcqXrsCU=;
        b=LkdQix+f01h9NbZSNBwCyHyrlfYY0JfvFuzXZYaksezi+iMPB/rKwwB4OSF2TyvcbI
         7om+7Ab2aYQLyq7iG0C8nQ8epUBSAi8oa2rON6cKWOh2tomLAmBB1ApfdzRSILdTZQSy
         CJ4rQx2G7Kl10tSuIDtAdCdwKk87DfSJUtDb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version:content-id;
        bh=Zf4viC7eQvwYbtBGvWqui09mBC1yHQbG6twOcqXrsCU=;
        b=izqsKZVWb8meSnH/w9lmxr46Rwwu1aQV6LO0c/l42zwzyT9OBQuNExfv7vn+oJ/Rp+
         YI6AkxgK1IXlcM9oov5iZYQWwxfW2MiLAMtY8P0bXGGkewRZdXMuhgiYpOgpgzzuA2pA
         oUHJgmROUb+lz0G5vyC9t4evyOu9PYUg93o9DujdAb4Ne6T2etuCzu8mgkcn49Cqmzv2
         Td51K+Jhcp5hHcSWICzfXeNmwWkT37/rSlHtsYfmU5M/hCFr09fFpuYwksRwFzli4ndd
         2kZ1XGz+mQkfnBtcb32wJ4m2qeUYHubUmstW/GIOkrispgoANItuuUbms52uFeAdvRMA
         Q20Q==
X-Gm-Message-State: AOAM532UzdWGUvB2Ut1vTnd4YXqKDySGZ728pSy5KwQlYpTqyNI/yMVR
	ryxZEsFaoUgHeYxB6pv/h5bkDg==
X-Google-Smtp-Source: ABdhPJy49t5Z/jNxvh9KoBAwc7xqC2XeyblGydWIIeSo64045q/3ssdAPBoVhvC9+/zI5sX2tw9nUg==
X-Received: by 2002:ac8:75c4:: with SMTP id z4mr11138788qtq.11.1595001659131;
        Fri, 17 Jul 2020 09:00:59 -0700 (PDT)
Return-Path: <scott.murray@konsulko.com>
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id g145sm10113269qke.17.2020.07.17.09.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 09:00:58 -0700 (PDT)
Date: Fri, 17 Jul 2020 12:00:53 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: Yi Zhao <yi.zhao@windriver.com>
cc: yocto@lists.yoctoproject.org, joe@deserted.net
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
In-Reply-To: <a96ffcc8-913d-a6e0-5f08-68d123bfd3d4@windriver.com>
Message-ID: <alpine.LFD.2.23.451.2007171151340.11165@godzilla.spiteful.org>
References: <20200707082914.30094-1-yi.zhao@windriver.com> <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org> <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com> <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
 <a96ffcc8-913d-a6e0-5f08-68d123bfd3d4@windriver.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="-1463811583-1337506636-1595001568=:11165"
Content-ID: <alpine.LFD.2.23.451.2007171159440.11165@godzilla.spiteful.org>

---1463811583-1337506636-1595001568=:11165
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.LFD.2.23.451.2007171159441.11165@godzilla.spiteful.org>

On Thu, 16 Jul 2020, Yi Zhao wrote:

>
> On 7/15/20 6:38 PM, Scott Murray wrote:
> > On Wed, 15 Jul 2020, Yi Zhao wrote:
> >
> >> On 7/15/20 12:19 AM, Scott Murray wrote:
> >>> On Tue, 7 Jul 2020, Yi Zhao wrote:
> >>>
> >>>> Here is the changelog for this is patchset:
> >>>>
> >>>> * Drop refpolicy 2.20190201
> >>>>     If we still keep two versions of refpolicy, it is difficult to
> >>>>     maintain
> >>>>     two huge local patchsets. So drop this version and only keep the git
> >>>>     version.
> >>>>
> >>>> * Add patches to make systemd/sysvinit can work with all policy types.
> >>>>
> >>>> Here are the results with this patcheset:
> >>>>
> >>>> Machine: qemux86-64
> >>>> Image: core-image-selinux
> >>>> Init manager: sysvinit and systemd
> >>>> Policy types: minimum, targeted, standard, mcs, mls
> >>>> Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1
> >>>> enforcing=1" qemuparams="-m 1024"
> >>>>
> >>>> 1. All refpolicy type can be built without problems.
> >>>>
> >>>> 2. With parameter selinux=1 & enforcing=1
> >>>> The qemu can boot up and login with all policy types.
> >>> [snip]
> >>>
> >>> I suspect I'm really missing something, but I'm unable to successfully
> >>> make this work with poky + meta-selinux and its meta-openembedded
> >>> dependencies with either sysvinit or systemd; I see denials on boot and
> >>> cannot log in due to denials on reading /etc/passwd.  That's also the
> >>> behavior I see without this update, so I'm wondering if I'm just doing
> >>> something significantly wrong with respect to configuration.  My
> >>> local.conf additions for testing are just:
> >>>
> >>> DISTRO_FEATURES_append = " selinux"
> >>
> >> Please set the following DISTRO_FEATURES:
> >>
> >> DISTRO_FEATURES_append = " acl xattr pam selinux"
> > Ah, poky is missing "pam", I somehow missed that when I checked
> > previously.  I can get logged in when I add it and rebuild.  It likely
> > would make sense to use the check_features class in e.g.
> > core-image-selinux to catch this.  Would you be okay with a patch that
> > does so?
>
> Thanks. It makes sense. I can send a patch later or you can also do it.

I'll look at it on the weekend and see about getting a patch posted.

> >> If you see some AVC denials for {map} like below:
> >>
> >> avc:  denied  { map } for  pid=249 comm="dbus-daemon" path="/etc/passwd"
> >> dev="vda" ino=345 scontext=system_u:system_r:system_dbusd_t:s0-s0:c0.c1023
> >> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >> avc:  denied  { map } for  pid=319 comm="avahi-daemon" path="/etc/passwd"
> >> dev="vda" ino=345 scontext=system_u:system_r:avahi_t:s0
> >> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >> avc:  denied  { map } for  pid=379 comm="login" path="/etc/passwd"
> >> dev="vda"
> >> ino=345 scontext=system_u:system_r:local_login_t:s0-s0:c0.c1023
> >> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >>
> >> They are harmless.
> > Having spurious denials seems like it would make using them for detecting
> > actual bad behavior harder, I'll likely start looking at the policy to
> > see if some of this can be fixed.
>
> For this issue, there is a discussion in
> http://oss.tresys.com/pipermail/refpolicy/2017-September/009865.html
>
> Actually I saw lots of map denials on /etc/passwd or /etc/group for various
> commands. I'm not sure if we should allow them all via
> files_map_etc_files(domain) or dontaudit them ...

Okay. I plan to research this further, worse comes to worst I'll carry a
policy patch locally.

Scott

---1463811583-1337506636-1595001568=:11165--
