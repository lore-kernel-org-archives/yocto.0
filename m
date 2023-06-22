Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4849EB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 18:32:09 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.19463.1687458725590612561
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 11:32:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=LQvEftAK;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-312826ffedbso3292244f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 11:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687458724; x=1690050724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y4C+Ju68OJreGZUi2GE3Hrb+6tVVxjsRspB9lBLcIyQ=;
        b=LQvEftAKDBm0XKkJ7Z7vB8GAfGkA0S5HemGwvLBFj+MDV5WoZUtoReT+WAPPmkv3vi
         ylS8z4NOhemCx1bXdg0IXXLisayXNzdl3jIAdEDm+27xyUt0rSN+nooAUwYTSojU6TCt
         1dJXb7mPOCWU3RSjGBWKDwhKIlGqapEtjSba4EcZ4JrKsjIgJDLHQDvJggHQYC/elG4l
         ftLUa/a+diygZIFuoyYsM9/nje7SVzVaHV7ZAXWur5DQudwFRoHnFHLzZFDVnGxyW8sR
         NMX4SZFeiiQSZ+LmKUSZS9f7VfXR2Iw1M6DCxUVg57+YEZYrYqGqjjsCgdu98iXfAmuW
         64iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687458724; x=1690050724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4C+Ju68OJreGZUi2GE3Hrb+6tVVxjsRspB9lBLcIyQ=;
        b=h6Yomozphc47KzXED9eNIu3IXBOklGh5EvDOC9SBjcHelTCGE3xmykRA1OEFfraaAQ
         lfGIxZgq5xkSmy98roZnV4YaaEStCirUXXzBrRSzQg0v4wn+HK2RKZZ+GM5FPm4u7pfA
         xwMIcYjJzuQASfkbKcgxfAjP1Qb+WRZz1rwJ0M3JQAAlY6ESGeniqyJhwigMEPS6mzfB
         /Ybx5/sXz+dt+5hDTknA2vs5OJGlF4XmD+U4gSxpT4Ml8U1YjxJSmZ12Z5vBjQZ92JPS
         gH+EkhuaGIQ8jrYMgJGh9AIYNOu53CRDSA1xGvsTn9098RrcGKNHTuELBVPjsibx/oGV
         5Q2Q==
X-Gm-Message-State: AC+VfDwefzkQvGn2OQ92r/0Gr59ekpWgMuhhqJHgCbQVmwoSrCvbxKTu
	/vOE0sxiQU/7LCyxFVH4BXUKU70zMMf2KTQPeao=
X-Google-Smtp-Source: ACHHUZ5FsFwmvSyOCLjpZeaBESrdDbpl/Vd75UiDsTgM5w8y7pZcIlAwszHZoqETHlK9jYrrtqT2LLk0QBc9OmFqkZI=
X-Received: by 2002:a5d:6386:0:b0:2f9:c2ab:e1de with SMTP id
 p6-20020a5d6386000000b002f9c2abe1demr15077183wru.14.1687458723677; Thu, 22
 Jun 2023 11:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230622143551.3898797-1-Martin.Jansa@gmail.com> <339bb0b8-4334-f46b-0e79-21ab2de026f5@gmail.com>
In-Reply-To: <339bb0b8-4334-f46b-0e79-21ab2de026f5@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 22 Jun 2023 20:31:42 +0200
Message-ID: <CA+chaQf38KdwEgfzr3sS0pvN7V_6VB4cYiAQzF4sLsWTaf_M0g@mail.gmail.com>
Subject: Re: [yocto] [meta-security][master-next][PATCH] *.patch: fix
 malformed Upstream-Status and SOB lines
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cc49cf05febc1918"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 18:32:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60414

--000000000000cc49cf05febc1918
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"sob" in czech language means reindeer, no crying and no son was involved
while preparing the patch :)

On Thu, Jun 22, 2023 at 7:03=E2=80=AFPM akuster808 <akuster808@gmail.com> w=
rote:

