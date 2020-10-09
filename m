Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.15754.1602255283254718161
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:54:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=YQgy6J2M;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2067.outbound.protection.outlook.com [40.107.244.67])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 71A2238C094A
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2020 07:54:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grEfVDyG1RrBB98xhcqTxXg53+27m6Tmcd6Gox5Og18Xi7+CmzE3Gef4rwoSCsQeUOOAy/1rBBAnyNhv/0cm2r1ZPufn6TbiCmmUhdstCHhxIDRfZ8DWyZcws3VQBzgC29+KnP0M2r6fYbuL7UVOWNmEJxES/mtEGSpocFI0JM0nzyE+Tb1mYN9S5jViaw+AT8PHGt3xKckA0fF8EeCs9gAjFzPpYhk/9PBzqumERCwXPorgLZz6/ciAQb/fT3QSQoD9t6mxpxJxxKboRRRY+vxcP/+ySmfpJumaReZ4tDp3osQTQ/mutrhyPfgVUBbQ48LUR8+SiMKnsKy7Q+xzrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OW5qp+g+VRL6hxFlkXlhHvqEkCikpeKsWY+Y1Tjn488=;
 b=nw2Gg9YYwm78c3IS72e4A9IOKIP4VjlecEdGFUl9VM3boTmhykECF+aGjgT5VqfCkKwn+dMn1yvh6nyK4iCEM2vv28yGwQjEZuX6uBlEPBK6SPFdrwNS200Y8g8+Rxwuts4FQu4iZsGwBdzuBYhet05ttrICI8/aS7NW9gTk4toisLsRKLEZHQFsP5hNowN4G93Ubhh3rNMHbPNObtc6Zgl0E1hCcanmBUnWbx+5JMw3BBvRrdbP9vrAVAvC5XLmu9jf/ofDVvTwwlWIXceIM2Getm4of5HsaX5OPBoCjmq7sm0VyCKyyL86VpXhOio8NpK0iYV1WvsbPlPdhQkURA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OW5qp+g+VRL6hxFlkXlhHvqEkCikpeKsWY+Y1Tjn488=;
 b=YQgy6J2M70+TI/tDnyMRH6cFH2FcPo1lPZTnK6M7o5YitD6xZ/ZfcO1W5qsy/4lGSP2XREp7nEla3Jj8pms9JY372jxiDdh17Sd92yT5RTDic8qgbdGIBcZ5plZD2Ee2m+JfcZzGqyOMwIhi+0H5hFL/LU0mXcRzPAkB+nllEpo=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB3279.namprd11.prod.outlook.com (2603:10b6:805:c6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3433.39; Fri, 9 Oct
 2020 14:54:40 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3433.046; Fri, 9 Oct 2020
 14:54:40 +0000
Subject: Re: [yocto] [prelink-cross] Added SPDX license headers to all .c and .h source files
To: Paul Barker <pbarker@konsulko.com>,
 Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: Mark Hatle <mark.hatle@kernel.crashing.org>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <20201008120423.27548-1-idadelm@gmail.com>
 <CAM9ZRVvQjC+Uz1rieNa4x55J4oSrMsh=zd_vKPkxKCcfy1zxsA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <c1c6c587-10a5-134c-48e5-d72f1351a803@windriver.com>
Date: Fri, 9 Oct 2020 10:54:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <CAM9ZRVvQjC+Uz1rieNa4x55J4oSrMsh=zd_vKPkxKCcfy1zxsA@mail.gmail.com>
X-Originating-IP: [23.233.84.124]
X-ClientProxiedBy: YQBPR0101CA0065.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:1::42) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.29.12] (23.233.84.124) by YQBPR0101CA0065.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c00:1::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23 via Frontend Transport; Fri, 9 Oct 2020 14:54:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75e5add0-99fb-4a69-97b1-08d86c633f69
X-MS-TrafficTypeDiagnostic: SN6PR11MB3279:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB327962732D77C1E50F9C84F3F8080@SN6PR11MB3279.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MpiXSlmDkFxMsDdjWIZ7k2+J+TjOJNCLt2RsIRSATHAngVMmpiex/njUx/dlqlDERxjfL3uW/oj2lZQFhY+kGKCjD0Y4KYarN1NBOmwgbXsfGMzW2P+ozgYs7CSsG2hrnTHblFpboXI+WgKRZBB8rxoI82cUU9FA+WnMlEfxi8IMF5WFkTvcVAgPHwXmcLzRAdWiMihLJBFwgY1lVZOt51ulsx8Cjib/dIAFv5E6Qqh5WlJ5NfveRIV12wj+88XQM9QSrmU4FsANNL99ITPE/oA4/A7TmqljGGz+lTfpR+27dx/D+FeSjT4TpHOLgFAo7lmMkxfme9cZEM3cnkJ9aaKfytvAs3z2SvC3e6mIBa+M0ihn3LFNK/XnQ4QJSBIQ0PHjltJ8PWSxzVwbwlT+DZBggRgsJZwCQzxQMgjdlNWEORzZzUEzZ7COqQh0D21yEwsjN7ZpzcaFPqeCgf4ikCzzJQWHUjgciAE6CamkyM/b3T+LwJ9QlbGBtU3TaH50
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(136003)(376002)(346002)(396003)(66556008)(31696002)(86362001)(26005)(4326008)(186003)(16526019)(2906002)(956004)(36756003)(2616005)(53546011)(6666004)(54906003)(110136005)(5660300002)(6486002)(83080400001)(478600001)(52116002)(66476007)(8676002)(66946007)(30864003)(31686004)(316002)(966005)(8936002)(83380400001)(16576012)(142923001)(2004002)(43740500002)(579004)(559001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	LffO2PnAG76kMLOC0KsvujGHyDtmmNHnV57g33yFJJpTbAYdGnW2NTuFS6wnCcXspYjnBFpslBEWTISBlEwVe12qeW9kNP+SqP3hIBCSKDsomKOwJjD31lYD+I2JwTT+zkTlUGeR8cjvFYFm8/e2WU449h9fqdPMKoK1FvV+6+mHLPhlFZUVrVxxHJlFfFYappncGFrcqUD2Rbsnx5lyEsb8xn+VBGoSOyyHPXloQTsrj52jdIOWTWLXSLZokbBVQ+NDl4cOqQfYERyz5bgDxCGWoEuRb37OVoaCcygVNO2BHPYdKTbYCJjwU05kJbCwKanxQc6DCpQDlYWka3wMT1DtIzydGtuE7K2rYXqxbe5rOriScBomIenn9lpJ/7evVJJ+qK4PjvTcx9FgZuEBdy8vVsurwUJCEDbcZN2uMD7L2gxkLGQ39GITT8olZIqyVtOBL6hL+1fIzLNZS1A18f3hr2zqnEb4NR7D1P40WQLX3+hNdc4abj3oyBMW4VWGNdEZLtbfKoMt4NUElch/aQ+lsOWd1wc/DI0XzZHHE5X/7SeOUB85gYQRxX66jblRhwjAsdCiRsxpKADoztyRLNkqK4hOM8njqwi3G7h9d8LnYf03wmrASFjxutB2wmp8J+k53nDsM6Z1700hLAnd/g==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75e5add0-99fb-4a69-97b1-08d86c633f69
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 14:54:40.0288
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P8XZjOaH71IlnSQeWPs/5TumHlIXFWn1ckJVKRHvmkFL4guq4zBCPWmud1yzK1tZKVSd/7pvnyt2oTCa2/pFV7FobsCFskPS7KUhXTEE5D0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3279
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-10-08 8:12 a.m., Paul Barker wrote:
> On Thu, 8 Oct 2020 at 13:04, Meh Mbeh Ida Delphine <idadelm@gmail.com> wrote:
>>
>> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>> ---
>>   src/arch-alpha.c   | 15 ++-------
>>   src/arch-arm.c     | 15 ++-------
>>   src/arch-cris.c    | 15 ++-------
>>   src/arch-i386.c    | 15 ++-------
>>   src/arch-ia64.c    | 15 ++-------
>>   src/arch-mips.c    | 77 ++--------------------------------------------
>>   src/arch-ppc.c     | 15 ++-------
>>   src/arch-ppc64.c   | 15 ++-------
>>   src/arch-s390.c    | 15 ++-------
>>   src/arch-s390x.c   | 15 ++-------
>>   src/arch-sh.c      | 15 ++-------
>>   src/arch-sparc.c   | 15 ++-------
>>   src/arch-sparc64.c | 15 ++-------
>>   src/arch-x86_64.c  | 15 ++-------
>>   src/cache.c        | 15 ++-------
>>   src/canonicalize.c | 16 ++--------
>>   src/checksum.c     | 15 ++-------
>>   src/conflict.c     | 15 ++-------
>>   src/crc32.c        | 15 ++-------
>>   src/cxx.c          | 15 ++-------
>>   src/data.c         | 15 ++-------
>>   src/doit.c         | 15 ++-------
>>   src/dso.c          | 15 ++-------
>>   src/dwarf2.c       | 15 ++-------
>>   src/dwarf2.h       | 15 ++-------
>>   src/exec.c         | 15 ++-------
>>   src/execle_open.c  | 15 ++-------
>>   src/execstack.c    | 15 ++-------
>>   src/fptr.c         | 15 ++-------
>>   src/fptr.h         | 15 ++-------
>>   src/gather.c       | 15 ++-------
>>   src/get.c          | 15 ++-------
>>   src/hashtab.c      | 30 ++----------------
>>   src/hashtab.h      | 28 ++---------------
>>   src/layout.c       | 15 ++-------
>>   src/layout.h       | 15 ++-------
>>   src/main.c         | 15 ++-------
>>   src/md5.c          | 15 ++-------
>>   src/md5.h          | 15 ++-------
>>   src/mdebug.c       | 15 ++-------
>>   src/prelink.c      | 15 ++-------
>>   src/prelink.h      | 15 ++-------
>>   src/prelinktab.h   | 15 ++-------
>>   src/reloc-info.c   | 15 ++-------
>>   src/reloc-info.h   | 15 ++-------
>>   src/reloc.c        | 15 ++-------
>>   src/reloc.h        | 15 ++-------
>>   src/sha.c          |  2 ++
>>   src/sha.h          |  2 ++
>>   src/space.c        | 15 ++-------
>>   src/space.h        | 15 ++-------
>>   src/stabs.c        | 15 ++-------
>>   src/undo.c         | 15 ++-------
>>   src/undoall.c      | 15 ++-------
>>   src/verify.c       | 15 ++-------
>>   55 files changed, 110 insertions(+), 780 deletions(-)
>>
>> diff --git a/src/arch-alpha.c b/src/arch-alpha.c
>> index 7802a3e..bc5c192 100644
>> --- a/src/arch-alpha.c
>> +++ b/src/arch-alpha.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-arm.c b/src/arch-arm.c
>> index eec7c57..b5ea886 100644
>> --- a/src/arch-arm.c
>> +++ b/src/arch-arm.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-cris.c b/src/arch-cris.c
>> index 3272779..634bf9f 100644
>> --- a/src/arch-cris.c
>> +++ b/src/arch-cris.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-i386.c b/src/arch-i386.c
>> index a1e0fcc..5a0b2ca 100644
>> --- a/src/arch-i386.c
>> +++ b/src/arch-i386.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-ia64.c b/src/arch-ia64.c
>> index 6039115..56196de 100644
>> --- a/src/arch-ia64.c
>> +++ b/src/arch-ia64.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-mips.c b/src/arch-mips.c
>> index 02c608f..d0e69d4 100644
>> --- a/src/arch-mips.c
>> +++ b/src/arch-mips.c
>> @@ -2,81 +2,8 @@
>>      Written by Richard Sandiford <richard@codesourcery.com>, 2006
>>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> -
>> -/* GENERAL NOTES
>> -
>> -   The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
>> -   depends on the symbol index.  If the index is less than DT_MIPS_GOTSYM,
>> -   EA is the symbol's st_value "plus displacement".  If the index is greater
>> -   than or equal to DT_MIPS_GOTSYM, EA is the original value of the
>> -   associated GOT entry.
>> -
>> -   However, glibc's dynamic linker implements a different definition.
>> -   If the index is less than DT_MIPS_GOTSYM, the dynamic linker adds the
>> -   symbol's st_value and the base address to the addend.  If the index
>> -   is greater than or equal to DT_MIPS_GOTSYM, the dynamic linker adds
>> -   the final symbol value to the addend.
>> -
>> -   MIPS GOTs are divided into three parts:
>> -
>> -     - Reserved entries (of which GNU objects have 2)
>> -     - Local entries
>> -     - Global entries
>> -
>> -   DT_MIPS_LOCAL_GOTNO gives the total number of reserved and local
>> -   entries.  The local entries all hold virtual addresses and the
>> -   dynamic linker will add the base address to each one.
>> -
>> -   Unlike most other architectures, the MIPS ABI does not use
>> -   relocations to initialize the global GOT entries.  Instead, global
>> -   GOT entry X is mapped to dynamic symbol DT_MIPS_GOTSYM + X, and there
>> -   are a total of DT_MIPS_SYMTABNO - DT_MIPS_GOTSYM global GOT entries.
>> -
>> -   The interpretation of a global GOT entry depends on the symbol entry
>> -   and the initial GOT contents.  The psABI lists the following cases:
>> -
>> -      st_shndx    st_type     st_value      initial GOT value
>> -      --------    -------     --------      -----------------
>> -   A: SHN_UNDEF   STT_FUNC    0             st_value (== 0) / QS
>> -   B: SHN_UNDEF   STT_FUNC    stub address  st_value / QS
>> -   C: SHN_UNDEF   all others  0             st_value (== 0) / QS
>> -   D: SHN_COMMON  any         alignment     0 / QS
>> -   E: all others  STT_FUNC    value         st_value / stub address
>> -   F: all others  all others  value         st_value
>> -
>> -   (wording slightly modified from the psABI table).  Here, QS denotes
>> -   Quickstart values.
>> -
>> -   The dynamic linker treats each case as follows:
>> -
>> -   - [A, B when not binding lazily, C, D, E when not binding lazily, F]
>> -     Resolve the symbol and store its value in the GOT.
>> -
>> -   - [B when binding lazily] Set the GOT entry to the st_value plus
>> -     the base address.
>> -
>> -   - [E when binding lazily] If the GOT entry is different from the st_value,
>> -     add the base addreess to the GOT entry.  Otherwise resolve the symbol
>> -     and store its value in the GOT (as for A, C, etc).
>> -
>> -   As the table shows, we can install Quickstart values for types A-D.
>> -   Installing Quickstart values for type F should be a no-op, because the
>> -   GOT should already hold the desired value.  Installing Quickstart values
>> -   for type E would either be a no-op (if the GOT entry already contains
>> -   st_value) or would lose the address of the lazy binding stub.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
> 
> It looks like you've removed an important comment there along with the
> old license header. I think there are a few other instances of this as
> well. Could you re-check this?

Hi Ida,

To make it really clear, here's an SPDX example showing that we just
need the SPDX identifier added:

http://git.yoctoproject.org/cgit/cgit.cgi/ptest-runner2/commit/?id=63d097cc46142157931682fed076b5407757a0bd

Thanks,
../Randy

> 
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-ppc.c b/src/arch-ppc.c
>> index e22e5d5..e296d79 100644
>> --- a/src/arch-ppc.c
>> +++ b/src/arch-ppc.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
>> index a764b99..3f2c375 100644
>> --- a/src/arch-ppc64.c
>> +++ b/src/arch-ppc64.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-s390.c b/src/arch-s390.c
>> index e5fe130..1a65f5c 100644
>> --- a/src/arch-s390.c
>> +++ b/src/arch-s390.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-s390x.c b/src/arch-s390x.c
>> index e4d82f7..926cfa2 100644
>> --- a/src/arch-s390x.c
>> +++ b/src/arch-s390x.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-sh.c b/src/arch-sh.c
>> index 1b11312..a852266 100644
>> --- a/src/arch-sh.c
>> +++ b/src/arch-sh.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-sparc.c b/src/arch-sparc.c
>> index e016a79..d841a28 100644
>> --- a/src/arch-sparc.c
>> +++ b/src/arch-sparc.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
>> index aee4601..c6a1027 100644
>> --- a/src/arch-sparc64.c
>> +++ b/src/arch-sparc64.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
>> index 2f6c551..249661a 100644
>> --- a/src/arch-x86_64.c
>> +++ b/src/arch-x86_64.c
>> @@ -3,19 +3,8 @@
>>      Copyright (C) 2011 Wind River Systems, Inc.
>>      x32 support by Mark Hatle <mark.hatle@windriver.com>
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/cache.c b/src/cache.c
>> index 1cc3217..b476581 100644
>> --- a/src/cache.c
>> +++ b/src/cache.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/canonicalize.c b/src/canonicalize.c
>> index 79df44e..e94ec06 100644
>> --- a/src/canonicalize.c
>> +++ b/src/canonicalize.c
>> @@ -2,20 +2,8 @@
>>      Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
>>      This file is part of the GNU C Library.
>>
>> -   The GNU C Library is free software; you can redistribute it and/or
>> -   modify it under the terms of the GNU Lesser General Public
>> -   License as published by the Free Software Foundation; either
>> -   version 2.1 of the License, or (at your option) any later version.
>> -
>> -   The GNU C Library is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
>> -   Lesser General Public License for more details.
>> -
>> -   You should have received a copy of the GNU Lesser General Public
>> -   License along with the GNU C Library; if not, write to the Free
>> -   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
>> -   02111-1307 USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <assert.h>
>>   #include <stdlib.h>
>> diff --git a/src/checksum.c b/src/checksum.c
>> index 20a23a0..5c80fc5 100644
>> --- a/src/checksum.c
>> +++ b/src/checksum.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/conflict.c b/src/conflict.c
>> index 5613ace..83713c5 100644
>> --- a/src/conflict.c
>> +++ b/src/conflict.c
>> @@ -3,19 +3,8 @@
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/crc32.c b/src/crc32.c
>> index f36abb5..81e990b 100644
>> --- a/src/crc32.c
>> +++ b/src/crc32.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <stdint.h>
>> diff --git a/src/cxx.c b/src/cxx.c
>> index 4391ebe..4b911a9 100644
>> --- a/src/cxx.c
>> +++ b/src/cxx.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <alloca.h>
>> diff --git a/src/data.c b/src/data.c
>> index 751f96f..d648744 100644
>> --- a/src/data.c
>> +++ b/src/data.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include "prelink.h"
>> diff --git a/src/doit.c b/src/doit.c
>> index 3784866..42e6819 100644
>> --- a/src/doit.c
>> +++ b/src/doit.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <alloca.h>
>> diff --git a/src/dso.c b/src/dso.c
>> index 949abf9..9cce846 100644
>> --- a/src/dso.c
>> +++ b/src/dso.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/dwarf2.c b/src/dwarf2.c
>> index b9588b1..d230bb7 100644
>> --- a/src/dwarf2.c
>> +++ b/src/dwarf2.c
>> @@ -2,19 +2,8 @@
>>      Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/dwarf2.h b/src/dwarf2.h
>> index b0c80b6..888f2c7 100644
>> --- a/src/dwarf2.h
>> +++ b/src/dwarf2.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #define DW_TAG_padding                 0x00
>>   #define DW_TAG_array_type              0x01
>> diff --git a/src/exec.c b/src/exec.c
>> index ca7fd14..431690e 100644
>> --- a/src/exec.c
>> +++ b/src/exec.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/execle_open.c b/src/execle_open.c
>> index 2ee5cbc..0d4bef5 100644
>> --- a/src/execle_open.c
>> +++ b/src/execle_open.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <errno.h>
>> diff --git a/src/execstack.c b/src/execstack.c
>> index 97fb453..fe044c5 100644
>> --- a/src/execstack.c
>> +++ b/src/execstack.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2003.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <errno.h>
>> diff --git a/src/fptr.c b/src/fptr.c
>> index cfe3aed..65a2804 100644
>> --- a/src/fptr.c
>> +++ b/src/fptr.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/fptr.h b/src/fptr.h
>> index 36ef7c6..c4ce3f7 100644
>> --- a/src/fptr.h
>> +++ b/src/fptr.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef FPTR_H
>>   #define FPTR_H
>> diff --git a/src/gather.c b/src/gather.c
>> index 277f1b5..0e6876b 100644
>> --- a/src/gather.c
>> +++ b/src/gather.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*//
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/get.c b/src/get.c
>> index 0659962..bb58b1e 100644
>> --- a/src/get.c
>> +++ b/src/get.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/hashtab.c b/src/hashtab.c
>> index fa27446..99a656d 100644
>> --- a/src/hashtab.c
>> +++ b/src/hashtab.c
>> @@ -2,34 +2,8 @@
>>      Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
>>      Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>>
>> -This file is part of the libiberty library.
>> -Libiberty is free software; you can redistribute it and/or
>> -modify it under the terms of the GNU Library General Public
>> -License as published by the Free Software Foundation; either
>> -version 2 of the License, or (at your option) any later version.
>> -
>> -Libiberty is distributed in the hope that it will be useful,
>> -but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
>> -Library General Public License for more details.
>> -
>> -You should have received a copy of the GNU Library General Public
>> -License along with libiberty; see the file COPYING.LIB.  If
>> -not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> -Boston, MA 02111-1307, USA.  */
>> -
>> -/* This package implements basic hash table functionality.  It is possible
>> -   to search for an entry, create an entry and destroy an entry.
>> -
>> -   Elements in the table are generic pointers.
>> -
>> -   The size of the table is not fixed; if the occupancy of the table
>> -   grows too high the hash table will be expanded.
>> -
>> -   The abstract data implementation is based on generalized Algorithm D
>> -   from Knuth's book "The art of computer programming".  Hash table is
>> -   expanded by creation of new hash table and transferring elements from
>> -   the old table to the new table. */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <sys/types.h>
>> diff --git a/src/hashtab.h b/src/hashtab.h
>> index 31e63e0..dfbe410 100644
>> --- a/src/hashtab.h
>> +++ b/src/hashtab.h
>> @@ -2,32 +2,8 @@
>>      Copyright (C) 1999, 2000 Free Software Foundation, Inc.
>>      Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>>
>> -This program is free software; you can redistribute it and/or modify
>> -it under the terms of the GNU General Public License as published by
>> -the Free Software Foundation; either version 2 of the License, or
>> -(at your option) any later version.
>> -
>> -This program is distributed in the hope that it will be useful,
>> -but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -GNU General Public License for more details.
>> -
>> -You should have received a copy of the GNU General Public License
>> -along with this program; if not, write to the Free Software
>> -Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> -
>> -/* This package implements basic hash table functionality.  It is possible
>> -   to search for an entry, create an entry and destroy an entry.
>> -
>> -   Elements in the table are generic pointers.
>> -
>> -   The size of the table is not fixed; if the occupancy of the table
>> -   grows too high the hash table will be expanded.
>> -
>> -   The abstract data implementation is based on generalized Algorithm D
>> -   from Knuth's book "The art of computer programming".  Hash table is
>> -   expanded by creation of new hash table and transferring elements from
>> -   the old table to the new table.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef __HASHTAB_H__
>>   #define __HASHTAB_H__
>> diff --git a/src/layout.c b/src/layout.c
>> index 859ab66..29be7a3 100644
>> --- a/src/layout.c
>> +++ b/src/layout.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <alloca.h>
>> diff --git a/src/layout.h b/src/layout.h
>> index f481d22..1b10bc0 100644
>> --- a/src/layout.h
>> +++ b/src/layout.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef LAYOUT_H
>>   #define LAYOUT_H
>> diff --git a/src/main.c b/src/main.c
>> index 6ba89d5..39e44ad 100644
>> --- a/src/main.c
>> +++ b/src/main.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <errno.h>
>> diff --git a/src/md5.c b/src/md5.c
>> index 0d2fdef..f465bfd 100644
>> --- a/src/md5.c
>> +++ b/src/md5.c
>> @@ -4,19 +4,8 @@
>>      NOTE: The canonical source of this file is maintained with the GNU C
>>      Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>>
>> -   This program is free software; you can redistribute it and/or modify it
>> -   under the terms of the GNU General Public License as published by the
>> -   Free Software Foundation; either version 2, or (at your option) any
>> -   later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   /* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
>>
>> diff --git a/src/md5.h b/src/md5.h
>> index 55f6195..eb0b85e 100644
>> --- a/src/md5.h
>> +++ b/src/md5.h
>> @@ -4,19 +4,8 @@
>>      NOTE: The canonical source of this file is maintained with the GNU C
>>      Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>>
>> -   This program is free software; you can redistribute it and/or modify it
>> -   under the terms of the GNU General Public License as published by the
>> -   Free Software Foundation; either version 2, or (at your option) any
>> -   later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef _MD5_H
>>   #define _MD5_H 1
>> diff --git a/src/mdebug.c b/src/mdebug.c
>> index 4c22d2f..eb6d1b5 100644
>> --- a/src/mdebug.c
>> +++ b/src/mdebug.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/prelink.c b/src/prelink.c
>> index 64c4fea..bf774c9 100644
>> --- a/src/prelink.c
>> +++ b/src/prelink.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/prelink.h b/src/prelink.h
>> index 39c4390..4c4c243 100644
>> --- a/src/prelink.h
>> +++ b/src/prelink.h
>> @@ -4,19 +4,8 @@
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef PRELINK_H
>>   #define PRELINK_H
>> diff --git a/src/prelinktab.h b/src/prelinktab.h
>> index f41c79c..a404292 100644
>> --- a/src/prelinktab.h
>> +++ b/src/prelinktab.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef PRELINKTAB_H
>>   #define PRELINKTAB_H
>> diff --git a/src/reloc-info.c b/src/reloc-info.c
>> index 4ce333c..d51cfc1 100644
>> --- a/src/reloc-info.c
>> +++ b/src/reloc-info.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2008 CodeSourcery
>>      Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>
>> diff --git a/src/reloc-info.h b/src/reloc-info.h
>> index a8f8b7c..592a92c 100644
>> --- a/src/reloc-info.h
>> +++ b/src/reloc-info.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2008 CodeSourcery
>>      Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef RELOC_INFO_H
>>   #define RELOC_INFO_H
>> diff --git a/src/reloc.c b/src/reloc.c
>> index deb0abe..9883dc7 100644
>> --- a/src/reloc.c
>> +++ b/src/reloc.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/reloc.h b/src/reloc.h
>> index a2ceff9..ee91f7e 100644
>> --- a/src/reloc.h
>> +++ b/src/reloc.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef RELOC_H
>>   #define RELOC_H
>> diff --git a/src/sha.c b/src/sha.c
>> index cfbc956..fb31a9e 100644
>> --- a/src/sha.c
>> +++ b/src/sha.c
>> @@ -6,6 +6,8 @@
>>      Credits:
>>         Robert Klep <robert@ilse.nl>  -- Expansion function fix
>>      NOTE: The canonical source of this file is maintained in GNU coreutils.
>> +
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>>   */
>>
>>   #include <sys/types.h>
>> diff --git a/src/sha.h b/src/sha.h
>> index 13583e3..b101b1f 100644
>> --- a/src/sha.h
>> +++ b/src/sha.h
>> @@ -2,6 +2,8 @@
>>      library functions.
>>
>>      Copyright (C) 1999, Scott G. Miller
>> +
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>>   */
>>
>>   #ifndef _SHA_H
>> diff --git a/src/space.c b/src/space.c
>> index 4bd4760..8223daf 100644
>> --- a/src/space.c
>> +++ b/src/space.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/space.h b/src/space.h
>> index 5c9f725..59d087c 100644
>> --- a/src/space.h
>> +++ b/src/space.h
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2004 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #ifndef SPACE_H
>>   #define SPACE_H
>> diff --git a/src/stabs.c b/src/stabs.c
>> index c0a5a6a..fd0ca28 100644
>> --- a/src/stabs.c
>> +++ b/src/stabs.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/undo.c b/src/undo.c
>> index 4c38dab..e6cfae3 100644
>> --- a/src/undo.c
>> +++ b/src/undo.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> diff --git a/src/undoall.c b/src/undoall.c
>> index 55d2a0b..44a0b4e 100644
>> --- a/src/undoall.c
>> +++ b/src/undoall.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2002, 2005 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <alloca.h>
>> diff --git a/src/verify.c b/src/verify.c
>> index 7f530c0..991794a 100644
>> --- a/src/verify.c
>> +++ b/src/verify.c
>> @@ -1,19 +1,8 @@
>>   /* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.
>>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>>
>> -   This program is free software; you can redistribute it and/or modify
>> -   it under the terms of the GNU General Public License as published by
>> -   the Free Software Foundation; either version 2, or (at your option)
>> -   any later version.
>> -
>> -   This program is distributed in the hope that it will be useful,
>> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
>> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>> -   GNU General Public License for more details.
>> -
>> -   You should have received a copy of the GNU General Public License
>> -   along with this program; if not, write to the Free Software Foundation,
>> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>> +* SPDX-License-Identifier: GPL-2.0-or-later
>> +*/
>>
>>   #include <config.h>
>>   #include <assert.h>
>> --
>> 2.17.1
>>
>>
>>
>>
> 
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
