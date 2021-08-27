Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by mx.groups.io with SMTP id smtpd.web10.1247.1630097263998189684
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 13:47:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ox9zhU1H;
 spf=pass (domain: kernel.org, ip: 198.145.29.99, mailfrom: okaya@kernel.org)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4696760F42;
	Fri, 27 Aug 2021 20:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1630097261;
	bh=Fauc42GmJOVuVuaQZ5KX5TbtK2AWaSmLDNbU6iYrUH0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=Ox9zhU1HhqVXhua+zlFAKJ0smEN/n+uRQayvHJu1d4+ffcEsvpO1/hjHhUtxEEleB
	 ruyoGSmh2si/ZpYQQ3c46NAGjr68UXJ9jNj+QXmFJJv/EQiyMH/5ah0y+D6v3TaOyZ
	 7t3SCufHqgg23A0+MDnnhsFWiX6CZIOTKT50ZVbfUPpJWd4fmfSLdSlFjiYWByI5r3
	 ZLiR2/yEGOS3WjS6MAuRpWHQ7H+9pooW25a0rE/moPSAbQgvTABN9zcmIZTSPGerMf
	 JlFKfFArhvLmfVA9tHs9qjAOSzaJWj+JrOpXTn4N0IEezYrDvYD7uCJyw6b2rbG65i
	 NkWy+AIbwUuUQ==
Subject: Re: [meta-mingw] [PATCH] grpc: use the new PACKAGECONFIG to disable shared
To: Joshua Watt <jpewhacker@gmail.com>, yocto@lists.yoctoproject.org
References: <20210824164849.12717-1-okaya@kernel.org>
 <6ae884e8-4ec4-9595-d8ee-942fad9b0945@gmail.com>
From: "Sinan Kaya" <okaya@kernel.org>
Message-ID: <c50780d8-e14d-1fa5-b2ab-7222c023e7ad@kernel.org>
Date: Fri, 27 Aug 2021 16:47:40 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6ae884e8-4ec4-9595-d8ee-942fad9b0945@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/27/2021 8:41 AM, Joshua Watt wrote:

>> @@ -1,5 +1,4 @@
>>   # doesn't build and not required
>>   DEPENDS:remove:mingw32 = "libnsl2"

> 
> This is good, thanks. Is the libnsl2 also tied to some feature? Perhaps
> you can explain why it needs to be removed from MinGW
> 

My research says libnsl is a soft requirement for c-ares.
GRPC assumes libnsl to be present and used by default.
However, it will build without it too.

https://www.linuxfromscratch.org/blfs/view/svn/basicnet/libnsl.html

We should be turning libnsl off if you want to enable GRPC's backward
compatibility mode. Maybe, because previous versions didn't support
libnsl.


c-ares
-------------
CMakeLists.txt:CARES_FUNCTION_IN_LIBRARY (gethostbyname nsl HAVE_LIBNSL)
CMakeLists.txt: LIST (APPEND CARES_DEPENDENT_LIBS nsl)


grpc
-------------
  if(gRPC_BACKWARDS_COMPATIBILITY_MODE)
    # See https://github.com/grpc/grpc/issues/17255
    set(HAVE_LIBNSL OFF CACHE BOOL "avoid cares dependency on libnsl")
  endif()

CMakeLists.txt:option(gRPC_BACKWARDS_COMPATIBILITY_MODE "Build libraries
that are binary compatible across a larger number of OS and libc
versions" OFF)
CMakeLists.txt:if(gRPC_BACKWARDS_COMPATIBILITY_MODE)

