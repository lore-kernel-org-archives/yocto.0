Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC71C54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 12:46:48 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web10.7913.1710247598258996794
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 05:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jSzMyJp8;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7dade974b0bso2352907241.0
        for <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 05:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710247597; x=1710852397; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=scl+vp4Fe2fNi3HYES0VIyPyQC1uktTgwW21ummYMUw=;
        b=jSzMyJp8r88yXP02YIqaOeQOIJjbYOlPkJa1iFw1HMsbfp07CJGddo/oM8DZYxms0j
         4ySw6zSsgkecwsle/t5/FATK1l4jHR25vuOgn1qUPsgnvvEzajft3IjY2pK6nj4xLmzZ
         aTRP9U3UWBpDjfgA9fyCHJjCWQUezjZ7zBDP1MOckTkmRHUElF7UEHMizFOGk2WiUcHW
         vfTQVATG0l168nTqWu3MTT41Y9PbRcjEiCi2hNlLkMjIrEmDGgQImPfZyJfCCKBb39CV
         OdtCL59ZPcxj8bUsekQFz7KQX6tlcS2qWod7eJOkPTzaMzgIxkXute5c983/JZuXM+sh
         SjsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710247597; x=1710852397;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=scl+vp4Fe2fNi3HYES0VIyPyQC1uktTgwW21ummYMUw=;
        b=ssk3cH8o3od7L6ccVM18DW7JJ4yXXttmQQwkht/FRWtP5H+CKMLCvh304lyyUcWP3m
         y5dMzpJAOmDsSXDGXuMrXKGDnaReYDAJQsmFt8Ei8BJ8KwdoUysNuV8Fkkzj4O8qKeIy
         t3kMU8WuX9rKzVqmflLjfCBYfvsY+POuAejQ6c75V9df09FPxk+72LAisMZ2R36I09EJ
         r3Bw83i02Xmndfv/A6XJK3oaw3+sIpR+tEs+x8xV6D6DPQl2eV0iOj5wQBJxW63HQI6U
         X5H4nFSg+1w0T2aX7Py8GlXufy8/il1sMSIrjtQLK9eV5XBl15Z01y2WN0AHzgh1vh/D
         oQQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXovItMKSV8Mn0czBIpUILNsSEtAkLXCDwfv8E2d5WkGAJ43xMe2Y+OsTgg7mcj6Q7so9qHmU7d+nMEuar/P7QYyH7q4T8j93mujg7v
X-Gm-Message-State: AOJu0YxACBgivecu/Rvih2sUkqMK72tnlG2E9GznXwJEamxUYtCTe9zU
	pEeOHuubZULJ41UQEcONeOOFdCNiQWTDFs5KBXXtMvSg2ZAIjWU0merdCgKiaH+22vm8SxBDM0s
	POS6pWlXNL5gXBstTSxNO7IiOaTM=
X-Google-Smtp-Source: AGHT+IEi8v1CSaaBpngdmVT61c1a1bYYOiqle3+qdOgF0GEgnjhUB9M4EmjsxfqeCRhFtDgfn0A5qjHb14mJCoZ5HvA=
X-Received: by 2002:a05:6102:3b96:b0:471:fc99:51a2 with SMTP id
 z22-20020a0561023b9600b00471fc9951a2mr6924299vsu.17.1710247597039; Tue, 12
 Mar 2024 05:46:37 -0700 (PDT)
MIME-Version: 1.0
References: <20240311162419.1138625-1-jose.quaresma@foundries.io>
 <20240311162419.1138625-10-jose.quaresma@foundries.io> <bfbd5a23-720d-410b-a359-56c1822a0cf6@windriver.com>
In-Reply-To: <bfbd5a23-720d-410b-a359-56c1822a0cf6@windriver.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 12 Mar 2024 12:46:26 +0000
Message-ID: <CANPvuRn1D=4F3XjWxDHFwCA2bRyh0JUugOt1LhSjXSs_rb1wFA@mail.gmail.com>
Subject: Re: [meta-lts-mixins][kirkstone/rust][PATCH 10/11] rust:
 reproducibility issue fix with v1.75
