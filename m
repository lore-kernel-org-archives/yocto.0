Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AA32C369CB
	for <webhook@archiver.kernel.org>; Sat, 26 Apr 2025 18:17:53 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.13748.1745691465868953481
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Apr 2025 11:17:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fnKfIH8H;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-acb415dd8faso475137666b.2
        for <yocto@lists.yoctoproject.org>; Sat, 26 Apr 2025 11:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745691464; x=1746296264; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zqrSFuzUHr+UUQkimRnqlvFOMd9pWnq9hc9aeGseqKA=;
        b=fnKfIH8HqSTxGQwT+N022uVQY2R8nMTJsjVXnmjKbJn5GdhCKrPQOFPqXYz+wYLDse
         lL+fLfdFCLSDnmcx66yKvzb+FgU2WFo6X3VITSPQPN5orjdY317v+4gnawTrlshqbV+A
         4RNzvlB/uz2XwVLxk5asi9ByliZNNbW45biP5Z7kk98UmgQIHw9Qm6dtH2IkOAHKIUDL
         xCdXrxVp5mPqYCLOADnJBJjWFnh/ogLyvXrIcC7x/Sz5EFb/zDkYBj6QlsMkAisDLkwl
         C6GgZA1Ioac22BlsoHpa2tTtDZ+mPalR6rq3j1s+ArXPgS6cXjiC49ooNk0AwlsR7GbC
         2cPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745691464; x=1746296264;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqrSFuzUHr+UUQkimRnqlvFOMd9pWnq9hc9aeGseqKA=;
        b=VNi9QkApS61nVcbPSKWYukJD+S8gXL6YEKel7N/WDHzBdWjihKKq1+6RJcxJiaS5Fl
         qQQmknXsCNwNfvkW3HbGQYkw9baXidjxzULBKlT1/gicTz2DXDfvBfdpK15Jq+j+JJAa
         zJAmVmMh3SRXK83UJH0n1OY1fwKb0DUUI2XrY9XHB4s17PvuWXbEvibcHKHa51UKsuRx
         4g5UXTiCCPfJDdZEFcTxgRkl19QrbJvQmLGJ5GSsc8IogT/1himTEEUeRtccZYr7I/rU
         3McxcfdZo5+hWud/og4zcUK4GqStmJ0NNomnKwZGOb0EjzjmnHHIdlLMCqt8JF3oDg0G
         Y5pA==
X-Gm-Message-State: AOJu0YyMfldJIXe6YlWh8Hx9CKr8mcIZ1Rj1D/rTTf8aKvH43r+I+DYU
	m3hhZJ3tpttji2IxGxWmYbTyMykq2BWS/AkzAWe3b1xM3NoUVlB+11mMeg==
X-Gm-Gg: ASbGncsShFLt4Dblf0DsQCRwBUwpYI7MSjWa00nNyE8ncCsGZs2GOEu5RoIVRhueagN
	GDEcBuNVizlcVMo5Phst7vJ5jB+2wL4t8GF5tGQXvjTYIvbDZpQkjKrmtp04IKYsN+7ROwWOayl
	ovHoyXeJ3+CJyzSdUAsYMw/YAte5cjvaU4US/gSEIMSDBtbDUsnA4HhboSPx4q1lkyT7N/JEFnK
	de4csBdrmUIUTB8DrgjKGP3s/L7Tvx/7T2E79zZs2gfql5wmE2mInFUZzBtoP20hJHpHlnrjns8
	4dMPcCw7u9yf2IgDan72bLo2Lbmy+u9/HiR89kqqqX9u2GqM
X-Google-Smtp-Source: AGHT+IGeWltJyYpMTPxb9bO5Ww1e39r7jZk7f8KBWPVog00lGn0uc+dA/iEZ0/J6rMPQ2+qt+zWW6Q==
X-Received: by 2002:a17:906:c111:b0:acb:6ec0:12ec with SMTP id a640c23a62f3a-ace7116473fmr541131466b.35.1745691463779;
        Sat, 26 Apr 2025 11:17:43 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e69efsm321583266b.46.2025.04.26.11.17.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 11:17:43 -0700 (PDT)
