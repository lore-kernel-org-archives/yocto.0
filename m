Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC865C54E5D
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 20:34:23 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web10.7690.1710275653704628797
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 13:34:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=sHQMJoXt;
 spf=pass (domain: konsulko.com, ip: 209.85.219.171, mailfrom: scott.murray@konsulko.com)
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso4333962276.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 13:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1710275653; x=1710880453; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=I8yDG0S4VMXNeUYloEWtDSY4TiwOApOQWoWzYnYsza8=;
        b=sHQMJoXtmq+L2V2RnPNHrhspy1+/T9M8vYV8dgw7pHQ5U3j3EyM/mlN1gGawkJMmv4
         grdJLGCKzTixhf+JI7KkF1fyCpAU4S/+G99KCe8DME6aZk+D3xXTLWzaUgphwoJ5tQLi
         OWEyMx2dHB1VaxG971v/V6nO2EjhJoH0n5FZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710275653; x=1710880453;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I8yDG0S4VMXNeUYloEWtDSY4TiwOApOQWoWzYnYsza8=;
        b=Ucnx8+Zaw7skJa3hbKU8V0FtZvSxW9eX+fO/tK5RjPskuhJFwfOiPSuC+DxdhiudtH
         hvXza/MRK4nM/x/HIwfP58NO/+OZj0C3fsTPeMvIyx0MObXkd1hogKXc9TkGaO0BXO+d
         ukdRtPMjfZV3NS2T1x/+jL8oXvjS0Xj18n2J3xjne3Ew/GbyO5A6spxi1n3Xrl9/b0LZ
         DNHrIEAi1CGx9yDpuE55d6b6OuADQcGVcbEeTkqb+5U06G/WVYKxoSLxQeb2f2GkY3jf
         usf6Kh+h+tVqJkwZ0R+tjvLgWtBmfrvMDvU5j0h6iu99KZ3CTBeDjbTCznMtNXp9/rfk
         g2zA==
X-Forwarded-Encrypted: i=1; AJvYcCUWbJ+qXYbZfEleI2sxCmFeJQMaReLBkqvP5ogc5qEsEiv7Wb+2gc6KV55PVKDXwXHLQaxI3qwY3khFioqP5LaCL1BZMdvYYa6jLynl
X-Gm-Message-State: AOJu0YwgfkG0ldEqWyyokcOjjEqqfe5Du4fsv+xDtIl1kaWPu9VhVlNI
	ilGvCrNL1MaJ+ftl0kIOFvYHSEMaAgu2418bML99GRNryTLXnev7Wxv/ejcMipQ=
X-Google-Smtp-Source: AGHT+IHJQ4qR5jtgJNBLImAA8sWdRKbF1sz+Ap04ybuH8YywE0GTp3iq9KVsZ8l1WcDlok/PiMD2gA==
X-Received: by 2002:a25:ae1e:0:b0:dcd:407d:52e5 with SMTP id a30-20020a25ae1e000000b00dcd407d52e5mr615061ybj.29.1710275652610;
        Tue, 12 Mar 2024 13:34:12 -0700 (PDT)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id b10-20020a0ccd0a000000b00690d56626b3sm2098526qvm.132.2024.03.12.13.34.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 13:34:12 -0700 (PDT)
Date: Tue, 12 Mar 2024 16:34:11 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Jose Quaresma <quaresma.jose@gmail.com>
cc: Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com>, 
    Yash Shinde <Yash.Shinde@windriver.com>, 
    Richard Purdie <richard.purdie@linuxfoundation.org>, 
    Jose Quaresma <jose.quaresma@foundries.io>, yocto@lists.yoctoproject.org
Subject: Re: [meta-lts-mixins][kirkstone/rust][PATCH 10/11] rust: reproducibility
 issue fix with v1.75
In-Reply-To: <CANPvuRn1D=4F3XjWxDHFwCA2bRyh0JUugOt1LhSjXSs_rb1wFA@mail.gmail.com>
Message-ID: <c2da972e-523a-c34b-a11d-c18f01623f92@konsulko.com>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io> <20240311162419.1138625-10-jose.quaresma@foundries.io> <bfbd5a23-720d-410b-a359-56c1822a0cf6@windriver.com> <CANPvuRn1D=4F3XjWxDHFwCA2bRyh0JUugOt1LhSjXSs_rb1wFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-1545045520-1710275652=:4367"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 20:34:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62747

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1463811583-1545045520-1710275652=:4367
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 12 Mar 2024, Jose Quaresma wrote:

> Hi Sundeep,
>
> Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com> escreveu (terça,
> 12/03/2024 à(s) 03:45):
>
> > Hello,
> >
> > FYI. There is a V2 available for this patch with upstream fix backport.
> > You can consider that.
> >
> > https://lists.openembedded.org/g/openembedded-core/message/196856
>
>
> Sure, when this one is integrated on the master branch I can create a
> backport for it too.
> Thanks for the notification.

I got back from a couple of weeks out of the office (conference followed
by vacation) yesterday, I aim to test the patch series locally and merge
it to kirkstone/rust in the next couple of days.  We now seem to need
newer than Rust 1.70 for a recipe in AGL, so I'll likely be switching AGL
to using kirkstone/rust as well.

Thanks,

Scott


> > On 11-Mar-24 21:54, Jose Quaresma wrote:
> > > CAUTION: This email comes from a non Wind River email account!
> > > Do not click links or open attachments unless you recognize the sender
> > and know the content is safe.
> > >
> > > From: Yash Shinde <Yash.Shinde@windriver.com>
> > >
> > > With 1.75 rust release, the '.rustc' section of shared object libs are
> > embedded with absolute path names which is casuing reproducibiluty issues.
> > > This change will fix the path name format back to '/rust/$hash' as in
> > earlier versions.
> > >
> > > Below are the links for detailed bug description & discusssion with
> > upstream rust.
> > > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > >
> > > Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
> > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> > > ---
> > >   .../files/repro-issue-fix-with-v175.patch     | 23 +++++++++++++++++++
> > >   recipes-devtools/rust/rust-source.inc         |  1 +
> > >   2 files changed, 24 insertions(+)
> > >   create mode 100644
> > recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > >
> > > diff --git a/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > new file mode 100644
> > > index 0000000..6840baf
> > > --- /dev/null
> > > +++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > @@ -0,0 +1,23 @@
> > > +rust: reproducibility issue fix with v1.75
> > > +
> > > +With 1.75 rust release, the '.rustc' section of shared object libs are
> > embedded with absolute path names which is casuing reproducibiluty issues.
> > > +This change will fix the path name format back to '/rust/$hash' as in
> > earlier versions.
> > > +
> > > +Below are the links for detailed bug description & discusssion with
> > upstream rust.
> > > +https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > +https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > > +
> > > +Upstream-Status: Inappropriate [patches need rework]
> > > +Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > +---
> > > +--- a/compiler/rustc_session/src/session.rs    2023-12-21
> > 08:55:28.000000000 -0800
> > > ++++ b/compiler/rustc_session/src/session.rs    2024-02-26
> > 07:29:15.527577022 -0800
> > > +@@ -1269,7 +1269,7 @@
> > > +                 | CrateType::Rlib
> > > +                 | CrateType::Staticlib
> > > +                 | CrateType::Cdylib => continue,
> > > +-                CrateType::ProcMacro => return false,
> > > ++                CrateType::ProcMacro => return true,
> > > +             }
> > > +         }
> > > +
> > > diff --git a/recipes-devtools/rust/rust-source.inc
> > b/recipes-devtools/rust/rust-source.inc
> > > index 8ae8add..6bef990 100644
> > > --- a/recipes-devtools/rust/rust-source.inc
> > > +++ b/recipes-devtools/rust/rust-source.inc
> > > @@ -12,6 +12,7 @@ SRC_URI += "
> > https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
> > >               file://rustc-bootstrap.patch;patchdir=${RUSTSRC} \
> > >               file://target-build-value.patch;patchdir=${RUSTSRC} \
> > >
> >  file://0001-Handle-vendored-sources-when-remapping-paths.patch;patchdir=${RUSTSRC}
> > \
> > > +            file://repro-issue-fix-with-v175.patch;patchdir=${RUSTSRC} \
> > >   "
> > >   SRC_URI[rust.sha256sum] =
> > "4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340"
> > >
> > > --
> > > 2.44.0
> > >
> >
>
>
>
---1463811583-1545045520-1710275652=:4367--

