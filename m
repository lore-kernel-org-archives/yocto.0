Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713FECD1284
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 12:40:50 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web10.10837.1712061276750260495
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Apr 2024 05:34:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inovex.de header.s=google header.b=U52cSiSq;
 spf=pass (domain: inovex.de, ip: 209.85.208.52, mailfrom: anna-lena.marx@inovex.de)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-56b8e4f38a2so6148582a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 05:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inovex.de; s=google; t=1712061275; x=1712666075; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tq2IYjjz5l59uJO+xvGUq1ydCEC7BFQ8ka0y4/5PgSg=;
        b=U52cSiSqwJ0Dek6d+cnU+jYsVyKuljWynrcDWFHzbWgFqT9BoK/Db+GYCVm/tJ4aaf
         gGUUHVecOoad+XyLgWB+H2NGr/R+xQAQVFHTIKH5rTPvnL2bF0Id3f5hT6+IHHeKD0bF
         3moNK+TrOUhj/pftnn3pW2+c0Jp2rV8oDA4eRuA2qrp+owBE5QCO4xmR2evCoMuVFJb9
         cMqq72EsoQAq3tsIsFH4KXkMs67VUm9s05Ll4OwZ+OCOYeCRkAFg+vOmw+Hm70PJjPoP
         cRefDXPrIFMAIuSpkCn2RKkxsfK9+0Uvrso0kU5Eb/zAvGM+3d+rZIFSg/i0SVKtAMVq
         fJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712061275; x=1712666075;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tq2IYjjz5l59uJO+xvGUq1ydCEC7BFQ8ka0y4/5PgSg=;
        b=gQupOuSwhTetEXO62/f+B6ApquE08UplQ3NJeqV4sCt6Hx9tBQeG8fkRjd29cMXHdB
         Wvoe0rJdZrYT6Pwj0j6TC+1OTE4/iiN1acmNvRdgvV5/meguDEKTyF409WuV3aIZIx/w
         zOfPeX3riH9Yhslzu+4Td+szzPWGV53HZjui9sqBJbkFe3+J343zJFHIQT46BLq5t3+q
         dB0Ij8wKpnKmxQw3vRArlA8878YeGH0RpYLc2CqAkhDfYyklDKRhDdNChhTPL0YXnyjp
         ntq9g1MFKkwEW34hDsQtvd7oEEkp8NxksJ0mNmRjIZdtwunTmmj2QNpIEEfQAHu7D5yX
         ZDsA==
X-Gm-Message-State: AOJu0YyCmx6eqWlkjsYKK3OdjlXvQXSi9q6E3u8tbhG17kIVmwVYOw4Z
	9j3f05G/aph9gHVhGlJqwdniJaWIuLCLzEPDSYNGpWHJuY7q0+fx5qo3AaITD0egTG3Ot9BDnTM
	RSLfBua+RdHq3kR5eEaeWx2adRwWFAOIaTIwHgbnh5ogVcr55K1VSUA==
X-Google-Smtp-Source: AGHT+IHiAJV69dRJ0rDW6YOiAHipMlKznjD4X3TljiLj2knQMX1f/nEMLADq112yL3S/pMv1S8byaDRz7Oiaqv1VP/k=
X-Received: by 2002:a17:907:26c1:b0:a4e:3871:5f4e with SMTP id
 bp1-20020a17090726c100b00a4e38715f4emr9358004ejc.36.1712061274524; Tue, 02
 Apr 2024 05:34:34 -0700 (PDT)
MIME-Version: 1.0
From: "Anna-Lena Marx" <anna-lena.marx@inovex.de>
Date: Tue, 2 Apr 2024 14:34:23 +0200
Message-ID: <CABFt5omREG42Kqo8UfA48aCj76-jarcJhUxAEUJ0v_yYk3dSuQ@mail.gmail.com>
Subject: [kirkstone] Issues with patching cockpit
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 12:40:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62876

Hi all,
I had some issues with patching cockpit-220 in kirkstone and hoping
for validation, ideas and support here.

cockpit has a bug in v220, which is fixed in newer releases.
When trying to apply the modified diff for 220, the patch itself
appies but causes a not expected compilation error:

| ../cockpit-220/src/ws/test-kerberos.c: In function 'mock_kdc_start':
| ../cockpit-220/src/ws/test-kerberos.c:406:11: warning: this 'if'
clause does not guard... [-Wmisleading-indentation]
|   406 |           if (errno != EAGAIN && errno != EINTR)
|       |           ^~
| ../cockpit-220/src/ws/test-kerberos.c:408:13: note: ...this
statement, but the latter is misleadingly indented as if it were
guarded by the 'if'
|   408 |             break;
|       |             ^~~~~
| /build/tmp-glibc/hosttools/mkdir -p ./ && sed -e
's,[@]datadir[@],/usr/share,g' -e 's,[@]libexecdir[@],/usr/libexec,g'
-e 's,[@]sysconfdir[@],/etc,g' -e 's,[@]libdir[@],/usr/lib,g' -e
's,[@]includedir[@],/usr/include,g' -e 's,[@]bindir[@],/usr/bin,g' -e
's,[@]sbindir[@],/usr/sbin,g' -e 's,[@]prefix[@],/usr,g' -e
's,[@]exec_prefix[@],/usr,g' -e 's,[@]prefix[@],/usr,g' -e
's,[@]PACKAGE[@],cockpit,g' -e 's,[@]VERSION[@],220,g' -e
's,[@]PKEXEC[@],/usr/bin/pkexec,g' -e
's,[@]SUDO[@],/build/tmp-glibc/hosttools/sudo,g' -e
's,[@]user[@],root,g' -e 's,[@]group[@],root,g' -e
's,[@]wsinstanceuser[@],root,g' -e 's,[@]wsinstancegroup[@],root,g' -e
's,[@]selinux_config_type[@],,g' -e
's,[@]with_networkmanager_needs_root[@],yes,g' -e
's,[@]with_storaged_iscsi_sessions[@],yes,g' -e
's,[@]with_appstream_config_packages[@],[],g' -e
's,[@]with_appstream_data_packages[@],[],g' -e
's,[@]with_nfs_client_package[@],false,g' -e
's,[@]with_vdo_package[@],false,g'
../cockpit-220/src/ws/cockpit-desktop.in > cockpit-desktop.tmp && mv
-f cockpit-desktop.tmp cockpit-desktop
| /build/tmp-glibc/hosttools/mkdir -p dist/docker && \
| (if ls ../cockpit-220/pkg/docker/*.html >/dev/null 2>&1; then
NODE_ENV=production
SRCDIR=/build/tmp-glibc/work/corei7-64-oe-linux/cockpit/220-r0/cockpit-220
BUILDDIR=/build/tmp-glibc/work/corei7-64-oe-linux/cockpit/220-r0/build
timeout 15m ../cockpit-220/tools/missing
../cockpit-220/tools/webpack-make -d dist/docker/Makefile.deps -c
../cockpit-220/webpack.config.js; else touch
dist/docker/Makefile.deps; fi ) && \
|   touch dist/docker/stamp
| /bin/bash: line 2: timeout: command not found
| make[1]: *** [Makefile:10042: dist/docker/stamp] Error 127

The actual applied diff is:

diff --git a/pkg/lib/journal.js b/pkg/lib/journal.js
index 302930a9d..87b3ef96a 100644
--- a/pkg/lib/journal.js
+++ b/pkg/lib/journal.js
@@ -219,9 +219,10 @@ journal.printable = function printable(value) {
     else if (typeof (value) == "string")
         return value;
     else if (value.length !== undefined)
-        return cockpit.format(_("[$0 bytes of binary data]"), value.length);
-    else
+        return new TextDecoder().decode(newUint8Array(value));
+    else {
         return _("[binary data]");
+ }
 };

 function output_funcs_for_box(box) {


The same error occurs, too, if the diff only changed the text in cockpit.format.
I tried adding DEPENDS += "nodejs-native coreutils-native" to solve
the show error and the following one, but this is neither successful
nor should it be necessary to modify the dependencies based on the
diff.
As well, it does not matter if I add the patch in a .bbappend or in
the cockpit recipe itself.

Any thoughts on this?

Best,
Anna-Lena Marx

