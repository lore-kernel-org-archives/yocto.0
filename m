Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA0B0C27C75
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 09:20:07 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.7225.1718356798494794050
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jun 2024 02:19:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HtatCFAj;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52bc121fb1eso2470359e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 02:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718356797; x=1718961597; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+b4ctLjKWoqQzow+gws+mgIAkHCYg6ZXi8mK0GHwJ4=;
        b=HtatCFAjulZiHgCElu2IAHudGklEEa9I2EFBitrsnOQSgKxfEhOSTAZI8zKkNlOyxx
         GbuQ0KlQy76UeLqTThbuByd0zT/Ly6kGW2bmDSPbZF77JNYVbOoE+KUFX+qdxrjc5jmL
         dJb3wnEDxjKD/ciYzZ/NW9teEM4+oq7CrncraSDxzzJApugHv1F8oWatP678o/8YkIkJ
         OJZ35D5w6U3YSwErrtHuJo9QE/iDMDjEuNdaoyOGgg7U7MHtfj+JF9ZRP5t5xq66PkwT
         JWMef4hfDLRcYB9R9B+YQFLJ9/PxBd9+27h1BoanM96zySknm30DGw0gUa40+yi0UNxq
         1lgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718356797; x=1718961597;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+b4ctLjKWoqQzow+gws+mgIAkHCYg6ZXi8mK0GHwJ4=;
        b=UBhWtgfU0M+SrA1jXOCRQhMl08OBA59ppGVIv7/4EmTDMtHHyVFGovHEsavFkByMe6
         1HMR40dfkm36dTqxx2FjGcHvRdmuEqY9SN8SvFaZ8eThU2pUXpt9fUxz5WXSn/rZsbOf
         lmbl+3E+3JcIEKyk4yJRUFVtxzlvAcLqYe9CVx98cRstN4T2yvLcrp/bqjeDl89FiSPg
         Vs4ympkT8SINOkAjm3GxrsyDaNtNfu7lffri+WiqoZZCBhDvIDD36+Rm34sVft0qDviH
         EhI2pZKK+/coAK4kPQOv3SHRMONTluc/cuss8p9bvZFGgk08JLeonPUf43qP4Y8s9s2l
         81MA==
X-Gm-Message-State: AOJu0YwQesaY7DN4toReTcXuPzHIGBHqVJaSgHppAzJUlnCKhM7d8Bbj
	5re/KpH1v3QIAwHtnAhy72ro83BhxIDgR3XsZsCa9MWfsBuivr9QythZFMJ3ACm1WgqHTc2HmNV
	4Vv1Dv9cbCX9lPmnZSunKAwNkUh4zIQ==
X-Google-Smtp-Source: AGHT+IEsxwWQ9beoOlkvc60sAkZkeqIG1CxlIvPaWADIib3sod9ss43m/T4QXwr2QJ5h7K/T3qGcUjZlU5alG8UPnk4=
X-Received: by 2002:a05:6512:114a:b0:52c:a809:62e9 with SMTP id
 2adb3069b0e04-52ca80963f5mr1356378e87.0.1718356796367; Fri, 14 Jun 2024
 02:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv358wG_nii0otoSLGQVXT-BzQK4ey2o1YEx6=m4-jqX3fg@mail.gmail.com>
In-Reply-To: <CAAfyv358wG_nii0otoSLGQVXT-BzQK4ey2o1YEx6=m4-jqX3fg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Jun 2024 11:19:45 +0200
Message-ID: <CANNYZj94+pZzmA9Xz6QptqVrie22Z6KZcyE2x6DV4045BzQh+Q@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 compialtion issue in scarthgap
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 09:20:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63344

Does the issue occur if you build plain poky with default confuguration?

Alex

On Fri, 14 Jun 2024 at 08:37, Marek Belisko via lists.yoctoproject.org
<marek.belisko=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I'm using latest scarthgap release and I'm facing issue with building glib-2.0 with following problem (build for arm64):
>
> Run-time dependency iconv found: YES
> | Looking for a fallback subproject for the dependency libpcre2-8 because:
> | Use of fallback dependencies is forced.
> | Automatic wrap-based subproject downloading is disabled
> | Subproject  pcre2 is buildable: NO (disabling)
> | Dependency libpcre2-8 from subproject pcre2 found: NO (subproject failed to configure)
> | Looking for a fallback subproject for the dependency libpcre2-8 because:
> | Use of fallback dependencies is forced.
> |
> | ../glib-2.78.6/meson.build:2107:2: ERROR: Subproject "subprojects/pcre2" required but not found.
>
> Any ideas or suggestions?
>
> Thanks and regards,
>
> marek
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63343): https://lists.yoctoproject.org/g/yocto/message/63343
> Mute This Topic: https://lists.yoctoproject.org/mt/106666097/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