> Does SOB have the same meaning to you as it does in the US?  It does
> seem like an appropriate usage.  ; )
>
>
> - armin
>
>
>
> On 6/22/23 10:35 AM, Martin Jansa wrote:
> > * as reported by openembedded-core/scripts/contrib/patchreview.py -v .
> >
> > Malformed Signed-off-by 'Signed-Off-By:'
> (./recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch)
> > Malformed Signed-off-by 'Signed-Off-By:'
> (./recipes-mac/AppArmor/files/disable_perl_h_check.patch)
> >
> > Missing Upstream-Status tag
> (./recipes-compliance/scap-security-guide/files/0001-standard.profile-exp=
and-checks.patch)
> >
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-ids/samhain/files/samhain-pid-path.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-ids/suricata/files/fixup.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-scanners/clamav/files/fix2_libcurl_check.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patc=
h
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-security/isic/files/configure_fix.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-security/krill/files/panic_workaround.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-security/opendnssec/files/libdns_conf_fix.patch
> > Malformed Upstream-Status 'Malformed Upstream-Status in patch
> ./recipes-security/opendnssec/files/libxml2_conf.patch
> >
> > Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> > ---
> >   .../files/0001-standard.profile-expand-checks.patch  |  1 +
> >   .../files/samhain-not-run-ptest-on-host.patch        |  2 +-
> >   recipes-ids/samhain/files/samhain-pid-path.patch     | 12 ++++++-----=
-
> >   recipes-ids/suricata/files/fixup.patch               |  2 +-
> >   .../AppArmor/files/crosscompile_perl_bindings.patch  |  2 +-
> >   .../AppArmor/files/disable_perl_h_check.patch        |  2 +-
> >   .../clamav/files/fix2_libcurl_check.patch            |  2 +-
> >   .../files/ecryptfs-utils-CVE-2016-6224.patch         |  2 +-
> >   recipes-security/isic/files/configure_fix.patch      |  2 +-
> >   recipes-security/krill/files/panic_workaround.patch  |  2 +-
> >   .../opendnssec/files/libdns_conf_fix.patch           |  2 +-
> >   recipes-security/opendnssec/files/libxml2_conf.patch |  2 +-
> >   12 files changed, 17 insertions(+), 16 deletions(-)
> >
> > diff --git
> a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expa=
nd-checks.patch
> b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expa=
nd-checks.patch
> > index 0621360..43d550b 100644
> > ---
> a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expa=
nd-checks.patch
> > +++
> b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expa=
nd-checks.patch
> > @@ -3,6 +3,7 @@ From: Armin Kuster <akuster808@gmail.com>
> >   Date: Wed, 21 Jun 2023 07:46:38 -0400
> >   Subject: [PATCH] standard.profile: expand checks
> >
> > +Upstream-Status: Pending
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >   ---
> >    .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++=
++
> > diff --git
> a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> > index 5284313..e00fc2a 100644
> > --- a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> > +++ b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
> > @@ -1,6 +1,6 @@
> >   not run test on host, since we are doing cross-compile
> >
> > -Upstream-status: Inappropriate [cross compile specific]
> > +Upstream-Status: Inappropriate [cross compile specific]
> >
> >   Signed-off-by: Roy Li <rongqing.li@windriver.com>
> >   ---
> > diff --git a/recipes-ids/samhain/files/samhain-pid-path.patch
> b/recipes-ids/samhain/files/samhain-pid-path.patch
> > index 592bd16..8fdadd1 100644
> > --- a/recipes-ids/samhain/files/samhain-pid-path.patch
> > +++ b/recipes-ids/samhain/files/samhain-pid-path.patch
> > @@ -2,15 +2,15 @@ commit a932b03b65edeb02ccad2fce06bfa68a8f2fbb04
> >   Author: Aws Ismail <aws.ismail@windriver.com>
> >   Date:   Thu Jan 10 16:29:05 2013 -0500
> >
> > -    Set the PID Lock path for samhain.pid
> > +Set the PID Lock path for samhain.pid
> >
> > -    The explicit path for samhain.pid inorder
> > -    for samhain to work properly after it initial
> > -    database build.
> > +The explicit path for samhain.pid inorder
> > +for samhain to work properly after it initial
> > +database build.
> >
> > -    Upstream-Status: Inappropriate [configuration]
> > +Upstream-Status: Inappropriate [configuration]
> >
> > -    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
> > +Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
> >
> >   diff --git a/samhainrc.linux b/samhainrc.linux
> >   index 10a8176..a7b06e6 100644
> > diff --git a/recipes-ids/suricata/files/fixup.patch
> b/recipes-ids/suricata/files/fixup.patch
> > index fc44ce6..4646aa9 100644
> > --- a/recipes-ids/suricata/files/fixup.patch
> > +++ b/recipes-ids/suricata/files/fixup.patch
> > @@ -1,6 +1,6 @@
> >   Skip pkg Makefile from using its own rust steps
> >
> > -Upstream-Status: OE Specific
> > +Upstream-Status: Inappropriate [OE Specific]
> >
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >
> > diff --git a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patc=
h
> b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> > index ef55de7..585f306 100644
> > --- a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> > +++ b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
> > @@ -5,7 +5,7 @@ stuck in the generated Makefile with our cross tools.
> In this case, linking is
> >   done via the compiler rather than the linker directly so pass in CC
> not LD
> >   here.
> >
> > -Signed-Off-By: Tom Rini <trini@konsulko.com>
> > +Signed-off-by: Tom Rini <trini@konsulko.com>
> >
> >   --- a/libraries/libapparmor/swig/perl/Makefile.am.orig      2017-06-1=
3
> 19:04:43.296676212 -0400
> >   +++ b/libraries/libapparmor/swig/perl/Makefile.am   2017-06-13
> 19:05:03.488676693 -0400
> > diff --git a/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> > index cf2640f..7ffdf2f 100644
> > --- a/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> > +++ b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
> > @@ -5,7 +5,7 @@ cross compilation.  Rather than try and get a compile
> check to work here,
> >   we know that we have what's required via our metadata so remove only
> this
> >   check.
> >
> > -Signed-Off-By: Tom Rini <trini@konsulko.com>
> > +Signed-off-by: Tom Rini <trini@konsulko.com>
> >
> >   --- a/libraries/libapparmor/configure.ac.orig       2017-06-13
> 16:41:38.668471495 -0400
> >   +++ b/libraries/libapparmor/configure.ac    2017-06-13
> 16:41:40.708471543 -0400
> > diff --git a/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> > index 46406e9..8b500f3 100644
> > --- a/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> > +++ b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
> > @@ -1,6 +1,6 @@
> >   clamav .102.2 tries to find clamav using culf_config. Use EO
> pkg_config instead
> >
> > -Upstream-Status: OE specific
> > +Upstream-Status: Inappropriate [OE specific]
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >
> >   Index: git/configure
> > diff --git
> a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patc=
h
> b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patc=
h
> > index 4252f97..a457d79 100644
> > ---
> a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patc=
h
> > +++
> b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patc=
h
> > @@ -14,7 +14,7 @@ the patch comes from:
> >   https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2016-6224
> >   https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
> >
> > -Upstream-Status: backport
> > +Upstream-Status: Backport
> >
> >   Signed-off-by: Li Zhou <li.zhou@windriver.com>
> >   ---
> > diff --git a/recipes-security/isic/files/configure_fix.patch
> b/recipes-security/isic/files/configure_fix.patch
> > index 7c3e033..ed2bf7a 100644
> > --- a/recipes-security/isic/files/configure_fix.patch
> > +++ b/recipes-security/isic/files/configure_fix.patch
> > @@ -1,6 +1,6 @@
> >   isic: add with-libnet remove libnet test
> >
> > -Upstream-Status: Inappropriate[embedded specific]
> > +Upstream-Status: Inappropriate [embedded specific]
> >   builds fine on non-oe systems. We need to exlude
> >   cross compile libnet test. Pass in the location for libnet.a. Path
> >   did not support mulitlib either.
> > diff --git a/recipes-security/krill/files/panic_workaround.patch
> b/recipes-security/krill/files/panic_workaround.patch
> > index dc26416..f63169f 100644
> > --- a/recipes-security/krill/files/panic_workaround.patch
> > +++ b/recipes-security/krill/files/panic_workaround.patch
> > @@ -1,4 +1,4 @@
> > -Upstream-Status: OE specific
> > +Upstream-Status: Inappropriate [OE specific]
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >
> >   Index: git/Cargo.toml
> > diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch
> b/recipes-security/opendnssec/files/libdns_conf_fix.patch
> > index 31d7252..220a2b8 100644
> > --- a/recipes-security/opendnssec/files/libdns_conf_fix.patch
> > +++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch
> > @@ -1,6 +1,6 @@
> >   Configure does not work with OE pkg-config for the ldns option
> >
> > -Upstream-Status: OE specific
> > +Upstream-Status: Inappropriate [OE specific]
> >
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >
> > diff --git a/recipes-security/opendnssec/files/libxml2_conf.patch
> b/recipes-security/opendnssec/files/libxml2_conf.patch
> > index b4ed430..c20d5d2 100644
> > --- a/recipes-security/opendnssec/files/libxml2_conf.patch
> > +++ b/recipes-security/opendnssec/files/libxml2_conf.patch
> > @@ -1,6 +1,6 @@
> >   configure does not work with OE pkg-config for the libxml2 option
> >
> > -Upstream-Status: OE specific
> > +Upstream-Status: Inappropriate [OE specific]
> >
> >   Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#60399):
> https://lists.yoctoproject.org/g/yocto/message/60399
> > Mute This Topic: https://lists.yoctoproject.org/mt/99698731/3616698
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> akuster808@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>

