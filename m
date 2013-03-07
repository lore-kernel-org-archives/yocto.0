Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1C828E0153E
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 08:20:30 -0800 (PST)
Received: by mail-pb0-f49.google.com with SMTP id xa12so480996pbc.36
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 08:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=kB1NJ5eT9eDsZZfd6g7SnFER1ugXft2d3qz/86Da7jc=;
	b=DY1lzlHBnlOPct4Tb3e3q3RGd8z8Jyvkn6y6orA+/9afvCRIQMZpMisBdkX3/Ls17F
	2Buw6cayha/bwwH5mCQdAICpfkmlt9MqPIbEpvdNHoZNZu+5xIb5rrhHKlFG6u6eaMGI
	LJUiuJLr0QI2vFLGgYTVSzRyE3rJhpZZUy3rMZWkke7klBZspV/0Jl56M4vXVhCUhWne
	0EQz7UzrV21YGgwwmbj7PF/TKMWVwfWa4wvkX2u5fjECJBxMJ7gdYmSrzkmXzwevyKT6
	OjM9iYzyI2cywJOjbDtppYuyPPun6ertfvu8FxIswWqTPK//nA8bAJtQk32l92ydNQZz
	Siyg==
X-Received: by 10.68.238.103 with SMTP id vj7mr54299491pbc.181.1362673229930; 
	Thu, 07 Mar 2013 08:20:29 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id i10sm2186042pbd.1.2013.03.07.08.20.26
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 08:20:27 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
Date: Thu, 7 Mar 2013 20:20:22 +0400
Message-Id: <61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Mar 2013 16:20:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                  Any plans on moving to gcc-4.7.3 or 4.8.0 anytime =
soon?=20

Nearly all the microblaze gcc patches are for gcc-4.8.0 on the trunk, =
several of them in fact.

I've re-applied and ported all the existing patches that you've created =
for gcc-4.7.2 to gcc-4.7.3 (not yet tested).

So, I was wondering if you'd like me to try to get gcc-4.7.3 or =
gcc-4.8.0 built against the current poky master branch?

I can test ARM Cortex A9, ARM Cortex A8 and Microblaze at my end.

Do let me know!

Best regards,

Elvis Dowson=

