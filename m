Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.55602.1597705211105155396
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 16:00:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MPl9KdPK;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id s16so13772651qtn.7
        for <yocto@lists.yoctoproject.org>; Mon, 17 Aug 2020 16:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JVYBPuu66DqI5b94KkB/gXhUdiWiyiZplno/uJ3E2H0=;
        b=MPl9KdPKAv9yCtLI7iu2elSiN1OS+f7hMUHOF8D2901qiDXHIIk07iO5OfzZx9sLV4
         gGxs0/tF46FCZeThNxzSMAkg9c/w31GNVrybY9pXusndPsiXuAdI+sxogHxSiu+a1+u5
         gN1l6TKwiRuXrKf6HdJZMWCw4G+5przd6Wym3m0/0VNEDOsbhgNwwFF3A5Q6AzyHyHUc
         nxYkRXdMEjkkX65dw3e1V61H6fmjyHk4t9tOHNWj0e4C0XWVYAFNg3FpNZg/3Ya2MdF4
         6xPnp3LViZzuegQDnZA2Fqed0LByFgzhO4TASaOrTzVPbh9FjNG2Y1+yNRKSye0ctcJz
         HmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JVYBPuu66DqI5b94KkB/gXhUdiWiyiZplno/uJ3E2H0=;
        b=YkPIr59P76Vw7h5+xjWPgejaLtKbU0yUFEgtiQJw2tlRnD13Uksp32DPRFqnyWARmC
         ccznLX/pHIUE/pOmfELQe9cbi2TR+/FkAuVoHeJ+j5ZMEK7nStv2E4wm/Hgw1h6ep4yL
         daOOtGfntqN9qpqPaiv2SHCTZp34z+rems4wZ2z/xJNiY62z6lvqsP9jHAKi73VCorUI
         fSPzc3tG+o6ypQeoiX4LDM9HNwmTBgbOIbzeCw/AlJofBI1/SlzwHMZ10e9ISEYl5hIb
         NfzQmCUofeTDyOwBADNqTb7Kd+5u1pHcSMZ9nzcWEYYtDnzzq2ZHmSPdze93texujJ6r
         g5vw==
X-Gm-Message-State: AOAM531X3i85kH1YfYR2vpsZ89FuMJPVybO0hPmSa7zzmfOtWlK1PKM3
	FCKmP360a0gTERya74S3taXPjmB2t8fHVJGCh4s=
X-Google-Smtp-Source: ABdhPJxjxoviy7NlKXQpkna+VZRfIPjqKSQuoclX4SyTId1UIfjkA5W/oDNdgYh5tlLib0jo2N6uuPT6nQKrhOz8sB0=
X-Received: by 2002:ac8:1344:: with SMTP id f4mr15698547qtj.285.1597705210036;
 Mon, 17 Aug 2020 16:00:10 -0700 (PDT)
MIME-Version: 1.0
References: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
In-Reply-To: <703f57d8-5647-41e6-1fa4-4cc744f1142c@comcast.net>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 17 Aug 2020 15:59:44 -0700
Message-ID: <CAMKF1sqy8O3qd=n4NqggA60gO7V-+8VQnY_ERX-vMOYNG-oYqg@mail.gmail.com>
Subject: Re: [yocto] pkg-config dependencies?
To: Rob Prowel <rprowel@comcast.net>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

did you look at
https://github.com/kraj/meta-openwrt/blob/master/recipes-networking/ipset/ipset_6.38.bb

On Mon, Aug 17, 2020 at 10:14 AM Rob Prowel <rprowel@comcast.net> wrote:
>
> I'm trying to add the ipset utility to my arm build so that I can group
> IP/ports for use in tc and netfilter.  I was able to update the vendor
> supplied iptools2 recipe to install tc and iptables, but ipset is a
> fresh recipe, not included in another existing layer.
>
> I'm adding the following in its bb file:
>
> # -----------------------------------------------------------------
> SRC_URI =  "file://ipset-7.6.tar.bz2"
> SRC_URI[md5sum] = "3a6f5952fd1bcf0eefb9c7c087acbfc9"
>
>
> inherit pkgconfig
>
> S = "${WORKDIR}/ipset-7.6"
>
> RDEPENDS_${PN} += "libmnl"
>
> FILES_${PN} =  ""
> # list will be populated once I know what the package wants to install
>
> do_configure(){
>          ./configure --prefix=/ --host=arm-linuxeabi
> }
>
> do_compile(){
>          make DESTDIR=${D}
> }
>
> do_install(){
>          oe_runmake install DESTDIR=${D}
> }
>
> # -----------------------------------------------------------------
>
> problem is that it depends on libmnl (which already exists as a lower
> layer recipe), and the ipset configure script barfs on pkg-config with
> the following message.
>
> | checking whether ln -s works... yes
> | checking for libmnl... no
> | configure: error: Package requirements (libmnl >= 1) were not met:
> |
> | No package 'libmnl' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables libmnl_CFLAGS
> | and libmnl_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | WARNING: exit code 1 from a shell command.
>
>
> the PKG_CONFIG_PATH variable seems correct under devshell, but there is
> no libmnl.pc file in there.  How do I force libmnl to create and stage a
> proper pkg-config .pc file where it needs to be?
>
>
> 