--000000000000cc49cf05febc1918
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;sob&quot; in czech language means reindeer, no cryin=
g and no son was involved while preparing the patch :)</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 22, 2023=
 at 7:03=E2=80=AFPM akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com">=
akuster808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Does SOB have the same meaning to you as it does in the=
 US?=C2=A0 It does <br>
seem like an appropriate usage.=C2=A0 ; )<br>
<br>
<br>
- armin<br>
<br>
<br>
<br>
On 6/22/23 10:35 AM, Martin Jansa wrote:<br>
&gt; * as reported by openembedded-core/scripts/contrib/patchreview.py -v .=
<br>
&gt;<br>
&gt; Malformed Signed-off-by &#39;Signed-Off-By:&#39; (./recipes-mac/AppArm=
or/files/crosscompile_perl_bindings.patch)<br>
&gt; Malformed Signed-off-by &#39;Signed-Off-By:&#39; (./recipes-mac/AppArm=
or/files/disable_perl_h_check.patch)<br>
&gt;<br>
&gt; Missing Upstream-Status tag (./recipes-compliance/scap-security-guide/=
files/0001-standard.profile-expand-checks.patch)<br>
&gt;<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-ids/samhain/files/samhain-pid-path.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-ids/suricata/files/fixup.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-scanners/clamav/files/fix2_libcurl_check.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-security/isic/files/configure_fix.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-security/krill/files/panic_workaround.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-security/opendnssec/files/libdns_conf_fix.patch<br>
&gt; Malformed Upstream-Status &#39;Malformed Upstream-Status in patch ./re=
cipes-security/opendnssec/files/libxml2_conf.patch<br>
&gt;<br>
&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.c=
om" target=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0.../files/0001-standard.profile-expand-checks.patch=C2=A0 =
|=C2=A0 1 +<br>
&gt;=C2=A0 =C2=A0.../files/samhain-not-run-ptest-on-host.patch=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-ids/samhain/files/samhain-pid-path.patch=C2=A0 =C2=
=A0 =C2=A0| 12 ++++++------<br>
&gt;=C2=A0 =C2=A0recipes-ids/suricata/files/fixup.patch=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0.../AppArmor/files/crosscompile_perl_bindings.patch=C2=A0 =
|=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0.../AppArmor/files/disable_perl_h_check.patch=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0.../clamav/files/fix2_libcurl_check.patch=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0.../files/ecryptfs-utils-CVE-2016-6224.patch=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/isic/files/configure_fix.patch=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/krill/files/panic_workaround.patch=C2=A0 =
|=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0.../opendnssec/files/libdns_conf_fix.patch=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/opendnssec/files/libxml2_conf.patch |=C2=
=A0 2 +-<br>
&gt;=C2=A0 =C2=A012 files changed, 17 insertions(+), 16 deletions(-)<br>
&gt;<br>
&gt; diff --git a/recipes-compliance/scap-security-guide/files/0001-standar=
d.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/file=
s/0001-standard.profile-expand-checks.patch<br>
&gt; index 0621360..43d550b 100644<br>
&gt; --- a/recipes-compliance/scap-security-guide/files/0001-standard.profi=
le-expand-checks.patch<br>
&gt; +++ b/recipes-compliance/scap-security-guide/files/0001-standard.profi=
le-expand-checks.patch<br>
&gt; @@ -3,6 +3,7 @@ From: Armin Kuster &lt;<a href=3D"mailto:akuster808@gm=
ail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0Date: Wed, 21 Jun 2023 07:46:38 -0400<br>
&gt;=C2=A0 =C2=A0Subject: [PATCH] standard.profile: expand checks<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +Upstream-Status: Pending<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt;=C2=A0 =C2=A0 .../openembedded/profiles/standard.profile=C2=A0 =C2=A0 |=
 206 ++++++++++++++++++<br>
