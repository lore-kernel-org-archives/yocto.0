Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBCBC54E5D
	for <webhook@archiver.kernel.org>; Mon, 18 Mar 2024 10:03:23 +0000 (UTC)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
 by mx.groups.io with SMTP id smtpd.web11.39486.1710756195356315151
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Mar 2024 03:03:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZOOv6Svq;
 spf=pass (domain: gmail.com, ip: 209.85.217.43, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-47657316341so547975137.2
        for <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 03:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710756194; x=1711360994; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+zChxrGfr8DmkINwsQLWBJWIyssNg/+V82d3mDnNwyw=;
        b=ZOOv6Svq4uRxouQyfhfY+RcoDk52i9V5cgrs1V1MUkxqE7r52lvreljlwUZGghpEjB
         eqrToYI7WsuWQIJH9CH8GUFHt+rjV8JVSm1qwgmlG9X9P7LAzfPpufuyUlhy2YxvgTbY
         cGJmm4NlLJ31hafH8AZuO5y8eCmnaEIG4l7iXVHVWPSOtM21UeFq7PqBxbXCXXoK/jbi
         yh9O8WFvi00rbwwsfjfueimITvpVCSCRZ4p+23XAjxOXKdmIQkPxIm4y3TBpBFk44yRS
         nfCTlr8W7flW8Wrat+CooUrYvygH8n/0ipqhJpgEW1RD3PwEvtqQSz2NFuC4mY2TmDzd
         /3fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710756194; x=1711360994;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+zChxrGfr8DmkINwsQLWBJWIyssNg/+V82d3mDnNwyw=;
        b=MzPv+D1oNMhxyg5wpcnODkB+hgEHLOsvy6b2qND4e6Y+VrapeG4BLuG8JP8boe+1tx
         bKqw4fbo1YRAEA31wEsmfwOkOA0GyK+Yx1/UeVkc0JddinSibwJZfeogeld8/SHWuUFm
         76pieFOk9nVholZrUVWP6rizh9kgc1OwaIkc3n3nWXMPzhB7ptUC3RvQ2GCuAyEj6DP7
         +0VRNVKmj1eS1MP8jsU/rtCVIF8g97BgtTUSmEYRjTkqenN4RLBHHfaY3UvZED7Qq4CK
         4DHfJOlVN1W9K0QbMKFWGC1LpNkmqxn9aIP3ibhnQe7EmA7NAtbUKVe31EJB+zSlger2
         23Og==
X-Forwarded-Encrypted: i=1; AJvYcCWHifBj5EXWgIQBVUeSVduL2itcWH8gVxFGaZqdF/mUl0VBR6l/oa2N/j1cBL0iXfyZi0t7kwwPA+jUIzdb8OLMCmIZwb/4naX/Q5+T
X-Gm-Message-State: AOJu0Yw2lKMNYFlu2vt+Btr+c6BlC1h6S2LR5B8R5bsSHrJGBEWbs7rr
	T8nvdXlXEQNj0FZgc4Zj9Sse6UbqpO/Zxwzcc7laVrs1+bNGjqts1qrcIN6KKHUz/TtwVJcKn5R
	vxNZ0cz2ighwr5JR6Ca0Xkd9IqqY=
X-Google-Smtp-Source: AGHT+IGZGh95k+f71KKuMo87NBehBIo/RQu3HzknSwDUYQGWmKnZpwpPJTL0YCxDVvozBkpEJ02vq5xj36Snk6/6VVs=
X-Received: by 2002:a67:f744:0:b0:475:fb4c:7945 with SMTP id
 w4-20020a67f744000000b00475fb4c7945mr9983058vso.26.1710756193720; Mon, 18 Mar
 2024 03:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
 <20240311162419.1138625-10-jose.quaresma@foundries.io> <bfbd5a23-720d-410b-a359-56c1822a0cf6@windriver.com>
 <CANPvuRn1D=4F3XjWxDHFwCA2bRyh0JUugOt1LhSjXSs_rb1wFA@mail.gmail.com>
 <c2da972e-523a-c34b-a11d-c18f01623f92@konsulko.com> <e0fc85fd-bd14-ff20-5391-303ff5939041@konsulko.com>
In-Reply-To: <e0fc85fd-bd14-ff20-5391-303ff5939041@konsulko.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 18 Mar 2024 10:03:02 +0000
Message-ID: <CANPvuRnKNiAqF4DWw34+CbrW9YyfChJDLQrD8vR3_rZisonnSg@mail.gmail.com>
Subject: Re: [meta-lts-mixins][kirkstone/rust][PATCH 10/11] rust:
 reproducibility issue fix with v1.75
To: Scott Murray <scott.murray@konsulko.com>
Cc: Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com>, Yash Shinde <Yash.Shinde@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003962b00613ec77aa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Mar 2024 10:03:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62782

--0000000000003962b00613ec77aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the update.

Jose

Scott Murray <scott.murray@konsulko.com> escreveu (segunda, 18/03/2024 =C3=
=A0(s)
00:10):

> On Tue, 12 Mar 2024, Scott Murray wrote:
>
> > On Tue, 12 Mar 2024, Jose Quaresma wrote:
> >
> > > Hi Sundeep,
> > >
> > > Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com> escreveu (ter=C3=A7=
a,
> > > 12/03/2024 =C3=A0(s) 03:45):
> > >
> > > > Hello,
> > > >
> > > > FYI. There is a V2 available for this patch with upstream fix
> backport.
> > > > You can consider that.
> > > >
> > > > https://lists.openembedded.org/g/openembedded-core/message/196856
> > >
> > >
> > > Sure, when this one is integrated on the master branch I can create a
> > > backport for it too.
> > > Thanks for the notification.
> >
> > I got back from a couple of weeks out of the office (conference followe=
d
> > by vacation) yesterday, I aim to test the patch series locally and merg=
e
> > it to kirkstone/rust in the next couple of days.  We now seem to need
> > newer than Rust 1.70 for a recipe in AGL, so I'll likely be switching A=
GL
> > to using kirkstone/rust as well.
>
> I have merged the current patch series to kirkstone/rust with a minor
> tweak to update the layer.conf RUSTVERSION over-ride to match 1.75, and
> adding pointers to the original oe-core commits in the commit messages.
>
> Thanks,
>
> Scott
>
>
> > > > On 11-Mar-24 21:54, Jose Quaresma wrote:
> > > > > CAUTION: This email comes from a non Wind River email account!
> > > > > Do not click links or open attachments unless you recognize the
> sender
> > > > and know the content is safe.
> > > > >
> > > > > From: Yash Shinde <Yash.Shinde@windriver.com>
> > > > >
> > > > > With 1.75 rust release, the '.rustc' section of shared object lib=
s
> are
> > > > embedded with absolute path names which is casuing reproducibiluty
> issues.
> > > > > This change will fix the path name format back to '/rust/$hash' a=
s
> in
> > > > earlier versions.
> > > > >
> > > > > Below are the links for detailed bug description & discusssion wi=
th
> > > > upstream rust.
> > > > >
> https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > > >
> https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > > > >
> > > > > Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > > > Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
> > > > > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org=
>
> > > > > Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> > > > > ---
> > > > >   .../files/repro-issue-fix-with-v175.patch     | 23
> +++++++++++++++++++
> > > > >   recipes-devtools/rust/rust-source.inc         |  1 +
> > > > >   2 files changed, 24 insertions(+)
> > > > >   create mode 100644
> > > > recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > >
> > > > > diff --git
> a/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > > new file mode 100644
> > > > > index 0000000..6840baf
> > > > > --- /dev/null
> > > > > +++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > > > > @@ -0,0 +1,23 @@
> > > > > +rust: reproducibility issue fix with v1.75
> > > > > +
> > > > > +With 1.75 rust release, the '.rustc' section of shared object
> libs are
> > > > embedded with absolute path names which is casuing reproducibiluty
> issues.
> > > > > +This change will fix the path name format back to '/rust/$hash'
> as in
> > > > earlier versions.
> > > > > +
> > > > > +Below are the links for detailed bug description & discusssion
> with
> > > > upstream rust.
> > > > > +
> https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > > > > +
> https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> > > > > +
> > > > > +Upstream-Status: Inappropriate [patches need rework]
> > > > > +Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > > > > +---
> > > > > +--- a/compiler/rustc_session/src/session.rs    2023-12-21
> > > > 08:55:28.000000000 -0800
> > > > > ++++ b/compiler/rustc_session/src/session.rs    2024-02-26
> > > > 07:29:15.527577022 -0800
> > > > > +@@ -1269,7 +1269,7 @@
> > > > > +                 | CrateType::Rlib
> > > > > +                 | CrateType::Staticlib
> > > > > +                 | CrateType::Cdylib =3D> continue,
> > > > > +-                CrateType::ProcMacro =3D> return false,
> > > > > ++                CrateType::ProcMacro =3D> return true,
> > > > > +             }
> > > > > +         }
> > > > > +
> > > > > diff --git a/recipes-devtools/rust/rust-source.inc
> > > > b/recipes-devtools/rust/rust-source.inc
> > > > > index 8ae8add..6bef990 100644
> > > > > --- a/recipes-devtools/rust/rust-source.inc
> > > > > +++ b/recipes-devtools/rust/rust-source.inc
> > > > > @@ -12,6 +12,7 @@ SRC_URI +=3D "
> > > > https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;=
n
> > > > >               file://rustc-bootstrap.patch;patchdir=3D${RUSTSRC} =
\
> > > > >               file://target-build-value.patch;patchdir=3D${RUSTSR=
C} \
> > > > >
> > > >
> file://0001-Handle-vendored-sources-when-remapping-paths.patch;patchdir=
=3D${RUSTSRC}
> > > > \
> > > > > +
> file://repro-issue-fix-with-v175.patch;patchdir=3D${RUSTSRC} \
> > > > >   "
> > > > >   SRC_URI[rust.sha256sum] =3D
> > > > "4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340"
> > > > >
> > > > > --
> > > > > 2.44.0
> > > > >
> > > >
> > >
> > >
> > >



