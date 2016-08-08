Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87AA4E00DA2; Mon,  8 Aug 2016 08:10:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E1AAE00CA5
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 08:10:56 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y134so25185710pfg.3
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 08:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=+KaO1haqCKCwk0cwMghMHwX0x7v4z1/Kqcmxzbp40DQ=;
	b=BVfGFtstEiIfhr6lTnJMs3M7b2iXOsVBid6nCk5vDqHWriNHVSc0OudGgJxtpuiPSi
	saIvtZ4Hn+qItabf/iRgYHF2NJ4RVh+5eVJBIgwrgMovdxXLKCVxaT1Yp/T3o/XS0DcW
	ULA2nymyJOTuvw0z6nr/CLHnEHdG8V6+0eiywvZ1Eh2l0XZGNAyFUQHxHEjdmxDOXs0E
	kdlyoOAx869FqDU4XEUa2dCjwGgq4U2s1XM4wnxSeucLR7bPFuvr3tUcFiz2MJWUA2ht
	Ar25s2KblJiZ8Re++0YXQcGqCGKQiZ9tjoXRBZ+E/hysG4heoWKImOMbX+uG9Dr3ubuG
	yqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+KaO1haqCKCwk0cwMghMHwX0x7v4z1/Kqcmxzbp40DQ=;
	b=Ls6pqOPnvWyDYeed1/SiF/b0oYSiOAO1m4yFma6vvVR/VDQ3Js68W0c7Ur3MTLYyaC
	07UYASSPc/YDv6pHuTcVaWNiSTrpsQugo2y9CPDjXn9yF0C/PKGgN+BIDcFgw0ucmmoP
	g79A8R+qgJjZgi9Lg8cDWIts/DQ8PS8sOhiuCBr4wGWn29qookMvLC88QSoOcsUD0210
	p51qvu5ednSiFxtCm78lCv8ev76VTekh3ii6QZMxB3TnOnDhsRFT5HZb82Hn8uirKl9T
	4EZYkhbQy+pObxau8s10QKFc0ge8E7QuOuVvwjn+bJoKKkBi+bprl3Eju5NZAfpNGLPX
	HcQA==
X-Gm-Message-State: AEkoouvTNg0kfjN2lkteLyuvoBn9SAzhpbwRklyacK6cyK8JZcNCesD8aHVA+Wefy+OgBA==
X-Received: by 10.98.71.91 with SMTP id u88mr163883237pfa.145.1470669055428;
	Mon, 08 Aug 2016 08:10:55 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:bdc8:4bf:3772:6825?
	([2601:202:4001:9ea0:bdc8:4bf:3772:6825])
	by smtp.googlemail.com with ESMTPSA id
	d185sm48882785pfd.80.2016.08.08.08.10.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 Aug 2016 08:10:54 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1469090900-29903-1-git-send-email-thomas.perrot@tupi.fr>
From: akuster808 <akuster808@gmail.com>
Message-ID: <57A8A0ED.7040006@gmail.com>
Date: Mon, 8 Aug 2016 08:10:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <1469090900-29903-1-git-send-email-thomas.perrot@tupi.fr>
Subject: Re: [meta-security][PATCH] Fix a trousers build on when not in use systemd: unparsed line: 'inherit'
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
X-List-Received-Date: Mon, 08 Aug 2016 15:10:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 07/21/2016 01:48 AM, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>
> ---
>  recipes-tpm/trousers/trousers_0.3.13.bb | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

merged
> 
> diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-tpm/trousers/trousers_0.3.13.bb
> index e274972..6853f18 100644
> --- a/recipes-tpm/trousers/trousers_0.3.13.bb
> +++ b/recipes-tpm/trousers/trousers_0.3.13.bb
> @@ -16,8 +16,7 @@ SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${BPN}-${
>  SRC_URI[md5sum] = "ad508f97b406f6e48cd90e85d78e7ca8"
>  SRC_URI[sha256sum] = "bb908e4a3c88a17b247a4fc8e0fff3419d8a13170fe7bdfbe0e2c5c082a276d3"
>  
> -inherit autotools pkgconfig useradd update-rc.d
> -inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
> +inherit autotools pkgconfig useradd update-rc.d ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
>  
>  PACKAGECONFIG ?= "gmp "
>  PACKAGECONFIG[gmp] = "--with-gmp, --with-gmp=no, gmp"
> 