To: Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com>
Cc: Yash Shinde <Yash.Shinde@windriver.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Jose Quaresma <jose.quaresma@foundries.io>, yocto@lists.yoctoproject.org, 
	scott.murray@konsulko.com
Content-Type: multipart/alternative; boundary="0000000000007fe9390613760c3c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Mar 2024 12:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62742

--0000000000007fe9390613760c3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sundeep,

Sundeep KOKKONDA <Sundeep.Kokkonda@windriver.com> escreveu (ter=C3=A7a,
12/03/2024 =C3=A0(s) 03:45):

> Hello,
>
> FYI. There is a V2 available for this patch with upstream fix backport.
> You can consider that.
>
> https://lists.openembedded.org/g/openembedded-core/message/196856


Sure, when this one is integrated on the master branch I can create a
backport for it too.
Thanks for the notification.

Jose


>
>
>
> Thanks,
>
> Sundeep K.
>
> On 11-Mar-24 21:54, Jose Quaresma wrote:
> > CAUTION: This email comes from a non Wind River email account!
> > Do not click links or open attachments unless you recognize the sender
> and know the content is safe.
> >
> > From: Yash Shinde <Yash.Shinde@windriver.com>
> >
> > With 1.75 rust release, the '.rustc' section of shared object libs are
> embedded with absolute path names which is casuing reproducibiluty issues=
.
> > This change will fix the path name format back to '/rust/$hash' as in
> earlier versions.
> >
> > Below are the links for detailed bug description & discusssion with
> upstream rust.
> > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964307219
> > https://github.com/rust-lang/rust/issues/120825#issuecomment-1964652656
> >
> > Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > Signed-off-by: Yash Shinde <Yash.Shinde@windriver.com>
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
> > ---
> >   .../files/repro-issue-fix-with-v175.patch     | 23 ++++++++++++++++++=
+
> >   recipes-devtools/rust/rust-source.inc         |  1 +
> >   2 files changed, 24 insertions(+)
> >   create mode 100644
> recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> >
> > diff --git a/recipes-devtools/rust/files/repro-issue-fix-with-v175.patc=
h
> b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > new file mode 100644
> > index 0000000..6840baf
> > --- /dev/null
> > +++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch
> > @@ -0,0 +1,23 @@
> > +rust: reproducibility issue fix with v1.75
> > +
> > +With 1.75 rust release, the '.rustc' section of shared object libs are
> embedded with absolute path names which is casuing reproducibiluty issues=
.
> > +This change will fix the path name format back to '/rust/$hash' as in
> earlier versions.
> > +
> > +Below are the links for detailed bug description & discusssion with
> upstream rust.
> > +https://github.com/rust-lang/rust/issues/120825#issuecomment-196430721=
9
> > +https://github.com/rust-lang/rust/issues/120825#issuecomment-196465265=
6
> > +
> > +Upstream-Status: Inappropriate [patches need rework]
> > +Signed-off-by: Sundeep KOKKONDA <sundeep.kokkonda@windriver.com>
> > +---
> > +--- a/compiler/rustc_session/src/session.rs    2023-12-21
> 08:55:28.000000000 -0800
> > ++++ b/compiler/rustc_session/src/session.rs    2024-02-26
> 07:29:15.527577022 -0800
> > +@@ -1269,7 +1269,7 @@
> > +                 | CrateType::Rlib
> > +                 | CrateType::Staticlib
> > +                 | CrateType::Cdylib =3D> continue,
> > +-                CrateType::ProcMacro =3D> return false,
> > ++                CrateType::ProcMacro =3D> return true,
> > +             }
> > +         }
> > +
> > diff --git a/recipes-devtools/rust/rust-source.inc
> b/recipes-devtools/rust/rust-source.inc
> > index 8ae8add..6bef990 100644
> > --- a/recipes-devtools/rust/rust-source.inc
> > +++ b/recipes-devtools/rust/rust-source.inc
> > @@ -12,6 +12,7 @@ SRC_URI +=3D "
> https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.tar.xz;n
> >               file://rustc-bootstrap.patch;patchdir=3D${RUSTSRC} \
> >               file://target-build-value.patch;patchdir=3D${RUSTSRC} \
> >
>  file://0001-Handle-vendored-sources-when-remapping-paths.patch;patchdir=
=3D${RUSTSRC}
> \
> > +            file://repro-issue-fix-with-v175.patch;patchdir=3D${RUSTSR=
C} \
> >   "
> >   SRC_URI[rust.sha256sum] =3D
> "4526f786d673e4859ff2afa0bab2ba13c918b796519a25c1acce06dba9542340"
> >
> > --
> > 2.44.0
> >
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000007fe9390613760c3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Sundeep,</div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">Sundeep KOKKONDA &lt;<a href=3D"mailto:Sun=
deep.Kokkonda@windriver.com">Sundeep.Kokkonda@windriver.com</a>&gt; escreve=
u (ter=C3=A7a, 12/03/2024 =C3=A0(s) 03:45):<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hello,<br>
<br>
FYI. There is a V2 available for this patch with upstream fix backport. <br=
>
You can consider that.<br>
<br>
<a href=3D"https://lists.openembedded.org/g/openembedded-core/message/19685=
6" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/g/op=
enembedded-core/message/196856</a></blockquote><div><br></div><div>Sure, wh=
en this one is integrated on the master branch I can create a backport for =
it too.<br></div><div>Thanks for the notification.<br></div><div><br></div>=
<div>Jose</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><br>
<br>
<br>
Thanks,<br>
<br>
Sundeep K.<br>
<br>
On 11-Mar-24 21:54, Jose Quaresma wrote:<br>
&gt; CAUTION: This email comes from a non Wind River email account!<br>
&gt; Do not click links or open attachments unless you recognize the sender=
 and know the content is safe.<br>