--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000003962b00613ec77aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks for the update.=C2=A0<br></div><di=
v><br></div>Jose<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Scott Murray &lt;<a href=3D"mailto:scott.murray@konsulko.co=
m">scott.murray@konsulko.com</a>&gt; escreveu (segunda, 18/03/2024 =C3=A0(s=
) 00:10):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue=
, 12 Mar 2024, Scott Murray wrote:<br>
<br>
&gt; On Tue, 12 Mar 2024, Jose Quaresma wrote:<br>
&gt;<br>
&gt; &gt; Hi Sundeep,<br>
&gt; &gt;<br>
&gt; &gt; Sundeep KOKKONDA &lt;<a href=3D"mailto:Sundeep.Kokkonda@windriver=
.com" target=3D"_blank">Sundeep.Kokkonda@windriver.com</a>&gt; escreveu (te=
r=C3=A7a,<br>
&gt; &gt; 12/03/2024 =C3=A0(s) 03:45):<br>
&gt; &gt;<br>
&gt; &gt; &gt; Hello,<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; FYI. There is a V2 available for this patch with upstream fi=
x backport.<br>
&gt; &gt; &gt; You can consider that.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembedded-cor=
e/message/196856" rel=3D"noreferrer" target=3D"_blank">https://lists.openem=
bedded.org/g/openembedded-core/message/196856</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Sure, when this one is integrated on the master branch I can crea=
te a<br>
&gt; &gt; backport for it too.<br>
&gt; &gt; Thanks for the notification.<br>
&gt;<br>
&gt; I got back from a couple of weeks out of the office (conference follow=
ed<br>
&gt; by vacation) yesterday, I aim to test the patch series locally and mer=
ge<br>
&gt; it to kirkstone/rust in the next couple of days.=C2=A0 We now seem to =
need<br>
&gt; newer than Rust 1.70 for a recipe in AGL, so I&#39;ll likely be switch=
ing AGL<br>
&gt; to using kirkstone/rust as well.<br>
<br>
I have merged the current patch series to kirkstone/rust with a minor<br>
tweak to update the layer.conf RUSTVERSION over-ride to match 1.75, and<br>
adding pointers to the original oe-core commits in the commit messages.<br>
<br>
Thanks,<br>
<br>
Scott<br>
<br>
<br>
&gt; &gt; &gt; On 11-Mar-24 21:54, Jose Quaresma wrote:<br>
&gt; &gt; &gt; &gt; CAUTION: This email comes from a non Wind River email a=
ccount!<br>
&gt; &gt; &gt; &gt; Do not click links or open attachments unless you recog=
nize the sender<br>
&gt; &gt; &gt; and know the content is safe.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; From: Yash Shinde &lt;<a href=3D"mailto:Yash.Shinde@win=
driver.com" target=3D"_blank">Yash.Shinde@windriver.com</a>&gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; With 1.75 rust release, the &#39;.rustc&#39; section of=
 shared object libs are<br>
