Return-Path: <asharma@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76137C433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 21:54:06 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.3285.1648072445473455750
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 14:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=B+5RqZGj;
 spf=pass (domain: mvista.com, ip: 209.85.128.42,
 mailfrom: asharma@mvista.com)
Received: by mail-wm1-f42.google.com with SMTP id
 v2-20020a7bcb42000000b0037b9d960079so6230991wmj.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 14:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nKWPKIres15cXaHTwsU8Qb6/fgAxSdvIsf+ZxMqP7PM=;
        b=B+5RqZGjdL5XotNVgM7fXEdXU7c5ImJliRHR7gRtCtl1Dn6tK5H+9An0+DotyKb9bQ
         OwvCBfGLgVy0g80FbzBHDmqOlX7yuTSuqWDteoTOme2Cev+l3BrBIMU2miqoPHPSHbF1
         62nH8gPWmqagoDzGMj92DMoGRBc/pbgY3rFTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nKWPKIres15cXaHTwsU8Qb6/fgAxSdvIsf+ZxMqP7PM=;
        b=obYIOZyN749c8iuRgVE1hQQdEJ4ZiaUecjgJxXLv1ot4k+9NrX0SELbC6kV8obfsAn
         QOrU46L850HCxYySjcx9Z6F0SYwxNiOcE+Kq9QzyomBBYn+aygV6KzXGN+wiKL/w3XxZ
         85JQiczHVKm5wbHwHus58L94IxxLoVCy20oRzgQcuIpJ1WdIMVqh5lHZkylbc94Ft87O
         +I7LaBVSotVmwihGsSgy9eajcIqgilOrisYRuXSeA0CTw+xz3W3xx3bWiQ9FxBPl4ev4
         upsRPyoL6HT5cczjwJrQG7Qn+0URHbyFZYytTu/l4QBuw+57CgATtbdF5WuOO2pShbG+
         TfXg==
X-Gm-Message-State: AOAM533aLJoiFYy5yN/B7szhVJuwd+WruMRD74XgbXJSMpHYFTLl3LMM
	a9ObcEBHAyqaeQj1AVDriqomLe4OC5Av8otA54/lVw==
X-Google-Smtp-Source: 
 ABdhPJxDzmNQySX0/JWtAW2DeFhtjzNJzjw2G3EoWVYkCPrCrhNpm8Ccnjh1VN6F3RgfQCG5gzWblmBVBitwwMbcXj4=
X-Received: by 2002:a05:600c:887:b0:38c:aa02:8744 with SMTP id
 l7-20020a05600c088700b0038caa028744mr1957930wmp.11.1648072443849; Wed, 23 Mar
 2022 14:54:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220323194156.12208-1-asharma@mvista.com>
 <d9fbd8de-b483-5ce2-12d7-4c724c1ec0ee@gmail.com>
In-Reply-To: <d9fbd8de-b483-5ce2-12d7-4c724c1ec0ee@gmail.com>
From: Ashish Sharma <asharma@mvista.com>
Date: Thu, 24 Mar 2022 03:23:52 +0530
Message-ID: 
 <CANe+PSRAg570VLkOZ9wWwLfVmF=buD4s2c9p-AtThYbF31tz0w@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security : Use SPDX style
 licensing format
To: akuster808 <akuster808@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009480d105dae9c4b1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 21:54:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56542

--0000000000009480d105dae9c4b1
Content-Type: text/plain; charset="UTF-8"

I picked up a list of warnings in sequence from the build which had a mix
from meta-selinux and meta-security.

You can correct the message.

The changes in this commit are only for meta-security layer recipes.

Thanks
Ashish S


On Thu, Mar 24, 2022, 03:14 akuster808 <akuster808@gmail.com> wrote:

