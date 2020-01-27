Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
 by mx.groups.io with SMTP id smtpd.web12.7545.1580124354834765399
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 03:25:55 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.66, mailfrom: andre.draszik@gmail.com)
Received: by mail-wm1-f66.google.com with SMTP id t14so6625927wmi.5
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2020 03:25:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Y0YQUEnG6hO0LTXvd2U03ZtPUKi2taPIzwQuIxRgYrU=;
        b=RIGNHeu7Jtdezmi2wlIqvx3/lRPfi3TfkTg+JUYGgjQJcBG91DPNiHtfpZNN+Yk8y+
         g8StHjGO/wuvaXcbrsYR7ReUvD7HTnRD5h00Sjj5lQlQ1glKkgeyU6jvo8wrmSTFg5/r
         pQQ3CQcrJViLIxsKQ+88QyaVJs1M5sBB7MHd0GjOGUtUD8kx4BAQysnFu5KWP2CkwUmG
         geNZ7QFS4i6jHtBZ8AKwm1NLq+bMGqBEc7c/J71qg244CEwki6dL+Ffqy5LfHX3MWTPq
         FRZJ8C7MUDSUBfz2P1kYbnG/MoRaFqaEjZxU+8kaHpH4ZVsX+zCQxIODvVm/vAHTYU5W
         XKlQ==
X-Gm-Message-State: APjAAAVPc0EJgNCOFB0DJVYtdr3UkqJgDAZLoSHnaMhISYRJJvC2ecII
	Nqxz1zCoQQIG66FJ3CVx0p4gF4eSIXI=
X-Google-Smtp-Source: APXvYqxo+i29rdL5oQqhPAeff9gXnKz/QSKJ7KpsKF108mgWC7aDzBDm/bjVhEg5mLZvJ/WZgNlM8g==
X-Received: by 2002:a05:600c:22d3:: with SMTP id 19mr13629334wmg.92.1580124353162;
        Mon, 27 Jan 2020 03:25:53 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850 ([77.107.218.170])
        by smtp.gmail.com with ESMTPSA id i10sm20770597wru.16.2020.01.27.03.25.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 03:25:52 -0800 (PST)
Message-ID: <882881767a50072e7c6cbb5ea0e2b4216bdefee1.camel@andred.net>
Subject: Re: [yocto][meta-gplv2][PATCH 2/2] coreutils: set some more autotools / m4 test results
From: =?UTF-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Mon, 27 Jan 2020 11:25:52 +0000
In-Reply-To: <15EB8CDD7696F9CF.25959@lists.yoctoproject.org>
References: <20200110171541.31341-1-git@andred.net>
	 <15E895F472611D11.20149@lists.yoctoproject.org>
	 <15EB8CDD7696F9CF.25959@lists.yoctoproject.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

ping

On Mon, 2020-01-20 at 09:02 +0000, André Draszik wrote:
> ping
> 
> On Fri, 2020-01-10 at 17:15 +0000, Andr? Draszik wrote:
> > From: André Draszik <git@andred.net>
> > 
> > While we set test outcomes in oe-core meta/site, this here uses
> > an old version of gnulib with slightly different variable names
> > for some of the results:
> > 
> > * jm_cv_func_unlink_busy_text -> gl_cv_func_unlink_busy_text
> > * jm_cv_have_proc_uptime -> gl_cv_have_proc_uptime
> > * jm_ac_cv_func_link_follows_symlink -> gl_cv_func_link_follows_symlink
> > * gl_cv_func_mkdir_trailing_slash_bug -> gl_cv_func_mkdir_trailing_slash_works
> >   (meaning inverted) (defaults to working in recent coreutils when
> >   cross-compiling
> > * gl_cv_func_rename_trailing_dest_slash_bug -> gl_cv_func_rename_slash_dst_works
> >   (meaning inverted) defaults to working in recent coreutils when cross-compiling
> >   for linux
> > * gl_cv_func_rename_trailing_slash_bug -> gl_cv_func_rename_slash_src_works
> >   (meaning inverted) defaults to working in recent coreutils when cross-compiling
> >   for linux
> > 
> > This helps to make some tools work in the first place (uptime), but
> > also avoids useless extra wrappers which coreutils otherwise compiles
> > in.
> > 
> > While at it, convert to CACHED_CONFIGUREVAR instead of EXTRA_OECONF.
> > 
> > Signed-off-by: André Draszik <git@andred.net>
> > ---
> >  recipes-core/coreutils/coreutils_6.9.bb | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
> > index f6017ec..42b4f3c 100644
> > --- a/recipes-core/coreutils/coreutils_6.9.bb
> > +++ b/recipes-core/coreutils/coreutils_6.9.bb
> > @@ -32,9 +32,15 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
> >  SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
> >  SRC_URI[sha256sum] = "89c2895ad157de50e53298b22d91db116ee4e1dd3fdf4019260254e2e31497b0"
> >  
> > -EXTRA_OECONF += "ac_cv_func_getgroups_works=yes \
> > +CACHED_CONFIGUREVARS = "ac_cv_func_getgroups_works=yes \
> >                   ac_cv_func_strcoll_works=yes \
> >                   ac_cv_func_working_mktime=yes \
> > +                 jm_ac_cv_func_link_follows_symlink=no \
> > +                 jm_cv_func_unlink_busy_text=yes \
> > +                 jm_cv_have_proc_uptime=yes \
> > +                 gl_cv_func_mkdir_trailing_slash_bug=no \
> > +                 gl_cv_func_rename_trailing_slash_bug=no \
> > +                 gl_cv_func_rename_trailing_dest_slash_bug=no \
> >                   "
> >  
> >  # acl is not a default feature
> > 
> 
> 