Message-ID: <cc106560-2930-44bd-b160-c19cee3bd6ab@gmail.com>
Date: Sat, 26 Apr 2025 20:17:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Migration of BSP from kirkstone to scarthgap : size of
 binaries increased a lot, why ? gcc ? relro option ?
To: yocto@lists.yoctoproject.org, jguittet.opensource@witekio.com
References: <FNzF.1745507465452371172.YxgL@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <FNzF.1745507465452371172.YxgL@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Apr 2025 18:17:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65256



On 4/24/25 17:11, Joel GUITTET via lists.yoctoproject.org wrote:
> Hello,
>  
> We are currently migrating a BSP from kirkstone 4.0.17 to scarthgap 5.0.8.
> We observed the size of the BSP has increased a lot. It becomes a
> problem as the QSPI size is limited, so increasing the size of the BSP
> means less free space for the app.
> After a small investigation we observed not a lot of changes in the
> rootfs. The main reason the BSP is growing is the size of the binaries
> is growing (executable and libraries).
> It seams an extra padding has been added with scarthgap.
>  
> Example with an objdump -h of libattr.so.1.1.2501 on scarthgap:
>  
>
>
>     Sections:
>     Idx Name          Size      VMA               LMA              
>     File off  Algn
>       0 .note.gnu.property 00000020  0000000000000238
>      0000000000000238  00000238  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       1 .note.gnu.build-id 00000024  0000000000000258
>      0000000000000258  00000258  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       2 .gnu.hash     00000178  0000000000000280  0000000000000280
>      00000280  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       3 .dynsym       000006a8  00000000000003f8  00000000000003f8
>      000003f8  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       4 .dynstr       0000027a  0000000000000aa0  0000000000000aa0
>      00000aa0  2**0
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       5 .gnu.version  0000008e  0000000000000d1a  0000000000000d1a
>      00000d1a  2**1
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       6 .gnu.version_d 000000a4  0000000000000da8  0000000000000da8
>      00000da8  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       7 .gnu.version_r 00000040  0000000000000e50  0000000000000e50
>      00000e50  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       8 .rela.dyn     00000108  0000000000000e90  0000000000000e90
>      00000e90  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       9 .rela.plt     000003f0  0000000000000f98  0000000000000f98
>      00000f98  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      10 .init         0000001c  0000000000001388  0000000000001388
>      00001388  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      11 .plt          000002c0  00000000000013b0  00000000000013b0
>      000013b0  2**4
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      12 .text         00002258  0000000000001670  0000000000001670
>      00001670  2**4
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      13 .fini         00000018  00000000000038c8  00000000000038c8
>      000038c8  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      14 .rodata       00000106  00000000000038e0  00000000000038e0
>      000038e0  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      15 .eh_frame_hdr 00000114  00000000000039e8  00000000000039e8
>      000039e8  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      16 .eh_frame     00000694  0000000000003b00  0000000000003b00
>      00003b00  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      17 .init_array   00000008  000000000001fc10  000000000001fc10
>      0000fc10  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      18 .fini_array   00000008  000000000001fc18  000000000001fc18
>      0000fc18  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      19 .dynamic      00000230  000000000001fc20  000000000001fc20
>      0000fc20  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      20 .got          000001b0  000000000001fe50  000000000001fe50
>      0000fe50  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      21 .data         00000008  0000000000020000  0000000000020000
>      00010000  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      22 .bss          00000010  0000000000020008  0000000000020008
>      00010008  2**3
>                       ALLOC
>      23 .gnu_debuglink 00000018  0000000000000000  0000000000000000
>      00010008  2**2
>                       CONTENTS, READONLY
>      
>
>  
> The same objdump -h of libattr.so.1.1.2501 on kirkstone:
>  
>
>     Sections:
>     Idx Name          Size      VMA               LMA              
>     File off  Algn
>       0 .note.gnu.property 00000020  0000000000000238
>      0000000000000238  00000238  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       1 .note.gnu.build-id 00000024  0000000000000258
>      0000000000000258  00000258  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       2 .gnu.hash     00000178  0000000000000280  0000000000000280
>      00000280  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       3 .dynsym       000006a8  00000000000003f8  00000000000003f8
>      000003f8  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       4 .dynstr       0000027a  0000000000000aa0  0000000000000aa0
>      00000aa0  2**0
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       5 .gnu.version  0000008e  0000000000000d1a  0000000000000d1a
>      00000d1a  2**1
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       6 .gnu.version_d 000000a4  0000000000000da8  0000000000000da8
>      00000da8  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       7 .gnu.version_r 00000040  0000000000000e50  0000000000000e50
>      00000e50  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       8 .rela.dyn     00000108  0000000000000e90  0000000000000e90
>      00000e90  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>       9 .rela.plt     000003f0  0000000000000f98  0000000000000f98
>      00000f98  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      10 .init         0000001c  0000000000001388  0000000000001388
>      00001388  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      11 .plt          000002c0  00000000000013b0  00000000000013b0
>      000013b0  2**4
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      12 .text         000022d8  0000000000001670  0000000000001670
>      00001670  2**4
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      13 .fini         00000018  0000000000003948  0000000000003948
>      00003948  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, CODE
>      14 .rodata       00000106  0000000000003960  0000000000003960
>      00003960  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      15 .eh_frame_hdr 00000114  0000000000003a68  0000000000003a68
>      00003a68  2**2
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      16 .eh_frame     000006a4  0000000000003b80  0000000000003b80
>      00003b80  2**3
>                       CONTENTS, ALLOC, LOAD, READONLY, DATA
>      17 .init_array   00000008  0000000000014c10  0000000000014c10
>      00004c10  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      18 .fini_array   00000008  0000000000014c18  0000000000014c18
>      00004c18  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      19 .dynamic      00000230  0000000000014c20  0000000000014c20
>      00004c20  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      20 .got          000001b0  0000000000014e50  0000000000014e50
>      00004e50  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      21 .data         00000008  0000000000015000  0000000000015000
>      00005000  2**3
>                       CONTENTS, ALLOC, LOAD, DATA
>      22 .bss          00000010  0000000000015008  0000000000015008
>      00005008  2**3
>                       ALLOC
>      23 .gnu_debuglink 00000018  0000000000000000  0000000000000000
>      00005008  2**2
>                       CONTENTS, READONLY
>      
>
>  
> Difference at the init_array offset with about 50kB unused spaces,
> plenty of zeros in the binary.
> Multiple executable/libraries with additional 50kB = several Mega Bytes.
>  
> I suspect the evolution of GCC is the cause of this difference (GCC11
> vs GCC13), and I don't see any changes related to this in Yocto. I
> have to check if GCC changed his behavior or if some options have been
> introduced. Any flag we should add maybe in the build to keep small
> binaries in the rootfs ? I remember similar stuff related to relro
> option, not sure...

Is it possible that you have stumbled upon a fix[1] for a binutils
issue[2]? It does pad relro segment with 0s up to the next MAXPAGESIZE
boundary, and was added in version 2.39 - ~50kB extra sounds about right
on some arches.

If this is what you found, then unfortunately it's like that. There is a
bug[3] for binutils to fix this size increase, but when/if there will
there be any outcome, is hard to tell.

You can easily verify if this is really what's affecting you by testing
it with reverting this commit, but reverting it permanently wouldn't be
wise considering that it's a security fix at its heart.

[1]:
https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;h=9833b7757d246f22db4eb24b8e5db7eb5e05b6d9
[2]: https://sourceware.org/bugzilla/show_bug.cgi?id=28824
[3]: https://sourceware.org/bugzilla/show_bug.cgi?id=30612

>  
> Thanks for the feedbacks!
> Joel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65244): https://lists.yoctoproject.org/g/yocto/message/65244
> Mute This Topic: https://lists.yoctoproject.org/mt/112434747/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


