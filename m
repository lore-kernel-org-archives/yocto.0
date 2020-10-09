Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.74])
 by mx.groups.io with SMTP id smtpd.web10.16014.1602255908600910580
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 08:05:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=C5jUrxbi;
 spf=pass (domain: windriver.com, ip: 40.107.223.74, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KklTl15FXvOZJYqAdA1FSALeQ40y2PDR4MrWUDa31PbbSwg30egaMiVVJPAb4NHR6GlB5O9fIx0bn0IhUlFWvfNkKM+a/cNg7VzWBCuPkmiecmdDf9bxXs8Srm6Ie2i2/TeJqPDbq7gZp8zzu0NT+lloRto48Dof0+FJnMrDkDVd7bKulZ/+lkbAwVA5M9ex4z+Rm97XD1n/KQrjc5/2dK/wdmCD77nD3DDp5qdWJqTylpXgXRuVkc828rhbRE9U4Is4CRn0ZYxp4lg+kPHANQnWzNme26Y8QD5s/EMIweAGdVDsgaslQw73KgXzGbSqoe/3Fae95QkKZFCG82HIpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=71mFKEsfywUQ9aiXN6AYeI7AW/+/ni1dsG3zDF8+M00=;
 b=IuzmRnRS/K3IosXpCKh93cHkRSiAccVsxrOJcuQFyCpx8al+tMTte43evcFoJufxAEggYDnxLPIewfw2LYiwi3NoiTC0LaaqS6R+K32+djrav9EoE8OzssQS4bOO6Agy3C04FDF3aZJYtEcDGl8R9616/ZfCjsWxIghxF37Tm/I9UgD3Ldmp3suXe8g21PV7eg386rUNtCviPLXlpyVyasjsq1LldtIsjf9C+piTXa5Rwkh5dGBFW6QhVJVUQ0pg0Wiw05oRi4sS1gbpUB600PHh1NuEvCaoEQtJ3tkxc/ONE7+e/9leIdo2MUaupCL7JKDv/4SHFrjakrPGHPSoJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=71mFKEsfywUQ9aiXN6AYeI7AW/+/ni1dsG3zDF8+M00=;
 b=C5jUrxbidifWofwapShsG6FeLiD8bJu5MtwFXmo6+eUJYQvSBDuUlWX6lPB12brITEOsVfgumUVtJxlXvaASoTa0YVquqIIDpL9NnwOjQ7StHy+psKsueYcqyN3UsKfP2Fo/iqT6aS/BQwV29sP5c7qXYnK2nS8tTyFRSQDMXtc=
Authentication-Results: kernel.crashing.org; dkim=none (message not signed)
 header.d=none;kernel.crashing.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2703.namprd11.prod.outlook.com (2603:10b6:805:59::18)
 by SN6PR11MB2749.namprd11.prod.outlook.com (2603:10b6:805:5f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22; Fri, 9 Oct
 2020 15:05:05 +0000
Received: from SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35]) by SN6PR11MB2703.namprd11.prod.outlook.com
 ([fe80::cc77:c9c8:8d2b:bb35%6]) with mapi id 15.20.3433.046; Fri, 9 Oct 2020
 15:05:05 +0000
Subject: Re: [yocto] [prelink-cross][PATCH v4] Add SPDX license headers to all source files
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>, yocto@lists.yoctoproject.org
Cc: mark.hatle@kernel.crashing.org
References: <20201009032521.7722-1-idadelm@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <491f5c6d-3287-8925-466c-52f7562ac4b5@windriver.com>
Date: Fri, 9 Oct 2020 11:05:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201009032521.7722-1-idadelm@gmail.com>
X-Originating-IP: [23.233.84.124]
X-ClientProxiedBy: YQXPR0101CA0028.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:15::41) To SN6PR11MB2703.namprd11.prod.outlook.com
 (2603:10b6:805:59::18)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.0.29.12] (23.233.84.124) by YQXPR0101CA0028.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c00:15::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.22 via Frontend Transport; Fri, 9 Oct 2020 15:05:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98088b4e-a877-411a-4837-08d86c64b3dd
