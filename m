Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C20C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 15:06:13 +0000 (UTC)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
 by mx.groups.io with SMTP id smtpd.web10.35214.1683644764053456264
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 08:06:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=c1iW6KwK;
 spf=pass (domain: gmail.com, ip: 209.85.217.51, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-43612ffa82fso263554137.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 08:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683644763; x=1686236763;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WNpifmrf8/iwWEGOlk0eP+8DtaakYc3qFU5S20w7w40=;
        b=c1iW6KwKqvqTULXQBjaPZAu7QU/9x6ctnghgmwctpTJnPCo0NLeMp1S05wPgzdksNY
         Oru+Yd2K3VGggGwHquXhPVf0YWHBSc2MR7HLONxfBsdrEoZqFqTGnyXarpWai+ZXPfNv
         z+vGsQnuMFNJVqMNmMfddr11khKLQskGi8HaApWEhXjH21ct5asK9lNNF04Enw+JOD2E
         DqM8hm0aUb3UPeW1eRdVoi+ZHtsZGYFVuSRiwplSjmNFpKeOyXvwGb/1pD/ZBop3aOMb
         k+l+BIlHN2a1S8tHc5jHG76y8OngkokH23WUhggu+3RAm99H53wMw8feDFnfiI5oUOrz
         Acnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683644763; x=1686236763;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WNpifmrf8/iwWEGOlk0eP+8DtaakYc3qFU5S20w7w40=;
        b=RQmzNcIB7PZHrPO72tgrDA/r08GprCOG+DGQINCu6uT3LN1ggVObpGNZczjmE3/3y0
         3CWCmF2PC7fzx03bfeFn9xV2gKKH6DdWNUsVxexrT6/2s56buWqHqT8zoKHziNcgxueA
         gE5yewZeXaNPTY0GEmDjRQALqXB4Dq+HK0WsM6uW8XV2M4XJ/tk5lo9kAiINNzvLrsYO
         XXJzFhsXkiQ0+DRxfR1ZVC5ty1Zk1jhoIQu2vp+pp1r3hGkXAYCqbYn9GdhgdUZLwi4l
         vwMLQlwbSMPmsqGPlIzQjDj34pvoMovd+c5+OJVIh5NJ9+CTJL4VMlRiPLQLlIBVvUQ2
         M6xg==
X-Gm-Message-State: AC+VfDz7PsID6vIyBItlqh9RtEhugxz84bP0+Kkyyt4BolJRSzb+Mgvg
	KqJzrhQym1VuSamhQLN24RAMyO48HBWo9W4z97g=
X-Google-Smtp-Source: ACHHUZ5IMdDKmu9BvdpqiuRTd4Ss6GNXH0xvlm9yLUidvHhNDA03Je4Qpfp/3jrDruUKm6Dkth3UDO4HzbTm/7HxUZQ=
X-Received: by 2002:a05:6102:7b6:b0:434:87b4:d24b with SMTP id
 x22-20020a05610207b600b0043487b4d24bmr4048976vsg.33.1683644762946; Tue, 09
 May 2023 08:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <20230428122316.521800-1-stefanb@linux.ibm.com>
 <20230428122316.521800-8-stefanb@linux.ibm.com> <ZEvAl09z9fluq3Cr@nuoska>
 <0d7cf75b-cd5c-18a7-652c-aff4505e074d@linux.ibm.com> <175D814EC55EF6C3.26836@lists.yoctoproject.org>
In-Reply-To: <175D814EC55EF6C3.26836@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 9 May 2023 16:05:52 +0100
Message-ID: <CANPvuRmoBD=B3sRB1VJj4O_c8XpK=vosAjPC5zMMVbdKRVkGrw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 7/8] linux: overlayfs: Add kernel
 patch resolving a file change notification issue
To: quaresma.jose@gmail.com
Cc: Stefan Berger <stefanb@linux.ibm.com>, Mikko Rapeli <mikko.rapeli@linaro.org>, 
	yocto@lists.yoctoproject.org, akuster808@gmail.com
Content-Type: multipart/alternative; boundary="00000000000005ff3c05fb44185a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 15:06:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59929

--00000000000005ff3c05fb44185a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

And it fails in other recipes like linux-firmware.
Because bitbake also tries to apply the patch to linux-firmware because it
uses the recipes-kernel/linux/linux-%.bbappend to check when the
integrity is enabled.

Jose

Jose Quaresma via lists.yoctoproject.org <quaresma.jose=3D
gmail.com@lists.yoctoproject.org> escreveu no dia ter=C3=A7a, 9/05/2023 =C3=
=A0(s)
15:53:

