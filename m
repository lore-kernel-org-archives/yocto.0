Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1102CE00A08; Fri, 10 Mar 2017 17:55:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F31F0E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:55:27 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id b5so11991315pgg.1
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=UJpLDT37Q2I8ftAhiKJNxhb9MjepyWFf+IyjU06ul1U=;
	b=AVtDeOGwl89VWvMNgDwKZehue4RQal4mR0c9lAsowwvdRAQ1fNfkzYGxauo3r6J2SP
	OAel+ysgaSg3Bzdu56lw+gMD8LlxVlOYPdmcmPQ00QzvQVzwyiJosLT/XmSLiGa0KgEy
	D6HPG4A53MRr5ycBc7upba0n8ucIEsYyp+OAY/3dFaEKmNtCZzZvGOo6gyqcvDrYQMUY
	KGZ9lcIytONgXBpZKKwq0ioUFauSmdVISTjv4IypmOoH4lemB8Ggti+FkxT51OkVEjWX
	eUs8rPfqdSi4j14oIpOxz/2AsnXvJG1meTbSz3hGrP/y5BbmXmiuUvo0DmW8SZDv/Zv8
	hCJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=UJpLDT37Q2I8ftAhiKJNxhb9MjepyWFf+IyjU06ul1U=;
	b=eHh0TnFIR8aaDgc1bWhQJxB8gI/lGVkxTdif5VfVKZVopPCPF/y7onb1I1tQ9gVL1Q
	xZeHgiGuCC6DcsePjKNjlbX11mNZs9O3De+K3Ij/ljIS2BYBjjzCrJ+nzVg5SLphW21R
	RgetBFG4N3hlV530vAbxX3yDvmCgj9TVN2xJygp0d7CCt16YtmQhlG5QXiwA+VQ8H4YS
	GgdiyD2v7zWIJQ6ScfCwF+q6SsO3kpohyWJChP87aHILwfxLrs5JYM2m/fsBUw7yiXBr
	n6QoQa6ZAJ93E+rd9Oy0tgq7kWFO+RHS+g2bAQcTDeQ3vQBOE24T4Y0IdFG/Ov1XAh3u
	0fBA==
X-Gm-Message-State: AMke39lMWHZvZHQpUgK3eutfqvsG5tI8NYW3n4LxIs7NXrNxHmSiYoDdI3Csi1SN2tbZNg==
X-Received: by 10.98.59.8 with SMTP id i8mr24730751pfa.132.1489197327023;
	Fri, 10 Mar 2017 17:55:27 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d16a:f79a:feb6:e660])
	by smtp.gmail.com with ESMTPSA id
	p16sm20819175pfl.97.2017.03.10.17.55.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 17:55:26 -0800 (PST)
To: yocto@yoctoproject.org
References: <20170213233243.16688-1-paul@paulbarker.me.uk>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <fe276ffa-0a4d-82e5-1a90-f9d3147cdfae@gmail.com>
Date: Fri, 10 Mar 2017 17:55:25 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <20170213233243.16688-1-paul@paulbarker.me.uk>
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.4: Update to 4.4.48
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
X-List-Received-Date: Sat, 11 Mar 2017 01:55:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul

On 2/13/17 3:32 PM, paul@paulbarker.me.uk wrote:
> From: Paul Barker <paul@paulbarker.me.uk>
> 
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> index 0f78225..b235772 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>  
> -LINUX_VERSION ?= "4.4.43"
> +LINUX_VERSION ?= "4.4.48"
>  

There is 4.4.50 with rpi0 support. Can you resent this patchset with the
updated rev

> -SRCREV = "17ca1c930978a9ea6ddfec61fd0e2043e8ab3b17"
> +SRCREV = "7ddf96fbb7d637b79b449c7bd1c8d35f00571e4b"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
>             file://0001-fix-dtbo-rules.patch \
>  "
> 

