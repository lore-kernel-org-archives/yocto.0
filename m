Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE1B2E00C28; Thu,  3 Jan 2019 14:41:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66D9EE00C10
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 14:41:42 -0800 (PST)
Received: by mail-pg1-f195.google.com with SMTP id z10so16589534pgp.7
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 14:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=indhMb8Z8Ci+/QH5sPPm8IUdbyUcRO9a8+oZESonHFc=;
	b=ApJS89RHUbcceGe01yUWS/ZuIcBkGru/3+o+rnPT8nrb/9zDbGf1k9KRiU95xspD3p
	XnGsy+mPdnpRNvLI/bJCHtOKsxNTTBwkckPQWM4HFybSqLBT2kHV6Xwan76EIyYVOpX+
	eLe9nUCivJqK7pE2tXNkqyr+o8myka01wo0l/E8DE2jaySxvstoxEfebQ+tHUQB9eQhn
	x7h1nx8uCH2pEYxtaycrbgpDNPuIkGt3xX3Rd+3W/aJWKV9wgOufK8chrHbOYam4Bz/7
	uFmxhhiif36ZdNLgrIxJo7IKE7ok1mMTxh8QnuiFgjhlMFGguqhBZ7s++yN0COYSlR0D
	Hs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=indhMb8Z8Ci+/QH5sPPm8IUdbyUcRO9a8+oZESonHFc=;
	b=FbJbv/rohE9HwuhQqfgyZWqfwFmX1p6+6Orjm6PwnvooyIIyrSFc177cAdksbp1agI
	kAMFVCEE/tPhHklpuJAI2QJQMfEui8ed2sB7cAHONvP/xE+qOS31CO9M0tewBVd3y6Zm
	14Z5/jXRZdIRpJtRY4s/hMkDawLtPu6k7TbHwKNbXtNpx1eQ9ZMvyNRtnV6Kq2rEqur+
	4bGd8+HQWOhqeB1eS4Z8VSi1tky+z5ScjXo4XyAyRSgm6pfwZSdAs0VQ7WAdIv6DbYM8
	G5jTQK5FEJ3Ng3KAop2HNKmfvwhbhuASe+mxAy0qH2BW9agwcYIv0i1vJOrpfU+TXLW1
	Hj0Q==
X-Gm-Message-State: AJcUuke6IEeVDHUztXSOPJ89lMvsUdd3a7MARYeQZ2+UeUmDVjD1wYQv
	euqPCHgo2jZoJ1C3l/ODxQ6u+g==
X-Google-Smtp-Source: ALg8bN6isAbO4rQ4rKimWJCVqKbp5LLu/Gr6u/9i7IDrNfgJ2rz6FbylX8rRCFodNYIGkZK2b/Gg2g==
X-Received: by 2002:a63:7c41:: with SMTP id l1mr46121184pgn.45.1546555301679; 
	Thu, 03 Jan 2019 14:41:41 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:7144:30fa:a7a1:7688?
	([2601:202:4180:c33:7144:30fa:a7a1:7688])
	by smtp.gmail.com with ESMTPSA id
	i1sm85194898pgb.46.2019.01.03.14.41.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Jan 2019 14:41:40 -0800 (PST)
To: Scott Ellis <scottellis.developer@gmail.com>, yocto@yoctoproject.org
References: <1546534974-6250-1-git-send-email-scott@jumpnowtek.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <0e5371a9-2566-1dde-c9c2-9b59b10b2c33@mvista.com>
Date: Thu, 3 Jan 2019 14:41:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <1546534974-6250-1-git-send-email-scott@jumpnowtek.com>
Cc: Scott Ellis <scott@jumpnowtek.com>
Subject: Re: [meta-security][PATCH] checksec: Upgrade to 1.11.0
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
X-List-Received-Date: Thu, 03 Jan 2019 22:41:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 1/3/19 9:02 AM, Scott Ellis wrote:
> Switch source to a more up to date github repo.
Very cool.
>
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
>  recipes-security/checksec/checksec_1.11.bb | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>  create mode 100644 recipes-security/checksec/checksec_1.11.bb
It appears that the removed nor the delta of the current version are not
present.

- armin
>
> diff --git a/recipes-security/checksec/checksec_1.11.bb b/recipes-secur=
ity/checksec/checksec_1.11.bb
> new file mode 100644
> index 0000000..59a67bd
> --- /dev/null
> +++ b/recipes-security/checksec/checksec_1.11.bb
> @@ -0,0 +1,19 @@
> +SUMMARY =3D "Linux system security checks"
> +DESCRIPTION =3D "The checksec script is designed to test what standard=
 Linux OS and PaX security features are being used."
> +SECTION =3D "security"
> +LICENSE =3D "BSD"
> +HOMEPAGE=3D"https://github.com/slimm609/checksec.sh"
> +
> +LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D93fddcca19f6c897871f9b5=
f9a035f4a"
> +
> +SRCREV =3D "a57e03c4f62dbaca0ec949bbc58491fb0c461447"
> +SRC_URI =3D "git://github.com/slimm609/checksec.sh"
> +
> +S =3D "${WORKDIR}/git"
> +
> +do_install() {
> +    install -d ${D}${bindir}
> +    install -m 0755 ${S}/checksec ${D}${bindir}
> +}
> +
> +RDEPENDS_${PN} =3D "bash openssl-bin"



