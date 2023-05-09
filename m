Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC851C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 17:05:53 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web11.38804.1683651943536440441
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 10:05:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TW6qnzUX;
 spf=pass (domain: gmail.com, ip: 209.85.222.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-77cfcf7cfbaso3813714241.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 10:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683651942; x=1686243942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rU4mahPq+dbsbl4OFvnvsVK1ENzsGifa9x5xpO+ag1I=;
        b=TW6qnzUXNvnIT+rX/tID8A+ZhUDexATNCmCwlYSPU8QY7eviLB5YTtuxRvsFLd2Kf3
         CXIkO9qoadk2rYPEyFAPgFGCRAQcd1jlt6fAfpFnZ5ftaimEJwABqks5lMYGFR5VPr7n
         gtEYId5MFT+yDC9Q5EBiSFHMsce6v9Js1sNY/COHf8ZnfIDdTzYVl6wz6N2DDFl0EZfY
         w7q9fSdyrwb8Z8o8IVPlkp4oSsIv0RcHUyuBK9uVO5i/btrEmuxIkMl9xEPpqQj9IvXc
         uLQY/D4ltfnt8HBzcySEY6rcq1ztTXelhSfD+VM+XogC/oZyjj4S4OQCNi7bSAiUxPwP
         Eb/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683651942; x=1686243942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rU4mahPq+dbsbl4OFvnvsVK1ENzsGifa9x5xpO+ag1I=;
        b=PdIhKjZmTFNmUSUM5xA+1b2R6GmCthUOAbvEaOYEbKyhgDeGMs1q7TdsMY0RPOdGqC
         EQoKlRMKSgSbALxsMYxJG9S+9eHqSGYpD+9XgUZkKTM9MDcNf9Ht/X/Q3uSPzsAbuPPT
         lkfL/eAXE9N+DDePbM4mROgL/L9rgdmydPU2W/hB7lKfTnV2cyMPv5URguKFDjqbG1ai
         QaaNsAe34tXw0JhiopMHfZdmq0/HEABi9Hh3XPOPOa1bHZD+404/l8b5Gqljjt+rHqnH
         Jv5x1aHOPCzN5BPQWgETPMdx2aK+95fNfGilK6WBCkG5W4wwnck6ljY/v0T7oHI9Aea8
         7XYA==
X-Gm-Message-State: AC+VfDxfSOTUsheq8jX/D56jKx3XdZgZJsJkdJ0ALtjuUoDHS6DzkfWN
	c6sfTEX3PghIrffEWlPx64SL26BYZbqDr8fqd6Kpr/yX
X-Google-Smtp-Source: ACHHUZ7akV4iHZpiMlpQ7JZbt6kDECJYacVw+IBfa0a1oTgoM/KCBJrS4ZHWk5rIqJFS4huxlKfyxKlEfoUN4MVDIhE=
X-Received: by 2002:a67:f4d8:0:b0:434:8e5e:f1de with SMTP id
 s24-20020a67f4d8000000b004348e5ef1demr4022103vsn.32.1683651942506; Tue, 09
 May 2023 10:05:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
 <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com> <CANPvuR=3YHfc6Dz26ZVF2bo5AZ0jmF-T1raSwiS-nd55bRza+A@mail.gmail.com>
 <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com>
In-Reply-To: <2aa5daa3-8a0e-4e55-469d-9e4576995328@linux.ibm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 9 May 2023 18:05:31 +0100
Message-ID: <CANPvuRmSbxuVR=UwNoZwJS5xAJfV9-=KysXCc0qjxpTHj0Kw+g@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
To: Stefan Berger <stefanb@linux.ibm.com>
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org, 
	akuster808@gmail.com
Content-Type: multipart/alternative; boundary="000000000000f5636a05fb45c33c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 17:05:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59934

--000000000000f5636a05fb45c33c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Stefan Berger <stefanb@linux.ibm.com> escreveu no dia ter=C3=A7a, 9/05/2023=
 =C3=A0(s)
17:21:

>
>
> On 5/9/23 10:53, Jose Quaresma wrote:
> > Hi Stefan,
> >
> > Having this patch applied unconditionally to all kernels doesn't work
> and the patch fails in many downstream kernels.
> > I suggest reverting this one if no other solutions come up.
>
> Then let me drop this one. I just posted v2 of this series and can repost
> in v3 with this patch dropped and possibly
> only have it applied in the OpenBMC project. I suppose my conclusion from
> OpenBMC, which currently works with a 6.1.15
> kernel, that all other Yocto projects also now use a >=3D 6.1.15 kernel, =
was
> wrong?
>

yup! is also my opinion.
but after reverting this patch some other new issues comes up because the
ima side effects changes
so linux-firmware dont build any more.

Jose


>      Stefan
>
> >
> > Jose
> >
> > Stefan Berger <stefanb@linux.ibm.com <mailto:stefanb@linux.ibm.com>>
> escreveu no dia sexta, 28/04/2023 =C3=A0(s) 13:55:
> >
> >
> >
> >     On 4/28/23 08:48, Mikko Rapeli wrote:
> >      > Hi,
> >      >
> >      > On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:
> >      >> Add a temporary patch that resolves a file change notification
> issue
> >      >> with overlayfs where IMA did not become aware of the file chang=
es
> >      >> since the 'lower' inode's i_version had not changed. The issue
> will be
> >      >> resolved in later kernels with the following patch that builds =
on
> >      >> newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc=
1:
> >      >>
> >      >>
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> >
> >      >
> >      > Would be nice to have Upstream-Status for each patch. I guess
> status
> >      > would be Backport here.
> >
> >     It's quite possible that this series here
> https://lkml.org/lkml/2022/10/21/624
> >     (alone? <https://lkml.org/lkml/2022/10/21/624(alone?>) would
> provide the infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
> >     and have that referenced patch applied which isn't upstreamed so
> far, either.
> >
> >     For now this two-liner seemed simpler and resolves the issue. I
> understand the concern, though...
> >
> >            Stefan
> >
> >      >
> >      > Cheers,
> >      >
> >      > -Mikko
> >      >
> >      >> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>
> >      >> ---
> >      >>   ...Increment-iversion-upon-file-changes.patch | 42
> +++++++++++++++++++
> >      >>   .../recipes-kernel/linux/linux_ima.inc        |  1 +
> >      >>   2 files changed, 43 insertions(+)
> >      >>   create mode 100644
> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upo=
n-file-changes.patch
> >      >>
> >      >> diff --git
> a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> >      >> new file mode 100644
> >      >> index 0000000..d2b5c28
> >      >> --- /dev/null
> >      >> +++
> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-u=
pon-file-changes.patch
> >      >> @@ -0,0 +1,42 @@
> >      >> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17
> 00:00:00 2001
> >      >> +From: Stefan Berger <stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>
> >      >> +Date: Thu, 6 Apr 2023 11:27:29 -0400
> >      >> +Subject: [PATCH] ovl: Increment iversion upon file changes
> >      >> +
> >      >> +This is a temporary patch for kernels that do not implement
> >      >> +STATX_CHANGE_COOKIE (<=3D 6.2). The successor patch will be th=
is
> one:
> >      >> +
> >      >> +
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> <
> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-60=
1fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
> >
> >      >> +
> >      >> +Increment the lower inode's iversion for IMA to be able to
> recognize
> >      >> +changes to the file.
> >      >> +
> >      >> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com <mailto:
> stefanb@linux.ibm.com>>
> >      >> +---
> >      >> + fs/overlayfs/file.c | 3 +++
> >      >> + 1 file changed, 3 insertions(+)
> >      >> +
> >      >> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
> >      >> +index 6011f955436b..1dfe5e7bfe1c 100644
> >      >> +--- a/fs/overlayfs/file.c
> >      >> ++++ b/fs/overlayfs/file.c
> >      >> +@@ -13,6 +13,7 @@
> >      >> + #include <linux/security.h>
> >      >> + #include <linux/mm.h>
> >      >> + #include <linux/fs.h>
> >      >> ++#include <linux/iversion.h>
> >      >> + #include "overlayfs.h"
> >      >> +
> >      >> + struct ovl_aio_req {
> >      >> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb
> *iocb, struct iov_iter *iter)
> >      >> +            if (ret !=3D -EIOCBQUEUED)
> >      >> +                    ovl_aio_cleanup_handler(aio_req);
> >      >> +    }
> >      >> ++   if (ret > 0)
> >      >> ++           inode_maybe_inc_iversion(inode, false);
> >      >> + out:
> >      >> +    revert_creds(old_cred);
> >      >> + out_fdput:
> >      >> +--
> >      >> +2.34.1
> >      >> +
> >      >> diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc
> b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >> index 0b6f530..9d48e5c 100644
> >      >> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
> >      >> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D "${THISDIR}/linux:"
> >      >>
> >      >>   SRC_URI +=3D " \
> >      >>       ${@bb.utils.contains('DISTRO_FEATURES', 'ima',
> 'file://ima.scc', '', d)} \
> >      >> +    file://0001-ovl-Increment-iversion-upon-file-changes.patch=
 \
