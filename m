Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8FA8EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:55:07 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.13473.1687445697240495908
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:54:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Qo/f3D5N;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-3f9189228bcso47630425e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687445695; x=1690037695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o/FB52sx1EoK5/9mNLI5PlT80Xg4H/CsITQVVms/blA=;
        b=Qo/f3D5NtDj56l661FMeIni/oRryo7z/i685AWqsdew4bCDiV9X0ZwEuustti40Buh
         9mzCT/jox6dT8X1diYem2m4fFjJzLV57LitYAo6qNjqzBeajAl0YJHvEsQSMh9Riw/9P
         rXJGYgfZt0DJjNpa3DhJkKp6ZpvdRYR04iUpvJKPKZBY2Cx7yZviFr2kWVAZpyZh2MU2
         Crw0ru6YYHmb7+SBrDggTfBvSCfo4nYLQP4cfoQhSpbPsUjo1yAjLjOShVlnNkc6G0TJ
         N3UKvPAImJhuWjhS4CEdFMxdc8Hw/Z8Q8YloXIrPxl2ZY5jr7NcXVhgz/4Alm7WK9Oub
         1wag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687445695; x=1690037695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o/FB52sx1EoK5/9mNLI5PlT80Xg4H/CsITQVVms/blA=;
        b=ApVLP8ERRCTCD8e5cKOsn/2AA5qUGXLb0MKzfFWObtemAGVsYBCx7x1quvGSBcxMJD
         eCm5pN17XWhZKX+Sw3u5vfzNOTaqYLBuRNJxT4cO50QrlOq3S5qXDuag0EBhfwovv16S
         hfRhm1Tu+fWrJqdIA4RLkrPo+xznfcFG+Ds7qDhi4udPNiJ7NLTIf051v5N6jC+dJ6pC
         UvACiUrx2ZvCXD7UDMWRARDCrlPlK5UT7bY05p7VoDWsLdPTQdQCqjJQhLI+FvSbFzS5
         BEYujumtDYBRAsb08L2RMY6/JuqdhUanAxqaQH1EqbaHCT8K6+fYAFWzgGW3knR8JO9O
         sUxw==
X-Gm-Message-State: AC+VfDz49bvZ3D7amTFsSjTBPGgIJ3c0h5npUdFF0iYxc4h0woBx7Uo1
	5qtrcxiGzfszUlhnOZQoBu2dIBPcPsTIjTWJ+WA=
X-Google-Smtp-Source: ACHHUZ6W3PS4/1zeqqhSMfPQzFf2IjpNl1KmdYGhBwLSX44GUezUPpnhMjw10X+aeDRfms53DAvvrlt+3aE0IbR4mFw=
X-Received: by 2002:a05:600c:203:b0:3f9:b81f:280d with SMTP id
 3-20020a05600c020300b003f9b81f280dmr5566836wmi.16.1687445695396; Thu, 22 Jun
 2023 07:54:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230621104215.2137991-1-Martin.Jansa@gmail.com>
 <786e2b82-dea2-378d-e2d0-f4d1b747097d@gmail.com> <176AB0C1D2D3F08D.18647@lists.yoctoproject.org>
In-Reply-To: <176AB0C1D2D3F08D.18647@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 22 Jun 2023 16:54:34 +0200
Message-ID: <CA+chaQeNa8+3GM6hTJiPpHM4sqVKaWj1Tnpe9_SS9zRWsG4pww@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] *.patch: add Upstream-Status to
 all patches
To: Martin.Jansa@gmail.com
Cc: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004081eb05feb91188"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:55:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60403

--0000000000004081eb05feb91188
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've checked the master-next now and somehow I've missed some of the
Upstream-Status issues earlier, so I've sent 4 more changes based on
master-next.

Cheers,

On Wed, Jun 21, 2023 at 3:49=E2=80=AFPM Martin Jansa via lists.yoctoproject=
.org
<Martin.Jansa=3Dgmail.com@lists.yoctoproject.org> wrote:

> On Wed, Jun 21, 2023 at 3:42=E2=80=AFPM akuster808 <akuster808@gmail.com>=
 wrote:
