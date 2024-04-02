Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C80CD128D
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 12:40:50 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.10738.1712059502415023526
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Apr 2024 05:05:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inovex.de header.s=google header.b=E8RZYr2P;
 spf=pass (domain: inovex.de, ip: 209.85.218.54, mailfrom: anna-lena.marx@inovex.de)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a4e934c280fso24291166b.2
        for <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 05:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=inovex.de; s=google; t=1712059500; x=1712664300; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tq2IYjjz5l59uJO+xvGUq1ydCEC7BFQ8ka0y4/5PgSg=;
        b=E8RZYr2PKkQQYg8l7Eh8/nA5cJApaAu+G7+XpwX6yWtBYWgGXAf7ywt41u94pDgdOc
         lItwHk8nSssaV4ed43nItkrtTOVayn/VwRg2zPcaFTVsWH6PRicKVAFooxX2iychBcjK
         SAWK7gvCWQU96cc4y45SystFYR9qBc7zQJP0MlMBHKoNvW089utNgwhB2MGGRU/EHows
         CUIULM//nri8i8mlPjY7Z9dOfLT9KLi3woQRw5Pr9vTG0yzgz8Aw9XNpZ7JGdAfnaJE3
         uOy3KAmtJxaEt7rNnpmph1gPLcL7cAxTHi9kF9JgnjzqsFrcYpMVh6rbZX2XEkr+cFKa
         wqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712059500; x=1712664300;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tq2IYjjz5l59uJO+xvGUq1ydCEC7BFQ8ka0y4/5PgSg=;
        b=bc4qsYWwoKXq7K7ZTk6K1np0QxXAofsgWd336AzybKU8FBGa7mfQ2L8mz3wd+9ssGh
         05no1Uo5cchA+r4KkCqpGxrQrZPTPC2+OGb3LCiiqa37g8F3xSEI2jELU5/ptud76k7M
         JTzc8Q7jglIe8ZUqkqRXRpvUmAuDoYUZbp6Y4djr+gJfOKOpc1t6ozj+2RWQ7YEt9+FJ
         a/YY9PNIVtJOa64C0Y2tDE/eGnaks8ar49isHVC1SvrsH72AF3/qPJ3l+7B+CCdkNWA3
         jQvZpIOrmIM+YP62/Xmb6UXJkWJ06GBWhpNCcmZuR6YVehn56Zubirg8NJ6W+jdRBH7I
         Sqqg==
X-Gm-Message-State: AOJu0YwV0bzfZetCTeyUg4qtkhWuI0DSbM1BlnY/YlwWgOYXfzGTFADy
	0aTU8a4c5QT5wnBE6+Q/ZdNGYxrak8j6Rrn47osR6WJgzE2nbieVtlIFoIQkj+7gjVsdVYNJYR3
	zcKwcTGjDsf0S5i4arQAC1wOf83DC5sDHuUlWodq28CDuVyzBSuuJow==
X-Google-Smtp-Source: AGHT+IH3evZTIJ7DeOWQbDUyZip8eDG0x15JNDTWWMzC1ggYybfZFgInrJ9AFM/a5xTB8ySwig1Bluyv9PU7qlw4Hus=
X-Received: by 2002:a17:907:86ab:b0:a4e:5bad:b6ed with SMTP id
 qa43-20020a17090786ab00b00a4e5badb6edmr6475342ejc.13.1712059500324; Tue, 02
 Apr 2024 05:05:00 -0700 (PDT)
MIME-Version: 1.0
From: "Anna-Lena Marx" <anna-lena.marx@inovex.de>
Date: Tue, 2 Apr 2024 14:04:49 +0200
Message-ID: <CABFt5omojYzgGRJNRSN+Jefd1hkW6=xYWHeJQQumcT1ev4UBhQ@mail.gmail.com>
Subject: [kirkstone] Issues with patching cockpit
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 12:40:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62875

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