> >      >>   "
> >      >>
> >      >>   do_configure() {
> >      >> --
> >      >> 2.34.1
> >      >>
> >      >
> >      >>
> >      >>
> >      >>
> >      >
> >
> >     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >     Links: You receive all messages sent to this group.
> >     View/Reply Online (#59807):
> https://lists.yoctoproject.org/g/yocto/message/59807 <
> https://lists.yoctoproject.org/g/yocto/message/59807>
> >     Mute This Topic: https://lists.yoctoproject.org/mt/98557297/5052612
> <https://lists.yoctoproject.org/mt/98557297/5052612>
> >     Group Owner: yocto+owner@lists.yoctoproject.org <mailto:
> yocto%2Bowner@lists.yoctoproject.org>
> >     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub <
> https://lists.yoctoproject.org/g/yocto/unsub> [quaresma.jose@gmail.com
> <mailto:quaresma.jose@gmail.com>]
> >     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
> >
> >
> > --
> > Best regards,
> >
> > Jos=C3=A9 Quaresma
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000f5636a05fb45c33c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Stefan Berger &lt;<a href=3D"mailto:s=
tefanb@linux.ibm.com">stefanb@linux.ibm.com</a>&gt; escreveu no dia ter=C3=
=A7a, 9/05/2023 =C3=A0(s) 17:21:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><br>
<br>
On 5/9/23 10:53, Jose Quaresma wrote:<br>
&gt; Hi Stefan, <br>
&gt; <br>
&gt; Having this patch applied=C2=A0unconditionally=C2=A0to all kernels doe=
sn&#39;t work and the patch fails in many downstream=C2=A0kernels.<br>
&gt; I suggest=C2=A0reverting this one if no other solutions come up.<br>
<br>
Then let me drop this one. I just posted v2 of this series and can repost i=
n v3 with this patch dropped and possibly<br>
only have it applied in the OpenBMC project. I suppose my conclusion from O=
penBMC, which currently works with a 6.1.15<br>
kernel, that all other Yocto projects also now use a &gt;=3D 6.1.15 kernel,=
 was wrong?<br></blockquote><div><br>yup! is also my opinion.<br>but after =
reverting this patch some other new issues comes up because the ima side ef=
fects changes</div><div>so linux-firmware dont build any more.</div><div><b=
r></div><div>Jose<br><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
=C2=A0 =C2=A0 =C2=A0Stefan<br>
<br>
&gt; <br>
&gt; Jose<br>
&gt; <br>
&gt; Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_=
blank">stefanb@linux.ibm.com</a> &lt;mailto:<a href=3D"mailto:stefanb@linux=
.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;&gt; escreveu no d=
ia sexta, 28/04/2023 =C3=A0(s) 13:55:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 4/28/23 08:48, Mikko Rapeli wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, Apr 28, 2023 at 08:23:15AM -0400, Ste=
fan Berger wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Add a temporary patch that resolves a fil=
e change notification issue<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; with overlayfs where IMA did not become a=
ware of the file changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; since the &#39;lower&#39; inode&#39;s i_v=
ersion had not changed. The issue will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; resolved in later kernels with the follow=
ing patch that builds on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; newly addd feature (support for STATX_CHA=
NGE_COOKIE) in v6.3-rc1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; <a href=3D"https://lore.kernel.org/linux-=
integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296f=
e9e6499abb6e3191693948add2ff459" rel=3D"noreferrer" target=3D"_blank">https=
://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389b=
ba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459</a> &lt;<a href=3D=
"https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601=
fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"nore=
ferrer" target=3D"_blank">https://lore.kernel.org/linux-integrity/20230418-=
engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693=
948add2ff459</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Would be nice to have Upstream-Status for eac=
h patch. I guess status<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; would be Backport here.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0It&#39;s quite possible that this series here <a hr=
ef=3D"https://lkml.org/lkml/2022/10/21/624" rel=3D"noreferrer" target=3D"_b=
lank">https://lkml.org/lkml/2022/10/21/624</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0(alone? &lt;<a href=3D"https://lkml.org/lkml/2022/1=
0/21/624(alone" rel=3D"noreferrer" target=3D"_blank">https://lkml.org/lkml/=
2022/10/21/624(alone</a>?&gt;) would provide the infrastructure for STATX_C=
HANGE_COOKIE (introduced in 3/8)<br>
&gt;=C2=A0 =C2=A0 =C2=A0and have that referenced patch applied which isn&#3=
9;t upstreamed so far, either.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0For now this two-liner seemed simpler and resolves =
the issue. I understand the concern, though...<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Stefan<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -Mikko<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; Signed-off-by: Stefan Berger &lt;<a href=
=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</=
a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">st=
efanb@linux.ibm.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0...Increment-iversion-upon-fi=
le-changes.patch | 42 +++++++++++++++++++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0.../recipes-kernel/linux/linu=
x_ima.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A02 files changed, 43 insertion=
s(+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0create mode 100644 meta-integ=
rity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-chang=
es.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; diff --git a/meta-integrity/recipes-kerne=
l/linux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch b/meta-in=
tegrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-upon-file-ch=
anges.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; new file mode 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; index 0000000..d2b5c28<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --- /dev/null<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +++ b/meta-integrity/recipes-kernel/linux=
/linux/0001-ovl-Increment-iversion-upon-file-changes.patch<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; @@ -0,0 +1,42 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +From e9ed62e8d1d3eee7ffe862d9812c5320d3b=
9bd88 Mon Sep 17 00:00:00 2001<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +From: Stefan Berger &lt;<a href=3D"mailt=
o:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a> &lt;ma=
ilto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@lin=
ux.ibm.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Date: Thu, 6 Apr 2023 11:27:29 -0400<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Subject: [PATCH] ovl: Increment iversion=
 upon file changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +This is a temporary patch for kernels th=
at do not implement<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +STATX_CHANGE_COOKIE (&lt;=3D 6.2). The s=
uccessor patch will be this one:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<a href=3D"https://lore.kernel.org/linux=
-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296=
fe9e6499abb6e3191693948add2ff459" rel=3D"noreferrer" target=3D"_blank">http=
s://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-601fb389=
bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459</a> &lt;<a href=
=3D"https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-=
601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459" rel=3D"n=
oreferrer" target=3D"_blank">https://lore.kernel.org/linux-integrity/202304=
18-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191=
693948add2ff459</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Increment the lower inode&#39;s iversion=
 for IMA to be able to recognize<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +changes to the file.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +Signed-off-by: Stefan Berger &lt;<a href=
=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</=
a> &lt;mailto:<a href=3D"mailto:stefanb@linux.ibm.com" target=3D"_blank">st=
efanb@linux.ibm.com</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +---<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + fs/overlayfs/file.c | 3 +++<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + 1 file changed, 3 insertions(+)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +diff --git a/fs/overlayfs/file.c b/fs/ov=
erlayfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +index 6011f955436b..1dfe5e7bfe1c 100644<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +--- a/fs/overlayfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++++ b/fs/overlayfs/file.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +@@ -13,6 +13,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;linux/security.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;linux/mm.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &lt;linux/fs.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++#include &lt;linux/iversion.h&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + #include &quot;overlayfs.h&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + struct ovl_aio_req {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +@@ -408,6 +409,8 @@ static ssize_t ovl_w=
rite_iter(struct kiocb *iocb, struct iov_iter *iter)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 if (ret !=3D -EIOCBQUEUED)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ovl_aio_cleanup_handler(aio_req);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++=C2=A0 =C2=A0if (ret &gt; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0inode_maybe_inc_iversion(inode, false);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + out:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 revert_creds(old_cred);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; + out_fdput:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +2.34.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; diff --git a/meta-integrity/recipes-kerne=
l/linux/linux_ima.inc b/meta-integrity/recipes-kernel/linux/linux_ima.inc<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; index 0b6f530..9d48e5c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --- a/meta-integrity/recipes-kernel/linux=
/linux_ima.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +++ b/meta-integrity/recipes-kernel/linux=
/linux_ima.inc<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=
=3D &quot;${THISDIR}/linux:&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0SRC_URI +=3D &quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.con=
tains(&#39;DISTRO_FEATURES&#39;, &#39;ima&#39;, &#39;file://ima.scc&#39;, &=
#39;&#39;, d)} \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; +=C2=A0 =C2=A0 file://0001-ovl-Increment-=
iversion-upon-file-changes.patch \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;=C2=A0 =C2=A0do_configure() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt; 2.34.1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;=C2=A0 =C2=A0 =C2=A0Links: You receive all messages sent to this group.=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0View/Reply Online (#59807): <a href=3D"https://list=
s.yoctoproject.org/g/yocto/message/59807" rel=3D"noreferrer" target=3D"_bla=
nk">https://lists.yoctoproject.org/g/yocto/message/59807</a> &lt;<a href=3D=
"https://lists.yoctoproject.org/g/yocto/message/59807" rel=3D"noreferrer" t=
arget=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/59807</a>&g=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Mute This Topic: <a href=3D"https://lists.yoctoproj=
ect.org/mt/98557297/5052612" rel=3D"noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/mt/98557297/5052612</a> &lt;<a href=3D"https://lists.=
yoctoproject.org/mt/98557297/5052612" rel=3D"noreferrer" target=3D"_blank">=
https://lists.yoctoproject.org/mt/98557297/5052612</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.=
yoctoproject.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a> =
&lt;mailto:<a href=3D"mailto:yocto%252Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto%2Bowner@lists.yoctoproject.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Unsubscribe: <a href=3D"https://lists.yoctoproject.=
org/g/yocto/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yocto=
project.org/g/yocto/unsub</a> &lt;<a href=3D"https://lists.yoctoproject.org=
/g/yocto/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/g/yocto/unsub</a>&gt; [<a href=3D"mailto:quaresma.jose@gmail.com" =
target=3D"_blank">quaresma.jose@gmail.com</a> &lt;mailto:<a href=3D"mailto:=
quaresma.jose@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt;]=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Best regards,<br>
&gt; <br>
&gt; Jos=C3=A9 Quaresma<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000f5636a05fb45c33c--