&gt; diff --git a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.p=
atch b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch<br>
&gt; index 5284313..e00fc2a 100644<br>
&gt; --- a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch<br=
>
&gt; +++ b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch<br=
>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0not run test on host, since we are doing cross-compile<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-status: Inappropriate [cross compile specific]<br>
&gt; +Upstream-Status: Inappropriate [cross compile specific]<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Roy Li &lt;<a href=3D"mailto:rongqing.li@wi=
ndriver.com" target=3D"_blank">rongqing.li@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; diff --git a/recipes-ids/samhain/files/samhain-pid-path.patch b/recipe=
s-ids/samhain/files/samhain-pid-path.patch<br>
&gt; index 592bd16..8fdadd1 100644<br>
&gt; --- a/recipes-ids/samhain/files/samhain-pid-path.patch<br>
&gt; +++ b/recipes-ids/samhain/files/samhain-pid-path.patch<br>
&gt; @@ -2,15 +2,15 @@ commit a932b03b65edeb02ccad2fce06bfa68a8f2fbb04<br>
&gt;=C2=A0 =C2=A0Author: Aws Ismail &lt;<a href=3D"mailto:aws.ismail@windri=
ver.com" target=3D"_blank">aws.ismail@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0Date:=C2=A0 =C2=A0Thu Jan 10 16:29:05 2013 -0500<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 Set the PID Lock path for samhain.pid<br>
&gt; +Set the PID Lock path for samhain.pid<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 The explicit path for samhain.pid inorder<br>
&gt; -=C2=A0 =C2=A0 for samhain to work properly after it initial<br>
&gt; -=C2=A0 =C2=A0 database build.<br>
&gt; +The explicit path for samhain.pid inorder<br>
&gt; +for samhain to work properly after it initial<br>
&gt; +database build.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 Upstream-Status: Inappropriate [configuration]<br>
&gt; +Upstream-Status: Inappropriate [configuration]<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -=C2=A0 =C2=A0 Signed-off-by: Aws Ismail &lt;<a href=3D"mailto:aws.ism=
ail@windriver.com" target=3D"_blank">aws.ismail@windriver.com</a>&gt;<br>
&gt; +Signed-off-by: Aws Ismail &lt;<a href=3D"mailto:aws.ismail@windriver.=
com" target=3D"_blank">aws.ismail@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0diff --git a/samhainrc.linux b/samhainrc.linux<br>
&gt;=C2=A0 =C2=A0index 10a8176..a7b06e6 100644<br>
&gt; diff --git a/recipes-ids/suricata/files/fixup.patch b/recipes-ids/suri=
cata/files/fixup.patch<br>
&gt; index fc44ce6..4646aa9 100644<br>
&gt; --- a/recipes-ids/suricata/files/fixup.patch<br>
&gt; +++ b/recipes-ids/suricata/files/fixup.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0Skip pkg Makefile from using its own rust steps<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: OE Specific<br>
&gt; +Upstream-Status: Inappropriate [OE Specific]<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.pat=
ch b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch<br>
&gt; index ef55de7..585f306 100644<br>
&gt; --- a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch<br>
&gt; +++ b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch<br>
&gt; @@ -5,7 +5,7 @@ stuck in the generated Makefile with our cross tools.=
=C2=A0 In this case, linking is<br>
&gt;=C2=A0 =C2=A0done via the compiler rather than the linker directly so p=
ass in CC not LD<br>
&gt;=C2=A0 =C2=A0here.<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Signed-Off-By: Tom Rini &lt;<a href=3D"mailto:trini@konsulko.com" tar=
get=3D"_blank">trini@konsulko.com</a>&gt;<br>
&gt; +Signed-off-by: Tom Rini &lt;<a href=3D"mailto:trini@konsulko.com" tar=
get=3D"_blank">trini@konsulko.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0--- a/libraries/libapparmor/swig/perl/Makefile.am.orig=C2=
=A0 =C2=A0 =C2=A0 2017-06-13 19:04:43.296676212 -0400<br>
&gt;=C2=A0 =C2=A0+++ b/libraries/libapparmor/swig/perl/Makefile.am=C2=A0 =
=C2=A02017-06-13 19:05:03.488676693 -0400<br>
&gt; diff --git a/recipes-mac/AppArmor/files/disable_perl_h_check.patch b/r=
ecipes-mac/AppArmor/files/disable_perl_h_check.patch<br>
&gt; index cf2640f..7ffdf2f 100644<br>
&gt; --- a/recipes-mac/AppArmor/files/disable_perl_h_check.patch<br>
&gt; +++ b/recipes-mac/AppArmor/files/disable_perl_h_check.patch<br>
&gt; @@ -5,7 +5,7 @@ cross compilation.=C2=A0 Rather than try and get a com=
pile check to work here,<br>
&gt;=C2=A0 =C2=A0we know that we have what&#39;s required via our metadata =
so remove only this<br>
&gt;=C2=A0 =C2=A0check.<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Signed-Off-By: Tom Rini &lt;<a href=3D"mailto:trini@konsulko.com" tar=
get=3D"_blank">trini@konsulko.com</a>&gt;<br>
&gt; +Signed-off-by: Tom Rini &lt;<a href=3D"mailto:trini@konsulko.com" tar=
get=3D"_blank">trini@konsulko.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0--- a/libraries/libapparmor/configure.ac.orig=C2=A0 =C2=A0=
 =C2=A0 =C2=A02017-06-13 16:41:38.668471495 -0400<br>
