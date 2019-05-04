Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A467AE00B81; Sat,  4 May 2019 10:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92191E00AD5
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 10:59:37 -0700 (PDT)
Received: by mail-pl1-f178.google.com with SMTP id z8so4279327pln.4
	for <yocto@yoctoproject.org>; Sat, 04 May 2019 10:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:from:openpgp:autocrypt:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=2lonc/w97Y9CcHwGqFFRtEP801jbZeMbnPgw6LysY7Y=;
	b=M/uSDFPu17w9Nt+wSl/PCz6kC/QYVxMdBu6AA+11oGTG5l3u8VOT3nhDmiEzmLDwM9
	yQqITqNMDuBEPnSFO4itWmJOWb/Z/uS/DN18rl9mYnfIyZIDZ0Ep9dxk6BsZs0ass+sg
	WAwkuSbpg9txlaeCt/yQMKJm0H6WQlXUtuyRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:organization:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=2lonc/w97Y9CcHwGqFFRtEP801jbZeMbnPgw6LysY7Y=;
	b=UnbSY0bAA1jVUjQCwbyyTWKPgmzCC8NVmYJmI0bvqoMoMEQLyRY+EVXMw5qYhBmPfM
	JAqkY2QNIznShpQIgGcQSGdtehdR/e5HAUAfpl7b0zvmSTQP75FBYuJjOxz/+0/Vx93n
	/DoRS3Og83SrVdYeotXVucl2/JOb0d2viCqy8lDOrBlhl+J3c4oVFwsVnTaPzT1brHhe
	0cYeadVdiQnR0/1n8WhGPL98QjHtGG8X/iSbwx3wTseD/I1DjgdogCN9Af2f6YtE16Dd
	qUebCPOYo23AAxQO/BqS7J72RGW3G6uNgpd90mEyqB2cFKv0Mh0VNMKfXUgHke2LBtMB
	bU0w==
X-Gm-Message-State: APjAAAU/XiuGEch/zkXYIl9/UdxOwhlGz2td9EOtPIVnKqV6mFnDkFWS
	eX4b9QR8dCmjTF/dHQHwDs2MPwALtJY=
X-Google-Smtp-Source: APXvYqwsEbJwA2xPz7Ts/P7zszVBqVpIwkqrGyCNKBNOk4eOYyENTOAFlDXOh9k8UvgxI1KPbxM1JQ==
X-Received: by 2002:a17:902:9a4a:: with SMTP id
	x10mr19979654plv.113.1556992775969; 
	Sat, 04 May 2019 10:59:35 -0700 (PDT)
Received: from [192.168.1.54] (c-24-21-170-32.hsd1.or.comcast.net.
	[24.21.170.32]) by smtp.gmail.com with ESMTPSA id
	a26sm6986159pfc.115.2019.05.04.10.59.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 May 2019 10:59:34 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20190504161955.GF11633@localhost>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Openpgp: preference=signencrypt
Autocrypt: addr=mhalstead@linuxfoundation.org; prefer-encrypt=mutual; keydata=
	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
	6RA=
Organization: Linux Foundation
Message-ID: <4a5099d9-81b2-c45d-c9a8-cd0fe0943665@linuxfoundation.org>
Date: Sat, 4 May 2019 10:59:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190504161955.GF11633@localhost>
Subject: Re: git.yoctoproject.org TLS certificate expired
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
X-List-Received-Date: Sat, 04 May 2019 17:59:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 5/4/19 9:19 AM, Adrian Bunk wrote:
> $ git pull
> fatal: unable to access 'https://git.yoctoproject.org/git/poky/': server 
> certificate verification failed. CAfile: none CRLfile: none
> $
>
>
> Firefox says:
> git.yoctoproject.org uses an invalid security certificate. The 
> certificate expired on May 4, 2019, 7:53 AM. The current time is May 4, 
> 2019, 7:16 PM.
>
>
> cu
> Adrian

I've renewed the certificate manually for now.

I will review the automated process and monitoring to make sure this
doesn't happen again.

-- 
Michael Halstead
Yocto Project / SysAdmin


