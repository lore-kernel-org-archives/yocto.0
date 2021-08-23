Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web08.19125.1629691143671070296
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Aug 2021 20:59:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=agqSARFx;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 92D496126A;
	Mon, 23 Aug 2021 03:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629691142;
	bh=vY0PqOrxupNDHVSVHytpFqmh+KToxdaIoe9i1DhGHBo=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=agqSARFxrGzsMaT7VC3SEVOvIDLut2oo6hjcO82cKEVAg6wzqkcSaMnw+9TO/NLvu
	 UBC4OnCziCiiubDPQ7hpx5ixB8h39eRTa7MTQIwZZt0D3Xlkwtjg3TmWV+fLCfzTNV
	 PXXwbtLsImfjVsSWUiaKr/7RVFXUg6/TDDUgBf49r4REdkoIej/Wrgc+9krWaJCkUt
	 PuB1rlAzuOMhW/pc4j5WEaTaROU/Rsot+mRIyjRwTWlale2nj6StN391+UM2Izs3Mt
	 ZpiVZmYLySJdVGl00EnbyfaF06p7ThYt++mIQGTXCuxy63FNcT7OQHs3ABpcGIihJZ
	 xHdBOpHqcKceA==
Subject: Re: [yocto] [meta-mingw] [PATCH] grpc: remove nl2 requirement since it is optional
To: Joshua Watt <jpewhacker@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
References: <20210820204620.11236-1-okaya@kernel.org>
 <8682398a247f9f67d2d957863e16460455e266f0.camel@linuxfoundation.org>
 <CAJdd5GaWxXXYKRKs6i_eMNF3mM3x_CXTR0JnNOwi6L1ch7anvA@mail.gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <32ec2161-5e54-5d11-24ad-5f0e47e7d546@kernel.org>
Date: Mon, 23 Aug 2021 06:59:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAJdd5GaWxXXYKRKs6i_eMNF3mM3x_CXTR0JnNOwi6L1ch7anvA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/21/2021 3:27 PM, Joshua Watt wrote:
>     >  EXTRA_OECMAKE:remove:mingw32 = "-DBUILD_SHARED_LIBS=ON"
>     >  EXTRA_OECMAKE:append:mingw32 = " -DBUILD_SHARED_LIBS=OFF"
> 
>     Should we be making that a PACKAGECONFIG which mingw32 could change?
> 
> 
> Yes, that's a good idea. Sinan, please make that change in meta-oe, then
> change this patch to remove it from PACKAGECONFIG
> 

Patch sent with subject: [meta-oe][PATCH] grpc: make SHARED library
build optional

I will wait until it gets merged to follow up here.