>
>> Hello Martin,
>>
>
> Hello Armin,
>
> On 6/21/23 6:42 AM, Martin Jansa wrote:
>> > There is new patch-status QA check in oe-core:
>> >
>> https://git.openembedded.org/openembedded-core/commit/?id=3D76a685bfcf92=
7593eac67157762a53259089ea8a
>> >
>> > This is temporary work around just to hide _many_ warnings from
>> > optional patch-status (if you add it to WARN_QA).
>> >
>> > This just added
>> > Upstream-Status: Pending
>> > everywhere without actually investigating what's the proper status.
>> >
>> > This is just to hide current QA warnings and to catch new .patch files
>> being
>> > added without Upstream-Status, but the number of Pending patches is no=
w
>> terrible:
>> >
>> > 0 (0%)        meta-parsec
>> > N/A (0%)        meta-hardening
>> > 1 (100%)        meta-integrity
>> > 15 (68%)        meta-tpm
>> > 27 (61%)        meta-security
>> >
>> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
>>
>>
>> > ---
>> >   ...Do-not-get-generation-using-ioctl-when-evm_portable-.patch | 4 ++=
++
>> >   .../0001-create-tpm-key-support-well-known-key-option.patch   | 2 ++
>> >   .../files/0002-libtpm-support-env-TPM_SRK_PW.patch            | 2 ++
>> >   ...tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch | 2 ++
>> >   ...tpm-openssl-tpm-engine-change-variable-c-type-from-c.patch | 2 ++
>> >   .../recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch    | 2 ++
>> Those appear to be fine.
>> >   .../openscap/files/0002-openembedded-add-Poky-distro.patch    | 2 ++
>> The openscap patches are being dropped as they got accepted upstream. I
>> sent a patch last night to reflect that.
>>
>> I can drop this change.
>> >   recipes-perl/perl/files/libwhisker2.patch                     | 2 ++
>> >   recipes-scanners/clamav/files/test.patch                      | 2 ++
>> the "test.patch" isn't used anywhere so I can remove it later.
>> >   .../ecryptfs-utils/files/define_musl_sword_type.patch         | 2 ++
>> This one is missing other standard patch information. Looks like a bit
>> more cleanup is in order on my part.
>> >   recipes-security/isic/files/configure_fix.patch               | 2 ++
>> This patch contains "Inappropriate" to the Upstream-Status should
>> Inappropriate [reason]  not pending.
>> >   recipes-security/isic/files/isic-0.07-make.patch              | 2 ++
>> This patch contains "Backport" so the Upstream-Status should be Backport
>> not pending.
>> >   recipes-security/isic/files/isic-0.07-netinet.patch           | 2 ++
>> This patch contains "Backport" so the Upstream-Status should be Backport
>> not pending.
>>
>> I can take those last six as-is and send a follow up tweaking as needed
>> or you can send a V2. Your call.
>>
>
> I use only very small portion of meta-security (just selinux recipe), so
> if you can do the fix-up yourself my CI&I will be grateful.
>
> Regards,
>
> thanks,
>> Armin
>> >   13 files changed, 28 insertions(+)
>> >
>> > diff --git
>> a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-no=
t-get-generation-using-ioctl-when-evm_portable-.patch
>> b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-no=
t-get-generation-using-ioctl-when-evm_portable-.patch
>> > index 3624576..f0d8975 100644
>> > ---
>> a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-no=
t-get-generation-using-ioctl-when-evm_portable-.patch
>> > +++
>> b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-no=
t-get-generation-using-ioctl-when-evm_portable-.patch
>> > @@ -13,6 +13,8 @@ ioctl is not supported by the filesystem.
>> >
>> >   Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >    src/evmctl.c | 2 +-
>> >    1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > @@ -30,6 +32,8 @@ index 6d2bb67..c35a28c 100644
>> >                       int fd =3D open(file, 0);
>> >
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >   2.39.2
>> >
>> >
>> > diff --git
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-sup=
port-well-known-key-option.patch
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-sup=
port-well-known-key-option.patch
>> > index bed8b92..e6068af 100644
>> > ---
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-sup=
port-well-known-key-option.patch
>> > +++
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-key-sup=
port-well-known-key-option.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>> >   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>> >   Date:   Wed Jun 19 18:57:13 2013 +0800
>> > diff --git
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env=
-TPM_SRK_PW.patch
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env=
-TPM_SRK_PW.patch
>> > index 2caaaf0..74def4f 100644
>> > ---
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env=
-TPM_SRK_PW.patch
>> > +++
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-support-env=
-TPM_SRK_PW.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed
>> >   Author: Junxian.Xiao <Junxian.Xiao@windriver.com>
>> >   Date:   Wed Jun 19 18:57:13 2013 +0800
>> > diff --git
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-en=
gine-parse-an-encrypted-tpm-SRK-pa.patch
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-en=
gine-parse-an-encrypted-tpm-SRK-pa.patch
>> > index cc8772d..732961d 100644
>> > ---
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-en=
gine-parse-an-encrypted-tpm-SRK-pa.patch
>> > +++
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-en=
gine-parse-an-encrypted-tpm-SRK-pa.patch
>> > @@ -17,6 +17,8 @@ export TPM_SRK_ENC_PW=3Dxxxxxxxx
>> >
>> >   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >    e_tpm.c     | 157
>> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>> >    e_tpm.h     |   4 ++
>> >    e_tpm_err.c |   4 ++
>> > diff --git
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-en=
gine-change-variable-c-type-from-c.patch
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-en=
gine-change-variable-c-type-from-c.patch
>> > index 535472a..3cbfc3c 100644
>> > ---
>> a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-en=
gine-change-variable-c-type-from-c.patch
>> > +++
>> b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-en=
gine-change-variable-c-type-from-c.patch
>> > @@ -12,6 +12,8 @@ wrong case.
>> >
>> >   Signed-off-by: Meng Li <Meng.Li@windriver.com>
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >    create_tpm_key.c |    3 ++-
>> >    1 file changed, 2 insertions(+), 1 deletion(-)
>> >
>> > diff --git
>> a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>> b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>> > index 40150af..d427d67 100644
>> > --- a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>> > +++ b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   Index: git/include/tpm_tspi.h
>> >   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >   --- git.orig/include/tpm_tspi.h
>> > diff --git
>> a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.pa=
tch
>> b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.pa=
tch
>> > index 182d9ec..767b473 100644
>> > ---
>> a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.pa=
tch
>> > +++
>> b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-distro.pa=
tch
>> > @@ -5,6 +5,8 @@ Subject: [PATCH 2/2] openembedded: add Poky distro
>> >
>> >   Signed-off-by: Armin Kuster <akuster@mvista.com>
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >    cpe/openscap-cpe-dict.xml             |  4 ++++
>> >    cpe/openscap-cpe-oval.xml             | 14 ++++++++++++++
>> >    src/OVAL/probes/unix/runlevel_probe.c |  8 +++++++-
>> > diff --git a/recipes-perl/perl/files/libwhisker2.patch
>> b/recipes-perl/perl/files/libwhisker2.patch
>> > index c066366..4ea1ee5 100644
>> > --- a/recipes-perl/perl/files/libwhisker2.patch
>> > +++ b/recipes-perl/perl/files/libwhisker2.patch
>> > @@ -7,6 +7,8 @@ Subject: [PATCH] Mandir and perl install dir were
>> overwritten with faulty
>> >
>> >   Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
>> >   ---
>> > +Upstream-Status: Pending
>> > +
>> >    Makefile.pl |   12 +++++++-----
>> >    1 file changed, 7 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/recipes-scanners/clamav/files/test.patch
>> b/recipes-scanners/clamav/files/test.patch
>> > index a22b45d..8d94863 100644
>> > --- a/recipes-scanners/clamav/files/test.patch
>> > +++ b/recipes-scanners/clamav/files/test.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   Index: clamav-0.103.0/Makefile.am
>> >   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >   --- clamav-0.103.0.orig/Makefile.am
>> > diff --git
>> a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>> b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.patch
>> > index 3b29be0..01b7dd8 100644
>> > --- a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.pat=
ch
>> > +++ b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.pat=
ch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private.c
>> >   =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> >   --- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_private.c
>> > diff --git a/recipes-security/isic/files/configure_fix.patch
>> b/recipes-security/isic/files/configure_fix.patch
>> > index fc2a774..801fe0c 100644
>> > --- a/recipes-security/isic/files/configure_fix.patch
>> > +++ b/recipes-security/isic/files/configure_fix.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   isic: add with-libnet remove libnet test
>> >
>> >   Inappropriate - builds fine on non-oe systems. We need to exlude
>> > diff --git a/recipes-security/isic/files/isic-0.07-make.patch
>> b/recipes-security/isic/files/isic-0.07-make.patch
>> > index 9cffa8a..838c873 100644
>> > --- a/recipes-security/isic/files/isic-0.07-make.patch
>> > +++ b/recipes-security/isic/files/isic-0.07-make.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   isic: Fixup makefile to support destination
>> >
>> >   Backport:
>> > diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch
>> b/recipes-security/isic/files/isic-0.07-netinet.patch
>> > index c4ea74e..4b03880 100644
>> > --- a/recipes-security/isic/files/isic-0.07-netinet.patch
>> > +++ b/recipes-security/isic/files/isic-0.07-netinet.patch
>> > @@ -1,3 +1,5 @@
>> > +Upstream-Status: Pending
>> > +
>> >   isic: add missing header file
>> >
>> >   Backport:
>> >
>> >
>> >
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60376):
> https://lists.yoctoproject.org/g/yocto/message/60376
> Mute This Topic: https://lists.yoctoproject.org/mt/99673661/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000004081eb05feb91188
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve checked the master-next now and somehow I&#39;ve =
missed some of the Upstream-Status issues earlier, so I&#39;ve sent 4 more =
changes based on master-next.<div><br></div><div>Cheers,</div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 2=
1, 2023 at 3:49=E2=80=AFPM Martin Jansa via <a href=3D"http://lists.yoctopr=
oject.org">lists.yoctoproject.org</a> &lt;Martin.Jansa=3D<a href=3D"mailto:=
gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Wed, Jun 21, 2023 at 3:42=E2=80=AFPM akuster80=
8 &lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@=
gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hello Martin,<br></blockquote><div><br>=
</div><div>Hello Armin,</div><div><br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
On 6/21/23 6:42 AM, Martin Jansa wrote:<br>
&gt; There is new patch-status QA check in oe-core:<br>
&gt; <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=
=3D76a685bfcf927593eac67157762a53259089ea8a" rel=3D"noreferrer" target=3D"_=
blank">https://git.openembedded.org/openembedded-core/commit/?id=3D76a685bf=
cf927593eac67157762a53259089ea8a</a><br>
&gt;<br>
&gt; This is temporary work around just to hide _many_ warnings from<br>
&gt; optional patch-status (if you add it to WARN_QA).<br>
&gt;<br>
&gt; This just added<br>
&gt; Upstream-Status: Pending<br>
&gt; everywhere without actually investigating what&#39;s the proper status=
.<br>
&gt;<br>
&gt; This is just to hide current QA warnings and to catch new .patch files=
 being<br>
