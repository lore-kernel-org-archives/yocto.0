Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A178C7EE22
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:13:44 +0000 (UTC)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web11.40640.1683656015118269602
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:13:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=bA/WpGvL;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-434839b4544so1642862137.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683656014; x=1686248014;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HrFXxB8ZIcbxUcWqQp46c1GI1bT+q2N55Fy8gokHP+w=;
        b=bA/WpGvLSDAMhW9kee0RX5jVlGIyPRqwl/1gp59wmOk+lLHnahcWXFkgOSoToRVXVf
         sBgNvTj5KVvelA+XU8AJNCKVakAxQ4J0MCUeeQlmQHhZilbeTNYfMcNY5uanikd7TNcm
         5buvWDE8T/bpmt6sOWY4oqpdkBBz8/TlVxI1aYwCljNfs0Kh0jGSZs7uDYoUpcf9/7/6
         VoacMOuX8ZAPD6NqgeBE3UgFx0GNWUE/OzpsR5v2H+DaJT8X/stYvtAj9UP03lbUl1wM
         LGkXwR0PJ22KKw6YJ29flVctGzoRXGJ0RonrxnpEWgmQYR/AWTZ+95Owlg4ewIsAkl5s
         kuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683656014; x=1686248014;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HrFXxB8ZIcbxUcWqQp46c1GI1bT+q2N55Fy8gokHP+w=;
        b=R+9vCQ6+WkeOsi+ho9fG/dfkD5Wo4eY44aL9+JpDILNXdkw0iF38q3c2dd9mw/rZSv
         CJdHoiEYVCFfo2d+8Bya3IhuG4d7jOnUluLGlHzr7QQGNR5qfHQEISpgsIJLZApnLRlh
         UX4ACfbFuIJSMaf6dIyzHjkbNuYMwilvRDf6rjmSHhg3WZTYq98C/YU/A97FE39mYB06
         6DooybhOV7wFA4z6ARCRVD1G0CqiUhWoduVCtaWFyaYp9t9H6iB0vh1LZ2OtcwfZO4M1
         ePTHMAw+9Jyl5ajMIFGTE++y6c6ey+1o5iy7jiJlqQjWF/f+P4BZYsTdfVYSzY82j8r0
         +qJA==
X-Gm-Message-State: AC+VfDyJsWK44qvYDzSyvT6iKNukM96bJRf09qqteQPpwWSjUWi5u7y6
	KkcyPrWyFW01QGvQ0r7YZ2GPF3a1iqkUrf6OZP0=
X-Google-Smtp-Source: ACHHUZ7kvi5SqpyDlI1FX8qWQFM3A7kbJwvrLMZJROUHgeGG+GSSmAMC3CpGUGcvoaTmtAbtUYXkiCZHW3aYdzCcN/A=
X-Received: by 2002:a67:e30f:0:b0:434:67aa:d1b2 with SMTP id
 j15-20020a67e30f000000b0043467aad1b2mr4886437vsf.33.1683656014024; Tue, 09
 May 2023 11:13:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
 <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com> <CANPvuR=3YHfc6Dz26ZVF2bo5AZ0jmF-T1raSwiS-nd55bRza+A@mail.gmail.com>
 <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com> <CANPvuRmSbxuVR=UwNoZwJS5xAJfV9-=KysXCc0qjxpTHj0Kw+g@mail.gmail.com>
 <2458d001-940c-96dc-cfe8-792d5e48cbe8@linux.ibm.com>
In-Reply-To: <2458d001-940c-96dc-cfe8-792d5e48cbe8@linux.ibm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 9 May 2023 19:13:23 +0100
Message-ID: <CANPvuRmsaiLz1XGu1WSKZO=XJSXKvzhECuLe-i__rrKGyDCFeA@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org, 
	akuster808@gmail.com
Content-Type: multipart/alternative; boundary="000000000000a3d4da05fb46b613"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:13:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59941

--000000000000a3d4da05fb46b613
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Stefan Berger <stefanb@linux.ibm.com> escreveu no dia ter=C3=A7a, 9/05/2023=
 =C3=A0(s)
19:05:

>
>
> On 5/9/23 13:05, Jose Quaresma wrote:
> > Stefan Berger <stefanb@ linux. ibm. com> escreveu no dia ter=C3=A7a,
> 9/05/2023 =C3=A0(s) 17: 21: On 5/9/23 10: 53, Jose Quaresma wrote: > Hi S=
tefan,
> > > Having this patch applied unconditionally to all kernels doesn't work
> and the patch
> > ZjQcmQRYFpfptBannerStart
> > This Message Is From an External Sender
> > This message came from outside your organization.
> > ZjQcmQRYFpfptBannerEnd
> >
> >
> > Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>>
> escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 17:21:
> >
> >
> >
> >     On 5/9/23 10:53, Jose Quaresma wrote:
> >      > Hi Stefan,
> >      >
> >      > Having this patch applied unconditionally to all kernels doesn't
> work and the patch fails in many downstream kernels.
> >      > I suggest reverting this one if no other solutions come up.
> >
> >     Then let me drop this one. I just posted v2 of this series and can
> repost in v3 with this patch dropped and possibly
> >     only have it applied in the OpenBMC project. I suppose my conclusio=
n
> from OpenBMC, which currently works with a 6.1.15
> >     kernel, that all other Yocto projects also now use a >=3D 6.1.15
> kernel, was wrong?
> >
> >
> > yup! is also my opinion.
> > but after reverting this patch some other new issues comes up because
> the ima side effects changes
> > so linux-firmware dont build any more.
>
> Can you either point me to the changes or tell me how you build
> linux-firmware so that I can recreate the issue locally?
>

it's easy, just call the following:

bitbake linux-firmware


