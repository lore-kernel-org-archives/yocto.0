Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.10106.1603100743788606460
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 02:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AcDamZLX;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8D17E38C081B
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2020 02:45:43 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id d3so12083482wma.4
        for <yocto@yoctoproject.org>; Mon, 19 Oct 2020 02:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=hjAbO8qxB2ixLIVjSauzamtaFka6W2eB50sNwOOoWFk=;
        b=AcDamZLXz/jiNNGHXmprdiSzGyV5MWSnSigZuHj928N8A+qkz1wNaodgPcoGST8iMI
         GAB6jQ26ciREteQYE9oVlYRiAuLH+MzmYFW/0bYCwffUor7DzHs5qZ/1tdStIu8fll9d
         ZDpTFAH5gvrAet5am6llMQZRrvpHeV4Hcljsg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=hjAbO8qxB2ixLIVjSauzamtaFka6W2eB50sNwOOoWFk=;
        b=QdvBNuOLAGaHKexPnGi1csYx2gQaL7RVITDuUJWjMXrBQukql/sp2HCErrHagkXtru
         3kb9srWEmWBJ+PmsZ4kV9uROCYEx/YelCaaKuZh+CwgbbCo/Pl3JF41OEcQcFdn2A/nI
         1vzRiSa+L5zrMsSxiStg6Gu7Tcmy9JpTBt96TmjhKu27jTqXrtP+VGGQRUMYW98ExX1i
         h196m5W2D3cc4crdPkajcOPZE3HxqXE3RY8+Q1cQm5rj+fqM9gwVUDJLSIH2NKYHBq1e
         F/uZZpA4Y9VWZPSyRD4TRBPnMhjuwX0s5taY7epxxrRMP6JZC8eNp3Li8LiopXkcnV4L
         UuOw==
X-Gm-Message-State: AOAM533sFb9mTTmAGa6FvitKJMuC2yffuFaN58gURcvZU5u1MvqlAqcg
	w25b737QIB/2TYPuWhQ3QiOsllZY3TLOXg==
X-Google-Smtp-Source: ABdhPJzE46NVt+zbsTopUuHO3azTxXDL4PRzOoDdB+v6IYD1VKlbSfdJ8Xy98twQ8Y0YToR3PLRIvA==
X-Received: by 2002:a1c:b78a:: with SMTP id h132mr16818016wmf.172.1603100742041;
        Mon, 19 Oct 2020 02:45:42 -0700 (PDT)
Received: from e.c.4.c.b.d.d.d.d.1.e.7.a.1.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (e.c.4.c.b.d.d.d.d.1.e.7.a.1.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1c1a:7e1d:dddb:c4ce])
        by smtp.gmail.com with ESMTPSA id a17sm17561427wra.29.2020.10.19.02.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 02:45:41 -0700 (PDT)
Message-ID: <613c87f7b3cfac709b1e7f180ce43b190a8f1b21.camel@linuxfoundation.org>
Subject: Re: [yocto] slightly weird use of PACKAGECONFIG in bbappend file?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@yoctoproject.org>
Date: Mon, 19 Oct 2020 10:45:41 +0100
In-Reply-To: <alpine.LFD.2.23.451.2010181418430.14910@localhost.localdomain>
References: <alpine.LFD.2.23.451.2010181418430.14910@localhost.localdomain>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-10-18 at 14:31 -0400, Robert P. J. Day wrote:
>   currently updating lots of YP class notes, and writing a short
> section on "coding style", and ran across the following oddity(?)
> related to PACKAGECONFIG (all on master branches).
> 
>   i noticed in oe-core, qemu.inc:
> 
>   PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice"
> 
> fair enough, that defines a setting for "spice" related to qemu.
> however, for reasons that would make no sense to anyone but me, i
> ended up at meta-cloud-services/meta-openstack/qemu_5.%.bbappend,
> which conditionally requires qemu-openstack.inc, which contains:
> 
> /// start
> 
> PACKAGECONFIG[spice] = "--enable-spice,--disable-spice,spice,"
> PACKAGECONFIG[libseccomp] = "--enable-seccomp,--disable-
> seccomp,libseccomp,libseccomp"
> 
> PACKAGECONFIG ?= "fdt virtfs libcap-ng"
> PACKAGECONFIG_x86 ?= "fdt spice virtfs libcap-ng"
> PACKAGECONFIG_x86-64 ?= "fdt spice virtfs libcap-ng"
> 
> PACKAGECONFIG_class-native = "fdt"
> PACKAGECONFIG_class-nativesdk = "fdt"
> 
> /// end
> 
>   i have no problem with a recipe bbappend file selecting or
> deselecting PACKAGECONFIG settings, but it looks just weird for a
> bbappend file to define *new* PACKAGECONFIG settings -- that would
> seem to be a property restricted to the base .bb recipe file for any
> recipe.
> 
>   so in the above meta-openstack file, the line related to "spice" is
> clearly redundant, but the line related to "libseccomp" just looks
> weird as that should be defined in the qemu base recipe, no?
> 
>   or am i misunderstanding something again?

I'm on record as strongly suggesting PACKAGECONFIG entries should be in
the base recipes, there isn't a good reason I'm aware of not to do
that. Obviously the system is very flexible though...

Cheers,

Richard