X-MS-TrafficTypeDiagnostic: SN6PR11MB2749:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB2749D4B2A29C537A00AEFEC4F8080@SN6PR11MB2749.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/9CdDp/P0MlNxkr5oku0hFGsFsVYl4+G8PTUmmn1aNPAKx1Ty26FsaxEBmK3EBS1/9oafzMS3Axr1EsXcl9jQ8Stncz1bICIRX5Eyl5AA5q9ry73altrNyfXw9XYzZnBJU4iKFtScKia9Kt4HMu+RX6JTPa1VHwuG1IquH6fN7HlYy2kbxzVqufT9Me8omyxRfNFmYA5URcY85j2K07i7uOGR+njdm/NqKuqwF1dqMt/b6XNWbTE1Q7jJN+ejUudoY3RfYAthT80Z+rBLw/MjkV3zYTBuwgYq0atTHo/4qPtnB1tleTHnmIM3pVTj89emQ1SHt43Oq993/0i7xDjO3RRuw3PKjx2fo6O/DadEtK/FlSk7tU58GcnTHEHvL+zSdn0CqKewq+qMW2uz32CDQCApsc5SMUsA5omZ8zvZHtcuJ7Cr61SpbJOMRMrAU20bYGQYQMLnBS6enXdlK6adVzWb+4BzghV0zPve6i/Ruo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2703.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(366004)(39850400004)(396003)(136003)(4326008)(16576012)(8936002)(966005)(36756003)(316002)(30864003)(52116002)(31686004)(5660300002)(478600001)(2906002)(86362001)(66556008)(53546011)(31696002)(66946007)(66476007)(33964004)(2616005)(8676002)(956004)(16526019)(83380400001)(83080400001)(6486002)(26005)(166002)(186003)(2004002)(43740500002)(579004)(559001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	imM0m4m2evIo/eZsV1dQiMjA9jQWhI//0vM9CXrKFXp0FEYasZv5YumGQ/tbdHpuDRmEPLnuYGhTJo9FLdJ2us7Ze+RJ72+PUAuBLtpd5KmWgWpAf4tFrke94ZT7x/Trhe3a9YNGSLVjxJRXB5ZCtAeoQXEXiPvj2mDB9fVgrJd0FvqOb5ki5caKQk/24YMgEIIA9XSz2uH047s69IeTX20e/BY7fAkhXEwumCIhdSHWrG7TlaykxbDckFUkUeHGmhDi/2rAMoRInlGotm4qtkPat9O8lfd67NDiDq1KaTG7wvKlyD1V1zUyIpBJq0plmq6OmO9Nv/I0VmJ1S66Rj5Fa9H1X6YIzVRKAFE/tXsismUIr6TL5UuvewknEkUNLbSHgTeFPh36m9J87eYycZXZ93Tt9Kdi1HmvXN16g8wvUeDV9kAM7PT/s7zwuD9x1z1ST1e7t6ZgWDtHrlLHT9oU0deVELLnWuFd694rhqGRYpFQiSre8Y/KuH2EG84yCG/8zXWExt03BJ4c8rKZog9D54bAlp61PY3AY49FYDMqYyCWftCxl4o/6takhdwUgytVm9fWSyQz3OJkvhK/8/ujlx7uASyX3IV6j+C5W/MEHxsArvz6mbtvq99JWXh3bPwtBRZyHtwxNQOQzKIsIWg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98088b4e-a877-411a-4837-08d86c64b3dd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2703.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2020 15:05:05.3902
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NIPAngcke3OSXATdmW3jmp0yVkUz+I6TIXs1x9WQXK2oeFa7BbH5xvCExTOVTWKcMfX7hOuWwR/XX4qalQv21yDFCDOe+sp2VFJyFueHF30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2749
Content-Type: multipart/alternative;
 boundary="------------14D2C622B5EAAFF65E12010F"
Content-Language: en-CA

--------------14D2C622B5EAAFF65E12010F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2020-10-08 11:25 p.m., Meh Mbeh Ida Delphine wrote:
> Fixes: [YOCTO #13529]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>
> Changes in V4:
>   * Add [YOCTO #13529] tag to git commit log instead of subject line
>   * Updated the README file with right email addresses
>
> Changes in V3:
>   * Address review comments
>   * Change subject line to reflect what the patch is trying to do
>
> Changes in V2:
>   * Address review comments
>
>   README             |  4 ++--
>   src/arch-alpha.c   | 15 ++-------------
>   src/arch-arm.c     | 15 ++-------------
>   src/arch-cris.c    | 15 ++-------------
>   src/arch-i386.c    | 15 ++-------------
>   src/arch-ia64.c    | 15 ++-------------
>   src/arch-mips.c    | 16 ++--------------
>   src/arch-ppc.c     | 15 ++-------------
>   src/arch-ppc64.c   | 15 ++-------------
>   src/arch-s390.c    | 15 ++-------------
>   src/arch-s390x.c   | 15 ++-------------
>   src/arch-sh.c      | 15 ++-------------
>   src/arch-sparc.c   | 16 +++-------------
>   src/arch-sparc64.c | 15 ++-------------
>   src/arch-x86_64.c  | 15 ++-------------
>   src/cache.c        | 15 ++-------------
>   src/canonicalize.c | 16 ++--------------
>   src/checksum.c     | 15 ++-------------
>   src/conflict.c     | 15 ++-------------
>   src/crc32.c        | 15 ++-------------
>   src/cxx.c          | 15 ++-------------
>   src/data.c         | 15 ++-------------
>   src/doit.c         | 15 ++-------------
>   src/dso.c          | 15 ++-------------
>   src/dwarf2.c       | 15 ++-------------
>   src/dwarf2.h       | 15 ++-------------
>   src/exec.c         | 15 ++-------------
>   src/execle_open.c  | 15 ++-------------
>   src/execstack.c    | 15 ++-------------
>   src/fptr.c         | 15 ++-------------
>   src/fptr.h         | 15 ++-------------
>   src/gather.c       | 15 ++-------------
>   src/get.c          | 15 ++-------------
>   src/hashtab.c      | 17 ++---------------
>   src/hashtab.h      | 16 +++-------------
>   src/layout.c       | 15 ++-------------
>   src/layout.h       | 15 ++-------------
>   src/main.c         | 15 ++-------------
>   src/md5.c          | 16 ++--------------
>   src/md5.h          | 15 ++-------------
>   src/mdebug.c       | 15 ++-------------
>   src/prelink.c      | 15 ++-------------
>   src/prelink.h      | 15 ++-------------
>   src/prelinktab.h   | 15 ++-------------
>   src/reloc-info.c   | 15 ++-------------
>   src/reloc-info.h   | 15 ++-------------
>   src/reloc.c        | 15 ++-------------
>   src/reloc.h        | 15 ++-------------
>   src/sha.c          |  4 ++++
>   src/sha.h          |  4 ++++
>   src/space.c        | 15 ++-------------
>   src/space.h        | 15 ++-------------
>   src/stabs.c        | 15 ++-------------
>   src/undo.c         | 15 ++-------------
>   src/undoall.c      | 15 ++-------------
>   src/verify.c       | 15 ++-------------
>   56 files changed, 118 insertions(+), 696 deletions(-)
>
> diff --git a/README b/README
> index 2d8893b..5f91fab 100644
> --- a/README
> +++ b/README
> @@ -13,8 +13,8 @@ Patch submission
>   When submitting patches to the cross-prelink project, please do the
>   following:
>   
> -To: mark.hatle@windriver.com
> -Cc: yocto@yoctoproject.org
> +To: mark.hatle@kernel.crashing.org
> +Cc: yocto@lists.yoctoproject.org
>   
>   Subject: [prelink-cross] ....
>   
> diff --git a/src/arch-alpha.c b/src/arch-alpha.c
> index 7802a3e..bc5c192 100644
> --- a/src/arch-alpha.c
> +++ b/src/arch-alpha.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/


Hi Ida,

You don't need to revert the previous patch since
I don't think that it has been merged so please send a v5 please.
Hopefully that will be merged. :)

../Randy
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-arm.c b/src/arch-arm.c
> index eec7c57..b5ea886 100644
> --- a/src/arch-arm.c
> +++ b/src/arch-arm.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-cris.c b/src/arch-cris.c
> index 3272779..634bf9f 100644
> --- a/src/arch-cris.c
> +++ b/src/arch-cris.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-i386.c b/src/arch-i386.c
> index a1e0fcc..5a0b2ca 100644
> --- a/src/arch-i386.c
> +++ b/src/arch-i386.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-ia64.c b/src/arch-ia64.c
> index 6039115..56196de 100644
> --- a/src/arch-ia64.c
> +++ b/src/arch-ia64.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-mips.c b/src/arch-mips.c
> index 02c608f..2875ec3 100644
> --- a/src/arch-mips.c
> +++ b/src/arch-mips.c
> @@ -2,20 +2,8 @@
>      Written by Richard Sandiford <richard@codesourcery.com>, 2006
>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> -
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   /* GENERAL NOTES
>   
>      The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
> diff --git a/src/arch-ppc.c b/src/arch-ppc.c
> index e22e5d5..e296d79 100644
> --- a/src/arch-ppc.c
> +++ b/src/arch-ppc.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
> index a764b99..3f2c375 100644
> --- a/src/arch-ppc64.c
> +++ b/src/arch-ppc64.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-s390.c b/src/arch-s390.c
> index e5fe130..1a65f5c 100644
> --- a/src/arch-s390.c
> +++ b/src/arch-s390.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-s390x.c b/src/arch-s390x.c
> index e4d82f7..926cfa2 100644
> --- a/src/arch-s390x.c
> +++ b/src/arch-s390x.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-sh.c b/src/arch-sh.c
> index 1b11312..a852266 100644
> --- a/src/arch-sh.c
> +++ b/src/arch-sh.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-sparc.c b/src/arch-sparc.c
> index e016a79..41b297d 100644
> --- a/src/arch-sparc.c
> +++ b/src/arch-sparc.c
> @@ -1,19 +1,9 @@
>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
> index aee4601..c6a1027 100644
> --- a/src/arch-sparc64.c
> +++ b/src/arch-sparc64.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
> index 2f6c551..249661a 100644
> --- a/src/arch-x86_64.c
> +++ b/src/arch-x86_64.c
> @@ -3,19 +3,8 @@
>      Copyright (C) 2011 Wind River Systems, Inc.
>      x32 support by Mark Hatle <mark.hatle@windriver.com>
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/cache.c b/src/cache.c
> index 1cc3217..b476581 100644
> --- a/src/cache.c
> +++ b/src/cache.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/canonicalize.c b/src/canonicalize.c
> index 79df44e..e94ec06 100644
> --- a/src/canonicalize.c
> +++ b/src/canonicalize.c
> @@ -2,20 +2,8 @@
>      Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
>      This file is part of the GNU C Library.
>   
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, write to the Free
> -   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
> -   02111-1307 USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <assert.h>
>   #include <stdlib.h>
> diff --git a/src/checksum.c b/src/checksum.c
> index 20a23a0..5c80fc5 100644
> --- a/src/checksum.c
> +++ b/src/checksum.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/conflict.c b/src/conflict.c
> index 5613ace..83713c5 100644
> --- a/src/conflict.c
> +++ b/src/conflict.c
> @@ -3,19 +3,8 @@
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/crc32.c b/src/crc32.c
> index f36abb5..81e990b 100644
> --- a/src/crc32.c
> +++ b/src/crc32.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <stdint.h>
> diff --git a/src/cxx.c b/src/cxx.c
> index 4391ebe..4b911a9 100644
> --- a/src/cxx.c
> +++ b/src/cxx.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <alloca.h>
> diff --git a/src/data.c b/src/data.c
> index 751f96f..d648744 100644
> --- a/src/data.c
> +++ b/src/data.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include "prelink.h"
> diff --git a/src/doit.c b/src/doit.c
> index 3784866..42e6819 100644
> --- a/src/doit.c
> +++ b/src/doit.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <alloca.h>
> diff --git a/src/dso.c b/src/dso.c
> index 949abf9..9cce846 100644
> --- a/src/dso.c
> +++ b/src/dso.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/dwarf2.c b/src/dwarf2.c
> index b9588b1..d230bb7 100644
> --- a/src/dwarf2.c
> +++ b/src/dwarf2.c
> @@ -2,19 +2,8 @@
>      Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/dwarf2.h b/src/dwarf2.h
> index b0c80b6..888f2c7 100644
> --- a/src/dwarf2.h
> +++ b/src/dwarf2.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #define DW_TAG_padding			0x00
>   #define DW_TAG_array_type		0x01
> diff --git a/src/exec.c b/src/exec.c
> index ca7fd14..431690e 100644
> --- a/src/exec.c
> +++ b/src/exec.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/execle_open.c b/src/execle_open.c
> index 2ee5cbc..0d4bef5 100644
> --- a/src/execle_open.c
> +++ b/src/execle_open.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <errno.h>
> diff --git a/src/execstack.c b/src/execstack.c
> index 97fb453..fe044c5 100644
> --- a/src/execstack.c
> +++ b/src/execstack.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2003.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <errno.h>
> diff --git a/src/fptr.c b/src/fptr.c
> index cfe3aed..65a2804 100644
> --- a/src/fptr.c
> +++ b/src/fptr.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/fptr.h b/src/fptr.h
> index 36ef7c6..c4ce3f7 100644
> --- a/src/fptr.h
> +++ b/src/fptr.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef FPTR_H
>   #define FPTR_H
> diff --git a/src/gather.c b/src/gather.c
> index 277f1b5..0d1e7c4 100644
> --- a/src/gather.c
> +++ b/src/gather.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/get.c b/src/get.c
> index 0659962..bb58b1e 100644
> --- a/src/get.c
> +++ b/src/get.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/hashtab.c b/src/hashtab.c
> index fa27446..7dc389d 100644
> --- a/src/hashtab.c
> +++ b/src/hashtab.c
> @@ -2,21 +2,8 @@
>      Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
>      Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>   
> -This file is part of the libiberty library.
> -Libiberty is free software; you can redistribute it and/or
> -modify it under the terms of the GNU Library General Public
> -License as published by the Free Software Foundation; either
> -version 2 of the License, or (at your option) any later version.
> -
> -Libiberty is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -Library General Public License for more details.
> -
> -You should have received a copy of the GNU Library General Public
> -License along with libiberty; see the file COPYING.LIB.  If
> -not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
> -Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   /* This package implements basic hash table functionality.  It is possible
>      to search for an entry, create an entry and destroy an entry.
> diff --git a/src/hashtab.h b/src/hashtab.h
> index 31e63e0..d3f297f 100644
> --- a/src/hashtab.h
> +++ b/src/hashtab.h
> @@ -2,19 +2,8 @@
>      Copyright (C) 1999, 2000 Free Software Foundation, Inc.
>      Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>   
> -This program is free software; you can redistribute it and/or modify
> -it under the terms of the GNU General Public License as published by
> -the Free Software Foundation; either version 2 of the License, or
> -(at your option) any later version.
> -
> -This program is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -GNU General Public License for more details.
> -
> -You should have received a copy of the GNU General Public License
> -along with this program; if not, write to the Free Software
> -Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   /* This package implements basic hash table functionality.  It is possible
>      to search for an entry, create an entry and destroy an entry.
> @@ -29,6 +18,7 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
>      expanded by creation of new hash table and transferring elements from
>      the old table to the new table.  */
>   
> +
>   #ifndef __HASHTAB_H__
>   #define __HASHTAB_H__
>   
> diff --git a/src/layout.c b/src/layout.c
> index 859ab66..29be7a3 100644
> --- a/src/layout.c
> +++ b/src/layout.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <alloca.h>
> diff --git a/src/layout.h b/src/layout.h
> index f481d22..1b10bc0 100644
> --- a/src/layout.h
> +++ b/src/layout.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef LAYOUT_H
>   #define LAYOUT_H
> diff --git a/src/main.c b/src/main.c
> index 6ba89d5..39e44ad 100644
> --- a/src/main.c
> +++ b/src/main.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <errno.h>
> diff --git a/src/md5.c b/src/md5.c
> index 0d2fdef..19a8e0b 100644
> --- a/src/md5.c
> +++ b/src/md5.c
> @@ -4,21 +4,9 @@
>      NOTE: The canonical source of this file is maintained with the GNU C
>      Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>   
> -   This program is free software; you can redistribute it and/or modify it
> -   under the terms of the GNU General Public License as published by the
> -   Free Software Foundation; either version 2, or (at your option) any
> -   later version.
>   
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> -
> -/* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <sys/types.h>
>   #include <stdlib.h>
> diff --git a/src/md5.h b/src/md5.h
> index 55f6195..eb0b85e 100644
> --- a/src/md5.h
> +++ b/src/md5.h
> @@ -4,19 +4,8 @@
>      NOTE: The canonical source of this file is maintained with the GNU C
>      Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>   
> -   This program is free software; you can redistribute it and/or modify it
> -   under the terms of the GNU General Public License as published by the
> -   Free Software Foundation; either version 2, or (at your option) any
> -   later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef _MD5_H
>   #define _MD5_H 1
> diff --git a/src/mdebug.c b/src/mdebug.c
> index 4c22d2f..eb6d1b5 100644
> --- a/src/mdebug.c
> +++ b/src/mdebug.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/prelink.c b/src/prelink.c
> index 64c4fea..bf774c9 100644
> --- a/src/prelink.c
> +++ b/src/prelink.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/prelink.h b/src/prelink.h
> index 39c4390..4c4c243 100644
> --- a/src/prelink.h
> +++ b/src/prelink.h
> @@ -4,19 +4,8 @@
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>      Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef PRELINK_H
>   #define PRELINK_H
> diff --git a/src/prelinktab.h b/src/prelinktab.h
> index f41c79c..a404292 100644
> --- a/src/prelinktab.h
> +++ b/src/prelinktab.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef PRELINKTAB_H
>   #define PRELINKTAB_H
> diff --git a/src/reloc-info.c b/src/reloc-info.c
> index 4ce333c..d51cfc1 100644
> --- a/src/reloc-info.c
> +++ b/src/reloc-info.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2008 CodeSourcery
>      Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   
> diff --git a/src/reloc-info.h b/src/reloc-info.h
> index a8f8b7c..592a92c 100644
> --- a/src/reloc-info.h
> +++ b/src/reloc-info.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2008 CodeSourcery
>      Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef RELOC_INFO_H
>   #define RELOC_INFO_H
> diff --git a/src/reloc.c b/src/reloc.c
> index deb0abe..9883dc7 100644
> --- a/src/reloc.c
> +++ b/src/reloc.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/reloc.h b/src/reloc.h
> index a2ceff9..ee91f7e 100644
> --- a/src/reloc.h
> +++ b/src/reloc.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef RELOC_H
>   #define RELOC_H
> diff --git a/src/sha.c b/src/sha.c
> index cfbc956..f979bc4 100644
> --- a/src/sha.c
> +++ b/src/sha.c
> @@ -1,3 +1,7 @@
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
> +
>   /* sha.c - Functions to compute the SHA1 hash (message-digest) of files
>      or blocks of memory.  Complies to the NIST specification FIPS-180-1.
>   
> diff --git a/src/sha.h b/src/sha.h
> index 13583e3..810072b 100644
> --- a/src/sha.h
> +++ b/src/sha.h
> @@ -1,3 +1,7 @@
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
> +
>   /* sha.h - Declaration of functions and datatypes for SHA1 sum computing
>      library functions.
>   
> diff --git a/src/space.c b/src/space.c
> index 4bd4760..8223daf 100644
> --- a/src/space.c
> +++ b/src/space.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/space.h b/src/space.h
> index 5c9f725..59d087c 100644
> --- a/src/space.h
> +++ b/src/space.h
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2004 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #ifndef SPACE_H
>   #define SPACE_H
> diff --git a/src/stabs.c b/src/stabs.c
> index c0a5a6a..fd0ca28 100644
> --- a/src/stabs.c
> +++ b/src/stabs.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/undo.c b/src/undo.c
> index 4c38dab..e6cfae3 100644
> --- a/src/undo.c
> +++ b/src/undo.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
> diff --git a/src/undoall.c b/src/undoall.c
> index 55d2a0b..44a0b4e 100644
> --- a/src/undoall.c
> +++ b/src/undoall.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2002, 2005 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <alloca.h>
> diff --git a/src/verify.c b/src/verify.c
> index 7f530c0..991794a 100644
> --- a/src/verify.c
> +++ b/src/verify.c
> @@ -1,19 +1,8 @@
>   /* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.
>      Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>   
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>   
>   #include <config.h>
>   #include <assert.h>
>
> 
>

-- 
# Randy MacLeod
# Wind River Linux


--------------14D2C622B5EAAFF65E12010F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2020-10-08 11:25 p.m., Meh Mbeh Ida
      Delphine wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20201009032521.7722-1-idadelm@gmail.com">
      <pre class="moz-quote-pre" wrap="">Fixes: [YOCTO #13529]

Signed-off-by: Meh Mbeh Ida Delphine <a class="moz-txt-link-rfc2396E" href="mailto:idadelm@gmail.com">&lt;idadelm@gmail.com&gt;</a>
---

Changes in V4:
 * Add [YOCTO #13529] tag to git commit log instead of subject line
 * Updated the README file with right email addresses

Changes in V3:
 * Address review comments
 * Change subject line to reflect what the patch is trying to do

Changes in V2:
 * Address review comments

 README             |  4 ++--
 src/arch-alpha.c   | 15 ++-------------
 src/arch-arm.c     | 15 ++-------------
 src/arch-cris.c    | 15 ++-------------
 src/arch-i386.c    | 15 ++-------------
 src/arch-ia64.c    | 15 ++-------------
 src/arch-mips.c    | 16 ++--------------
 src/arch-ppc.c     | 15 ++-------------
 src/arch-ppc64.c   | 15 ++-------------
 src/arch-s390.c    | 15 ++-------------
 src/arch-s390x.c   | 15 ++-------------
 src/arch-sh.c      | 15 ++-------------
 src/arch-sparc.c   | 16 +++-------------
 src/arch-sparc64.c | 15 ++-------------
 src/arch-x86_64.c  | 15 ++-------------
 src/cache.c        | 15 ++-------------
 src/canonicalize.c | 16 ++--------------
 src/checksum.c     | 15 ++-------------
 src/conflict.c     | 15 ++-------------
 src/crc32.c        | 15 ++-------------
 src/cxx.c          | 15 ++-------------
 src/data.c         | 15 ++-------------
 src/doit.c         | 15 ++-------------
 src/dso.c          | 15 ++-------------
 src/dwarf2.c       | 15 ++-------------
 src/dwarf2.h       | 15 ++-------------
 src/exec.c         | 15 ++-------------
 src/execle_open.c  | 15 ++-------------
 src/execstack.c    | 15 ++-------------
 src/fptr.c         | 15 ++-------------
 src/fptr.h         | 15 ++-------------
 src/gather.c       | 15 ++-------------
 src/get.c          | 15 ++-------------
 src/hashtab.c      | 17 ++---------------
 src/hashtab.h      | 16 +++-------------
 src/layout.c       | 15 ++-------------
 src/layout.h       | 15 ++-------------
 src/main.c         | 15 ++-------------
 src/md5.c          | 16 ++--------------
 src/md5.h          | 15 ++-------------
 src/mdebug.c       | 15 ++-------------
 src/prelink.c      | 15 ++-------------
 src/prelink.h      | 15 ++-------------
 src/prelinktab.h   | 15 ++-------------
 src/reloc-info.c   | 15 ++-------------
 src/reloc-info.h   | 15 ++-------------
 src/reloc.c        | 15 ++-------------
 src/reloc.h        | 15 ++-------------
 src/sha.c          |  4 ++++
 src/sha.h          |  4 ++++
 src/space.c        | 15 ++-------------
 src/space.h        | 15 ++-------------
 src/stabs.c        | 15 ++-------------
 src/undo.c         | 15 ++-------------
 src/undoall.c      | 15 ++-------------
 src/verify.c       | 15 ++-------------
 56 files changed, 118 insertions(+), 696 deletions(-)

diff --git a/README b/README
index 2d8893b..5f91fab 100644
--- a/README
+++ b/README
@@ -13,8 +13,8 @@ Patch submission
 When submitting patches to the cross-prelink project, please do the
 following:
 
-To: <a class="moz-txt-link-abbreviated" href="mailto:mark.hatle@windriver.com">mark.hatle@windriver.com</a>
-Cc: <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
+To: <a class="moz-txt-link-abbreviated" href="mailto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</a>
+Cc: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
 
 Subject: [prelink-cross] ....
 
diff --git a/src/arch-alpha.c b/src/arch-alpha.c
index 7802a3e..bc5c192 100644
--- a/src/arch-alpha.c
+++ b/src/arch-alpha.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/</pre>
    </blockquote>
    <p><br>
    </p>
    <p>Hi Ida,<br>
    </p>
    <div class="moz-cite-prefix">You don't need to revert the previous
      patch since<br>
      I don't think that it has been merged so please send a v5 please.
      <br>
    </div>
    <div class="moz-cite-prefix">Hopefully that will be merged. :)<br>
    </div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">../Randy</div>
    <blockquote type="cite" cite="mid:20201009032521.7722-1-idadelm@gmail.com">
      <pre class="moz-quote-pre" wrap="">
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-arm.c b/src/arch-arm.c
index eec7c57..b5ea886 100644
--- a/src/arch-arm.c
+++ b/src/arch-arm.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-cris.c b/src/arch-cris.c
index 3272779..634bf9f 100644
--- a/src/arch-cris.c
+++ b/src/arch-cris.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-i386.c b/src/arch-i386.c
index a1e0fcc..5a0b2ca 100644
--- a/src/arch-i386.c
+++ b/src/arch-i386.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-ia64.c b/src/arch-ia64.c
index 6039115..56196de 100644
--- a/src/arch-ia64.c
+++ b/src/arch-ia64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-mips.c b/src/arch-mips.c
index 02c608f..2875ec3 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -2,20 +2,8 @@
    Written by Richard Sandiford <a class="moz-txt-link-rfc2396E" href="mailto:richard@codesourcery.com">&lt;richard@codesourcery.com&gt;</a>, 2006
    Updated by Maciej W. Rozycki <a class="moz-txt-link-rfc2396E" href="mailto:macro@codesourcery.com">&lt;macro@codesourcery.com&gt;</a>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
-
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 /* GENERAL NOTES
 
    The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
diff --git a/src/arch-ppc.c b/src/arch-ppc.c
index e22e5d5..e296d79 100644
--- a/src/arch-ppc.c
+++ b/src/arch-ppc.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
index a764b99..3f2c375 100644
--- a/src/arch-ppc64.c
+++ b/src/arch-ppc64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-s390.c b/src/arch-s390.c
index e5fe130..1a65f5c 100644
--- a/src/arch-s390.c
+++ b/src/arch-s390.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-s390x.c b/src/arch-s390x.c
index e4d82f7..926cfa2 100644
--- a/src/arch-s390x.c
+++ b/src/arch-s390x.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-sh.c b/src/arch-sh.c
index 1b11312..a852266 100644
--- a/src/arch-sh.c
+++ b/src/arch-sh.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-sparc.c b/src/arch-sparc.c
index e016a79..41b297d 100644
--- a/src/arch-sparc.c
+++ b/src/arch-sparc.c
@@ -1,19 +1,9 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
index aee4601..c6a1027 100644
--- a/src/arch-sparc64.c
+++ b/src/arch-sparc64.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 2f6c551..249661a 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -3,19 +3,8 @@
    Copyright (C) 2011 Wind River Systems, Inc.
    x32 support by Mark Hatle <a class="moz-txt-link-rfc2396E" href="mailto:mark.hatle@windriver.com">&lt;mark.hatle@windriver.com&gt;</a>
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/cache.c b/src/cache.c
index 1cc3217..b476581 100644
--- a/src/cache.c
+++ b/src/cache.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/canonicalize.c b/src/canonicalize.c
index 79df44e..e94ec06 100644
--- a/src/canonicalize.c
+++ b/src/canonicalize.c
@@ -2,20 +2,8 @@
    Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation, Inc.
    This file is part of the GNU C Library.
 
-   The GNU C Library is free software; you can redistribute it and/or
-   modify it under the terms of the GNU Lesser General Public
-   License as published by the Free Software Foundation; either
-   version 2.1 of the License, or (at your option) any later version.
-
-   The GNU C Library is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-   Lesser General Public License for more details.
-
-   You should have received a copy of the GNU Lesser General Public
-   License along with the GNU C Library; if not, write to the Free
-   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
-   02111-1307 USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;assert.h&gt;
 #include &lt;stdlib.h&gt;
diff --git a/src/checksum.c b/src/checksum.c
index 20a23a0..5c80fc5 100644
--- a/src/checksum.c
+++ b/src/checksum.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/conflict.c b/src/conflict.c
index 5613ace..83713c5 100644
--- a/src/conflict.c
+++ b/src/conflict.c
@@ -3,19 +3,8 @@
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
    Updated by Maciej W. Rozycki <a class="moz-txt-link-rfc2396E" href="mailto:macro@codesourcery.com">&lt;macro@codesourcery.com&gt;</a>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/crc32.c b/src/crc32.c
index f36abb5..81e990b 100644
--- a/src/crc32.c
+++ b/src/crc32.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;stdint.h&gt;
diff --git a/src/cxx.c b/src/cxx.c
index 4391ebe..4b911a9 100644
--- a/src/cxx.c
+++ b/src/cxx.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;alloca.h&gt;
diff --git a/src/data.c b/src/data.c
index 751f96f..d648744 100644
--- a/src/data.c
+++ b/src/data.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &quot;prelink.h&quot;
diff --git a/src/doit.c b/src/doit.c
index 3784866..42e6819 100644
--- a/src/doit.c
+++ b/src/doit.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;alloca.h&gt;
diff --git a/src/dso.c b/src/dso.c
index 949abf9..9cce846 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/dwarf2.c b/src/dwarf2.c
index b9588b1..d230bb7 100644
--- a/src/dwarf2.c
+++ b/src/dwarf2.c
@@ -2,19 +2,8 @@
    Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/dwarf2.h b/src/dwarf2.h
index b0c80b6..888f2c7 100644
--- a/src/dwarf2.h
+++ b/src/dwarf2.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #define DW_TAG_padding			0x00
 #define DW_TAG_array_type		0x01
diff --git a/src/exec.c b/src/exec.c
index ca7fd14..431690e 100644
--- a/src/exec.c
+++ b/src/exec.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/execle_open.c b/src/execle_open.c
index 2ee5cbc..0d4bef5 100644
--- a/src/execle_open.c
+++ b/src/execle_open.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;errno.h&gt;
diff --git a/src/execstack.c b/src/execstack.c
index 97fb453..fe044c5 100644
--- a/src/execstack.c
+++ b/src/execstack.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2003.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;errno.h&gt;
diff --git a/src/fptr.c b/src/fptr.c
index cfe3aed..65a2804 100644
--- a/src/fptr.c
+++ b/src/fptr.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/fptr.h b/src/fptr.h
index 36ef7c6..c4ce3f7 100644
--- a/src/fptr.h
+++ b/src/fptr.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef FPTR_H
 #define FPTR_H
diff --git a/src/gather.c b/src/gather.c
index 277f1b5..0d1e7c4 100644
--- a/src/gather.c
+++ b/src/gather.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/get.c b/src/get.c
index 0659962..bb58b1e 100644
--- a/src/get.c
+++ b/src/get.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/hashtab.c b/src/hashtab.c
index fa27446..7dc389d 100644
--- a/src/hashtab.c
+++ b/src/hashtab.c
@@ -2,21 +2,8 @@
    Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (<a class="moz-txt-link-abbreviated" href="mailto:vmakarov@cygnus.com">vmakarov@cygnus.com</a>).
 
-This file is part of the libiberty library.
-Libiberty is free software; you can redistribute it and/or
-modify it under the terms of the GNU Library General Public
-License as published by the Free Software Foundation; either
-version 2 of the License, or (at your option) any later version.
-
-Libiberty is distributed in the hope that it will be useful,
-but WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
-Library General Public License for more details.
-
-You should have received a copy of the GNU Library General Public
-License along with libiberty; see the file COPYING.LIB.  If
-not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
-Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 /* This package implements basic hash table functionality.  It is possible
    to search for an entry, create an entry and destroy an entry.
diff --git a/src/hashtab.h b/src/hashtab.h
index 31e63e0..d3f297f 100644
--- a/src/hashtab.h
+++ b/src/hashtab.h
@@ -2,19 +2,8 @@
    Copyright (C) 1999, 2000 Free Software Foundation, Inc.
    Contributed by Vladimir Makarov (<a class="moz-txt-link-abbreviated" href="mailto:vmakarov@cygnus.com">vmakarov@cygnus.com</a>).
 
-This program is free software; you can redistribute it and/or modify
-it under the terms of the GNU General Public License as published by
-the Free Software Foundation; either version 2 of the License, or
-(at your option) any later version.
-
-This program is distributed in the hope that it will be useful,
-but WITHOUT ANY WARRANTY; without even the implied warranty of
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-GNU General Public License for more details.
-
-You should have received a copy of the GNU General Public License
-along with this program; if not, write to the Free Software
-Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 /* This package implements basic hash table functionality.  It is possible
    to search for an entry, create an entry and destroy an entry.
@@ -29,6 +18,7 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
    expanded by creation of new hash table and transferring elements from
    the old table to the new table.  */
 
+
 #ifndef __HASHTAB_H__
 #define __HASHTAB_H__
 
diff --git a/src/layout.c b/src/layout.c
index 859ab66..29be7a3 100644
--- a/src/layout.c
+++ b/src/layout.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;alloca.h&gt;
diff --git a/src/layout.h b/src/layout.h
index f481d22..1b10bc0 100644
--- a/src/layout.h
+++ b/src/layout.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef LAYOUT_H
 #define LAYOUT_H
diff --git a/src/main.c b/src/main.c
index 6ba89d5..39e44ad 100644
--- a/src/main.c
+++ b/src/main.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;errno.h&gt;
diff --git a/src/md5.c b/src/md5.c
index 0d2fdef..19a8e0b 100644
--- a/src/md5.c
+++ b/src/md5.c
@@ -4,21 +4,9 @@
    NOTE: The canonical source of this file is maintained with the GNU C
    Library.  Bugs can be reported to <a class="moz-txt-link-abbreviated" href="mailto:bug-glibc@prep.ai.mit.edu">bug-glibc@prep.ai.mit.edu</a>.
 
-   This program is free software; you can redistribute it and/or modify it
-   under the terms of the GNU General Public License as published by the
-   Free Software Foundation; either version 2, or (at your option) any
-   later version.
 
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
-
-/* Written by Ulrich Drepper <a class="moz-txt-link-rfc2396E" href="mailto:drepper@gnu.ai.mit.edu">&lt;drepper@gnu.ai.mit.edu&gt;</a>, 1995.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;sys/types.h&gt;
 #include &lt;stdlib.h&gt;
diff --git a/src/md5.h b/src/md5.h
index 55f6195..eb0b85e 100644
--- a/src/md5.h
+++ b/src/md5.h
@@ -4,19 +4,8 @@
    NOTE: The canonical source of this file is maintained with the GNU C
    Library.  Bugs can be reported to <a class="moz-txt-link-abbreviated" href="mailto:bug-glibc@prep.ai.mit.edu">bug-glibc@prep.ai.mit.edu</a>.
 
-   This program is free software; you can redistribute it and/or modify it
-   under the terms of the GNU General Public License as published by the
-   Free Software Foundation; either version 2, or (at your option) any
-   later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef _MD5_H
 #define _MD5_H 1
diff --git a/src/mdebug.c b/src/mdebug.c
index 4c22d2f..eb6d1b5 100644
--- a/src/mdebug.c
+++ b/src/mdebug.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/prelink.c b/src/prelink.c
index 64c4fea..bf774c9 100644
--- a/src/prelink.c
+++ b/src/prelink.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/prelink.h b/src/prelink.h
index 39c4390..4c4c243 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -4,19 +4,8 @@
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
    Updated by Maciej W. Rozycki <a class="moz-txt-link-rfc2396E" href="mailto:macro@codesourcery.com">&lt;macro@codesourcery.com&gt;</a>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef PRELINK_H
 #define PRELINK_H
diff --git a/src/prelinktab.h b/src/prelinktab.h
index f41c79c..a404292 100644
--- a/src/prelinktab.h
+++ b/src/prelinktab.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef PRELINKTAB_H
 #define PRELINKTAB_H
diff --git a/src/reloc-info.c b/src/reloc-info.c
index 4ce333c..d51cfc1 100644
--- a/src/reloc-info.c
+++ b/src/reloc-info.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2008 CodeSourcery
    Written by Maciej W. Rozycki <a class="moz-txt-link-rfc2396E" href="mailto:macro@codesourcery.com">&lt;macro@codesourcery.com&gt;</a>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 
diff --git a/src/reloc-info.h b/src/reloc-info.h
index a8f8b7c..592a92c 100644
--- a/src/reloc-info.h
+++ b/src/reloc-info.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2008 CodeSourcery
    Written by Maciej W. Rozycki <a class="moz-txt-link-rfc2396E" href="mailto:macro@codesourcery.com">&lt;macro@codesourcery.com&gt;</a>, 2008.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef RELOC_INFO_H
 #define RELOC_INFO_H
diff --git a/src/reloc.c b/src/reloc.c
index deb0abe..9883dc7 100644
--- a/src/reloc.c
+++ b/src/reloc.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/reloc.h b/src/reloc.h
index a2ceff9..ee91f7e 100644
--- a/src/reloc.h
+++ b/src/reloc.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef RELOC_H
 #define RELOC_H
diff --git a/src/sha.c b/src/sha.c
index cfbc956..f979bc4 100644
--- a/src/sha.c
+++ b/src/sha.c
@@ -1,3 +1,7 @@
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 /* sha.c - Functions to compute the SHA1 hash (message-digest) of files
    or blocks of memory.  Complies to the NIST specification FIPS-180-1.
 
diff --git a/src/sha.h b/src/sha.h
index 13583e3..810072b 100644
--- a/src/sha.h
+++ b/src/sha.h
@@ -1,3 +1,7 @@
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 /* sha.h - Declaration of functions and datatypes for SHA1 sum computing
    library functions.
 
diff --git a/src/space.c b/src/space.c
index 4bd4760..8223daf 100644
--- a/src/space.c
+++ b/src/space.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/space.h b/src/space.h
index 5c9f725..59d087c 100644
--- a/src/space.h
+++ b/src/space.h
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2004 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #ifndef SPACE_H
 #define SPACE_H
diff --git a/src/stabs.c b/src/stabs.c
index c0a5a6a..fd0ca28 100644
--- a/src/stabs.c
+++ b/src/stabs.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/undo.c b/src/undo.c
index 4c38dab..e6cfae3 100644
--- a/src/undo.c
+++ b/src/undo.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2001.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
diff --git a/src/undoall.c b/src/undoall.c
index 55d2a0b..44a0b4e 100644
--- a/src/undoall.c
+++ b/src/undoall.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2005 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;alloca.h&gt;
diff --git a/src/verify.c b/src/verify.c
index 7f530c0..991794a 100644
--- a/src/verify.c
+++ b/src/verify.c
@@ -1,19 +1,8 @@
 /* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.
    Written by Jakub Jelinek <a class="moz-txt-link-rfc2396E" href="mailto:jakub@redhat.com">&lt;jakub@redhat.com&gt;</a>, 2002.
 
-   This program is free software; you can redistribute it and/or modify
-   it under the terms of the GNU General Public License as published by
-   the Free Software Foundation; either version 2, or (at your option)
-   any later version.
-
-   This program is distributed in the hope that it will be useful,
-   but WITHOUT ANY WARRANTY; without even the implied warranty of
-   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-   GNU General Public License for more details.
-
-   You should have received a copy of the GNU General Public License
-   along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
 
 #include &lt;config.h&gt;
 #include &lt;assert.h&gt;
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------14D2C622B5EAAFF65E12010F--