&gt;<br>
&gt; From: Yash Shinde &lt;<a href=3D"mailto:Yash.Shinde@windriver.com" tar=
get=3D"_blank">Yash.Shinde@windriver.com</a>&gt;<br>
&gt;<br>
&gt; With 1.75 rust release, the &#39;.rustc&#39; section of shared object =
libs are embedded with absolute path names which is casuing reproducibiluty=
 issues.<br>
&gt; This change will fix the path name format back to &#39;/rust/$hash&#39=
; as in earlier versions.<br>
&gt;<br>
&gt; Below are the links for detailed bug description &amp; discusssion wit=
h upstream rust.<br>
&gt; <a href=3D"https://github.com/rust-lang/rust/issues/120825#issuecommen=
t-1964307219" rel=3D"noreferrer" target=3D"_blank">https://github.com/rust-=
lang/rust/issues/120825#issuecomment-1964307219</a><br>
&gt; <a href=3D"https://github.com/rust-lang/rust/issues/120825#issuecommen=
t-1964652656" rel=3D"noreferrer" target=3D"_blank">https://github.com/rust-=
lang/rust/issues/120825#issuecomment-1964652656</a><br>
&gt;<br>
&gt; Signed-off-by: Sundeep KOKKONDA &lt;<a href=3D"mailto:sundeep.kokkonda=
@windriver.com" target=3D"_blank">sundeep.kokkonda@windriver.com</a>&gt;<br=
>
&gt; Signed-off-by: Yash Shinde &lt;<a href=3D"mailto:Yash.Shinde@windriver=
.com" target=3D"_blank">Yash.Shinde@windriver.com</a>&gt;<br>
&gt; Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@lin=
uxfoundation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&=
gt;<br>
&gt; Signed-off-by: Jose Quaresma &lt;<a href=3D"mailto:jose.quaresma@found=
ries.io" target=3D"_blank">jose.quaresma@foundries.io</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../files/repro-issue-fix-with-v175.patch=C2=A0 =C2=A0 =C2=
=A0| 23 +++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0recipes-devtools/rust/rust-source.inc=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 1 +<br>
&gt;=C2=A0 =C2=A02 files changed, 24 insertions(+)<br>
&gt;=C2=A0 =C2=A0create mode 100644 recipes-devtools/rust/files/repro-issue=
-fix-with-v175.patch<br>
&gt;<br>
&gt; diff --git a/recipes-devtools/rust/files/repro-issue-fix-with-v175.pat=
ch b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000..6840baf<br>
&gt; --- /dev/null<br>
&gt; +++ b/recipes-devtools/rust/files/repro-issue-fix-with-v175.patch<br>
&gt; @@ -0,0 +1,23 @@<br>
&gt; +rust: reproducibility issue fix with v1.75<br>
&gt; +<br>
&gt; +With 1.75 rust release, the &#39;.rustc&#39; section of shared object=
 libs are embedded with absolute path names which is casuing reproducibilut=