> Hi Stefan,
>
> Having this patch applied unconditionally to all kernels doesn't work and
> the patch fails in many downstream kernels.
> I suggest reverting this one if no other solutions come up.
>
> Jose
>
> Stefan Berger <stefanb@linux.ibm.com> escreveu no dia sexta, 28/04/2023
> =C3=A0(s) 13:55:
>
>>
>>
>> On 4/28/23 08:48, Mikko Rapeli wrote:
>> > Hi,
>> >
>> > On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:
>> >> Add a temporary patch that resolves a file change notification issue
>> >> with overlayfs where IMA did not become aware of the file changes
>> >> since the 'lower' inode's i_version had not changed. The issue will b=
e
>> >> resolved in later kernels with the following patch that builds on
>> >> newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc1:
>> >>
>> >>
>> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-6=
01fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
>> >
>> > Would be nice to have Upstream-Status for each patch. I guess status
>> > would be Backport here.
>>
>> It's quite possible that this series here
>> https://lkml.org/lkml/2022/10/21/624
>> (alone? <https://lkml.org/lkml/2022/10/21/624(alone?>) would provide the
>> infrastructure for STATX_CHANGE_COOKIE (introduced in 3/8)
>> and have that referenced patch applied which isn't upstreamed so far,
>> either.
>>
>> For now this two-liner seemed simpler and resolves the issue. I
>> understand the concern, though...
>>
>>       Stefan
>>
>> >
>> > Cheers,
>> >
>> > -Mikko
>> >
>> >> Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> >> ---
>> >>   ...Increment-iversion-upon-file-changes.patch | 42
>> +++++++++++++++++++
>> >>   .../recipes-kernel/linux/linux_ima.inc        |  1 +
>> >>   2 files changed, 43 insertions(+)
>> >>   create mode 100644
>> meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-up=
on-file-changes.patch
>> >>
>> >> diff --git
>> a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-=
upon-file-changes.patch
>> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-=
upon-file-changes.patch
>> >> new file mode 100644
>> >> index 0000000..d2b5c28
>> >> --- /dev/null
>> >> +++
>> b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment-iversion-=
upon-file-changes.patch
>> >> @@ -0,0 +1,42 @@
>> >> +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00 20=
01
>> >> +From: Stefan Berger <stefanb@linux.ibm.com>
>> >> +Date: Thu, 6 Apr 2023 11:27:29 -0400
>> >> +Subject: [PATCH] ovl: Increment iversion upon file changes
>> >> +
>> >> +This is a temporary patch for kernels that do not implement
>> >> +STATX_CHANGE_COOKIE (<=3D 6.2). The successor patch will be this one=
:
>> >> +
>> >> +
>> https://lore.kernel.org/linux-integrity/20230418-engste-gastwirtschaft-6=
01fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add2ff459
>> >> +
>> >> +Increment the lower inode's iversion for IMA to be able to recognize
>> >> +changes to the file.
>> >> +
>> >> +Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> >> +---
>> >> + fs/overlayfs/file.c | 3 +++
>> >> + 1 file changed, 3 insertions(+)
>> >> +
>> >> +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
>> >> +index 6011f955436b..1dfe5e7bfe1c 100644
>> >> +--- a/fs/overlayfs/file.c
>> >> ++++ b/fs/overlayfs/file.c
>> >> +@@ -13,6 +13,7 @@
>> >> + #include <linux/security.h>
>> >> + #include <linux/mm.h>
>> >> + #include <linux/fs.h>
>> >> ++#include <linux/iversion.h>
>> >> + #include "overlayfs.h"
>> >> +
>> >> + struct ovl_aio_req {
>> >> +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *iocb=
,
>> struct iov_iter *iter)
>> >> +            if (ret !=3D -EIOCBQUEUED)
>> >> +                    ovl_aio_cleanup_handler(aio_req);
>> >> +    }
>> >> ++   if (ret > 0)
>> >> ++           inode_maybe_inc_iversion(inode, false);
>> >> + out:
>> >> +    revert_creds(old_cred);
>> >> + out_fdput:
>> >> +--
>> >> +2.34.1
>> >> +
>> >> diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> >> index 0b6f530..9d48e5c 100644
>> >> --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> >> +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc
>> >> @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D "${THISDIR}/linux:"
>> >>
>> >>   SRC_URI +=3D " \
>> >>       ${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'file://ima.scc'=
,
>> '', d)} \
>> >> +    file://0001-ovl-Increment-iversion-upon-file-changes.patch \
>> >>   "
>> >>
>> >>   do_configure() {
>> >> --
>> >> 2.34.1
>> >>
>> >
>> >>
>> >>
>> >>
>> >
>>
>>
>>
>>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59928):
> https://lists.yoctoproject.org/g/yocto/message/59928
> Mute This Topic: https://lists.yoctoproject.org/mt/98557297/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000005ff3c05fb44185a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>And it fails in other=C2=A0recipes like=C2=A0linux-fi=
rmware.</div><div>Because bitbake also tries to apply=C2=A0the patch=C2=A0t=
o linux-firmware because it uses the recipes-kernel/linux/linux-%.bbappend =
to check when the integrity=C2=A0is enabled.<br><br></div><div>Jose<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Jose Quaresma via <a href=3D"http://lists.yoctoproject.org">lists.yoctopr=
oject.org</a> &lt;quaresma.jose=3D<a href=3D"mailto:gmail.com@lists.yoctopr=
oject.org">gmail.com@lists.yoctoproject.org</a>&gt; escreveu no dia ter=C3=
=A7a, 9/05/2023 =C3=A0(s) 15:53:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr"><div>Hi Stefan,</div><div><br></div><div>=
Having this patch applied=C2=A0unconditionally=C2=A0to all kernels doesn&#3=
9;t work and the patch fails in many downstream=C2=A0kernels.</div><div>I s=
uggest=C2=A0reverting this one if no other solutions come up.</div><div><br=
></div>Jose<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" target=
=3D"_blank">stefanb@linux.ibm.com</a>&gt; escreveu no dia sexta, 28/04/2023=
 =C3=A0(s) 13:55:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><br>
