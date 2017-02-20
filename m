Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34BE8E00867; Sun, 19 Feb 2017 19:50:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E160E007BA
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 19:50:30 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id p185so816107pfb.0
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 19:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=dMEYmbIrFfsWL/p9fxWuLPPVMtEwt4YqwpBj8INk0uA=;
	b=eaGS+9/8Ky9PCWbzStzCdd/rER+ylfLd6vmwQijU4unC31kNP1/DVoibUY4Z/xfJdQ
	Mmf+BRHYUfTWPOyH0fB9ZitBrL89GyUkxOGkp6Pk0FRHP01aKHmQG9/oKqGsNmyCaSsg
	vDLx5XkWnYNi2QvlZmk6JJOVjAbk5oKcRQuI6abdodwv6kMbaN1pLXHJwYFyHi6Lgq4d
	VtCu0YHCANoLQmzkjq78XQvHBn1XqvRjQFPntVZ5fBkzN21I7Smn2uivSZ02USjV4Zab
	+4JfJWJ+0+yqLEij3PshcEIcjSXbsejgZ3xlyGAz6TWhp8PoHvS1y4nQyojPnFXsV29s
	CQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=dMEYmbIrFfsWL/p9fxWuLPPVMtEwt4YqwpBj8INk0uA=;
	b=SjhkvptwBnZaop8M/v00XFW7E1N4ck7CFoUlpTav/HwD4jU5PTdyR/wBQDGc3aqCJ5
	tRbRIvjNhar1Aryup7Jc3BDq0PHalrDfOlew3urjP2kLBKySUM6n8w1Ro8sbjJRsrfHg
	8L4cDqmmn+1ey1QoHyifjulTBhY6/9I92Yxync/AUVMjuUHvYFowKClrj9LHcVhtwFN8
	Lntn3J+JiOXZnvA00BNZ3BudzdoJJTNvDnRWETrktTn58M0yS0tm+wB8TxW2RiEEU1Tf
	0GkHf+HTZkGvGTG9UwooXI62hGIAacDDw2w3Ap8ORe/yQhxofAvmP0S2ULQWIBnN4tIJ
	7vAg==
X-Gm-Message-State: AMke39lLeuZqohJ9FloFKPH+uAf013HyY8hPTEZGJhQNeB+CLGEbBrb8dyD6zEuRxWDjTw==
X-Received: by 10.84.233.193 with SMTP id m1mr29004974pln.118.1487562629621;
	Sun, 19 Feb 2017 19:50:29 -0800 (PST)
Received: from [10.20.2.159] (ip-64-134-128-59.public.wayport.net.
	[64.134.128.59]) by smtp.gmail.com with ESMTPSA id
	n79sm31570778pfj.31.2017.02.19.19.50.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Feb 2017 19:50:29 -0800 (PST)
To: yocto@yoctoproject.org
References: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <512f1299-8ac5-9a24-09c5-2cc3a26ee73d@gmail.com>
Date: Sun, 19 Feb 2017 19:50:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
Subject: Re: [meta-cgl][PATCH 1/3] cgl layer.conf: add layer depends
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
X-List-Received-Date: Mon, 20 Feb 2017 03:50:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

ping.

is there an issue with this patch?


On 02/02/2017 04:38 PM, Armin Kuster wrote:
> From: Armin Kuster <akuster@mvista.com>
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   meta-cgl-common/conf/layer.conf | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
> index 0c19a95..dfd0d1f 100644
> --- a/meta-cgl-common/conf/layer.conf
> +++ b/meta-cgl-common/conf/layer.conf
> @@ -11,4 +11,6 @@ BBFILE_COLLECTIONS += "cgl-common"
>   BBFILE_PATTERN_cgl-common = "^${LAYERDIR}/"
>   BBFILE_PRIORITY_cgl-common = "7"
>   
> +LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer filesystems-layer security openclovis selinux"
> +
>   require conf/distro/include/cgl_common_security_flags.inc