>
>
> On 3/23/22 12:41, Ashish Sharma wrote:
> > WARNING: selinux-sandbox-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPLv2+ [obsolete-license] \
> > WARNING: selinux-gui-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPLv2+ [obsolete-license] \
> > WARNING: semodule-utils-3.3-r0.1 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPLv2+ [obsolete-license] \
> > WARNING: selinux-dbus-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPLv2+ [obsolete-license] \
> > WARNING: libwhisker2-perl-2.5-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPL-1.0+ [obsolete-license] \
> > WARNING: lib-perl-0.63-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPL-1.0+ [obsolete-license] \
> > WARNING: libhtp-0.5.39-r0 do_package_qa: QA Issue: Recipe LICENSE
> includes obsolete licenses GPLv2 [obsolete-license] \
>
> The commit message seems to not match the changes.
>
> The selinux changes don't apply to this layer.  I suspect a cut&paste
> issue.
>
> Did you want to do a v2 or do you want me to correct the message?
>
> I am aware of the Warnings so I can fixup  the things locally.
>
> -armin
> > ...
> >
> > Signed-off-by: Ashish Sharma <asharma@mvista.com>
> > ---
> >   recipes-ids/samhain/samhain.inc                       | 2 +-
> >   recipes-ids/suricata/suricata.inc                     | 2 +-
> >   recipes-perl/perl/libwhisker2-perl_2.5.bb             | 2 +-
> >   recipes-scanners/clamav/clamav_0.104.0.bb             | 2 +-
> >   recipes-security/bastille/bastille_3.2.1.bb           | 2 +-
> >   recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
> >   recipes-security/nikto/nikto_2.1.6.bb                 | 2 +-
> >   recipes-security/sssd/sssd_2.5.2.bb                   | 2 +-
> >   8 files changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/recipes-ids/samhain/samhain.inc
> b/recipes-ids/samhain/samhain.inc
> > index 077e118..d64cddb 100644
> > --- a/recipes-ids/samhain/samhain.inc
> > +++ b/recipes-ids/samhain/samhain.inc
> > @@ -1,6 +1,6 @@
> >   DESCRIPTION = "Provides file integrity checking and log file
> monitoring/analysis"
> >   HOMEPAGE    = "http://www.la-samhna.de/samhain/"
> > -LICENSE     = "GPLv2"
> > +LICENSE     = "GPL-2.0-or-later"
> >   LIC_FILES_CHKSUM =
> "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
> >
> >   PV = "4.4.6"
> > diff --git a/recipes-ids/suricata/suricata.inc
> b/recipes-ids/suricata/suricata.inc
> > index 5754617..906423c 100644
> > --- a/recipes-ids/suricata/suricata.inc
> > +++ b/recipes-ids/suricata/suricata.inc
> > @@ -1,5 +1,5 @@
> >   HOMEPAGE = "http://suricata-ids.org/"
> >   SECTION = "security Monitor/Admin"
> > -LICENSE = "GPLv2"
> > +LICENSE = "GPL-2.0-only"
> >
> >   COMPATIBLE_HOST:powerpc = 'null'
> > diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb
> b/recipes-perl/perl/libwhisker2-perl_2.5.bb
> > index 5889a05..42c0b42 100644
> > --- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
> > +++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
> > @@ -1,7 +1,7 @@
> >   DESCRIPTION = "Libwhisker is a Perl module geared specificly for HTTP
> testing."
> >
> >   SECTION = "libs"
> > -LICENSE = "Artistic-1.0 | GPL-1.0+"
> > +LICENSE = "Artistic-1.0 | GPL-1.0-or-later"
> >
> >   LIC_FILES_CHKSUM =
> "file://LICENSE;md5=254b8e29606fce6d1c1a4c9e32354573"
> >
> > diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb
> b/recipes-scanners/clamav/clamav_0.104.0.bb
> > index f0889de..491a82f 100644
> > --- a/recipes-scanners/clamav/clamav_0.104.0.bb
> > +++ b/recipes-scanners/clamav/clamav_0.104.0.bb
> > @@ -2,7 +2,7 @@ SUMMARY = "ClamAV anti-virus utility for Unix -
> command-line interface"
> >   DESCRIPTION = "ClamAV is an open source antivirus engine for detecting
> trojans, viruses, malware & other malicious threats."
> >   HOMEPAGE = "http://www.clamav.net/index.html"
> >   SECTION = "security"
> > -LICENSE = "LGPL-2.1"
> > +LICENSE = "LGPL-2.1-only"
> >
> >   DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2
> json-c libcheck"
> >
> > diff --git a/recipes-security/bastille/bastille_3.2.1.bb
> b/recipes-security/bastille/bastille_3.2.1.bb
> > index 2d82983..e7852d9 100644
> > --- a/recipes-security/bastille/bastille_3.2.1.bb
> > +++ b/recipes-security/bastille/bastille_3.2.1.bb
> > @@ -2,7 +2,7 @@
> >   #consult the README file for the meta-security layer for additional
> information.
> >   SUMMARY = "Linux hardening tool"
> >   DESCRIPTION = "Bastille Linux is a Hardening and Reporting/Auditing
> Program which enhances the security of a Linux box, by configuring daemons,
> system settings and firewalling."
> > -LICENSE = "GPLv2"
> > +LICENSE = "GPL-2.0-only"
> >   LIC_FILES_CHKSUM =
> "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
> >   # Bash is needed for set +o privileged (check busybox), might also
> need ncurses
> >   DEPENDS = "virtual/kernel"
> > diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> > index 9aefc32..5f8cf3c 100644
> > --- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> > +++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> > @@ -6,7 +6,7 @@ DESCRIPTION = "eCryptfs is a stacked cryptographic
> filesystem \
> >   HOMEPAGE = "https://launchpad.net/ecryptfs"
> >   SECTION = "base"
> >
> > -LICENSE = "GPL-2.0"
> > +LICENSE = "GPL-2.0-only"
> >   LIC_FILES_CHKSUM =
> "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
> >
> >   DEPENDS = "keyutils libgcrypt intltool-native glib-2.0-native"
> > diff --git a/recipes-security/nikto/nikto_2.1.6.bb
> b/recipes-security/nikto/nikto_2.1.6.bb
> > index 8542d69..8c21b30 100644
> > --- a/recipes-security/nikto/nikto_2.1.6.bb
> > +++ b/recipes-security/nikto/nikto_2.1.6.bb
> > @@ -3,7 +3,7 @@ DESCRIPTION = "Nikto is an Open Source web server
> scanner which performs compreh
> >   SECTION = "security"
> >   HOMEPAGE = "https://cirt.net/Nikto2"
> >
> > -LICENSE = "GPLv2"
> > +LICENSE = "GPL-2.0-only"
> >   LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
> >
> >   SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
> > diff --git a/recipes-security/sssd/sssd_2.5.2.bb
> b/recipes-security/sssd/sssd_2.5.2.bb
> > index 8bc8787..9f1d627 100644
> > --- a/recipes-security/sssd/sssd_2.5.2.bb
> > +++ b/recipes-security/sssd/sssd_2.5.2.bb
> > @@ -2,7 +2,7 @@ SUMMARY = "system security services daemon"
> >   DESCRIPTION = "SSSD is a system security services daemon"
> >   HOMEPAGE = "https://pagure.io/SSSD/sssd/"
> >   SECTION = "base"
> > -LICENSE = "GPLv3+"
> > +LICENSE = "GPL-3.0-or-later"
> >   LIC_FILES_CHKSUM =
> "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> >
> >   DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares
> krb5 autoconf-archive"
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#56537):
> https://lists.yoctoproject.org/g/yocto/message/56537
> > Mute This Topic: https://lists.yoctoproject.org/mt/89983861/3616698
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> akuster808@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>
>

