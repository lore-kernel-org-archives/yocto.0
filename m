Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.40538.1629212883219706415
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TOZV1hHT;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5AA0E60E78;
	Tue, 17 Aug 2021 15:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1629212882;
	bh=yniqGuDHE9XZVoamAO75nzj5uBXgZjy5lMdTED23v9k=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=TOZV1hHTQ+qzworN8mo3q3TgOBCbomGXOI2w1sxw+0Sdc92XIFch5Gm3ZUBYaEHnP
	 JWRbtnVKXI33zK5nhV8jXxRo4HK4u3GJ5MF66t8fKA1nnRIckaCFpO6Pdg8QtvIxqu
	 BCllkTaIcAAOloy8F+Dt4NcycOonEYoiQ7qPXLF2DDgu/XtCd8AgvnU5Ceo3ayocto
	 JM00y3pFVpYZPUTGSdRwwatJVxIZ69w/Ghpy8fHNyMTOxtqOg0C0zC44FCMy65Y8as
	 CteOwuJB+QZKWYUqKEpDHyPhpxpdU8OVK88hs+L86KPoqw3HGZEnyYFtAX9D0fW/TD
	 c3Yh0Bb84QQRA==
Subject: Re: [meta-mingw] [PATCH v2 1/3] protobuf: static link tools when generating sdk
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210817140742.3110-1-okaya@kernel.org>
 <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <f091be8c-b7d6-12c4-d09b-ec74ce0122ec@kernel.org>
Date: Tue, 17 Aug 2021 18:08:01 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <23ff22c9-a250-fd2c-c199-8392d331596a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 8/17/2021 5:33 PM, Joshua Watt wrote:
>> +EXTRA_OECONF:append:sdkmingw32 = " --disable-shared"
> 
> Apologies, this should use the :mingw32 override, since it's not
> *specific* to the SDK, but MinGW in general. Anyway, I fixed this up for
> you since I wasn't clear; this is in master-next and I'll get it tested
> shortly

My reading of the problem says that the problem only happens on win32
platforms due to how DLLs initialize the heap.

We have use cases of both dynamic and static linkage for the
target build that we have not seen any issues with.

I'd like to keep target builds same.
