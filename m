Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2534.1792744065580712446
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Oct 2026 01:27:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=jQhygZZL;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: elinor.montmasson@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 3810E3D81622;
	Fri, 23 Oct 2026 04:27:44 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id K78R1Kq5-SXV; Fri, 23 Oct 2026 04:27:42 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D33DD3D81778;
	Fri, 23 Oct 2026 04:27:42 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com D33DD3D81778
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1792744062; bh=QGQ0WC7WhIAfpCkeiZ/XwPuj4XwQJvHYuuRYMGQPZkU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=jQhygZZLmWXSa9zNOF8KZByCk4h+LCNweXymvCZvPhjz1JeCcKFs5dCwbkydB55DU
	 t/oagDQXELtXFA/GOKu5aWcDyClF9BFpIFeOjCN+Il6wpg7w0JPuXQaKow5awLjsaL
	 /KVgewpHLacmoCSsrOfgVjpPmLFuBCEQn9tnzctOcnPS8GcPrEpKZD/1vNMmr6wuHV
	 VWVNd+Wms6RgUkPVCA7w9brpce6Rh984OQqWAegrxm5mwtKQkdJPGA6u+QSzK2XQQu
	 cQEquspGN8rqGqJ+i0h3A0WPMTA/tnmUADqKCE6ge7ZtvuodTKGwP3XGwFobn6P1cI
	 uJX4gOLxvlXZw==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id OnUy9bMxPNQ5; Fri, 23 Oct 2026 04:27:42 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id AA2B83D81622;
	Fri, 23 Oct 2026 04:27:42 -0400 (EDT)
Date: Fri, 23 Oct 2026 04:27:42 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, 
	adrian freihofer <adrian.freihofer@siemens.com>
Message-ID: <2100331131.1179227.1792744062637.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <CAMKF1soAKNqtrd29vRSx7bEvN=JC-2idUiX8_LZghd_W91fDyQ@mail.gmail.com>
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com> <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM> <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com> <AM9PR10MB50824700DB37B9957B798A5CFD652@AM9PR10MB5082.EURPRD10.PROD.OUTLOOK.COM> <fbee9a7aecebbf87ce34560d6e097e16fb5b20e9.camel@siemens.com> <CAMKF1soAKNqtrd29vRSx7bEvN=JC-2idUiX8_LZghd_W91fDyQ@mail.gmail.com>
Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits e500v2
 tuning
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 10.1.20_GA_0326 (ZimbraWebClient - FF158 (Linux)/10.1.20_GA_0326)
X-Zimbra-Message-Verification: hash=SHA256;guid=MWVhNjczMDIwMjY5MTRkOGNiOTkwMjBmNzUzMGY0Y2RmYzE2YTEwODZmZTI0NTkxYzliZWZlZmJiMzE0MDM5OA==
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Index: 1udmTPW2OQCVcdS8yg1m/xLnQIqTtw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Fri, 23 Oct 2026 08:27:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66785

----- Original Message -----
> From: "Khem Raj" <raj.khem@gmail.com>
> To: "yocto" <yocto@lists.yoctoproject.org>, "adrian freihofer" <adrian.freihofer@siemens.com>
> Cc: "Elinor Montmasson" <elinor.montmasson@savoirfairelinux.com>
> Sent: Thursday, 22 October, 2026 22:37:25
> Subject: Re: [yocto] Issues and questions regarding PowerPC 32-bits e500v2 tuning

>> On Thu, Oct 22, 2026 at 2:27 AM Adrian Freihofer via [
>> http://lists.yoctoproject.org/ | lists.yoctoproject.org ] <adrian.freihofer= [
>> mailto:siemens.com@lists.yoctoproject.org | siemens.com@lists.yoctoproject.org
>> ] > wrote:

>> Hi Elinor

>> I remember the times when I was working with a MPC5200. Quite a few
>> years ago :-).

>> If you can mix binaries built with different floating point
>> implementations depends on the details of the CPU architecture, at
>> least. We had some discussions related to ARM 32 a few years ago. I
>> just remember that "it depends on the details".

>> With wrynose there is now a TOOLCHAIN variable which can be set to
>> clang globally. But it depends on what you need if a build without gcc
>> is possible or not. For example, there is a patchset which fixes glibc
>> for building with clang (around 50 patches from ARM) somewhere around.
>> With musl it should work as well. Not sure this would allow you to go
>> with clang only for your use case.

>> There are also some discussions with maintaining some LTS branches like
>> dunfell for longer than 4 years unofficially by users who need that.

>> Just some alternative ideas.

> GCC dropped SPE in 9.1 timeframe, so soft-float is the only option. however
> another
> issue is that glibc also dropped it starting 2.30 release, so only option is
> using musl since
> it does support single float (-sf) abi on ppc.

Yes good point thanks

> I added 0019-Re-introduce-spe-commandline-options.patch, back then to keep
> qemuppc working, it simply made gcc to accept -mabi=spe -mspe
> -mfloat-gprs=double
> which are passed from tune-ppce500v2.inc, it then ignores them and falls back to
> classic hard-float FPU instructions, e500v2 has no classic FPU, so the binaries
> crash with SIGILL
> is no surprise. tune-ppce500.inc has the same problem. It has the same spe
> feature with
> -mfloat-gprs=single.
> a performance-compromised fix is to make these tunes use fpu-soft and drop spe

> Using clang is not going to work out of box either, while it does support SPE it
> does have
> some things to take care of e.g. -mfloat-gprs=double is not supported.

Do you know if an equivalent option or options exist with clang for this?
Or if it just not relevant with clang?

> it also will reject
> linux-gnuspe and linux-muslspe triples that OE uses. it needs something like
> powerpcspe-*-*
> or patching llvm sources to do what OE has done in past.

> Some recipes with GCC + fpu-soft, the rest with clang + SPE combo has an ABI
> problem.
> Ordinary calls and returns are compatible, since both pass doubles in pairs of
> general registers.
> The trouble is mixing the two in one process: a libgcc built for soft-float sets
> the FP environment
> differently from SPE code.

I see
So does it means that for a given application/process, the floating point
support (soft or SPE here) must be the same for the runtime used,
the dynamic libraries used and the application itself,
to avoid any ABI compatibility problem?

In that case, I suppose two compiler runtime may be installed,
compiled with their respective compiler?
* libgcc for GCC + fpu-soft compiled programs
* llvm runtime for clang + SPE compiled programs

But then the ABI compatibility constraint will create complexity for
compiling and installing shared libraries.

> Dunfell is not a way to keep SPE; only warrior or older is.


Best regards,
Elinor Montmasson