--0000000000009480d105dae9c4b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I picked up a list of warnings in sequence from the =
build which had a mix from meta-selinux and meta-security.=C2=A0</div><div =
dir=3D"auto"><br></div><div dir=3D"auto">You can correct the message.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">The changes in this commit ar=
e only for meta-security layer recipes.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Thanks</div><div dir=3D"auto">Ashish S<br><br><br><div clas=
s=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Mar 24, 2022, 03:14 akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com=
">akuster808@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><br>
<br>
On 3/23/22 12:41, Ashish Sharma wrote:<br>
&gt; WARNING: selinux-sandbox-3.3-r0 do_package_qa: QA Issue: Recipe LICENS=
E includes obsolete licenses GPLv2+ [obsolete-license] \<br>
&gt; WARNING: selinux-gui-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE in=
cludes obsolete licenses GPLv2+ [obsolete-license] \<br>
&gt; WARNING: semodule-utils-3.3-r0.1 do_package_qa: QA Issue: Recipe LICEN=
SE includes obsolete licenses GPLv2+ [obsolete-license] \<br>
&gt; WARNING: selinux-dbus-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE i=
ncludes obsolete licenses GPLv2+ [obsolete-license] \<br>
&gt; WARNING: libwhisker2-perl-2.5-r0 do_package_qa: QA Issue: Recipe LICEN=
SE includes obsolete licenses GPL-1.0+ [obsolete-license] \<br>
&gt; WARNING: lib-perl-0.63-r0 do_package_qa: QA Issue: Recipe LICENSE incl=
udes obsolete licenses GPL-1.0+ [obsolete-license] \<br>
&gt; WARNING: libhtp-0.5.39-r0 do_package_qa: QA Issue: Recipe LICENSE incl=
udes obsolete licenses GPLv2 [obsolete-license] \<br>
<br>
The commit message seems to not match the changes.<br>
<br>
The selinux changes don&#39;t apply to this layer.=C2=A0 I suspect a cut&am=
p;paste <br>
issue.<br>
<br>
Did you want to do a v2 or do you want me to correct the message?<br>
<br>
I am aware of the Warnings so I can fixup=C2=A0 the things locally.<br>
<br>
-armin<br>
&gt; ...<br>
&gt;<br>
&gt; Signed-off-by: Ashish Sharma &lt;<a href=3D"mailto:asharma@mvista.com"=
 target=3D"_blank" rel=3D"noreferrer">asharma@mvista.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0recipes-ids/samhain/samhain.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-ids/suricata/suricata.inc=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-perl/perl/<a href=3D"http://libwhisker2-perl_2.5.b=
