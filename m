Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD27AE00953; Mon, 29 May 2017 14:33:24 -0700 (PDT)
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
	*      [209.85.192.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAEB1E0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:33:21 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id 9so53708810pfj.1
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=vpQAv4yD9a7L9lwIl3usQFqFBYRtYVmWUzK0JGRJ6Cs=;
	b=gzoTk6WlrG7lwbSO/n9KPy4sxf3SwmoHbYxjpRsBA8GkKpCHYqF+hKUNnjHag49mC1
	jHQG+z4oqYpKML109NJB0LIrvYoRfn+GqXvk6vtVZr9sSoUOLnPIQ8c3/cESoTBimpql
	OW/ZNb5bjRNZr7s4Gje9URy4/Yu5ob9eaKbcsnLjwlHZPo48i8+Fale4qpLi3ELJnTmz
	nID6UpEgAw1gz4NnbsQhnuh4MOvEEPrILIUZcIurc5Xs6D4aYpElTP6nUkG/a3pCdZsJ
	IAv9Ts8FCCaW14M0gto7KvoxdI0SiILo8ecrs0wRiIQJv1SOt0jle5uXz3aeolsdq2m4
	lqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=vpQAv4yD9a7L9lwIl3usQFqFBYRtYVmWUzK0JGRJ6Cs=;
	b=Jsc6eDmTCcfqBtKTBld4/1UwV7HzmlYay0AExEqgD5banoAsCBJsF+ryPuAjwTlbtH
	Ujfdpf525dKbFqaWkUTPV18iGLWIPJdX5kg3c412pBXcbELwWKEM48uBzEzd6R0KKbgF
	3ljb23xC3FiUwc1J2OgWUPlFvx0QwP/l5DMfDvsqO9jXl3b97n107VKkKDaBcBb4+THQ
	cVh09eAzlZz1KPIQIvVDiXmvlW2leSO5CdL+cNQPIyEjfrkkHnym+X9uyMsG+NLa8gcr
	2Av7zE9NqmtXdbFEn1kIlTH+nLHdpnLfFyUahbn8vbB45n8SPFxvFD3EL1lgVBg6XiuH
	PTEw==
X-Gm-Message-State: AODbwcD3BUqosryGKCIEmHHH2cuao7Ig+zpbSbHo1IiDG7iShNwb28SU
	1fUH2QzgFpRaR7Gqw6g=
X-Received: by 10.98.75.157 with SMTP id d29mr19793820pfj.135.1496093600917;
	Mon, 29 May 2017 14:33:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:c940:bb39:2b1d:3b23?
	([2601:202:4001:9ea0:c940:bb39:2b1d:3b23])
	by smtp.gmail.com with ESMTPSA id
	15sm16846660pfj.59.2017.05.29.14.33.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 May 2017 14:33:20 -0700 (PDT)
To: =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>, yocto@yoctoproject.org
References: <20170529083538.17258-1-git@andred.net>
From: akuster808 <akuster808@gmail.com>
Message-ID: <f3b93da4-15e8-6a65-4439-25b6e395efc6@gmail.com>
Date: Mon, 29 May 2017 14:33:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170529083538.17258-1-git@andred.net>
Subject: Re: [meta-security][PATCH] layer.conf: fix typo (meta-filesystems vs mete-filesystems)
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
X-List-Received-Date: Mon, 29 May 2017 21:33:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 05/29/2017 01:35 AM, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
merged,
Thanks,
Armin
>
> ---
>   conf/layer.conf | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 547a559..0e524a1 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -13,4 +13,4 @@ LAYERDEPENDS_security = "core openembedded-layer perl-layer"
>   LAYERDEPENDS_security += "${@bb.utils.contains("DISTRO_FEATURES", "x11", "gnome-layer xfce-layer", "", d)}"
>   LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm", "tpm-layer", "",d)}"
>   LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "tpm2", "tpm-layer", "",d)}"
> -LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer mete-filesystems", "",d)}"
> +LAYERDEPENDS_security += "${@bb.utils.contains("MACHINE_FEATURES", "vtpm", "tpm-layer meta-filesystems", "",d)}"


