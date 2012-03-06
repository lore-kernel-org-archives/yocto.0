Return-Path: <raj.khem@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C09ABE0044A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 09:29:11 -0800 (PST)
Received: by bkcji17 with SMTP id ji17so6396903bkc.35
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2012 09:29:10 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.112.85.70 as permitted sender) client-ip=10.112.85.70; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.112.85.70 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.112.85.70])
	by 10.112.85.70 with SMTP id f6mr12032570lbz.16.1331054950792 (num_hops
	= 1); Tue, 06 Mar 2012 09:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iW+ewuD8/WEJqMfNSdEHrkCRKQVcR7iOk7yzZNAp56k=;
	b=IyiUmXxOcrJkqFHBjCyviQtiS4Q2RHuBP/e++KKlB5aVpggVnWnFhFYoA4Va+lqqT1
	0gAZS49ZssUAf2qNe6kDT+TO9Zbx+hbr2NVMyfiLpWKaHNjkeL9KqFc6EF0PwWEpgiDI
	62gHGbxtl0iwMlc1lMSWNZS0AwkFDY0ZXdpq+ePq+U2X48btvt7qu3U5Ykp76eM4NIsw
	MAC0AUB9dFwt/Gj0owwNOyR3p3pdhioU2J1/BGg+tngYcCxvHGQe1s6ttO6OxuFpIPCI
	Ft2/5PxERWtmlf6hxuw6Ax45Of6O7FT4K1xgkpaOpreICAE++qwM3ulO64HbqvXBVx/1
	nWKQ==
Received: by 10.112.85.70 with SMTP id f6mr9841315lbz.16.1331054950699; Tue,
	06 Mar 2012 09:29:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Tue, 6 Mar 2012 09:28:15 -0800 (PST)
In-Reply-To: <4F562CE7.4010606@windriver.com>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
	<4F55D32F.6050705@windriver.com> <4F562A34.2020304@gmail.com>
	<4F562B7C.4020105@windriver.com> <4F562C2E.5010604@gmail.com>
	<4F562CE7.4010606@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 6 Mar 2012 09:28:15 -0800
Message-ID: <CAMKF1sp0_-zGHu8uWajpj5V=j=C3ynmCuTxTpCQErfxgsaKT9w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: iptables not building on master
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
X-List-Received-Date: Tue, 06 Mar 2012 17:29:12 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 6, 2012 at 7:27 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Nominally it is to protect them from kernel headers changes and to not
> require headers or a full tree to be present (or at least this is what
> I've learned over the years, I may be forgetting other elements).
>

but thats what linux-kernel-headers are now a days isnt it ?

> In the past, I've also removed this duplication of kernel header files
> as well, and it does work, but it does create a tighter binding to
> toolchain or kernel sources.

from OE's POV we can assume that we will always have kernel-headers
so we could prefer them instead ? We are not interested in building it
standalone but rather with some distro

>
> It is something that can be changed in the package, but as they say
> "you end up with the pieces, if it breaks" :)
>