y issues.<br>
&gt; +This change will fix the path name format back to &#39;/rust/$hash&#3=
9; as in earlier versions.<br>
&gt; +<br>
&gt; +Below are the links for detailed bug description &amp; discusssion wi=
th upstream rust.<br>
&gt; +<a href=3D"https://github.com/rust-lang/rust/issues/120825#issuecomme=
nt-1964307219" rel=3D"noreferrer" target=3D"_blank">https://github.com/rust=
-lang/rust/issues/120825#issuecomment-1964307219</a><br>
&gt; +<a href=3D"https://github.com/rust-lang/rust/issues/120825#issuecomme=
nt-1964652656" rel=3D"noreferrer" target=3D"_blank">https://github.com/rust=
-lang/rust/issues/120825#issuecomment-1964652656</a><br>
&gt; +<br>
&gt; +Upstream-Status: Inappropriate [patches need rework]<br>
&gt; +Signed-off-by: Sundeep KOKKONDA &lt;<a href=3D"mailto:sundeep.kokkond=
a@windriver.com" target=3D"_blank">sundeep.kokkonda@windriver.com</a>&gt;<b=
r>
&gt; +---<br>
&gt; +--- a/compiler/rustc_session/src/<a href=3D"http://session.rs" rel=3D=
"noreferrer" target=3D"_blank">session.rs</a>=C2=A0 =C2=A0 2023-12-21 08:55=
:28.000000000 -0800<br>
&gt; ++++ b/compiler/rustc_session/src/<a href=3D"http://session.rs" rel=3D=
"noreferrer" target=3D"_blank">session.rs</a>=C2=A0 =C2=A0 2024-02-26 07:29=
:15.527577022 -0800<br>
&gt; +@@ -1269,7 +1269,7 @@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Crate=
Type::Rlib<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Crate=
Type::Staticlib<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Crate=
Type::Cdylib =3D&gt; continue,<br>
&gt; +-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CrateType::P=
rocMacro =3D&gt; return false,<br>
&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 CrateType::P=
rocMacro =3D&gt; return true,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; diff --git a/recipes-devtools/rust/rust-source.inc b/recipes-devtools/=
rust/rust-source.inc<br>
&gt; index 8ae8add..6bef990 100644<br>
&gt; --- a/recipes-devtools/rust/rust-source.inc<br>
&gt; +++ b/recipes-devtools/rust/rust-source.inc<br>
&gt; @@ -12,6 +12,7 @@ SRC_URI +=3D &quot;<a href=3D"https://static.rust-la=
ng.org/dist/rustc-$%7BRUST_VERSION%7D-src.tar.xz;n" rel=3D"noreferrer" targ=
et=3D"_blank">https://static.rust-lang.org/dist/rustc-${RUST_VERSION}-src.t=
ar.xz;n</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://rustc-boo=
tstrap.patch;patchdir=3D${RUSTSRC} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://target-bu=
ild-value.patch;patchdir=3D${RUSTSRC} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0001-Hand=
le-vendored-sources-when-remapping-paths.patch;patchdir=3D${RUSTSRC} \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://repro-issue-fix-with=
-v175.patch;patchdir=3D${RUSTSRC} \<br>
&gt;=C2=A0 =C2=A0&quot;<br>
&gt;=C2=A0 =C2=A0SRC_URI[rust.sha256sum] =3D &quot;4526f786d673e4859ff2afa0=
bab2ba13c918b796519a25c1acce06dba9542340&quot;<br>
&gt;<br>
&gt; --<br>
&gt; 2.44.0<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000007fe9390613760c3c--

