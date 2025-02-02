Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F63AC0218F
	for <webhook@archiver.kernel.org>; Sun,  2 Feb 2025 12:22:02 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.63081.1738498919688228297
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2025 04:22:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DUErsC/E;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so1746591f8f.0
        for <yocto@lists.yoctoproject.org>; Sun, 02 Feb 2025 04:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738498918; x=1739103718; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zx1rSdOdFGzCgzwSTpyrEq9Xagjm9fWkgNV8vJdmhnc=;
        b=DUErsC/EZzFzxVJfL12qBZaJQYLqJ5hBJhBASeW7C3c7ZMFueC0yiFJtX3CWuykMyJ
         XW9QU3qOK+OXI6vRuSLC2jJeymqIXwgkuQZ8l2QsLExnscysUZuQH5ef5ontXZu/7EB4
         ZTIYwIV93R+nVYsxB5uy3Cvec9eNSZra7qLDaiO7XtH4LBELYfV/FPBH7cDNmSN00j8k
         uVxruuQUZRBXZwyaVyCYhCtd1V6o7lkJ7rsJZTMa5QDDlIIDnsv2stWCJ8eVuDpCKwjZ
         LaXEhJ6ti6LfDYpcqnOgApSkizLy/emhn1zyDN8nkmbzkdFQAUAtgLqj6ZsoIfNGCxwN
         412Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738498918; x=1739103718;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zx1rSdOdFGzCgzwSTpyrEq9Xagjm9fWkgNV8vJdmhnc=;
        b=LtrBwEZ7V1rt/lhZH197WeuwwHi+1J1GqSVedHtm7Hy75GYYH15yEVbcpTTZoGBItH
         q+Vulw5thJckUI5XLpt+tkxhYwSdj5ScZx/SvimmfLMxIpRRUZvuWAhpuJfRCz4xJNev
         RSHVDVJzkp6Bw3uXdL1gCj5k0VSyXvjq7NjZKDzWvd4rynXP/F8bBZ7uz0tsC4FCyiB4
         c9/K9+yvXFMmKY6kcaPgyv79IaU/QHq286Bowr53i1WOSn5WLSZxz/DKvJ9/J/FFvzh4
         6H2D5GF/aOal0lXcBCz77tKXYw0sranXf7dLSZKwbG8cQ7sZPawb8/f0CR4E8JmjAAB1
         LiHg==
X-Gm-Message-State: AOJu0YzQC81PEnIVlE5sQF9eDsuP9qV0NWJyrACpd5PlDRJ9rGClJUmm
	2oB4b2ocrVrGRvfOn7tHYl494IqywKGnuW7L09ST3IGYwu0988NaN1MVweaR
X-Gm-Gg: ASbGncuDmJGHhCHKPQJbHooEMsNkBBSySAiN1yuV7u9NfXftoJ4YXtpuTuAZ+YEj7fo
	3WEE6egYJTQaqqKh/+YLnSdQRdZ/TMzVJrdTeUdheCuZtc5CFJe8fOs54dP9Z1o9RUg0FpymHex
	XG+wz5GYoMVRTw33wIhIdfmpVULHWdK3+P4r5sf/7OwDqxYGxOqjIhwd21eM3b+vTtNYSxEeI2g
	FV9PPPz9EbFIffq+fNgM9LNdN40+6db2pZ09mPIAiStx7fgKk6D36C+d9A+3Fmk7THVFmMbfO+g
	t6t0hOcFNzS3PXYAcV63MyE=
X-Google-Smtp-Source: AGHT+IHINffQ64d2WMb6dIG0hBumZX9v/4QpNWCbUHGL6gV5N07yiMIXG0uqFyLIKGxkhiynMFanSQ==
X-Received: by 2002:a5d:59a4:0:b0:37e:d2b7:acd5 with SMTP id ffacd0b85a97d-38c5194c6bdmr14977889f8f.8.1738498917712;
        Sun, 02 Feb 2025 04:21:57 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438dcc6df1esm155393885e9.27.2025.02.02.04.21.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 02 Feb 2025 04:21:57 -0800 (PST)
