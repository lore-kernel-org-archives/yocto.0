Received: from mail.inango-sw.com (mail.inango-sw.com [178.238.230.57])
 by mx.groups.io with SMTP id smtpd.web10.5191.1579083805940217707
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 02:23:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@inango-systems.com header.s=45a440e0-d841-11e8-b985-5fcc721607e0 header.b=XY7XcYW6;
 spf=pass (domain: inango-systems.com, ip: 178.238.230.57, mailfrom: n.merinov@inango-systems.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id CB82810807A7;
	Wed, 15 Jan 2020 12:23:23 +0200 (IST)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 2j6t4YCbr2n1; Wed, 15 Jan 2020 12:23:23 +0200 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 2497E1080796;
	Wed, 15 Jan 2020 12:23:23 +0200 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com 2497E1080796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1579083803;
	bh=nKxmklNm407Wegifqi0nqXwd2zz+JYx8k+zeCu1PRzA=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=XY7XcYW665/oea6n2I5JV5wJz8uaDk5A8re8k+jU3HSWA0mNp3AL9O5ksOxA5cqwE
	 EdaPnaWG6VtduybjJf5txzi9VJedIUFOWUs3qNt7xfPaLQ+NaRb2H8GHLM0u2h9Y8T
	 u/gRRzEVRQkIRBJZmhLX2SXCV1S1B3brOqOxXQo4xi0FnSgorseeikw1Dwbecev7n6
	 LsiuChNdDww/i8ibSXDq/TeGS633jDRbsDwHyXDSsGkA1nhWXD4hn2uyAaJqfh/xWc
	 CgPcC1fbkeklg7bZ/SwGK7oMbCp3PeN+3mNkjqaOEt5tdYlSLP4yzAian+aXJPQumf
	 P/6UBemTsOUTw==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id n-zFzI78laWL; Wed, 15 Jan 2020 12:23:23 +0200 (IST)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id 09CB010800CC;
	Wed, 15 Jan 2020 12:23:23 +0200 (IST)
Date: Wed, 15 Jan 2020 12:23:22 +0200 (IST)
From: "Nikolay Merinov" <n.merinov@inango-systems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Message-ID: <1501856576.95307.1579083802759.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <739d894e1e5b9cae0fa7a1fddfb1193aec4eb782.camel@linuxfoundation.org>
References: <1049160807.70313.1579009824837.JavaMail.zimbra@inango-systems.com> <739d894e1e5b9cae0fa7a1fddfb1193aec4eb782.camel@linuxfoundation.org>
Subject: Re: [yocto] Switching to OpenSSL 1.1.1 in Yocto Morty release
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.15_GA_3888 (ZimbraWebClient - GC79 (Linux)/8.8.15_GA_3890)
Thread-Topic: Switching to OpenSSL 1.1.1 in Yocto Morty release
Thread-Index: uIVE5CnmCnAsUBywLuE9Q7FOOrLutQ==
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Richard,

Thank you for your answer. We'll consider this possibility.

Regards,
Nikolai

----- Original Message -----
> From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
> To: "n merinov" <n.merinov@inango-systems.com>, "yocto" <yocto@lists.yoctoproject.org>
> Sent: Wednesday, January 15, 2020 3:08:27 AM
> Subject: Re: [yocto] Switching to OpenSSL 1.1.1 in Yocto Morty release

> On Tue, 2020-01-14 at 15:50 +0200, Nikolay Merinov via
> Lists.Yoctoproject.Org wrote:
>> Our company interested in updating an old Yocto releases (especially
>> the Morty release) to use the OpenSSL version 1.1.1.
>> 
>> Can Yocto Project integrate all necessary changes if Inango prepares
>> all required modification to compile all the code that exists in Poky
>> Morty distribution with OpenSSL 1.1.1b (version used for Thud
>> release)?
> 
> Our new stable branch maintenance plans are here:
> 
> https://wiki.yoctoproject.org/wiki/LTS
> 
> Have a look at those, particularly the community section to see whether
> this may qualify as a community maintained mixin style layer for morty?
> 
> We couldn't integrate these into morty itself but this could be
> potentially be acceptable as a mixin type piece of work that could be
> shared.
> 
> Cheers,
> 
> Richard