&gt; &gt; &gt; embedded with absolute path names which is casuing reproduci=
biluty issues.<br>
&gt; &gt; &gt; &gt; This change will fix the path name format back to &#39;=
/rust/$hash&#39; as in<br>
&gt; &gt; &gt; earlier versions.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Below are the links for detailed bug description &amp; =
discusssion with<br>
&gt; &gt; &gt; upstream rust.<br>
&gt; &gt; &gt; &gt; <a href=3D"https://github.com/rust-lang/rust/issues/120=
825#issuecomment-1964307219" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/rust-lang/rust/issues/120825#issuecomment-1964307219</a><br>
&gt; &gt; &gt; &gt; <a href=3D"https://github.com/rust-lang/rust/issues/120=
825#issuecomment-1964652656" rel=3D"noreferrer" target=3D"_blank">https://g=
ithub.com/rust-lang/rust/issues/120825#issuecomment-1964652656</a><br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Sundeep KOKKONDA &lt;<a href=3D"mailto:s=
undeep.kokkonda@windriver.com" target=3D"_blank">sundeep.kokkonda@windriver=
.com</a>&gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Yash Shinde &lt;<a href=3D"mailto:Yash.S=
hinde@windriver.com" target=3D"_blank">Yash.Shinde@windriver.com</a>&gt;<br=
>
&gt; &gt; &gt; &gt; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:ric=
hard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfoun=
dation.org</a>&gt;<br>
&gt; &gt; &gt; &gt; Signed-off-by: Jose Quaresma &lt;<a href=3D"mailto:jose=
.quaresma@foundries.io" target=3D"_blank">jose.quaresma@foundries.io</a>&gt=
;<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0.../files/repro-issue-fix-with-v175.patch=
=C2=A0 =C2=A0 =C2=A0| 23 +++++++++++++++++++<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0recipes-devtools/rust/rust-source.inc=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 1 +<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A02 files changed, 24 insertions(+)<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0create mode 100644<br>
&gt; &gt; &gt; recipes-devtools/rust/files/repro-issue-fix-with-v175.patch<=
br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; diff --git a/recipes-devtools/rust/files/repro-issue-fi=
x-with-v175.patch<br>
&gt; &gt; &gt; b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patc=
h<br>
&gt; &gt; &gt; &gt; new file mode 100644<br>
&gt; &gt; &gt; &gt; index 0000000..6840baf<br>
&gt; &gt; &gt; &gt; --- /dev/null<br>
&gt; &gt; &gt; &gt; +++ b/recipes-devtools/rust/files/repro-issue-fix-with-=
v175.patch<br>
&gt; &gt; &gt; &gt; @@ -0,0 +1,23 @@<br>
&gt; &gt; &gt; &gt; +rust: reproducibility issue fix with v1.75<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +With 1.75 rust release, the &#39;.rustc&#39; section o=
f shared object libs are<br>
&gt; &gt; &gt; embedded with absolute path names which is casuing reproduci=
biluty issues.<br>
&gt; &gt; &gt; &gt; +This change will fix the path name format back to &#39=
;/rust/$hash&#39; as in<br>
&gt; &gt; &gt; earlier versions.<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +Below are the links for detailed bug description &amp;=
 discusssion with<br>