Message-ID: <17aaec9a-64ac-494e-a66a-abd69e9e0197@gmail.com>
Date: Sun, 2 Feb 2025 13:21:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] installs files in /var/volatile
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
References: <2084383241.3521981.1738442810341@webmail.strato.de>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2084383241.3521981.1738442810341@webmail.strato.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Feb 2025 12:22:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64695

On 01.02.25 21:46, Daniel Kampert via lists.yoctoproject.org wrote:
> Hi,
> I´m building a layer to install wmbusmeters for Kirkstone and I run 
> into this issue:
> ERROR: wmbusmeters-1.18.0-r0 do_package_qa: QA Issue: wmbusmeters 
> installs files in /var/volatile, but it is expected to be empty 
> [empty-dirs]
> What does it mean and where does it come from / how can I solve it? My 
> recipe looks like this

What does it mean - There are a number of folders that are not expected 
to contain
files installed by application due to various reasons. One QA check[1] 
ensures that
this is respected by the packages.

Where it come from - The Makefile installs some directories in the 
/var/volatile folder.
Frequently this folder is tmpfs, but even when it is not, its content is 
considered ephemeral, so
installing anything here is frequently a bug. It can be used as a 
temporary folder during runtime, but
if an application needs to store anything that will be needed after a 
reboot, this folder
is not a good place.

How can I solve it - There are a couple of ways. A couple of 
non-exhaustive options:
- Delete this folder in a do_install:append() function ("rm -rf 
${D}${localstatedir}/log" or something
along the lines), and simply try to start the application. Maybe it 
re-creates the folder upon startup,
and it will just work.
- Do the same as in the previous suggestion, but add "--logfile=syslog" 
as a starting argument
in your systemd unit file. Based on the readme this should make your 
application to use
the syslog for its logs instead of a dedicated file.
- If none if this is working for you, delete the folder still, but look 
into tmpfiles.d [2]
and its configuration, how to recreate this folder during boot. This 
service creates folders and
files early during startup, it is usable exactly in such cases. You can 
find a couple examples of its
usage in Yocto also[3].

[1]: https://docs.yoctoproject.org/4.0.24/ref-manual/qa-checks.html
[2]: https://www.freedesktop.org/software/systemd/man/latest/tmpfiles.d.html
[3]: e.g. 
https://git.yoctoproject.org/poky/tree/meta/recipes-extended/pam/libpam_1.5.2.bb?h=kirkstone#n137
> /inherit autotools-brokensep pkgconfig/
> /DESCRIPTION = "The program acquires utility meter readings from wired 
> m-bus or wireless wm-bus meters."/
> /HOMEPAGE = "https://github.com/wmbusmeters/wmbusmeters"/
> /LICENSE = "GPL-3.0-only"/
> /LIC_FILES_CHKSUM = 
> "file://${COMMON_LICENSE_DIR}/GPL-3.0-only;md5=c79ff39f19dfec6d293b95dea7b07891"/ 
>
> /# The Makefile is stripping. Overwrite the "STRIP" variable in the 
> Makefile and use the stripping from Yocto/
> /EXTRA_OEMAKE += "STRIP=true"/
> /CXXFLAGS += "-DLIBXML_DOCB_ENABLED"/
> /SRC_URI = " \/
> /file://0001-set-libxml2-cxxflags-by-pkg-config.patch \/
> /git://github.com/wmbusmeters/wmbusmeters;protocol=https;branch=master \/
> /"/
> /# Use version 1.18.0/
> /SRCREV = "2f2720d9d8e043304a366d11d933be9d535e17a5"/
> /DEPENDS = "rtlsdr icu libxml2"/
> /RDEPENDS:${PN} = "rtlsdr icu"/
> /S = "${WORKDIR}/git"/
> /FILES:${PN} = " etc \/
> /var \/
> /lib \/
> /usr/bin \/
> /usr/sbin \/
> /${systemd_system_unitdir}/system/wmbusmeters.service \/
> /"/
> /SYSTEMD_SERVICE:${PN} = "wmbusmeters.service"/
> /SYSTEMD_AUTO_ENABLE:${PN} = "enable"/
> Thanks for help!
> Mit freundlichen Grüßen / With kind regards
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenbüchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de <https://www.daniel-kampert.de>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64694): https://lists.yoctoproject.org/g/yocto/message/64694
> Mute This Topic: https://lists.yoctoproject.org/mt/110941591/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

