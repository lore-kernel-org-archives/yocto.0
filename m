Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB7FBE00998; Sun, 13 Oct 2019 12:27:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F339DE007C2
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2019 12:27:16 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id q12so9116939pff.9
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2019 12:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0RxQBfB1CxBeAZiqLHpYQQxxZ4yxZuaUwyPQlqH79HI=;
	b=iTCzUtxHVf7gqp4Ki9pjqHDWQNEmPx273ym00JDgo9AjWSudBAB5QCT6+jqE4M/AX1
	2RAh8a/jNMWaerRXwqPAS4ZiBMs+zbLVx8xo6QOD5Lxlj89uIqNB7b/SevwRpqZ2mTHG
	4JrpdPWJcr+NbJVi6MELeUW/pqL5Flt7111zSevEHsl+utRLlUQm2joenodp7ZbCKLTP
	DXkX3MrRP8IAAL9pZY8qm7DQ7VpnLJJqgp6di3xkchVQy8dRAcbG/GzCaTmCjB60jaF8
	Lo+xs4h4WCMzZJ5dM4Z73UfvZqQ2nSqh3jT80aOMt/+hKidkL0g8QoHlUEZ5XiolTRqJ
	nlxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=0RxQBfB1CxBeAZiqLHpYQQxxZ4yxZuaUwyPQlqH79HI=;
	b=lCmditIHoRJdGu2z9bh4whU8VQNhHwDZ02mS9kk+yeW3kfXQSzRVFqIXK4GN2Ai1SV
	7af+RhehuAce4nU6SK5BN09YWaeWoYzEtDFKH7iKm0Dw09sKlfPh54A1qL8qLwwAbCgy
	jvVR0nW6Lq40uFrHTcRLzeXxjzsIbtx8+v0cUL0aMoAqPEWL7x/X2/+SdUYVJU+WjLTC
	QmlPO7iEvTU0dnWzaw/msFfGN3ZC3CMkyrCWM3Ci3f307wkwH4/ZOoA+ht5dv3E1+Tld
	OD9Xm48wS29Pn3ejvq9JGWk0A88ChXWW2NOri3tkNyafjPaNYhq2qnb8Cut2S5rI2P/A
	vdHQ==
X-Gm-Message-State: APjAAAVbxY7B0gfoqINmBxL8XWv32ZFo9n+lE6Zz3THt+/oaCjvoVPAh
	6QsucBk4rGQ64AkTyQBM582F9VRpiKg=
X-Google-Smtp-Source: APXvYqzozqDTS/AaTgI0+4SUT3f+ZeGYkzduLE1cmmu8hc/WRoHSIou3aoUR4OQlJGlYbj0xeZ+LGg==
X-Received: by 2002:a63:3d41:: with SMTP id k62mr20660673pga.129.1570994836058;
	Sun, 13 Oct 2019 12:27:16 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:e411:bea0:2b80:fd65?
	([2601:202:4180:a5c0:e411:bea0:2b80:fd65])
	by smtp.gmail.com with ESMTPSA id d2sm5225206pgq.74.2019.10.13.12.27.14
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 13 Oct 2019 12:27:15 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1570633787-11133-1-git-send-email-akuster808@gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <6def961e-57c6-21d1-26c5-d8b91564190f@mvista.com>
Date: Sun, 13 Oct 2019 12:27:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1570633787-11133-1-git-send-email-akuster808@gmail.com>
Subject: Re: [thud][PATCH] linux-yocto/4.14: meta-yocto-bsp update to 143
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
X-List-Received-Date: Sun, 13 Oct 2019 19:27:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


ping.



On 10/9/19 8:09 AM, Armin Kuster wrote:
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_4.14.bbappend   | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> index 426757e..5277798 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
> @@ -8,11 +8,11 @@ KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  KMACHINE_beaglebone-yocto ?= "beaglebone"
>  
> -SRCREV_machine_genericx86    ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
> -SRCREV_machine_genericx86-64 ?= "5252513a39b4b3773debab1f77071d7c430ecb10"
> -SRCREV_machine_edgerouter ?= "d8fb40cd0e99325715c70aed6f361a8318097829"
> -SRCREV_machine_beaglebone-yocto ?= "c67809688bd22cb4cb909bcf1a1045e6337c3229"
> -SRCREV_machine_mpc8315e-rdb ?= "258ee8228e0a512c6dbe2a0dadcd9f030ba45964"
> +SRCREV_machine_genericx86    ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
> +SRCREV_machine_genericx86-64 ?= "bc9d4b045fa0254d14ef3a667a200f02cb9af755"
> +SRCREV_machine_edgerouter ?= "326e296f237347e965a38acb34f09e594430b0c6"
> +SRCREV_machine_beaglebone-yocto ?= "1b8c86329c9dbb10b8fcaeb2dceb75680994cd84"
> +SRCREV_machine_mpc8315e-rdb ?= "f26672ec1f164b0f2a15d629128a91093f971bdd"
>  
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> @@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter = "edgerouter"
>  COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
>  
> -LINUX_VERSION_genericx86 = "4.14.98"
> -LINUX_VERSION_genericx86-64 = "4.14.98"
> -LINUX_VERSION_edgerouter = "4.14.98"
> -LINUX_VERSION_beaglebone-yocto = "4.14.98"
> -LINUX_VERSION_mpc8315e-rdb = "4.14.98"
> +LINUX_VERSION_genericx86 = "4.14.143"
> +LINUX_VERSION_genericx86-64 = "4.14.143"
> +LINUX_VERSION_edgerouter = "4.14.143"
> +LINUX_VERSION_beaglebone-yocto = "4.14.143"
> +LINUX_VERSION_mpc8315e-rdb = "4.14.143"