&gt; &gt; &gt; upstream rust.<br>
&gt; &gt; &gt; &gt; +<a href=3D"https://github.com/rust-lang/rust/issues/12=
0825#issuecomment-1964307219" rel=3D"noreferrer" target=3D"_blank">https://=
github.com/rust-lang/rust/issues/120825#issuecomment-1964307219</a><br>
&gt; &gt; &gt; &gt; +<a href=3D"https://github.com/rust-lang/rust/issues/12=
0825#issuecomment-1964652656" rel=3D"noreferrer" target=3D"_blank">https://=
github.com/rust-lang/rust/issues/120825#issuecomment-1964652656</a><br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +Upstream-Status: Inappropriate [patches need rework]<b=
r>
&gt; &gt; &gt; &gt; +Signed-off-by: Sundeep KOKKONDA &lt;<a href=3D"mailto:=
sundeep.kokkonda@windriver.com" target=3D"_blank">sundeep.kokkonda@windrive=
r.com</a>&gt;<br>
&gt; &gt; &gt; &gt; +---<br>
&gt; &gt; &gt; &gt; +--- a/compiler/rustc_session/src/<a href=3D"http://ses=
sion.rs" rel=3D"noreferrer" target=3D"_blank">session.rs</a>=C2=A0 =C2=A0 2=
023-12-21<br>
&gt; &gt; &gt; 08:55:28.000000000 -0800<br>
&gt; &gt; &gt; &gt; ++++ b/compiler/rustc_session/src/<a href=3D"http://ses=
sion.rs" rel=3D"noreferrer" target=3D"_blank">session.rs</a>=C2=A0 =C2=A0 2=
024-02-26<br>
&gt; &gt; &gt; 07:29:15.527577022 -0800<br>
&gt; &gt; &gt; &gt; +@@ -1269,7 +1269,7 @@<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| CrateType::Rlib<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| CrateType::Staticlib<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| CrateType::Cdylib =3D&gt; continue,<br>
&gt; &gt; &gt; &gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 CrateType::ProcMacro =3D&gt; return false,<br>
&gt; &gt; &gt; &gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 CrateType::ProcMacro =3D&gt; return true,<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; diff --git a/recipes-devtools/rust/rust-source.inc<br>
&gt; &gt; &gt; b/recipes-devtools/rust/rust-source.inc<br>
&gt; &gt; &gt; &gt; index 8ae8add..6bef990 100644<br>
&gt; &gt; &gt; &gt; --- a/recipes-devtools/rust/rust-source.inc<br>
&gt; &gt; &gt; &gt; +++ b/recipes-devtools/rust/rust-source.inc<br>
&gt; &gt; &gt; &gt; @@ -12,6 +12,7 @@ SRC_URI +=3D &quot;<br>
&gt; &gt; &gt; <a href=3D"https://static.rust-lang.org/dist/rustc-$%7BRUST_=
VERSION%7D-src.tar.xz;n" rel=3D"noreferrer" target=3D"_blank">https://stati=
c.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n</a><br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f=
ile://rustc-bootstrap.patch;patchdir=3D${RUSTSRC} \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0f=
ile://target-build-value.patch;patchdir=3D${RUSTSRC} \<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;=C2=A0 file://0001-Handle-vendored-sources-when-remapping-pat=
hs.patch;patchdir=3D${RUSTSRC}<br>
&gt; &gt; &gt; \<br>
&gt; &gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://repro=
-issue-fix-with-v175.patch;patchdir=3D${RUSTSRC} \<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0&quot;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0SRC_URI[rust.sha256sum] =3D<br>
&gt; &gt; &gt; &quot;4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06=
dba9542340&quot;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; 2.44.0<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;</blockquote></div><br clear=3D"all"><div><br></div><span class=3D=
"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_sign=
ature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div=
></div></div></div>

--0000000000003962b00613ec77aa--