<br>
On 4/28/23 08:48, Mikko Rapeli wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; On Fri, Apr 28, 2023 at 08:23:15AM -0400, Stefan Berger wrote:<br>
&gt;&gt; Add a temporary patch that resolves a file change notification iss=
ue<br>
&gt;&gt; with overlayfs where IMA did not become aware of the file changes<=
br>
&gt;&gt; since the &#39;lower&#39; inode&#39;s i_version had not changed. T=
he issue will be<br>
&gt;&gt; resolved in later kernels with the following patch that builds on<=
br>
&gt;&gt; newly addd feature (support for STATX_CHANGE_COOKIE) in v6.3-rc1:<=
br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://lore.kernel.org/linux-integrity/20230418-engste=
-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948add=
2ff459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/linux-=
integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296f=
e9e6499abb6e3191693948add2ff459</a><br>
&gt; <br>
&gt; Would be nice to have Upstream-Status for each patch. I guess status<b=
r>
&gt; would be Backport here.<br>
<br>
It&#39;s quite possible that this series here <a href=3D"https://lkml.org/l=
kml/2022/10/21/624(alone?" rel=3D"noreferrer" target=3D"_blank">https://lkm=
l.org/lkml/2022/10/21/624<br>
(alone?</a>) would provide the infrastructure for STATX_CHANGE_COOKIE (intr=
oduced in 3/8)<br>
and have that referenced patch applied which isn&#39;t upstreamed so far, e=
ither.<br>
<br>
For now this two-liner seemed simpler and resolves the issue. I understand =
the concern, though...<br>
<br>
=C2=A0 =C2=A0 =C2=A0 Stefan<br>
<br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; -Mikko<br>
&gt; <br>
&gt;&gt; Signed-off-by: Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.i=
bm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 =C2=A0...Increment-iversion-upon-file-changes.patch | 42 +++=
++++++++++++++++<br>
&gt;&gt;=C2=A0 =C2=A0.../recipes-kernel/linux/linux_ima.inc=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 1 +<br>
&gt;&gt;=C2=A0 =C2=A02 files changed, 43 insertions(+)<br>
&gt;&gt;=C2=A0 =C2=A0create mode 100644 meta-integrity/recipes-kernel/linux=
/linux/0001-ovl-Increment-iversion-upon-file-changes.patch<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ovl-In=
crement-iversion-upon-file-changes.patch b/meta-integrity/recipes-kernel/li=
nux/linux/0001-ovl-Increment-iversion-upon-file-changes.patch<br>
&gt;&gt; new file mode 100644<br>
&gt;&gt; index 0000000..d2b5c28<br>
&gt;&gt; --- /dev/null<br>
&gt;&gt; +++ b/meta-integrity/recipes-kernel/linux/linux/0001-ovl-Increment=
-iversion-upon-file-changes.patch<br>
&gt;&gt; @@ -0,0 +1,42 @@<br>
&gt;&gt; +From e9ed62e8d1d3eee7ffe862d9812c5320d3b9bd88 Mon Sep 17 00:00:00=
 2001<br>
&gt;&gt; +From: Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.ibm.com" =
target=3D"_blank">stefanb@linux.ibm.com</a>&gt;<br>
&gt;&gt; +Date: Thu, 6 Apr 2023 11:27:29 -0400<br>
&gt;&gt; +Subject: [PATCH] ovl: Increment iversion upon file changes<br>
&gt;&gt; +<br>
&gt;&gt; +This is a temporary patch for kernels that do not implement<br>
&gt;&gt; +STATX_CHANGE_COOKIE (&lt;=3D 6.2). The successor patch will be th=
is one:<br>
&gt;&gt; +<br>
&gt;&gt; +<a href=3D"https://lore.kernel.org/linux-integrity/20230418-engst=
e-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296fe9e6499abb6e3191693948ad=
d2ff459" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.org/linux=
-integrity/20230418-engste-gastwirtschaft-601fb389bba5@brauner/T/#m3bf84296=
fe9e6499abb6e3191693948add2ff459</a><br>
&gt;&gt; +<br>
&gt;&gt; +Increment the lower inode&#39;s iversion for IMA to be able to re=
cognize<br>
&gt;&gt; +changes to the file.<br>
&gt;&gt; +<br>
&gt;&gt; +Signed-off-by: Stefan Berger &lt;<a href=3D"mailto:stefanb@linux.=
ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;<br>
&gt;&gt; +---<br>
&gt;&gt; + fs/overlayfs/file.c | 3 +++<br>
&gt;&gt; + 1 file changed, 3 insertions(+)<br>
&gt;&gt; +<br>
&gt;&gt; +diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c<br>
&gt;&gt; +index 6011f955436b..1dfe5e7bfe1c 100644<br>
&gt;&gt; +--- a/fs/overlayfs/file.c<br>
&gt;&gt; ++++ b/fs/overlayfs/file.c<br>
&gt;&gt; +@@ -13,6 +13,7 @@<br>
&gt;&gt; + #include &lt;linux/security.h&gt;<br>
&gt;&gt; + #include &lt;linux/mm.h&gt;<br>
&gt;&gt; + #include &lt;linux/fs.h&gt;<br>
&gt;&gt; ++#include &lt;linux/iversion.h&gt;<br>
&gt;&gt; + #include &quot;overlayfs.h&quot;<br>
&gt;&gt; +<br>
&gt;&gt; + struct ovl_aio_req {<br>
&gt;&gt; +@@ -408,6 +409,8 @@ static ssize_t ovl_write_iter(struct kiocb *i=
ocb, struct iov_iter *iter)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret !=3D -EIOCBQUEU=
ED)<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ovl_aio_cleanup_handler(aio_req);<br>
&gt;&gt; +=C2=A0 =C2=A0 }<br>
&gt;&gt; ++=C2=A0 =C2=A0if (ret &gt; 0)<br>
&gt;&gt; ++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inode_maybe_inc_iversio=
n(inode, false);<br>
&gt;&gt; + out:<br>
&gt;&gt; +=C2=A0 =C2=A0 revert_creds(old_cred);<br>
&gt;&gt; + out_fdput:<br>
&gt;&gt; +--<br>
&gt;&gt; +2.34.1<br>
&gt;&gt; +<br>
&gt;&gt; diff --git a/meta-integrity/recipes-kernel/linux/linux_ima.inc b/m=
eta-integrity/recipes-kernel/linux/linux_ima.inc<br>
&gt;&gt; index 0b6f530..9d48e5c 100644<br>
&gt;&gt; --- a/meta-integrity/recipes-kernel/linux/linux_ima.inc<br>
&gt;&gt; +++ b/meta-integrity/recipes-kernel/linux/linux_ima.inc<br>
&gt;&gt; @@ -2,6 +2,7 @@ FILESEXTRAPATHS:append :=3D &quot;${THISDIR}/linux=
:&quot;<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0SRC_URI +=3D &quot; \<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&#39;DISTRO_FEATURE=
S&#39;, &#39;ima&#39;, &#39;file://ima.scc&#39;, &#39;&#39;, d)} \<br>
&gt;&gt; +=C2=A0 =C2=A0 file://0001-ovl-Increment-iversion-upon-file-change=
s.patch \<br>
&gt;&gt;=C2=A0 =C2=A0&quot;<br>
&gt;&gt;=C2=A0 =C2=A0<br>
&gt;&gt;=C2=A0 =C2=A0do_configure() {<br>
&gt;&gt; -- <br>
&gt;&gt; 2.34.1<br>
&gt;&gt;<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
&gt; <br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span>-- </span><br><di=
v dir=3D"ltr"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</di=
v></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59928): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59928" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59928</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98557297/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98557297/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--00000000000005ff3c05fb44185a--

