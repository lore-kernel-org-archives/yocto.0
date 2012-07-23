Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CAADE013BB
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 04:12:56 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so12842858pbb.35
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2012 04:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=tt1qvcUD6giLs1Ciof9SjEOVGi93NSoWrttrQXvNmw8=;
	b=STkzYM3E5vjphKS4D5wpkqrGyUeMMAos5CxfEj3faJ+VoEy/StplJae63q5okOpaUF
	KJRal33sDg+yTyLRQrMdbIsvehL4u0031uOvR+YNKwNBIhbUaL8U5hCuHqdUr9zQlG3k
	zjUZg2rAH/+b8qAakJYUAQmaFR2pSLLM/CNO2kM18fB/yRkwW9ZJEUwJWs05+fws9acn
	5U9zZkfNcwrHzYcoPBz5vpXvYrXcyN10jWPcIIwqu3wol0PUPqB3XytfN0suiKSN/xQk
	R13iAc6wausBKxNPlys7bwJDKaEI5xBbKTQrQHNkpMTeVUUp8ZX1pQ1qHvSqEsgDqAhd
	SL8g==
Received: by 10.68.218.163 with SMTP id ph3mr4090501pbc.58.1343041975958;
	Mon, 23 Jul 2012 04:12:55 -0700 (PDT)
Received: from [192.168.1.203] ([94.205.107.87])
	by mx.google.com with ESMTPS id ng8sm9788905pbc.13.2012.07.23.04.12.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 23 Jul 2012 04:12:54 -0700 (PDT)
References: <0944C5D8-3610-4A02-B396-95186FD62F5C@gmail.com>
	<3954503.suT57LYYZ1@helios>
In-Reply-To: <3954503.suT57LYYZ1@helios>
Mime-Version: 1.0 (1.0)
Message-Id: <D8AB1B43-BFF0-4ED6-A958-2704140519E2@gmail.com>
X-Mailer: iPad Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 23 Jul 2012 15:12:48 +0400
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Do the recent changes to core-image-minimal provide a root login prompt?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 23 Jul 2012 11:12:56 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Paul,

On Jul 23, 2012, at 1:18 PM, Paul Eggleton <paul.eggleton@linux.intel.com> w=
rote:

> On Saturday 21 July 2012 20:33:02 Elvis Dowson wrote:
>> Hi,
>>      Do the recent changes to core-image-minimal provide a root login
>> prompt?
>>=20
>> When I build it for the PowerPC440 on the Virtex5 FPGA, the size of the
>> core-image-minimal-virtex5.tar.gz file is only around 3.2 MB, so I was
>> wondering if the basic functionality provided by core-image-minimal
>> includes booting to a root login console?
>=20
> It does (and always has). The core-image-minimal image recipe itself hasn'=
t=20
> changed in a while though, what gave you the impression it had?

I think I figured out what was going wrong with my attempts on the ML507 boa=
rd, you can specify a 16550 compatible serial UART (ttyS0), or the Xilinx UA=
RTLite IP core (ttyUL0). So, because the correct serial console wasn't speci=
fied, I couldn't see the login prompt. I could see the boot progress on an L=
CD display, but didn't see the login prompt. The reason for asking was 'cos I=
 remember that the core-image-minimal was more that 15mb a couple of months b=
ack, and now it has dropped to around 4mb, and I vaguely recall seeing a pat=
ch that resulted in its size reduction.

Best regards,

Elvis Dowson=

