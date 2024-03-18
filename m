Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E7ADC54E68
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 00:10:10 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.31880.1710720606521699918
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Mar 2024 17:10:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=BYnhZh51;
 spf=pass (domain: konsulko.com, ip: 209.85.222.177, mailfrom: scott.murray@konsulko.com)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-789e3f17a6eso184562985a.0
        for <yocto@lists.yoctoproject.org>; Sun, 17 Mar 2024 17:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1710720605; x=1711325405; darn=lists.yoctoproject.org;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5pjcABp+IBTVigzQBsYka97ce0HPLj4TxzthvIQPJVM=;
        b=BYnhZh51a18g4wnHB3u9pKrVOCzMZ3HuwnJqiVj58aZDJ1jnDEh0Hb+uARldWLiK1m
         yehz4EmyAD3kS5FMPBfVPTKU5zXPwVJD/Istn2o/0BEJIgFQqV8GAl5AVFo0dcwusGp/
         2lCNUnh3B4st+ZEa6OCRO4siwh7qLm9EKuoQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710720605; x=1711325405;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5pjcABp+IBTVigzQBsYka97ce0HPLj4TxzthvIQPJVM=;
        b=KcBfvyBDt+MjXt+9jdRVjSA4WLhHw6qJUDaI+AMDwR/6by3eDlbGmBdRE2DyoF/Fr6
         QlbBaH7STPk6cRzrgRya6cvmU4419NU524np885mjY2k16luekRgFoE5rAY4ARHmWS6M
         2/sRosQ0anOZl8JvTBXVZEY3CR1fyDlEp8KzZsChcg7mfwpuU+Y/c4p6WbvQUSOKwIS5
         fOcKZdk99Sw5cAwSIPRv/mUugLjnOEfJqa6wuGiIASgheAeNg0IVKbtx12Zp4LQzd7cR
         62qGKq34oqk/MOpxSeyy1uUKiuhLtMNAKYso1hUPRQRef6JoZnt/1ihVoba0pMNSeGRP
         h1FA==
X-Forwarded-Encrypted: i=1; AJvYcCUPqnCjQi6+/nWzaquKn8BaTv+3XY5odWVFoPr8T2K3vYPxwNu5kNaDQ3xT8s4Qvg92tjeLOU7qcdro6NSi6G6qtEQUSsBDuB+Ag4oN
X-Gm-Message-State: AOJu0YybvY8zWBQ6RhDJ3Sy5f1ic991KeKnebCeY++rt7VmNpMLPA2W6
	XLUjzaLAkGMM+ld1tGN8zCMyqzBVYnxz/T/HA/amUlHqmMgQpQJo9MFK+HNDAMQ=
X-Google-Smtp-Source: AGHT+IEQae+li8+MmkhSgKO7v/IjWW5gXfbzde3KtgeAI459kiVnCDyN79K5Wxi99bOCeXaXIofqpA==
X-Received: by 2002:ae9:e608:0:b0:789:f6cb:b5b2 with SMTP id z8-20020ae9e608000000b00789f6cbb5b2mr3751629qkf.42.1710720605346;
        Sun, 17 Mar 2024 17:10:05 -0700 (PDT)
Received: from godzilla (107-179-213-3.cpe.teksavvy.com. [107.179.213.3])
        by smtp.gmail.com with ESMTPSA id h22-20020a05620a21d600b00789dc7a5325sm3601591qka.110.2024.03.17.17.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Mar 2024 17:10:04 -0700 (PDT)
Date: Sun, 17 Mar 2024 20:10:03 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Jose Quaresma <quaresma.jose@gmail.com>
cc: Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com>, 
    Yash Shinde <Yash.Shinde@windriver.com>, 
    Richard Purdie <richard.purdie@linuxfoundation.org>, 
    yocto@lists.yoctoproject.org
Subject: Re: [meta-lts-mixins][kirkstone/rust][PATCH 10/11] rust: reproducibility
 issue fix with v1.75
In-Reply-To: <c2da972e-523a-c34b-a11d-c18f01623f92@konsulko.com>
Message-ID: <e0fc85fd-bd14-ff20-5391-303ff5939041@konsulko.com>
References: <20240311162419.1138625-1-jose.quaresma@foundries.io> <20240311162419.1138625-10-jose.quaresma@foundries.io> <bfbd5a23-720d-410b-a359-56c1822a0cf6@windriver.com> <CANPvuRn1D=4F3XjWxDHFwCA2bRyh0JUugOt1LhSjXSs_rb1wFA@mail.gmail.com>
 <c2da972e-523a-c34b-a11d-c18f01623f92@konsulko.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-1049648698-1710720604=:4367"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 00:10:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62774

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---1463811583-1049648698-1710720604=:4367
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 12 Mar 2024, Scott Murray wrote:

> On Tue, 12 Mar 2024, Jose Quaresma wrote:
>
> > Hi Sundeep,
> >
> > Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com> escreveu (terça,
> > 12/03/2024 à(s) 03:45):
> >
> > > Hello,
> > >
> > > FYI. There is a V2 available for this patch with upstream fix backport.
> > > You can consider that.
> > >
> > > https://lists.openembedded.org/g/openembedded-core/message/196856
> >
> >
> > Sure, when this one is integrated on the master branch I can create a
> > backport for it too.
> > Thanks for the notification.
>
> I got back from a couple of weeks out of the office (conference followed
> by vacation) yesterday, I aim to test the patch series locally and merge
> it to kirkstone/rust in the next couple of days.  We now seem to need
> newer than Rust 1.70 for a recipe in AGL, so I'll likely be switching AGL
> to using kirkstone/rust as well.

I have merged the current patch series to kirkstone/rust with a minor
tweak to update the layer.conf RUSTVERSION over-ride to match 1.75, and
adding pointers to the original oe-core commits in the commit messages.

Thanks,

Scott


> > > On 11-Mar-24 21:54, Jose Quaresma wrote:
> > > > CAUTION: This email comes from a non Wind River email account!
> > > > Do not click links or open attachments unless you recognize the sender
> > > and know the content is safe.
> > > >
> > > > From: Yash Shinde <Yash.Shinde@windriver.com>
> > > >
> > > > With 1.75 rust release, the '.rustc' section of shared object libs are
> > > embedded with absolute path names which is casuing reproducibiluty issues.
> > > > This change will fix the path name format back to '/rust/$hash' as in
> > > earlier versions.
> > > >
> > > > Below are the links for detailed bug description & discusssion with
> > > upstream rust.
> > > > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > > >
> > > > Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > > Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
> > > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > > Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> > > > ---
> > > >   .../files/repro-issue-fix-with-v175.patch     | 23 +++++++++++++++++++
> > > >   recipes-devtools/rust/rust-source.inc         |  1 +
> > > >   2 files changed, 24 insertions(+)
> > > >   create mode 100644
> > > recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > >
> > > > diff --git a/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > new file mode 100644
> > > > index 0000000..6840baf
> > > > --- /dev/null
> > > > +++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > @@ -0,0 +1,23 @@
> > > > +rust: reproducibility issue fix with v1.75
> > > > +
> > > > +With 1.75 rust release, the '.rustc' section of shared object libs are
> > > embedded with absolute path names which is casuing reproducibiluty issues.
> > > > +This change will fix the path name format back to '/rust/$hash' as in
> > > earlier versions.
> > > > +
> > > > +Below are the links for detailed bug description & discusssion with
> > > upstream rust.
> > > > +https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > > +https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > > > +
> > > > +Upstream-Status: Inappropriate [patches need rework]
> > > > +Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > > +---
> > > > +--- a/compiler/rustc_session/src/session.rs    2023-12-21
> > > 08:55:28.000000000 -0800
> > > > ++++ b/compiler/rustc_session/src/session.rs    2024-02-26
> > > 07:29:15.527577022 -0800
> > > > +@@ -1269,7 +1269,7 @@
> > > > +                 | CrateType::Rlib
> > > > +                 | CrateType::Staticlib
> > > > +                 | CrateType::Cdylib => continue,
> > > > +-                CrateType::ProcMacro => return false,
> > > > ++                CrateType::ProcMacro => return true,
> > > > +             }
> > > > +         }
> > > > +
> > > > diff --git a/recipes-devtools/rust/rust-source.inc
> > > b/recipes-devtools/rust/rust-source.inc
> > > > index 8ae8add..6bef990 100644
> > > > --- a/recipes-devtools/rust/rust-source.inc
> > > > +++ b/recipes-devtools/rust/rust-source.inc
> > > > @@ -12,6 +12,7 @@ SRC_URI += "
> > > https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
> > > >               file://rustc-bootstrap.patch;patchdir=${RUSTSRC} \
> > > >               file://target-build-value.patch;patchdir=${RUSTSRC} \
> > > >
> > >  file://0001-Handle-vendored-sources-when-remapping-paths.patch;patchdir=${RUSTSRC}
> > > \
> > > > +            file://repro-issue-fix-with-v175.patch;patchdir=${RUSTSRC} \
> > > >   "
> > > >   SRC_URI[rust.sha256sum] =
> > > "4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340"
> > > >
> > > > --
> > > > 2.44.0
> > > >
> > >
> >
> >
> >
---1463811583-1049648698-1710720604=:4367--

