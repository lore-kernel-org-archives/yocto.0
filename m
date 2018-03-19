Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEA4FE0091A; Mon, 19 Mar 2018 15:11:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C6BE00529
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 15:11:48 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id u5so7610429pfh.6
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 15:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=BTo+XlX08IBbQ4PJk4/EEluL367W8660YLVpMTfQzUc=;
	b=PnORMTvzQRKWeFmrjXhQ3RCBvRlg7NLSH8Pxuf30nlR+3f0jhri+qLcZFL1teBBeBi
	/hr2rcmQHtBSO5yehoQmd38fTLKJdR9yG9kXZj8QSEgg6YgYobfUVK9JIXruOuvgDY0S
	FMHrMy4Ub4MQ2Ar0L9WY+g5STAieJxIuxzGLa41q4fPAUuPALyR6d0+a3Ioz5b5EAtgH
	FenkBHZ8RXQuyWQ1qx4YVdP6D7X7ZLr3dN4Vd2wlG2KX6WRweulTD/IQajeeBKmK/kv6
	pdkv8voUsNui5YspDuOjzhfN6yY+mxR8J5l9CTmLuoM0+fOTsCtbM8Y+O9LmNSL0r16h
	TKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BTo+XlX08IBbQ4PJk4/EEluL367W8660YLVpMTfQzUc=;
	b=LoL9D3a6UoJZUvVcf1T83Knnwh0L8bdY3/Kf6glvTinXDa0P1gSHMXDTvrE9S2hKY8
	pOj2ASxqiAM56M4N6gHX2qj/I2/vxXbRGlsXkaYkEXz+HJUHtaAyOIfbxlJ9drXVGXpr
	PK1LuHWqF8bD45fbKbTyHWhr3xWOdaiiAXgCT0JRbZSrR02MBopl4lFQMWcZna8gcq7f
	VjzrUcxMizkDbm1olOtoYblHWLqEScT7A2Odmw29P0DmWzaXPMrD0KJqLsLWAnMpLpCS
	RGZxsUb24lKrOUL5UQGa/72ZiJyU//UHwKjzmOdBlxMyIzuFbWZ2k1ikm5GHpADIrBmi
	9sCQ==
X-Gm-Message-State: AElRT7HSCTapsOCq7/XDqKFzd0YXM+AWu9YNIpVolnArdewMt2WDyAr0
	0biL59EOvy4Bs6EYg3nmeGEAcQ==
X-Google-Smtp-Source: AG47ELvJVQNmcA+YZllRy5+AVFS00TVvJqTJ1BEBMHwS8Yt5yB5C3Fg1Tg8ilyVOJgTZj+/8LyFRWg==
X-Received: by 10.101.98.137 with SMTP id f9mr10133088pgv.6.1521497507870;
	Mon, 19 Mar 2018 15:11:47 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:4088:e426:a566:fc98?
	([2601:202:4000:1184:4088:e426:a566:fc98])
	by smtp.gmail.com with ESMTPSA id
	e62sm231790pfl.117.2018.03.19.15.11.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Mar 2018 15:11:47 -0700 (PDT)
To: jackie.huang@windriver.com, yocto@yoctoproject.org
References: <20180305022207.9762-1-jackie.huang@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <a40de351-6836-a32d-1fb5-828893146d2a@gmail.com>
Date: Mon, 19 Mar 2018 15:11:46 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180305022207.9762-1-jackie.huang@windriver.com>
Subject: Re: [meta-security][PATCH] xmlsec1: fix a typo in examples/verify3.c
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
X-List-Received-Date: Mon, 19 Mar 2018 22:11:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 03/04/2018 06:22 PM, jackie.huang@windriver.com wrote:
> From: Jackie Huang <jackie.huang@windriver.com>
>
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>

merged.

thanks
- armin
> ---
>  .../xmlsec1-fix-a-typo-in-examples-verify3.c.patch | 25 ++++++++++++++++++++++
>  recipes-security/xmlsec1/xmlsec1_1.2.25.bb         |  1 +
>  2 files changed, 26 insertions(+)
>  create mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
>
> diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
> new file mode 100644
> index 0000000..0fe3fd7
> --- /dev/null
> +++ b/recipes-security/xmlsec1/xmlsec1/xmlsec1-fix-a-typo-in-examples-verify3.c.patch
> @@ -0,0 +1,25 @@
> +From bf1c7b17cc80a2f4dfd43f112f944f68fa5fbcd6 Mon Sep 17 00:00:00 2001
> +From: Jackie Huang <jackie.huang@windriver.com>
> +Date: Fri, 2 Mar 2018 01:10:58 -0800
> +Subject: [PATCH] xmlsec1: fix a typo in examples/verify3.c
> +
> +Upstream-Status: Submitted [https://github.com/lsh123/xmlsec/pull/153]
> +
> +Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> +---
> + examples/verify3.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/examples/verify3.c b/examples/verify3.c
> +index 2d26ae7..68f52ab 100644
> +--- a/examples/verify3.c
> ++++ b/examples/verify3.c
> +@@ -1,4 +1,4 @@
> +-4/** 
> ++/**
> +  * XML Security Library example: Verifying a file signed with X509 certificate
> +  *
> +  * Verifies a file signed with X509 certificate. 
> +-- 
> +2.13.0
> +
> diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
> index d351dd2..dbb6f7d 100644
> --- a/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
> +++ b/recipes-security/xmlsec1/xmlsec1_1.2.25.bb
> @@ -17,6 +17,7 @@ SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
>      file://change-finding-path-of-nss.patch \
>      file://makefile-ptest.patch \
>      file://xmlsec1-examples-allow-build-in-separate-dir.patch \
> +    file://xmlsec1-fix-a-typo-in-examples-verify3.c.patch \
>      file://run-ptest \
>      "
>  