>
>     Stefan
>
> >
> > Jose
> >
> >
> >           Stefan
> >
> >      >
> >      > Jose
> >      >
> >      > Stefan Berger <stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>> escreveu no dia sexta, 28/04/2023 =C3=A0(s) 13:5=
5:
> >      >
> >      >
> >      >
> >      >     On 4/28/23 08:48, Mikko Rapeli wrote:
> >      >      > Hi,
> >      >      >
> >      >      > On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger
> wrote:
> >      >      >> Add a temporary patch that resolves a file change
> notification issue
> >      >      >> with overlayfs where IMA did not become aware of the fil=
e
> changes
> >      >      >> since the 'lower' inode's i_version had not changed. The
> issue will be
> >      >      >> resolved in later kernels with the following patch that
> builds on
> >      >      >> newly addd feature (support for STATX_CHANGE_COOKIE) in
> v6.3-rc1:
> >      >      >>
> >      >      >>
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459>
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> >>
> >      >      >
> >      >      > Would be nice to have Upstream-Status for each patch. I
> guess status
> >      >      > would be Backport here.
> >      >
> >      >     It's quite possible that this series here
> https://lkml.org/lkml/2022/10/21/624 <https://lkml.org/lkml/2022/10/21/62=
4
> >
> >      >     (alone? <https://lkml.org/lkml/2022/10/21/624(alone <
> https://lkml.org/lkml/2022/10/21/624(alone>?>) would provide the
> infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
> >      >     and have that referenced patch applied which isn't upstreame=
d
> so far, either.
> >      >
> >      >     For now this two-liner seemed simpler and resolves the issue=
.
> I understand the concern, though...
> >      >
> >      >            Stefan
> >      >
> >      >      >
> >      >      > Cheers,
> >      >      >
> >      >      > -Mikko
> >      >      >
> >      >      >> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com
> <mailto:stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>>
> >      >      >> ---
> >      >      >>   ...Increment-iversion-upon-file-changes.patch | 42
> +++++++++++++++++++
> >      >      >>   .../recipes-kernel/linux/linux_ima.inc        |  1 +
> >      >      >>   2 files changed, 43 insertions(+)
> >      >      >>   create mode 100644
> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upo=
n-file-changes.patch
> >      >      >>
> >      >      >> diff --git
> a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> >      >      >> new file mode 100644
> >      >      >> index 0000000..d2b5c28
> >      >      >> --- /dev/null
> >      >      >> +++
> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> >      >      >> @@ -0,0 +1,42 @@
> >      >      >> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 1=
7
> 00:00:00 2001
> >      >      >> +From: Stefan Berger <stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>>
> >      >      >> +Date: Thu, 6 Apr 2023 11:27:29 -0400
> >      >      >> +Subject: [PATCH] ovl: Increment iversion upon file
> changes
> >      >      >> +
> >      >      >> +This is a temporary patch for kernels that do not
> implement
> >      >      >> +STATX_CHANGE_COOKIE (<=3D 6.2). The successor patch wil=
l
> be this one:
> >      >      >> +
> >      >      >> +
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459>
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> >>
> >      >      >> +
> >      >      >> +Increment the lower inode's iversion for IMA to be able
> to recognize
> >      >      >> +changes to the file.
> >      >      >> +
> >      >      >> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com
> <mailto:stefanb@linux.ibm.com> <mailto:stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>>
> >      >      >> +---
> >      >      >> + fs/overlayfs/file.c | 3 +++
> >      >      >> + 1 file changed, 3 insertions(+)
> >      >      >> +
> >      >      >> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
> >      >      >> +index 6011f955436b..1dfe5e7bfe1c 100644
> >      >      >> +--- a/fs/overlayfs/file.c
> >      >      >> ++++ b/fs/overlayfs/file.c
> >      >      >> +@@ -13,6 +13,7 @@
> >      >      >> + #include <linux/security.h>
> >      >      >> + #include <linux/mm.h>
> >      >      >> + #include <linux/fs.h>
> >      >      >> ++#include <linux/iversion.h>
> >      >      >> + #include "overlayfs.h"
> >      >      >> +
> >      >      >> + struct ovl_aio_req {
> >      >      >> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struc=
t
> kiocb *iocb, struct iov_iter *iter)
> >      >      >> +            if (ret !=3D -EIOCBQUEUED)
> >      >      >> +                    ovl_aio_cleanup_handler(aio_req);
> >      >      >> +    }
> >      >      >> ++   if (ret > 0)
> >      >      >> ++           inode_maybe_inc_iversion(inode, false);
> >      >      >> + out:
> >      >      >> +    revert_creds(old_cred);
> >      >      >> + out_fdput:
> >      >      >> +--
> >      >      >> +2.34.1
> >      >      >> +
> >      >      >> diff --git
> a/meta-integrity/recipes-kernel/linux/linux_ima.inc
> b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >      >> index 0b6f530..9d48e5c 100644
> >      >      >> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >      >> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >      >> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D
> "${THISDIR}/linux:"
> >      >      >>
> >      >      >>   SRC_URI +=3D " \
> >      >      >>       ${@bb.utils.contains('DISTRO_FEATURES', 'ima',
> 'file://ima.scc', '', d)} \
> >      >      >> +
> file://0001-ovl-Increment-iversion-upon-file-changes.patch \
> >      >      >>   "
> >      >      >>
> >      >      >>   do_configure() {
> >      >      >> --
> >      >      >> 2.34.1
> >      >      >>
> >      >      >
> >      >      >>
> >      >      >>
> >      >      >>
> >      >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      > --
> >      > Best regards,
> >      >
> >      > Jos=C3=A9 Quaresma
> >
> >
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#59934):
> https://lists.yoctoproject.org/g/yocto/message/59934
> > Mute This Topic: https://lists.yoctoproject.org/mt/98557297/1792208
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> stefanb@linux.ibm.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000a3d4da05fb46b613
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Stefan Berger &lt;<a href=3D"mailto:s=
tefanb@linux.ibm.com">stefanb@linux.ibm.com</a>&gt; escreveu no dia ter=C3=
=A7a, 9/05/2023 =C3=A0(s) 19:05:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><br>
<br>
On 5/9/23 13:05, Jose Quaresma wrote:<br>
&gt; Stefan Berger &lt;stefanb@=E2=80=8Alinux.=E2=80=8Aibm.=E2=80=8Acom&gt;=
 escreveu no dia ter=C3=A7a, 9/05/2023 =C3=A0(s) 17:=E2=80=8A21: On 5/9/23 =
10:=E2=80=8A53, Jose Quaresma wrote: &gt; Hi Stefan, &gt; &gt; Having this =
patch applied=C2=A0unconditionally=C2=A0to all kernels doesn&#39;t work and=
 the patch<br>
&gt; ZjQcmQRYFpfptBannerStart<br>
&gt; This Message Is From an External Sender<br>
&gt; This message came from outside your organization.<br>
&gt; ZjQcmQRYFpfptBannerEnd<br>
&gt; <br>
&gt; <br>
&gt; Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_=
blank">stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux=
.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;&gt; escreveu no d=
ia ter=C3=A7a, 9/05/2023 =C3=A0(s) 17:21:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/9/23 10:53, Jose Quaresma wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi Stefan,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Having this patch applied=C2=A0unconditionall=
y=C2=A0to all kernels doesn&#39;t work and the patch fails in many downstre=
am=C2=A0kernels.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I suggest=C2=A0reverting this one if no other=
 solutions come up.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Then let me drop this one. I just posted v2 of this=
 series and can repost in v3 with this patch dropped and possibly<br>
&gt;=C2=A0 =C2=A0 =C2=A0only have it applied in the OpenBMC project. I supp=
ose my conclusion from OpenBMC, which currently works with a 6.1.15<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel, that all other Yocto projects also now use =
a &gt;=3D 6.1.15 kernel, was wrong?<br>
&gt; <br>
&gt; <br>
&gt; yup! is also my opinion.<br>
&gt; but after reverting this patch some other new issues comes up because =
the ima side effects changes<br>
&gt; so linux-firmware dont build any more.<br>
<br>
Can you either point me to the changes or tell me how you build linux-firmw=
are so that I can recreate the issue locally?<br></blockquote><div><br></di=
v><div>it&#39;s easy, just call the following:<br><br>bitbake linux-firmwar=
e<br>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0 Stefan<br>
<br>
&gt; <br>
&gt; Jose<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Stefan<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Jose<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Stefan Berger &lt;<a href=3D"mailto:stefanb@l=
inux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a> &lt;mailto:<a hre=
f=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com<=
/a>&gt; &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blan=
k">stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm=
.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;&gt;&gt; escreveu no d=
ia sexta, 28/04/2023 =C3=A0(s) 13:55:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 4/28/23 08:48, Mikko Ra=
peli wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, Apr 28, 2023=
 at 08:23:15AM -0400, Stefan Berger wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Add a temporary =
patch that resolves a file change notification issue<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; with overlayfs w=
here IMA did not become aware of the file changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; since the &#39;l=
ower&#39; inode&#39;s i_version had not changed. The issue will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; resolved in late=
r kernels with the following patch that builds on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; newly addd featu=
re (support for STATX_CHANGE_COOKIE) in v6.3-rc1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; <a href=3D"https=
://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389b=
ba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"noreferrer=
" target=3D"_blank">https://lore.kernel.org/linux-integrity/20230418-engste=
-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add=
2ff459</a> &lt;<a href=3D"https://lore.kernel.org/linux-integrity/20230418-=
engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693=
948add2ff459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/=
linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf=
84296fe9e6499abb6e3191693948add2ff459</a>&gt; &lt;<a href=3D"https://lore.k=
ernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@braun=
er/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"noreferrer" target=
=3D"_blank">https://lore.kernel.org/linux-integrity/20230418-engste-gastwir=
tschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459</=
a> &lt;<a href=3D"https://lore.kernel.org/linux-integrity/20230418-engste-g=
astwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2f=
f459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/linux-in=
tegrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9=
e6499abb6e3191693948add2ff459</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Would be nice to hav=
e Upstream-Status for each patch. I guess status<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; would be Backport he=
re.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0It&#39;s quite possible th=
at this series here <a href=3D"https://lkml.org/lkml/2022/10/21/624" rel=3D=
"noreferrer" target=3D"_blank">https://lkml.org/lkml/2022/10/21/624</a> &lt=
;<a href=3D"https://lkml.org/lkml/2022/10/21/624" rel=3D"noreferrer" target=
=3D"_blank">https://lkml.org/lkml/2022/10/21/624</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0(alone? &lt;<a href=3D"htt=
ps://lkml.org/lkml/2022/10/21/624(alone" rel=3D"noreferrer" target=3D"_blan=
k">https://lkml.org/lkml/2022/10/21/624(alone</a> &lt;<a href=3D"https://lk=
ml.org/lkml/2022/10/21/624(alone" rel=3D"noreferrer" target=3D"_blank">http=
s://lkml.org/lkml/2022/10/21/624(alone</a>&gt;?&gt;) would provide the infr=
astructure for STATX_CHANGE_COOKIE (introduced in 3/8)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0and have that referenced p=
atch applied which isn&#39;t upstreamed so far, either.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0For now this two-liner see=
med simpler and resolves the issue. I understand the concern, though...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Stef=
an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; -Mikko<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Signed-off-by: S=
tefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank"=
>stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.c=
om" target=3D"_blank">stefanb@linux.ibm.com</a>&gt; &lt;mailto:<a href=3D"m=
ailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a> &l=
t;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb=
@linux.ibm.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0...I=
ncrement-iversion-upon-file-changes.patch | 42 +++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0.../=
recipes-kernel/linux/linux_ima.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A02 fi=
les changed, 43 insertions(+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0crea=
te mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment=
-iversion-upon-file-changes.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; diff --git a/met=
a-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-fil=
e-changes.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increm=
ent-iversion-upon-file-changes.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; new file mode 10=
0644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; index 0000000..d=
2b5c28<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --- /dev/null<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +++ b/meta-integ=
rity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-chang=
es.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; @@ -0,0 +1,42 @@=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +From e9ed62e8d1=
d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 2001<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +From: Stefan Be=
rger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb=
@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" targ=
et=3D"_blank">stefanb@linux.ibm.com</a>&gt; &lt;mailto:<a href=3D"mailto:st=
efanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a> &lt;mailto=
:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.i=
bm.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Date: Thu, 6 Ap=
r 2023 11:27:29 -0400<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Subject: [PATCH=
] ovl: Increment iversion upon file changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +This is a tempo=
rary patch for kernels that do not implement<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +STATX_CHANGE_CO=
OKIE (&lt;=3D 6.2). The successor patch will be this one:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<a href=3D"http=
s://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389=
bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"noreferre=
r" target=3D"_blank">https://lore.kernel.org/linux-integrity/20230418-engst=
e-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948ad=
d2ff459</a> &lt;<a href=3D"https://lore.kernel.org/linux-integrity/20230418=
-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e319169=
3948add2ff459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org=
/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3b=
f84296fe9e6499abb6e3191693948add2ff459</a>&gt; &lt;<a href=3D"https://lore.=
kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brau=
ner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"noreferrer" target=
=3D"_blank">https://lore.kernel.org/linux-integrity/20230418-engste-gastwir=
tschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459</=
a> &lt;<a href=3D"https://lore.kernel.org/linux-integrity/20230418-engste-g=
astwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2f=
f459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/linux-in=
tegrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9=
e6499abb6e3191693948add2ff459</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Increment the l=
ower inode&#39;s iversion for IMA to be able to recognize<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +changes to the =
file.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Signed-off-by: =
Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank=
">stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.=
com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt; &lt;mailto:<a href=3D"=
mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a> &=
lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefan=
b@linux.ibm.com</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + fs/overlayfs/f=
ile.c | 3 +++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + 1 file changed=
, 3 insertions(+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +diff --git a/fs=
/overlayfs/file.c b/fs/overlayfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +index 6011f9554=
36b..1dfe5e7bfe1c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +--- a/fs/overla=
yfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++++ b/fs/overla=
yfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +@@ -13,6 +13,7 =
@@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;l=
inux/security.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;l=
inux/mm.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;l=
inux/fs.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++#include &lt;l=
inux/iversion.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &quot=
;overlayfs.h&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + struct ovl_aio=
_req {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +@@ -408,6 +409,=
8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *ite=
r)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret !=3D -EIOCBQUEUED)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ovl_aio_cleanup_han=
dler(aio_req);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 }=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++=C2=A0 =C2=A0i=
f (ret &gt; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0inode_maybe_inc_iversion(inode, false);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 r=
evert_creds(old_cred);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + out_fdput:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +2.34.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; diff --git a/met=
a-integrity/recipes-kernel/linux/linux_ima.inc b/meta-integrity/recipes-ker=
nel/linux/linux_ima.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; index 0b6f530..9=
d48e5c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --- a/meta-integ=
rity/recipes-kernel/linux/linux_ima.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +++ b/meta-integ=
rity/recipes-kernel/linux/linux_ima.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; @@ -2,6 +2,7 @@ =
FILESEXTRAPATHS:append :=3D &quot;${THISDIR}/linux:&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0SRC_=
URI +=3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;ima&#39;, &#=
39;file://ima.scc&#39;, &#39;&#39;, d)} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 f=
ile://0001-ovl-Increment-iversion-upon-file-changes.patch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0&quo=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0do_c=
onfigure() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; 2.34.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Jos=C3=A9 Quaresma<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Jos=C3=A9 Quaresma<br>
&gt; <br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#59934): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59934" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/59934</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98557297=
/1792208" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/98557297/1792208</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stef=
anb@linux.ibm.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000a3d4da05fb46b613--