&gt; added without Upstream-Status, but the number of Pending patches is no=
w terrible:<br>
&gt;<br>
&gt; 0 (0%)=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-parsec<br>
&gt; N/A (0%)=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-hardening<br>
&gt; 1 (100%)=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-integrity<br>
&gt; 15 (68%)=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-tpm<br>
&gt; 27 (61%)=C2=A0 =C2=A0 =C2=A0 =C2=A0 meta-security<br>
&gt;<br>
&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.c=
om" target=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
<br>
<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0...Do-not-get-generation-using-ioctl-when-evm_portable-.pa=
tch | 4 ++++<br>
&gt;=C2=A0 =C2=A0.../0001-create-tpm-key-support-well-known-key-option.patc=
h=C2=A0 =C2=A0| 2 ++<br>
&gt;=C2=A0 =C2=A0.../files/0002-libtpm-support-env-TPM_SRK_PW.patch=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
&gt;=C2=A0 =C2=A0...tpm-openssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.pa=
tch | 2 ++<br>
&gt;=C2=A0 =C2=A0...tpm-openssl-tpm-engine-change-variable-c-type-from-c.pa=
tch | 2 ++<br>
&gt;=C2=A0 =C2=A0.../recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch=
=C2=A0 =C2=A0 | 2 ++<br>
Those appear to be fine.<br>
&gt;=C2=A0 =C2=A0.../openscap/files/0002-openembedded-add-Poky-distro.patch=
=C2=A0 =C2=A0 | 2 ++<br>
The openscap patches are being dropped as they got accepted upstream. I <br=
>
sent a patch last night to reflect that.<br>
<br>
I can drop this change.<br>
&gt;=C2=A0 =C2=A0recipes-perl/perl/files/libwhisker2.patch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
&gt;=C2=A0 =C2=A0recipes-scanners/clamav/files/test.patch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
the &quot;test.patch&quot; isn&#39;t used anywhere so I can remove it later=
.<br>
&gt;=C2=A0 =C2=A0.../ecryptfs-utils/files/define_musl_sword_type.patch=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
This one is missing other standard patch information. Looks like a bit <br>
more cleanup is in order on my part.<br>
&gt;=C2=A0 =C2=A0recipes-security/isic/files/configure_fix.patch=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
This patch contains &quot;Inappropriate&quot; to the Upstream-Status should=
 <br>