b" rel=3D"noreferrer noreferrer" target=3D"_blank">libwhisker2-perl_2.5.bb<=
/a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-scanners/clamav/<a href=3D"http://clamav_0.104.0.b=
b" rel=3D"noreferrer noreferrer" target=3D"_blank">clamav_0.104.0.bb</a>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/bastille/<a href=3D"http://bastille_3.2.1=
.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">bastille_3.2.1.bb</a>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/ecryptfs-utils/<a href=3D"http://ecryptfs=
-utils_111.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">ecryptfs-uti=
ls_111.bb</a> | 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/nikto/<a href=3D"http://nikto_2.1.6.bb" r=
el=3D"noreferrer noreferrer" target=3D"_blank">nikto_2.1.6.bb</a>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A0recipes-security/sssd/<a href=3D"http://sssd_2.5.2.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">sssd_2.5.2.bb</a>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 2 +-<br>
&gt;=C2=A0 =C2=A08 files changed, 8 insertions(+), 8 deletions(-)<br>
&gt;<br>
&gt; diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/sam=
hain.inc<br>
&gt; index 077e118..d64cddb 100644<br>
&gt; --- a/recipes-ids/samhain/samhain.inc<br>
&gt; +++ b/recipes-ids/samhain/samhain.inc<br>
&gt; @@ -1,6 +1,6 @@<br>
&gt;=C2=A0 =C2=A0DESCRIPTION =3D &quot;Provides file integrity checking and=
 log file monitoring/analysis&quot;<br>
