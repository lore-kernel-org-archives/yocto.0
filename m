Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E391E0086B; Mon, 26 Mar 2018 08:14:28 -0700 (PDT)
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
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E13EE007F2
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 08:14:27 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id 91-v6so4316273pld.3
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 08:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=KcmUa/TlPwuJJXThtuDO7DHfFJ1BhZrzsFHOs2mI1U0=;
	b=cfQ5zh4JXfJFcwYtiDqKKipSIO6fvMe9MMn0S4OnZABcrW0MNjGHlkIVzrPU9ioP9K
	UQ4OMWYx+zaa7lzssjg1f9krRnzjZjsDoPWWNcq8/g/K9tKwFAdTqh+4Ufz671uoHFRp
	TH8fN2o2md4O+jGVFxexuhdRcAFToAQJeofCZeD+jdoXGyOlcabC9tnyHkUOy7TNZfn0
	JF2JxvyhwcFEk6SCwG0cO/YIOG+20ADX/FqC6osKNmZV9xWb8E9XmfXC1KHIaFDgeDHJ
	d2w5+Q2JlMkyGF3envzPjLTHVA9G5eNkU4bxzCFsLL481F6p/Sk3amygiosWc1jSF8UO
	iRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=KcmUa/TlPwuJJXThtuDO7DHfFJ1BhZrzsFHOs2mI1U0=;
	b=WzsQu7NrnaSiEM2IZZwcz4paPIeWlWSj5JKNybPgmtjRBYresN0KfRsqA/Zqo9bi84
	M8Lf/ifX6XODoUJbdqBgCMW6ML2YMdtLV0ctN2yC8IVJG1y89pXR4Mcuu0BsY9+LMUj8
	26ZC0wahmux9TFYFexrSDIwZ0U1SQ0wYW79vDNm4DRAXqZahl1BuWjyHTtwhreTe+zvn
	DZjkJoLuOdSOxcmiJJzeMPpcqJbSNljXiOs0wbaY/fTFkLWlPte/H+0PM4GRXooP4JEa
	q2E7bnO8HsfITMuH//q3EIaIywYjt8e4f4/bDP0SxagdfFSCoG/H8ETMVAdnonLrPr8C
	HucQ==
X-Gm-Message-State: AElRT7EH6wMQvqwB1Oav3WO2gTmueIhRPe9fo/MqkdZxiJ+FgYf5/rof
	6GoryXw9+KF6maKh2+lUx4pUWg==
X-Google-Smtp-Source: AG47ELvpedig6f48yj26zKnr1npQF9Ac4NFBR1DyYMy3OJeyn1KP5eK4b83XQfjZ5ZWL2akUGkFHbg==
X-Received: by 2002:a17:902:20eb:: with SMTP id
	v40-v6mr41124291plg.277.1522077267236; 
	Mon, 26 Mar 2018 08:14:27 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:203c:a04e:87e9:791b?
	([2601:202:4000:1184:203c:a04e:87e9:791b])
	by smtp.gmail.com with ESMTPSA id
	d75sm27646026pga.38.2018.03.26.08.14.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Mar 2018 08:14:26 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <20180325193101.13451-1-paul.eggleton@linux.intel.com>
	<20180325193101.13451-2-paul.eggleton@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <3eec5863-dc19-5b58-ecfe-08aa2bbf13f3@gmail.com>
Date: Mon, 26 Mar 2018 08:14:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180325193101.13451-2-paul.eggleton@linux.intel.com>
Subject: Re: [layerindex-web][PATCH 2/2] requirements.txt: use the most recent Django 1.8 version
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
X-List-Received-Date: Mon, 26 Mar 2018 15:14:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Paul,

Have you seen this ?

https://www.djangoproject.com/download/#supported-versions

1.8 will EOL this April


- armin


On 03/25/2018 12:31 PM, Paul Eggleton wrote:
> Use <1.9 to always get the most recent 1.8 point release.
>
> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  requirements.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/requirements.txt b/requirements.txt
> index 58100a9..30573a6 100644
> --- a/requirements.txt
> +++ b/requirements.txt
> @@ -3,7 +3,7 @@ anyjson==0.3.3
>  billiard==3.5.0.3
>  celery==4.1.0
>  confusable-homoglyphs==2.0.2
> -Django==1.8.18
> +Django<1.9
>  django-cors-headers==1.1.0
>  django-nvd3==0.9.7
>  django-ranged-response==0.2.0