&gt;=C2=A0 =C2=A0+++ b/libraries/libapparmor/<a href=3D"http://configure.ac=
" rel=3D"noreferrer" target=3D"_blank">configure.ac</a>=C2=A0 =C2=A0 2017-0=
6-13 16:41:40.708471543 -0400<br>
&gt; diff --git a/recipes-scanners/clamav/files/fix2_libcurl_check.patch b/=
recipes-scanners/clamav/files/fix2_libcurl_check.patch<br>
&gt; index 46406e9..8b500f3 100644<br>
&gt; --- a/recipes-scanners/clamav/files/fix2_libcurl_check.patch<br>
&gt; +++ b/recipes-scanners/clamav/files/fix2_libcurl_check.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0clamav .102.2 tries to find clamav using culf_config. Use =
EO pkg_config instead<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: OE specific<br>
&gt; +Upstream-Status: Inappropriate [OE specific]<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Index: git/configure<br>
&gt; diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-=
2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-=
2016-6224.patch<br>
&gt; index 4252f97..a457d79 100644<br>
&gt; --- a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-62=
24.patch<br>
&gt; +++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-62=
24.patch<br>
&gt; @@ -14,7 +14,7 @@ the patch comes from:<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://web.nvd.nist.gov/view/vuln/detail?vulnI=
d=3DCVE-2016-6224" rel=3D"noreferrer" target=3D"_blank">https://web.nvd.nis=
t.gov/view/vuln/detail?vulnId=3DCVE-2016-6224</a><br>
&gt;=C2=A0 =C2=A0<a href=3D"https://bazaar.launchpad.net/~ecryptfs/ecryptfs=
/trunk/revision/882" rel=3D"noreferrer" target=3D"_blank">https://bazaar.la=
unchpad.net/~ecryptfs/ecryptfs/trunk/revision/882</a><br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: backport<br>
&gt; +Upstream-Status: Backport<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Li Zhou &lt;<a href=3D"mailto:li.zhou@windr=
iver.com" target=3D"_blank">li.zhou@windriver.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0---<br>
&gt; diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes=
-security/isic/files/configure_fix.patch<br>
&gt; index 7c3e033..ed2bf7a 100644<br>
&gt; --- a/recipes-security/isic/files/configure_fix.patch<br>
&gt; +++ b/recipes-security/isic/files/configure_fix.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0isic: add with-libnet remove libnet test<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: Inappropriate[embedded specific]<br>
&gt; +Upstream-Status: Inappropriate [embedded specific]<br>
&gt;=C2=A0 =C2=A0builds fine on non-oe systems. We need to exlude<br>
&gt;=C2=A0 =C2=A0cross compile libnet test. Pass in the location for libnet=
.a. Path<br>
&gt;=C2=A0 =C2=A0did not support mulitlib either.<br>
&gt; diff --git a/recipes-security/krill/files/panic_workaround.patch b/rec=
ipes-security/krill/files/panic_workaround.patch<br>
&gt; index dc26416..f63169f 100644<br>
&gt; --- a/recipes-security/krill/files/panic_workaround.patch<br>
&gt; +++ b/recipes-security/krill/files/panic_workaround.patch<br>
&gt; @@ -1,4 +1,4 @@<br>
&gt; -Upstream-Status: OE specific<br>
&gt; +Upstream-Status: Inappropriate [OE specific]<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Index: git/Cargo.toml<br>
&gt; diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch b=
/recipes-security/opendnssec/files/libdns_conf_fix.patch<br>
&gt; index 31d7252..220a2b8 100644<br>
&gt; --- a/recipes-security/opendnssec/files/libdns_conf_fix.patch<br>
&gt; +++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0Configure does not work with OE pkg-config for the ldns op=
tion<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: OE specific<br>
&gt; +Upstream-Status: Inappropriate [OE specific]<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/recipes-security/opendnssec/files/libxml2_conf.patch b/re=
cipes-security/opendnssec/files/libxml2_conf.patch<br>
&gt; index b4ed430..c20d5d2 100644<br>
&gt; --- a/recipes-security/opendnssec/files/libxml2_conf.patch<br>
&gt; +++ b/recipes-security/opendnssec/files/libxml2_conf.patch<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0configure does not work with OE pkg-config for the libxml2=
 option<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -Upstream-Status: OE specific<br>
&gt; +Upstream-Status: Inappropriate [OE specific]<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0Signed-off-by: Armin Kuster &lt;<a href=3D"mailto:akuster8=
08@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#60399): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/60399" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/60399</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99698731=
/3616698" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/99698731/3616698</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank">akust=
er808@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</blockquote></div>

--000000000000cc49cf05febc1918--

