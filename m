Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 108CEE00ACE; Sun, 19 Feb 2017 19:52:09 -0800 (PST)
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
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D61D4E00AA7
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 19:51:59 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id a123so8360599pgc.3
	for <yocto@yoctoproject.org>; Sun, 19 Feb 2017 19:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=+zkZeomstIbLw+/f7V3V2eEjX/NnBXR1OW/NDc3TxLc=;
	b=FDKIrJBhSic+b9IA1uybunXWE18M+lUwQ88BB5zYfAQEONrG/2NLQ+7GhnCAC8VA9w
	5rmuMZC1X+pG7l8/+6BayogqTQ2M0I4hzSMxN1K5ZoySTAcY+KyaktrKrFbKAdNHkIsA
	clEy7uwcYyfT7DHFhQYK+9z7DoA1YBqCPl+EVfhk8cFtS4G+p0wiK507EJiDz86xOM/f
	IPnNxsASRlA6NxrPbneDQb7QHIFV6rx6kYsraZ3kG9qbfxcd9jd9E0pQRfk/KpAVFjSl
	O8+bag/7zyD4FLIJVJhGPbnf+NU6Tdskf1hNYHE5MTGwS0LlSBUVWZLiyBrBBh4OVark
	jQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=+zkZeomstIbLw+/f7V3V2eEjX/NnBXR1OW/NDc3TxLc=;
	b=cASjRylIb2pAvaJcr1uPDichQszZTIDImj9D+H39f1bK+yNm4tgboQbdEBAvVkiNRI
	rCyLD5Ye+0E/CAjyJqx7O+FWxj7s63GRyx8Wsov4uGsoVTIiWACITXmV03kkw0VjQtEH
	WL++nQm1BZrtvb3W+6NXPhECXM9Qb2rCzRAv5tlGnSWzbIxG3PLWOJyZ2jGhLBeQFtuo
	ARUIZ1f4yylQewp+c+CMsuRcEGRbBnvsH1g42j/S/JA7LlZnsm7D/R8Lg5D4rfQHEVPA
	r9JewT6UG2UFmQqdi51/ldryP8wIl7YWWf/UZ9f0iPMH4z1i7rNE25LOXWUIHYudmpV8
	P9mQ==
X-Gm-Message-State: AMke39nyNIQSTWh6kURs1J961Hkg/oErizV8R2VtgB0hFXsyABgc6gnlZ0yH4FKXl0uR1A==
X-Received: by 10.99.115.12 with SMTP id o12mr24972686pgc.165.1487562719127;
	Sun, 19 Feb 2017 19:51:59 -0800 (PST)
Received: from [10.20.2.159] (ip-64-134-128-59.public.wayport.net.
	[64.134.128.59]) by smtp.gmail.com with ESMTPSA id
	b190sm31491660pfa.110.2017.02.19.19.51.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Feb 2017 19:51:58 -0800 (PST)
To: yocto@yoctoproject.org
References: <1486082292-29971-1-git-send-email-akuster808@gmail.com>
	<1486082292-29971-2-git-send-email-akuster808@gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <b061f942-6ad2-461e-b08c-8863409a731f@gmail.com>
Date: Sun, 19 Feb 2017 19:51:57 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1486082292-29971-2-git-send-email-akuster808@gmail.com>
Subject: Re: [meta-cgl][PATCH 2/3] iscsi-initiator-utils: make it DISTRO_FEATURE dependent
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
X-List-Received-Date: Mon, 20 Feb 2017 03:52:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

ping


On 02/02/2017 04:38 PM, Armin Kuster wrote:
> From: Armin Kuster <akuster@mvista.com>
>
> When this package was updated in OE,
> it now requires systemd. Make this optional.
>
> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ---
>   meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
> index b0c2cac..045691a 100644
> --- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
> +++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
> @@ -42,7 +42,7 @@ RDEPENDS_packagegroup-cgl-middleware = "\
>       strongswan \
>       vlan \
>       corosync \
> -    iscsi-initiator-utils \
> + ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "",d)} \
>       openais \
>       openipmi \
>       openhpi \