&gt;=C2=A0 =C2=A0HOMEPAGE=C2=A0 =C2=A0 =3D &quot;<a href=3D"http://www.la-s=
amhna.de/samhain/" rel=3D"noreferrer noreferrer" target=3D"_blank">http://w=
ww.la-samhna.de/samhain/</a>&quot;<br>
&gt; -LICENSE=C2=A0 =C2=A0 =C2=A0=3D &quot;GPLv2&quot;<br>
&gt; +LICENSE=C2=A0 =C2=A0 =C2=A0=3D &quot;GPL-2.0-or-later&quot;<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D8ca43cbc84=
2c2336e835926c2166c28b&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0PV =3D &quot;4.4.6&quot;<br>
&gt; diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/=
suricata.inc<br>
&gt; index 5754617..906423c 100644<br>
&gt; --- a/recipes-ids/suricata/suricata.inc<br>
&gt; +++ b/recipes-ids/suricata/suricata.inc<br>
&gt; @@ -1,5 +1,5 @@<br>
&gt;=C2=A0 =C2=A0HOMEPAGE =3D &quot;<a href=3D"http://suricata-ids.org/" re=
l=3D"noreferrer noreferrer" target=3D"_blank">http://suricata-ids.org/</a>&=
quot;<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;security Monitor/Admin&quot;<br>
&gt; -LICENSE =3D &quot;GPLv2&quot;<br>
&gt; +LICENSE =3D &quot;GPL-2.0-only&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0COMPATIBLE_HOST:powerpc =3D &#39;null&#39;<br>
&gt; diff --git a/recipes-perl/perl/<a href=3D"http://libwhisker2-perl_2.5.=
bb" rel=3D"noreferrer noreferrer" target=3D"_blank">libwhisker2-perl_2.5.bb=
</a> b/recipes-perl/perl/<a href=3D"http://libwhisker2-perl_2.5.bb" rel=3D"=
noreferrer noreferrer" target=3D"_blank">libwhisker2-perl_2.5.bb</a><br>
&gt; index 5889a05..42c0b42 100644<br>
&gt; --- a/recipes-perl/perl/<a href=3D"http://libwhisker2-perl_2.5.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">libwhisker2-perl_2.5.bb</a><br=
>
&gt; +++ b/recipes-perl/perl/<a href=3D"http://libwhisker2-perl_2.5.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">libwhisker2-perl_2.5.bb</a><br=
>
&gt; @@ -1,7 +1,7 @@<br>
&gt;=C2=A0 =C2=A0DESCRIPTION =3D &quot;Libwhisker is a Perl module geared s=
pecificly for HTTP testing.&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;libs&quot;<br>
&gt; -LICENSE =3D &quot;Artistic-1.0 | GPL-1.0+&quot;<br>
&gt; +LICENSE =3D &quot;Artistic-1.0 | GPL-1.0-or-later&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D254b8e2960=
6fce6d1c1a4c9e32354573&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/recipes-scanners/clamav/<a href=3D"http://clamav_0.104.0.=
bb" rel=3D"noreferrer noreferrer" target=3D"_blank">clamav_0.104.0.bb</a> b=
/recipes-scanners/clamav/<a href=3D"http://clamav_0.104.0.bb" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">clamav_0.104.0.bb</a><br>
&gt; index f0889de..491a82f 100644<br>
&gt; --- a/recipes-scanners/clamav/<a href=3D"http://clamav_0.104.0.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">clamav_0.104.0.bb</a><br>
&gt; +++ b/recipes-scanners/clamav/<a href=3D"http://clamav_0.104.0.bb" rel=
=3D"noreferrer noreferrer" target=3D"_blank">clamav_0.104.0.bb</a><br>
&gt; @@ -2,7 +2,7 @@ SUMMARY =3D &quot;ClamAV anti-virus utility for Unix -=
 command-line interface&quot;<br>
