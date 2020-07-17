Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
 by mx.groups.io with SMTP id smtpd.web11.162.1595001925778072238
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jul 2020 09:05:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=nce2M3jk;
 spf=pass (domain: konsulko.com, ip: 209.85.160.193, mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f193.google.com with SMTP id i3so7953827qtq.13
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jul 2020 09:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=X/hLpPOXjI3zupqMJ4Kw4ibaDXDoKZ4mjZP/wRvdHv8=;
        b=nce2M3jkAOoxRB+1FNliXoXmq34Bfm3UyDGmJVCnOCSdFl7rQrsUvV2WYCSP+TzGEy
         nHZjH+JjVgPupJBfQNiG/xPSBrs3lxsfz0CYl8CACW2S8t4MTjfuW42pBqix7dyU+WmE
         EtXB6lNi61bU4vYda6FQlueyLI1tSP2TprHWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=X/hLpPOXjI3zupqMJ4Kw4ibaDXDoKZ4mjZP/wRvdHv8=;
        b=qizhRuW7TLhB+kO/Axy8Ni5OkBcQcmKFUJSDUkRYZ8kNLTsj4PmXBMClFh5wGiSU0j
         SwUII7LsA/p56XmWxYGyYk+k5NmWZHUqlsdijLayX+Xkq3MpZeeXvLd0T3CDp0CPTE25
         L9bi/qhEk+o+iiAL2fWJsQ7u3HQcVG6glQPBRMNTJ65ZVD71MxN2aF4tCPGid4hfZUn0
         onrvPWeTiF0MDJJ4NOjnoVWMncEkDM9fLtbwxcp9RN3CUcdblJKRvlWdNTUTFAo21fV5
         ZWKwwW8N/rc6cmu9oZ2a2IRuWGg25/SkoLRB3SdfEYzkoZTD73WMseKIOpJ8M4hNqet/
         6ilA==
X-Gm-Message-State: AOAM530jZ7pgi+FBYEG2qM1ed/O7GCExTAEpPeg3gPwC/Tl+dJ9/0mB1
	CzljZMB2VQgnQrx/MsK5csKjBQ==
X-Google-Smtp-Source: ABdhPJxvtxJW3k5ZP7fhavNJE/xxIuRw2D4RDl7R1155SOCRlnziCdFb60PolHuQuw03Lf3tSbCAfw==
X-Received: by 2002:ac8:228b:: with SMTP id f11mr11088054qta.342.1595001924774;
        Fri, 17 Jul 2020 09:05:24 -0700 (PDT)
Return-Path: <scott.murray@konsulko.com>
Received: from godzilla (198-84-179-103.cpe.teksavvy.com. [198.84.179.103])
        by smtp.gmail.com with ESMTPSA id o12sm11042555qtl.48.2020.07.17.09.05.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 09:05:24 -0700 (PDT)
Date: Fri, 17 Jul 2020 12:05:19 -0400 (EDT)
From: "Scott Murray" <scott.murray@konsulko.com>
X-X-Sender: scottm@godzilla.spiteful.org
To: Yi Zhao <yi.zhao@windriver.com>
cc: yocto@lists.yoctoproject.org, joe@deserted.net
Subject: Re: [yocto] [meta-selinux][PATCH 0/4] refpolicy: update to 20200229+git
In-Reply-To: <ddb11ee5-c687-7ca9-a936-b0b2ad93f661@windriver.com>
Message-ID: <alpine.LFD.2.23.451.2007171201030.11165@godzilla.spiteful.org>
References: <20200707082914.30094-1-yi.zhao@windriver.com> <alpine.LFD.2.23.451.2007141131280.11165@godzilla.spiteful.org> <2629bc61-5450-4c6f-6241-6599077e0a86@windriver.com> <alpine.LFD.2.23.451.2007150526540.11165@godzilla.spiteful.org>
 <16221DF6FCA5F22B.32158@lists.yoctoproject.org> <ddb11ee5-c687-7ca9-a936-b0b2ad93f661@windriver.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-1062558825-1595001924=:11165"

---1463811583-1062558825-1595001924=:11165
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT

On Thu, 16 Jul 2020, Yi Zhao wrote:

>
> On 7/16/20 11:27 AM, Yi Zhao wrote:
> >
> > On 7/15/20 6:38 PM, Scott Murray wrote:
> >> On Wed, 15 Jul 2020, Yi Zhao wrote:
> >>
> >>> On 7/15/20 12:19 AM, Scott Murray wrote:
> >>>> On Tue, 7 Jul 2020, Yi Zhao wrote:
> >>>>
> >>>>> Here is the changelog for this is patchset:
> >>>>>
> >>>>> * Drop refpolicy 2.20190201
> >>>>>     If we still keep two versions of refpolicy, it is difficult to
> >>>>> maintain
> >>>>>     two huge local patchsets. So drop this version and only keep the git
> >>>>>     version.
> >>>>>
> >>>>> * Add patches to make systemd/sysvinit can work with all policy types.
> >>>>>
> >>>>> Here are the results with this patcheset:
> >>>>>
> >>>>> Machine: qemux86-64
> >>>>> Image: core-image-selinux
> >>>>> Init manager: sysvinit and systemd
> >>>>> Policy types: minimum, targeted, standard, mcs, mls
> >>>>> Boot command: runqemu qemux86-64 kvm nographic bootparams="selinux=1
> >>>>> enforcing=1" qemuparams="-m 1024"
> >>>>>
> >>>>> 1. All refpolicy type can be built without problems.
> >>>>>
> >>>>> 2. With parameter selinux=1 & enforcing=1
> >>>>> The qemu can boot up and login with all policy types.
> >>>> [snip]
> >>>>
> >>>> I suspect I'm really missing something, but I'm unable to successfully
> >>>> make this work with poky + meta-selinux and its meta-openembedded
> >>>> dependencies with either sysvinit or systemd; I see denials on boot and
> >>>> cannot log in due to denials on reading /etc/passwd.  That's also the
> >>>> behavior I see without this update, so I'm wondering if I'm just doing
> >>>> something significantly wrong with respect to configuration.  My
> >>>> local.conf additions for testing are just:
> >>>>
> >>>> DISTRO_FEATURES_append = " selinux"
> >>>
> >>> Please set the following DISTRO_FEATURES:
> >>>
> >>> DISTRO_FEATURES_append = " acl xattr pam selinux"
> >> Ah, poky is missing "pam", I somehow missed that when I checked
> >> previously.  I can get logged in when I add it and rebuild.  It likely
> >> would make sense to use the check_features class in e.g.
> >> core-image-selinux to catch this.  Would you be okay with a patch that
> >> does so?
> >
> > Thanks. It makes sense. I can send a patch later or you can also do it.
> >
> >>
> >>> If you see some AVC denials for {map} like below:
> >>>
> >>> avc:  denied  { map } for  pid=249 comm="dbus-daemon" path="/etc/passwd"
> >>> dev="vda" ino=345 scontext=system_u:system_r:system_dbusd_t:s0-s0:c0.c1023
> >>> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >>> avc:  denied  { map } for  pid=319 comm="avahi-daemon" path="/etc/passwd"
> >>> dev="vda" ino=345 scontext=system_u:system_r:avahi_t:s0
> >>> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >>> avc:  denied  { map } for  pid=379 comm="login" path="/etc/passwd"
> >>> dev="vda"
> >>> ino=345 scontext=system_u:system_r:local_login_t:s0-s0:c0.c1023
> >>> tcontext=system_u:object_r:etc_t:s0 tclass=file permissive=0
> >>>
> >>> They are harmless.
> >> Having spurious denials seems like it would make using them for detecting
> >> actual bad behavior harder, I'll likely start looking at the policy to
> >> see if some of this can be fixed.
>
> You can install auditd into the rootfs and startup the daemon to let the
> denials messages write to audit.log rather than print to the console.

Yes, but ideally I'd like to not have to filter a bunch of spam from the
auditd logs to have them be useful for potential incident detection.  As I
mentioned on my other reply, I plan to look into it further and likely
will just carry a policy patch locally if it's reasonable to work out one.

Scott

---1463811583-1062558825-1595001924=:11165--
