Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2AD78E009AC; Tue, 14 Jun 2016 03:41:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACEC5E00956
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 03:41:15 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id k204so116670284wmk.0
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 03:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=zgwfLn3te4x8zpb/ixzeiQJ6YxgMa+pXwDH/vgvRZRM=;
	b=NHQvIUDuCeilm04LkzROSiQ3wCl0zNiA+CawTWThYMWK3z9DmY6U0HwXB/G6cWbABi
	kq7H/p0T7lwQqRvmdeFzBxEiWvqZKrKOykaVeW9XCfBH5M2tKpSPCELdGVfC69Y6QguR
	bRL0rCNuIWYDNAGRLaBo/uW8T9IB4k95Yz8nulmlW/z1pvMvLRGw51oTardPm4OHtMX8
	ERlYETOnWp5QgyELmQiZAv5oercA3t0d7nnnYox2nK8TBZkZQiXeKVnr+aNFXOHUPan3
	fy6EqeagSuzB1QQPqz4cBKbuot81iIxfaCqka1zyBd+q0MgoPePLKQRwczhiSI/mj4i0
	eEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=zgwfLn3te4x8zpb/ixzeiQJ6YxgMa+pXwDH/vgvRZRM=;
	b=WR8MFr229IVDtlEdlCF7tKftUD+w+/1GU9jdWm1mFTNBC+05w5cR/K2lH0CmbkQ/ez
	/MGrInCPZ2R81xDlKr36qMkrJeBkyChlnFHbOV7kJJhMqTrZ8sMMNhtkdoaVUUW56eOs
	M6OiK6RYmBgL3lo5q3Ph7hUjSNz0fg/l5cdeGsRvfLD2mInK3sbu3GmSKweh+weqPyWI
	6pU1+ejrzMpHbKLDKCe02Lq45PY5LliVb/PM3UNLJOzoaj1umR9qpBGwimaKgJibNGxP
	eArl/zkNzvH4n1il5w1h5TyDeS8c+tDUYpBxzJC38TW7khjoqhoYYoKZWqGR5BPfvjm+
	nhZw==
X-Gm-Message-State: ALyK8tIbeEfNE8h+ViWv/OKzaAIysqRBgwL5ojlcwh4x2gJN6n2VyXY7OWoSzz4zSGY72w==
X-Received: by 10.194.104.227 with SMTP id gh3mr5521770wjb.3.1465900874745;
	Tue, 14 Jun 2016 03:41:14 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	s125sm3410277wms.14.2016.06.14.03.41.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 03:41:14 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20160614071518.GA14846@webconect.local>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <575FDF49.20902@elfin.de>
Date: Tue, 14 Jun 2016 12:41:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <20160614071518.GA14846@webconect.local>
Subject: Re: Customization for nginx
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
X-List-Received-Date: Tue, 14 Jun 2016 10:41:20 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

This is not an answer to your question but it can be helpful:
You can use a wildcard for version in your bbappend file.
If you rename it to:

nginx_1.9.%.bbappend

this will work for both 1.9.5 and 1.9.14.

For debugging I can give you a hint:
try using "-v" switch for bitbake when baking your nginx recipe- this 
stands for "verbose".

Best regards,
Piotr Lewicki

On 14.06.2016 09:15, Elias Diem wrote:
> Hi
>
> With jethro, I used to use the following .bbappend to use
> my config for nginx:
>
> <file name="nginx_1.9.5.bbappend">
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> </file>
>
> My nginx.conf was inside the corresponding files directory.
>
> Since krogoth, which uses nginx 1.9.14, this does not seem to work any 
> more. My config file is not used any more. The .bbappend file how has 
> the name nginx_1.9.14.bbappend of course.
>
> What could be the reason for this?
>
> Or, alternatively: where can I debug this?
>
>


