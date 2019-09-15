Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D848E00AB6; Sun, 15 Sep 2019 09:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52041E00790
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 09:38:22 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id q5so21081326pfg.13
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2019 09:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oX84ZgkabBZRLDxcSvkwujAEcmxXFqQfYT8PI5s75Sk=;
	b=GUPdClVVYJYrF8towtWrJ6m32KdtEIviZ6l4girMrLibjG3N8XRYVtw/1LWH5OE6eA
	qj/Ijaqmxl1wYEoRJdWHDyhu9ZQQy1MDveQ23ZgR86/b9fg2AQJ1phmDrOIoCsk8LeKj
	84USEr9bWlq2CPLkiBvcX0/bzMJGyyCHtBEWVuuB6hlasoqZxZ1GvluAG/uppvWXTZwU
	B+4FYrW5YCBTkMRyk+z6SNiLyrdN+HpiS1ArBZf5ychmq10JULmiLRsh86On+bTOdacR
	nr38XikHliyzpoQuTKxwHXpxGPFkVCTFXdhoMhU5hxudFpLu2CPdJ+mzmyy+Sltm2m5/
	ZvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=oX84ZgkabBZRLDxcSvkwujAEcmxXFqQfYT8PI5s75Sk=;
	b=qJ0vkYI13a5fe9rXZWpUP7brweVGOi+61VW/oyDa18hIumk1k9l/OG3QXk1tcG4C7s
	SMXpwZz1eZXPO9zugSGVIrI2MQxPXFKbTaxhuTLxI8mQlxzocR6J2onOYbrwxfV9Wclk
	GYYmTYyYcxb3VMYT+Y5eabA2PTXEkByNmX9Ivkgjc2tILRjpTPn/a8sU4GfUd04SC1l2
	7wC7k+zT+uDn85brP/jjAI5lEC/Jm/9gIel8MK+RKNXNNXVEslyZt3R+891LbjdXWqn8
	GOyjPN5Wot2zP5WvjN7xjOjG6BAOvN6f7SXoNonWLpsNRT2g3/1KQCy+DEiISOHwxHOT
	jlZw==
X-Gm-Message-State: APjAAAXlWvpVfoJ5Iw64Pj0kflbdUxlBT7g+xFDmR+4Ka5aR3xkamspr
	41XcNaN+Nrs2emrRrqsdyXM=
X-Google-Smtp-Source: APXvYqxOeaTw/kXYIAPTa9nEPbWJZ7puj2qeUt1ImDfGjIOoJMOlGKiKxb8OPrIJT7/JF/Qdkxu3oA==
X-Received: by 2002:a62:2d3:: with SMTP id 202mr69416861pfc.141.1568565501692; 
	Sun, 15 Sep 2019 09:38:21 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:c1:3eb6:7e0:d804?
	([2601:202:4180:c33:c1:3eb6:7e0:d804])
	by smtp.gmail.com with ESMTPSA id
	u5sm37280139pfl.25.2019.09.15.09.38.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 15 Sep 2019 09:38:21 -0700 (PDT)
To: Scott Ellis <scottellis.developer@gmail.com>, yocto@yoctoproject.org
References: <1568557081-21869-1-git-send-email-scott@jumpnowtek.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c0e44c9a-0bf6-fd9a-bab9-ec456696babc@gmail.com>
Date: Sun, 15 Sep 2019 09:38:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568557081-21869-1-git-send-email-scott@jumpnowtek.com>
Subject: Re: [meta-security][PATCH] ncrack: update to tip
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
X-List-Received-Date: Sun, 15 Sep 2019 16:38:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 9/15/19 7:18 AM, Scott Ellis wrote:
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
>  recipes-security/ncrack/ncrack_0.7.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/ncrack/ncrack_0.7.bb b/recipes-security/ncrack/ncrack_0.7.bb
> index 06ba2b6..ba26965 100644
> --- a/recipes-security/ncrack/ncrack_0.7.bb
> +++ b/recipes-security/ncrack/ncrack_0.7.bb
> @@ -4,9 +4,9 @@ HOMEPAGE = "https://nmap.org/ncrack"
>  SECTION = "security"
>  
>  LICENSE = "GPL-2.0"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=198fa93d4e80225839e595336f3b5ff0"
> +LIC_FILES_CHKSUM = "file://COPYING;beginline=7;endline=12;md5=66938a7e5b4c118eda78271de14874c2"

Why did the LIC_FILES_CHKSUM change?
>  
> -SRCREV = "3a793a21820708466081825beda9fce857f36cb6"
> +SRCREV = "dc570e7e3cec1fb176c0168eaedc723084bd0426"
>  SRC_URI = "git://github.com/nmap/ncrack.git"
>  
>  DEPENDS = "openssl zlib"


