Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D9FE00A64; Sun,  2 Sep 2018 07:51:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BC29E00A4C
	for <yocto@yoctoproject.org>; Sun,  2 Sep 2018 07:51:34 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id t68-v6so29495897oie.12
	for <yocto@yoctoproject.org>; Sun, 02 Sep 2018 07:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6pC6sqc8OnzCUBVJ5mKszqVh9nEDlQ+eUsRJ6ovDEuo=;
	b=BA5Qip1o8xwxus9+QuzUiwFv8Ocd9Yf7fy2iC3WZE3XbubMB2qmzO/krYX5Zc4laZS
	XgAWxirxdQI6o6y9VKU76zVZ4Wh6Cm9SEPPCehiQV2tERoWWFLr2T1wbbJHE2eqS+tfc
	gvRMqOHdiQllHJaz5tOtj5dB7OQekzOUZDB70zoiUiPr9g7iNEKpLYLm2nrVD7SOjU50
	U1U7tKQZbbWy17o8N51oF49xMCoNyTY1CcFiWTyyZP+/FdxL0Gi+2cd/ceqXNPgVVWZx
	3QOVJG1ZoEmZn5N35culfw+Wa6+013q7RBjvH7ylY0qF/ACs4NMom6VXRTz6ksRitll4
	Cuqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=6pC6sqc8OnzCUBVJ5mKszqVh9nEDlQ+eUsRJ6ovDEuo=;
	b=KchIK1qoPEn222Eb+5K8RBWa9WZO10SucK+BSF9j2GwYfo42pHNmzm1pDwn3YHER1b
	saZluws8BgJeImfwdMJNVHsDcWxJxvQfGFoD1CXaoPahFHZrjp0XARg4Qw/PendEL+8o
	O0N6f8FfqFKuu+q+DcINunK6Dn7aIMHb93E8Dpj7UP2ZOUE1a5YriJAOiLv1jcjo0TaW
	2nf0G7Usu7nNYJSNIwXf+A55kcV607Fv4ov7XU1C08tC5iKArhiv167C07yL5jmA6g7Z
	qnw/G0ufuHD3BqL8Hzl8od2uatdNvV+IVqhbevP3+0u7id6vV3S2F2wcPTCJquiHoewm
	8JeA==
X-Gm-Message-State: APzg51Acj1PzTg1ZqUi8h4NJFHar+H3AHsiFNUyFxBEcMfvwGGiIjn8L
	7SgIDCbYnvKq90vDiV0f9pHNzSry
X-Google-Smtp-Source: ANB0VdYS0VooWMns1led6mY9UmLPa39qw5P8j5JEg1PUAIiEetvYj9wR8KYuaWpO0+CVruVY9HLE9Q==
X-Received: by 2002:aca:acc8:: with SMTP id
	v191-v6mr14866938oie.354.1535899893685; 
	Sun, 02 Sep 2018 07:51:33 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:c043:3fe4:1aa0:e88f?
	([2601:202:4180:c33:c043:3fe4:1aa0:e88f])
	by smtp.gmail.com with ESMTPSA id
	p7-v6sm13784624oif.35.2018.09.02.07.51.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 02 Sep 2018 07:51:33 -0700 (PDT)
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <3c50ae61-ae5a-fb96-82dc-9f55af3843a1@gmail.com>
Date: Sun, 2 Sep 2018 07:51:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1535699411-6135-1-git-send-email-yi.zhao@windriver.com>
Subject: Re: [meta-security][PATCH 1/2] samhain: upgrade 4.2.2 -> 4.2.4
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
X-List-Received-Date: Sun, 02 Sep 2018 14:51:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 08/31/2018 12:10 AM, Yi Zhao wrote:
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
merged
> ---
>  .../samhain/{samhain-client_4.2.2.bb => samhain-client_4.2.4.bb}   | 0
>  .../samhain/{samhain-server_4.2.2.bb => samhain-server_4.2.4.bb}   | 0
>  .../{samhain-standalone_4.2.2.bb => samhain-standalone_4.2.4.bb}   | 0
>  recipes-security/samhain/samhain.inc                               | 7 +++++--
>  4 files changed, 5 insertions(+), 2 deletions(-)
>  rename recipes-security/samhain/{samhain-client_4.2.2.bb => samhain-client_4.2.4.bb} (100%)
>  rename recipes-security/samhain/{samhain-server_4.2.2.bb => samhain-server_4.2.4.bb} (100%)
>  rename recipes-security/samhain/{samhain-standalone_4.2.2.bb => samhain-standalone_4.2.4.bb} (100%)
>
> diff --git a/recipes-security/samhain/samhain-client_4.2.2.bb b/recipes-security/samhain/samhain-client_4.2.4.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-client_4.2.2.bb
> rename to recipes-security/samhain/samhain-client_4.2.4.bb
> diff --git a/recipes-security/samhain/samhain-server_4.2.2.bb b/recipes-security/samhain/samhain-server_4.2.4.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-server_4.2.2.bb
> rename to recipes-security/samhain/samhain-server_4.2.4.bb
> diff --git a/recipes-security/samhain/samhain-standalone_4.2.2.bb b/recipes-security/samhain/samhain-standalone_4.2.4.bb
> similarity index 100%
> rename from recipes-security/samhain/samhain-standalone_4.2.2.bb
> rename to recipes-security/samhain/samhain-standalone_4.2.4.bb
> diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index db96264..e127e91 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -19,8 +19,11 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>             file://samhain.service \
>             "
>  
> -SRC_URI[md5sum] = "f499d5d06bfd1d787073a45bf28dd60f"
> -SRC_URI[sha256sum] = "0f3e64afb3f00064c9b136d34a72d580cd41248c5941eba0452f364a109003c7"
> +SRC_URI[md5sum] = "08863fad583acc7293ef29b4528c837e"
> +SRC_URI[sha256sum] = "0cd779b3666264e1f370f7ec37891f680b4caa04895fab8c5aa9a52e41ec885d"
> +
> +UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
> +UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
>  
>  S = "${WORKDIR}/samhain-${PV}"
>  


