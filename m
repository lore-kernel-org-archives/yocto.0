Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.764.1792594898947995356
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 08:01:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@savoirfairelinux.com header.s=DFC430D2-D198-11EC-948E-34200CB392D2 header.b=M+25UHBK;
 spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: elinor.montmasson@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A6AB73D81665;
	Wed, 21 Oct 2026 11:01:37 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10032)
 with ESMTP id hnuSOo8s18ni; Wed, 21 Oct 2026 11:01:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id DAF5F3D80F30;
	Wed, 21 Oct 2026 11:01:36 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.savoirfairelinux.com DAF5F3D80F30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=savoirfairelinux.com; s=DFC430D2-D198-11EC-948E-34200CB392D2;
	t=1792594896; bh=R75cZhn6fymXv/HbBMISKkOJpWzoTucubn+BZf5RrPQ=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=M+25UHBKMkGcTTyUgVFoUJ6q873Hz0ucA5YT7W26TKwt2n++ZIO/7GzLrGK1jlpCl
	 3VtIPpvfNGzNAvtOuNWQOJD9Tn7mFnh6YIT2F+UVQ8O5s/BOD9aYPagjDrBxSf1pb0
	 Os2jZZW5eyhOlHWjL31VWFtYzvvRa6uTA8nB05OyOC1N277s/duMwzAmslrf8ayHnC
	 snHi4CJmCxAxjG9RP1v6b5su3Q2MiE0sXUVL4vcUb3Ch3elE3sgRQKsNWsBk/kEQQL
	 dpkuPqv+NMCYYMJ4e6t4GFH+Fg403C1WOpp+sR2uxRIyQhIajr2LN8cgQNPhAaaqTZ
	 iCaNQXCIUSliA==
X-Virus-Scanned: amavis at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavis, port 10026)
 with ESMTP id j3AhT85m0zvK; Wed, 21 Oct 2026 11:01:36 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A06CE3D81665;
	Wed, 21 Oct 2026 11:01:36 -0400 (EDT)
Date: Wed, 21 Oct 2026 11:01:36 -0400 (EDT)
From: Elinor Montmasson <elinor.montmasson@savoirfairelinux.com>
To: peter marko <Peter.Marko@siemens.com>
Cc: adrian freihofer <adrian.freihofer@siemens.com>, 
	yocto <yocto@lists.yoctoproject.org>
Message-ID: <248975416.905486.1792594896595.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
References: <1383658177.878587.1792571670575.JavaMail.zimbra@savoirfairelinux.com> <AS8PR10MB507312025652BBCA5759F02BFD662@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
Subject: Re: Issues and questions regarding PowerPC 32-bits e500v2 tuning
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailer: Zimbra 10.1.20_GA_0326 (ZimbraWebClient - FF158 (Linux)/10.1.20_GA_0326)
X-Zimbra-Message-Verification: hash=SHA256;guid=ZWY0NGQ1Njk5NWUzMTYyMDExNjNiZjIzNThkMDgyYzRiZDY2N2ViNmMwNGVhMWI3NDUyNGYzMzQwNTBmOGFhNQ==
Thread-Topic: Issues and questions regarding PowerPC 32-bits e500v2 tuning
Thread-Index: csrwnORdasdJ3xzr7D7vjdu/N9REb6ThjGzwNaVB2iM=
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 15:01:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66777

Hello Peter,

----- Original Message -----
> From: "peter marko" <Peter.Marko@siemens.com>
> To: "Elinor Montmasson" <elinor.montmasson@savoirfairelinux.com>, "adrian freihofer" <adrian.freihofer@siemens.com>
> Cc: "yocto" <yocto@lists.yoctoproject.org>
> Sent: Wednesday, 21 October, 2026 15:50:22
> Subject: RE: Issues and questions regarding PowerPC 32-bits e500v2 tuning

> Hello Elinor,
> 
> I have already checked SPE on e500 before and can confirm that it needs to be
> disabled in favor of soft-fpu with newer GCC versions.
> It of course dramatically decreases performance, but what can we do...
> 
> As usual with Yocto, only the default settings are being tested and untested
> features slowly bit rot by time.
> For now, we don't plan to extend our pipeline to all possible tunes/variations.
> So ideally, you should send patches to fix your tune configuration and spin a
> regular local pipeline with Yocto master to catch if it would break again.
> 
> Best Regards,
>  Peter

Ok, thank you for your answer, at least it confirms my analysis.

Because GCC is not an option for SPE support, I am considering using
the LLVM/Clang toolchain through meta-clang, as it seems to support
PowerPC SPE.
I know that some specific recipes will require building with GCC anyway,
in that case fpu-soft will be enabled, but most of the distribution
could build with clang.

Is it something you have tested?

Best regards,
Elinor Montmasson