&gt;=C2=A0 =C2=A0DESCRIPTION =3D &quot;ClamAV is an open source antivirus e=
ngine for detecting trojans, viruses, malware &amp; other malicious threats=
.&quot;<br>
&gt;=C2=A0 =C2=A0HOMEPAGE =3D &quot;<a href=3D"http://www.clamav.net/index.=
html" rel=3D"noreferrer noreferrer" target=3D"_blank">http://www.clamav.net=
/index.html</a>&quot;<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;security&quot;<br>
&gt; -LICENSE =3D &quot;LGPL-2.1&quot;<br>
&gt; +LICENSE =3D &quot;LGPL-2.1-only&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0DEPENDS =3D &quot;glibc llvm libtool db openssl zlib curl =
libxml2 bison pcre2 json-c libcheck&quot;<br>
&gt;=C2=A0 =C2=A0 <br>
&gt; diff --git a/recipes-security/bastille/<a href=3D"http://bastille_3.2.=
1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">bastille_3.2.1.bb</a>=
 b/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" rel=3D"no=
referrer noreferrer" target=3D"_blank">bastille_3.2.1.bb</a><br>
&gt; index 2d82983..e7852d9 100644<br>
&gt; --- a/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" r=
el=3D"noreferrer noreferrer" target=3D"_blank">bastille_3.2.1.bb</a><br>
&gt; +++ b/recipes-security/bastille/<a href=3D"http://bastille_3.2.1.bb" r=
el=3D"noreferrer noreferrer" target=3D"_blank">bastille_3.2.1.bb</a><br>
&gt; @@ -2,7 +2,7 @@<br>
&gt;=C2=A0 =C2=A0#consult the README file for the meta-security layer for a=
dditional information.<br>
&gt;=C2=A0 =C2=A0SUMMARY =3D &quot;Linux hardening tool&quot;<br>
&gt;=C2=A0 =C2=A0DESCRIPTION =3D &quot;Bastille Linux is a Hardening and Re=
porting/Auditing Program which enhances the security of a Linux box, by con=
figuring daemons, system settings and firewalling.&quot;<br>
&gt; -LICENSE =3D &quot;GPLv2&quot;<br>
&gt; +LICENSE =3D &quot;GPL-2.0-only&quot;<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://${S}/COPYING;md5=3Dc93c0=
550bd3173f4504b2cbd8991e50b&quot;<br>
&gt;=C2=A0 =C2=A0# Bash is needed for set +o privileged (check busybox), mi=
ght also need ncurses<br>
&gt;=C2=A0 =C2=A0DEPENDS =3D &quot;virtual/kernel&quot;<br>
&gt; diff --git a/recipes-security/ecryptfs-utils/<a href=3D"http://ecryptf=
s-utils_111.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">ecryptfs-ut=
ils_111.bb</a> b/recipes-security/ecryptfs-utils/<a href=3D"http://ecryptfs=
-utils_111.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">ecryptfs-uti=
ls_111.bb</a><br>
&gt; index 9aefc32..5f8cf3c 100644<br>
&gt; --- a/recipes-security/ecryptfs-utils/<a href=3D"http://ecryptfs-utils=
_111.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">ecryptfs-utils_111=
.bb</a><br>
&gt; +++ b/recipes-security/ecryptfs-utils/<a href=3D"http://ecryptfs-utils=
_111.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">ecryptfs-utils_111=
.bb</a><br>
&gt; @@ -6,7 +6,7 @@ DESCRIPTION =3D &quot;eCryptfs is a stacked cryptograp=
hic filesystem \<br>
&gt;=C2=A0 =C2=A0HOMEPAGE =3D &quot;<a href=3D"https://launchpad.net/ecrypt=
fs" rel=3D"noreferrer noreferrer" target=3D"_blank">https://launchpad.net/e=
cryptfs</a>&quot;<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;base&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -LICENSE =3D &quot;GPL-2.0&quot;<br>
&gt; +LICENSE =3D &quot;GPL-2.0-only&quot;<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D8ca43cbc84=
2c2336e835926c2166c28b&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0DEPENDS =3D &quot;keyutils libgcrypt intltool-native glib-=
2.0-native&quot;<br>
&gt; diff --git a/recipes-security/nikto/<a href=3D"http://nikto_2.1.6.bb" =
rel=3D"noreferrer noreferrer" target=3D"_blank">nikto_2.1.6.bb</a> b/recipe=
s-security/nikto/<a href=3D"http://nikto_2.1.6.bb" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">nikto_2.1.6.bb</a><br>
&gt; index 8542d69..8c21b30 100644<br>
&gt; --- a/recipes-security/nikto/<a href=3D"http://nikto_2.1.6.bb" rel=3D"=
noreferrer noreferrer" target=3D"_blank">nikto_2.1.6.bb</a><br>
&gt; +++ b/recipes-security/nikto/<a href=3D"http://nikto_2.1.6.bb" rel=3D"=
noreferrer noreferrer" target=3D"_blank">nikto_2.1.6.bb</a><br>
&gt; @@ -3,7 +3,7 @@ DESCRIPTION =3D &quot;Nikto is an Open Source web serv=
er scanner which performs compreh<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;security&quot;<br>
&gt;=C2=A0 =C2=A0HOMEPAGE =3D &quot;<a href=3D"https://cirt.net/Nikto2" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://cirt.net/Nikto2</a>&qu=
ot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -LICENSE =3D &quot;GPLv2&quot;<br>
&gt; +LICENSE =3D &quot;GPL-2.0-only&quot;<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/GP=
L-2.0-only;md5=3D801f80980d171dd6425610833a22dbe6&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0SRCREV =3D &quot;f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79&=
quot;<br>
&gt; diff --git a/recipes-security/sssd/<a href=3D"http://sssd_2.5.2.bb" re=
l=3D"noreferrer noreferrer" target=3D"_blank">sssd_2.5.2.bb</a> b/recipes-s=
ecurity/sssd/<a href=3D"http://sssd_2.5.2.bb" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">sssd_2.5.2.bb</a><br>
&gt; index 8bc8787..9f1d627 100644<br>
&gt; --- a/recipes-security/sssd/<a href=3D"http://sssd_2.5.2.bb" rel=3D"no=
referrer noreferrer" target=3D"_blank">sssd_2.5.2.bb</a><br>
&gt; +++ b/recipes-security/sssd/<a href=3D"http://sssd_2.5.2.bb" rel=3D"no=
referrer noreferrer" target=3D"_blank">sssd_2.5.2.bb</a><br>
&gt; @@ -2,7 +2,7 @@ SUMMARY =3D &quot;system security services daemon&quot=
;<br>
&gt;=C2=A0 =C2=A0DESCRIPTION =3D &quot;SSSD is a system security services d=
aemon&quot;<br>
&gt;=C2=A0 =C2=A0HOMEPAGE =3D &quot;<a href=3D"https://pagure.io/SSSD/sssd/=
" rel=3D"noreferrer noreferrer" target=3D"_blank">https://pagure.io/SSSD/ss=
sd/</a>&quot;<br>
&gt;=C2=A0 =C2=A0SECTION =3D &quot;base&quot;<br>
&gt; -LICENSE =3D &quot;GPLv3+&quot;<br>
&gt; +LICENSE =3D &quot;GPL-3.0-or-later&quot;<br>
&gt;=C2=A0 =C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb6=
73463ab874e80d47fae504&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0DEPENDS =3D &quot;acl attr openldap cyrus-sasl libtdb ding=
-libs libpam c-ares krb5 autoconf-archive&quot;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#56537): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56537" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/56537</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89983861=
/3616698" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/89983861/3616698</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:akuster808@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">akuster808@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</blockquote></div></div></div>

--0000000000009480d105dae9c4b1--