Inappropriate [reason]=C2=A0 not pending.<br>
&gt;=C2=A0 =C2=A0recipes-security/isic/files/isic-0.07-make.patch=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 ++<br>
This patch contains &quot;Backport&quot; so the Upstream-Status should be B=
ackport <br>
not pending.<br>
&gt;=C2=A0 =C2=A0recipes-security/isic/files/isic-0.07-netinet.patch=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 ++<br>
This patch contains &quot;Backport&quot; so the Upstream-Status should be B=
ackport <br>
not pending.<br>
<br>
I can take those last six as-is and send a follow up tweaking as needed <br=
>
or you can send a V2. Your call.<br></blockquote><div><br></div><div>I use =
only very small portion of meta-security (just selinux recipe), so if you c=
an do the fix-up yourself my CI&amp;I will be grateful.</div><div><br></div=
><div>Regards,</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
thanks,<br>
Armin<br>
&gt;=C2=A0 =C2=A013 files changed, 28 insertions(+)<br>
&gt;<br>
&gt; diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-uti=
ls/0001-Do-not-get-generation-using-ioctl-when-evm_portable-.patch b/meta-i=
ntegrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-Do-not-get-gener=
ation-using-ioctl-when-evm_portable-.patch<br>
&gt; index 3624576..f0d8975 100644<br>
&gt; --- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001=
-Do-not-get-generation-using-ioctl-when-evm_portable-.patch<br>
&gt; +++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001=
-Do-not-get-generation-using-ioctl-when-evm_portable-.patch<br>
&gt; @@ -13,6 +13,8 @@ ioctl is not supported by the filesystem.<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Stefan Berger &lt;<a href=3D"mailto:stefanb=
@linux.ibm.com" target=3D"_blank">stefanb@linux.ibm.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 src/evmctl.c | 2 +-<br>
&gt;=C2=A0 =C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0<br>
&gt; @@ -30,6 +32,8 @@ index 6d2bb67..c35a28c 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0int fd =3D open(file, 0);<br>
&gt;=C2=A0 =C2=A0 <br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A02.39.2<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-creat=
e-tpm-key-support-well-known-key-option.patch b/meta-tpm/recipes-tpm1/opens=
sl-tpm-engine/files/0001-create-tpm-key-support-well-known-key-option.patch=
<br>
&gt; index bed8b92..e6068af 100644<br>
&gt; --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-k=
ey-support-well-known-key-option.patch<br>
&gt; +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0001-create-tpm-k=
ey-support-well-known-key-option.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed<br>
&gt;=C2=A0 =C2=A0Author: Junxian.Xiao &lt;<a href=3D"mailto:Junxian.Xiao@wi=
ndriver.com" target=3D"_blank">Junxian.Xiao@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0Date:=C2=A0 =C2=A0Wed Jun 19 18:57:13 2013 +0800<br>
&gt; diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtp=
m-support-env-TPM_SRK_PW.patch b/meta-tpm/recipes-tpm1/openssl-tpm-engine/f=
iles/0002-libtpm-support-env-TPM_SRK_PW.patch<br>
&gt; index 2caaaf0..74def4f 100644<br>
&gt; --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-suppo=
rt-env-TPM_SRK_PW.patch<br>
&gt; +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0002-libtpm-suppo=
rt-env-TPM_SRK_PW.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0commit 16dac0cb7b73b8a7088300e45b98ac20819b03ed<br>
&gt;=C2=A0 =C2=A0Author: Junxian.Xiao &lt;<a href=3D"mailto:Junxian.Xiao@wi=
ndriver.com" target=3D"_blank">Junxian.Xiao@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0Date:=C2=A0 =C2=A0Wed Jun 19 18:57:13 2013 +0800<br>
&gt; diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-o=
penssl-tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch b/meta-tpm/recipes-tp=
m1/openssl-tpm-engine/files/0003-tpm-openssl-tpm-engine-parse-an-encrypted-=
tpm-SRK-pa.patch<br>
&gt; index cc8772d..732961d 100644<br>
&gt; --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-=
tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch<br>
&gt; +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0003-tpm-openssl-=
tpm-engine-parse-an-encrypted-tpm-SRK-pa.patch<br>
&gt; @@ -17,6 +17,8 @@ export TPM_SRK_ENC_PW=3Dxxxxxxxx<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Meng Li &lt;<a href=3D"mailto:Meng.Li@windr=
iver.com" target=3D"_blank">Meng.Li@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 e_tpm.c=C2=A0 =C2=A0 =C2=A0| 157 ++++++++++++++++++++++++=
+++++++++++++++++++++++++++++++++++-<br>
&gt;=C2=A0 =C2=A0 e_tpm.h=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A04 ++<br>
&gt;=C2=A0 =C2=A0 e_tpm_err.c |=C2=A0 =C2=A04 ++<br>
&gt; diff --git a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-o=
penssl-tpm-engine-change-variable-c-type-from-c.patch b/meta-tpm/recipes-tp=
m1/openssl-tpm-engine/files/0004-tpm-openssl-tpm-engine-change-variable-c-t=
ype-from-c.patch<br>
&gt; index 535472a..3cbfc3c 100644<br>
&gt; --- a/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-=
tpm-engine-change-variable-c-type-from-c.patch<br>
&gt; +++ b/meta-tpm/recipes-tpm1/openssl-tpm-engine/files/0004-tpm-openssl-=
tpm-engine-change-variable-c-type-from-c.patch<br>
&gt; @@ -12,6 +12,8 @@ wrong case.<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Meng Li &lt;<a href=3D"mailto:Meng.Li@windr=
iver.com" target=3D"_blank">Meng.Li@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 create_tpm_key.c |=C2=A0 =C2=A0 3 ++-<br>
&gt;=C2=A0 =C2=A0 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr=
.patch b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch<br=
>
&gt; index 40150af..d427d67 100644<br>
&gt; --- a/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch<=
br>
&gt; +++ b/meta-tpm/recipes-tpm1/tpm-tools/files/tpm-tools-extendpcr.patch<=
br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0Index: git/include/tpm_tspi.h<br>
&gt;=C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0--- git.orig/include/tpm_tspi.h<br>
&gt; diff --git a/recipes-compliance/openscap/files/0002-openembedded-add-P=
oky-distro.patch b/recipes-compliance/openscap/files/0002-openembedded-add-=
Poky-distro.patch<br>
&gt; index 182d9ec..767b473 100644<br>
&gt; --- a/recipes-compliance/openscap/files/0002-openembedded-add-Poky-dis=
tro.patch<br>
&gt; +++ b/recipes-compliance/openscap/files/0002-openembedded-add-Poky-dis=
tro.patch<br>
&gt; @@ -5,6 +5,8 @@ Subject: [PATCH 2/2] openembedded: add Poky distro<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster@=
mvista.com" target=3D"_blank">akuster@mvista.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 cpe/openscap-cpe-dict.xml=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 4 ++++<br>
&gt;=C2=A0 =C2=A0 cpe/openscap-cpe-oval.xml=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 14 ++++++++++++++<br>
&gt;=C2=A0 =C2=A0 src/OVAL/probes/unix/runlevel_probe.c |=C2=A0 8 +++++++-<=
br>
&gt; diff --git a/recipes-perl/perl/files/libwhisker2.patch b/recipes-perl/=
perl/files/libwhisker2.patch<br>
&gt; index c066366..4ea1ee5 100644<br>
&gt; --- a/recipes-perl/perl/files/libwhisker2.patch<br>
&gt; +++ b/recipes-perl/perl/files/libwhisker2.patch<br>
&gt; @@ -7,6 +7,8 @@ Subject: [PATCH] Mandir and perl install dir were over=
written with faulty<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Andrei Dinu &lt;<a href=3D"mailto:andrei.ad=
rianx.dinu@intel.com" target=3D"_blank">andrei.adrianx.dinu@intel.com</a>&g=
t;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 Makefile.pl |=C2=A0 =C2=A012 +++++++-----<br>
&gt;=C2=A0 =C2=A0 1 file changed, 7 insertions(+), 5 deletions(-)<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/recipes-scanners/clamav/files/test.patch b/recipes-scanne=
rs/clamav/files/test.patch<br>
&gt; index a22b45d..8d94863 100644<br>
&gt; --- a/recipes-scanners/clamav/files/test.patch<br>
&gt; +++ b/recipes-scanners/clamav/files/test.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0Index: clamav-0.103.0/Makefile.am<br>
&gt;=C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0--- clamav-0.103.0.orig/Makefile.am<br>
&gt; diff --git a/recipes-security/ecryptfs-utils/files/define_musl_sword_t=
ype.patch b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.pa=
tch<br>
&gt; index 3b29be0..01b7dd8 100644<br>
&gt; --- a/recipes-security/ecryptfs-utils/files/define_musl_sword_type.pat=
ch<br>
&gt; +++ b/recipes-security/ecryptfs-utils/files/define_musl_sword_type.pat=
ch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0Index: ecryptfs-utils-111/src/utils/mount.ecryptfs_private=
.c<br>
&gt;=C2=A0 =C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=C2=A0 =C2=A0--- ecryptfs-utils-111.orig/src/utils/mount.ecryptfs_priva=
te.c<br>
&gt; diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes=
-security/isic/files/configure_fix.patch<br>
&gt; index fc2a774..801fe0c 100644<br>
&gt; --- a/recipes-security/isic/files/configure_fix.patch<br>
&gt; +++ b/recipes-security/isic/files/configure_fix.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0isic: add with-libnet remove libnet test<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Inappropriate - builds fine on non-oe systems. We need to =
exlude<br>
&gt; diff --git a/recipes-security/isic/files/isic-0.07-make.patch b/recipe=
s-security/isic/files/isic-0.07-make.patch<br>
&gt; index 9cffa8a..838c873 100644<br>
&gt; --- a/recipes-security/isic/files/isic-0.07-make.patch<br>
&gt; +++ b/recipes-security/isic/files/isic-0.07-make.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0isic: Fixup makefile to support destination<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Backport:<br>
&gt; diff --git a/recipes-security/isic/files/isic-0.07-netinet.patch b/rec=
ipes-security/isic/files/isic-0.07-netinet.patch<br>
&gt; index c4ea74e..4b03880 100644<br>
&gt; --- a/recipes-security/isic/files/isic-0.07-netinet.patch<br>
&gt; +++ b/recipes-security/isic/files/isic-0.07-netinet.patch<br>
&gt; @@ -1,3 +1,5 @@<br>
&gt; +Upstream-Status: Pending<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0isic: add missing header file<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Backport:<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60376): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60376" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60376</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99673661/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99673661/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000004081eb05feb91188--

