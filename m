Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3871FE00474; Wed, 26 Aug 2015 08:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.201.172.119 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.mail.bg (mx3.mail.bg [193.201.172.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFCCFE0034B
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 08:47:10 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx3.mail.bg (Postfix) with ESMTPSA id 22BF420CD5A6;
	Wed, 26 Aug 2015 18:47:09 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1440604029; bh=n33NsyTpqdx7GD5ZXEt3b7ZwihZKYE7onsUDet5Dm1A=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=IkCTsX6HtdrdBMXPxl/lzkRU8qOGQKg1jEJuDLYjpxvwodI61Z2t+OPyz3w8HYcFI
	lxYB7PSPIDDtoD1rPFF4jQp0WcULBlWslB7AfG6ivRWphXe9SsA+cux3fZbdA/JzRu
	hBZBVSx1IOdjnGmk1Yd9iRsGxwNWH65X/IHDkCrw=
Message-ID: <55DDDF7C.1010804@mail.bg>
Date: Wed, 26 Aug 2015 18:47:08 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <700cc51e9bf5463da878800d449c292c@E2013a.CORP.ICS.COM.UA>
In-Reply-To: <700cc51e9bf5463da878800d449c292c@E2013a.CORP.ICS.COM.UA>
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Wed, 26 Aug 2015 15:47:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Lenivyy Viktor,

On 08/26/2015 06:42 PM, Lenivyy Viktor wrote:
>>  Can you please try this and share if it works for you:
>
>>
>
>>  bitbake -c cleanall dirtypackage myimage
>
>>  bitbake myimage
>
>>
>
>>  Regards,
>
>>  Nikolay
>
> What is dirtypackage? Myimagewill be altera-image-minimal in my case, I
> guess.
>
> I’m wondering whether cleanall doesn’t remove Yocto’s copy of kernel
> sources?
>

dirtypackage is the one which you want to rebuild and redeploy in the
rootfs. If the package source is local, cleanall won't do big harm, but
otherwise you're correct, it will clean the sources. You can use
"clean" instead.

Regards,
Nikolay

