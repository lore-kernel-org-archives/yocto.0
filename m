Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.539.1610134719630088947
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Jan 2021 11:38:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdD5VirZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id d26so10033226wrb.12
        for <yocto@lists.yoctoproject.org>; Fri, 08 Jan 2021 11:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=htGIFdiEsGIkSKvH05hB3lo6fVIpuUUCljKCZpJR7vk=;
        b=jdD5VirZHUsLg2lBDiD1XDNDwbtBBR4g4Y7h++DYbhLfvsHxpvCbNmJi+kAHzT+7Th
         a3IRh18l88xe81kIi+fxf1K6AQpwfUTVL8z/YB3WK8gh20ziPLkUuyq4rPKZYpZCpzs+
         2bsWQd6dhvn1WCeXbvT1QUQas5nLKH4/J7/U6TAvgs76gBKmtsD1l5daoJ0sft5Xwdy6
         R7BpGXyG5VlGvZ+X4kPgMcSr7tL2ufM+OQ7Qr2I0eGkdZZpefPtelfm6k9XLmFcVKQh8
         udIJlHvyEeI/dJiSz5A5AFLbz68rt+dR68Bq9D4dyW/73uAZmFrAIXYr6jNW+GQ1mu2m
         7LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=htGIFdiEsGIkSKvH05hB3lo6fVIpuUUCljKCZpJR7vk=;
        b=kPVErbaYpVvRZnV2X0GG/Dz8qBeNDLnoG0E2d758CRL1sLCqNlD0Y83BhnGmb9YTYp
         t9o5JJCHJdS4D9VL3viuI6fmfZ7Cx9EGRCXHC7efLN2rMDo53PnUW5yi+Bm/73KM69WK
         IXXEl9lT7WsVBSYQ9QZUrl6RQkUn5oGgG9Us0YJPEURzlf3ayv10a0rhzAAR8WGxWBZ3
         MtHKwJnRASmB5j+u/vvf3dkkoSXC/RV4uMWa9d8rsQ7zaOR31dCjFmNcyOWtzp+vZW5r
         P7h2z1EaU1WMmxVC6gLc2KR54r3d77j513Ui5YDhZAVV717juog2lGqclGIl3VlfcVPl
         sVmw==
X-Gm-Message-State: AOAM532NxDxj21y8QzOLssj/o+QPkAw6psxM0s7OzzhTRqDSYJP31XNN
	WAD6UIv+oyKwQTLv/izYWzQkXz/Fh5g=
X-Google-Smtp-Source: ABdhPJyNLjSz8Ji7IRp2KbVFrV1OAoc8o83nbQko88M65SO5njlVc9ZlEs/Esbgq3xd67wwloJhZ0w==
X-Received: by 2002:adf:ee4a:: with SMTP id w10mr4979118wro.81.1610134717734;
        Fri, 08 Jan 2021 11:38:37 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-143-170.home.otenet.gr. [2.86.143.170])
        by smtp.gmail.com with ESMTPSA id l16sm14503097wrx.5.2021.01.08.11.38.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 11:38:37 -0800 (PST)
Subject: Re: [yocto] Suggestions on improvements
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>, yocto@lists.yoctoproject.org
References: <CAN7sTguaF1pH-xaTdS4KOK2TNJOoCWCBADC+rM8n8ggwBb2p7A@mail.gmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <8ab12b86-3787-7bbd-d384-415ed21132c5@gmail.com>
Date: Fri, 8 Jan 2021 21:38:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAN7sTguaF1pH-xaTdS4KOK2TNJOoCWCBADC+rM8n8ggwBb2p7A@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 08/01/2021 04:59, Meh Mbeh Ida Delphine wrote:
 >
 > Due to some mismatches, warnings pop up during the build. Below are some
 > few sample warnings and I'm aware of false positives;
Why do you think they are false positives?

 >
 > WARNING: glibc-2.32-r0 do_package: License for package nscd is {'GPL-2.0
 > WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
Check this file:

FileName: 
./spdx_temp/git/.pc/0026-inject-file-assembly-directives.patch/sysdeps/aarch64/crti.S
FileChecksum: SHA1: 83c9d68d2f83ca0af8af2a918533f21004aac238
LicenseConcluded: NOASSERTION
LicenseInfoInFile: LGPL-2.1-or-later
LicenseInfoInFile: LicenseRef-scancode-unlimited-linking-exception-lgpl
FileCopyrightText: <text>Copyright (c) 1995-2020 Free Software 
Foundation, Inc.
</text>


I play around with meta-spdxscanner and if you run e.g. scancode-toolkit 
it tells you:

FileName: ./spdx_temp/git/nscd/cache.c
FileChecksum: SHA1: ecec99d5427b03fe5c390f5fd78274a2a7c625e7
LicenseConcluded: NOASSERTION
LicenseInfoInFile: GPL-3.0-or-later
FileCopyrightText: <text>Copyright (c) 1998-2020 Free Software 
Foundation, Inc.
</text>

;)

Which comes from:

This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published
    by the Free Software Foundation; version 2 of the License, or
    (at your option) any later version.

So once someone determines what's the real license, I guess packages 
could be licensed accordingly ;)

LICENSE_glibc-xxx = "GPLv3+"

is it? Bring in the lawyers.

 > WARNING: glibc-2.32-r0 do_package: License for package sln is {'GPL-2.0
 > WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
 > WARNING: glibc-2.32-r0 do_package: License for package ldconfig is
 > {'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
 > WARNING: glibc-2.32-r0 do_package: License for package glibc is
 > {'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
 > WARNING: glibc-2.32-r0 do_package: License for package glibc-staticdev
 > is {'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2 & LGPLv2.1
 > WARNING: libcap-ng-0.8-r0 do_package: License for package libcap-ng is
 > {'GPL-2.0 WITH Linux-syscall-note'} vs GPLv2+ & LGPLv2.1+> WARNING: 
libtirpc-1.2.6-r0 do_package: License for package libtirpc is
 > {'GPL-2.0 WITH Linux-syscall-note'} vs BSD-3-Clause
 > WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_package: License
 > for package ptest-runner is {'GPL-2.0-or-later'} vs GPLv2+
I assume GPLv2+ is supposed to mean GPL-2.0-or-later.
One fix would be to put in the LICENSE field of ptest-runnner 
GPL-2.0-or-later instead of GPLv2+. Another fix could be to add the 
mapping between GPLv2+ and GPL-2.0-or-later.

 > WARNING: libcap-2.44-r0 do_package: License for package libcap is
 > {'GPL-2.0 WITH Linux-syscall-note'} vs BSD | GPLv2> WARNING: 
libcap-2.44-r0 do_package: License for package libcap-staticdev
 > is {'GPL-2.0 WITH Linux-syscall-note'} vs BSD | GPLv2
 > WARNING: openssl-1.1.1h-r0 do_package: License for package
 > openssl-engines is {'GPL-2.0 WITH Linux-syscall-note', 'GPL-2.0+ WITH
 > Linux-syscall-note'} vs openssl
 > > Any suggestions on improvements I can make to this functionality?
 >
 > Cheers,
 > Ida.
Regards,

Robert

