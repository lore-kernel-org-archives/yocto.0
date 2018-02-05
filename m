Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEBE0E00CF1; Mon,  5 Feb 2018 10:04:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E956E00A44
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 10:04:52 -0800 (PST)
Received: by mail-pg0-f46.google.com with SMTP id u1so19223639pgr.0
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 10:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=Du6UuDMjvbUbTquBY4qxzku+eLqQg8JaPCZhd/iaeBs=;
	b=AjyTEjoWXR2gG9ErZNvCA5p7P+Pys/r+trhODegbMUcVDXxKWEzwGJbwVIrTczok/2
	wXgBvlMNqffjM+ParT9vtheG8Us1gAwMW6bJyLwRf5dJiZBdruFw9n9MIjMvn0wm4p1/
	4X7TjQttDsnYhSycHS1YlQBhPw//HPLoGHTLKzZ4ZBwAh5V5CpsyPb3/T3t2ZdXpuI3P
	K/JZz8xtSmKfuPeIiGt4OjH0+Mv3x2WDIDGoLtlPrmQKF7jkSu0Za2BGMGGkLEzt1Oej
	Yvo9opihsiZEn25WlTXgGHkvXMIE/GRyWQr6gImf+qfe5+L9IE8NUDuCiU6oDdoWXdtP
	vtBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=Du6UuDMjvbUbTquBY4qxzku+eLqQg8JaPCZhd/iaeBs=;
	b=nM/Rr5iN2zrthARikvcWlYoIgYURelSYMeVX7VKgoJ3YrSSBRJ1iX4/2NRBGHqU1X5
	/M5UGz6HQ+c6K570Etq0dRtm7Oo86YQsV8q/Ybl6wT4/DVxS1x+kahL5OxPnhb6pvZUV
	HW4mfoFcjlVsgh9KVHXYVD8+/LRvQ7dT1Xtjqm4J4M2xpvm5W5IlcOe83Aq9P+/0Agdg
	fMX52Tw4eTezr2jxa7WRMrhsnwxtqZ7D6Kp+X5ZNBsgH2BcOCb5xTJ6sLVrQTX8nt4cX
	1fhWQ0A8gw8clThah7udVqfnjBwwZoRK91gAhNs0TJ5DCrTwxQXjJV6p8d1viOZudYzN
	SY0Q==
X-Gm-Message-State: AKwxytdphJP0DbD5u+QZU0aBdgLi2aXuwOsZ8Z8KNz7ks9ssp7ofIMKf
	3XFxZaD8enQz55Vg1ACcaoDsvu48
X-Google-Smtp-Source: AH8x225/vh8hbHN6eoRXJLXJbeKNDJ1Ld/g0fS71Wxa/ma37Gki9h2Adsw4+OxwvY88hqX0xK7z1Rw==
X-Received: by 10.99.114.15 with SMTP id n15mr12200805pgc.8.1517853891481;
	Mon, 05 Feb 2018 10:04:51 -0800 (PST)
Received: from ?IPv6:2601:647:4c00:6cf9:8c68:858d:e4d9:273b?
	([2601:647:4c00:6cf9:8c68:858d:e4d9:273b])
	by smtp.gmail.com with ESMTPSA id
	137sm13602630pge.74.2018.02.05.10.04.50 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Feb 2018 10:04:50 -0800 (PST)
To: yocto@yoctoproject.org
References: <007101d39e6a$dc891650$959b42f0$@co.kr>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <bc51f8a8-040b-64bc-9381-ed8ff9b99b9c@gmail.com>
Date: Mon, 5 Feb 2018 10:04:49 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <007101d39e6a$dc891650$959b42f0$@co.kr>
Subject: Re: How to do_populate_sdk without QEMU
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
X-List-Received-Date: Mon, 05 Feb 2018 18:04:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2/5/18 2:19 AM, dhkoo wrote:
> Hello.
> 
>  
> 
> I'm working with Rocko 2.4.1, and as my work reaches to the last stage,
> I'm beating my head to distribute SDK for my colleagues.
> I found that command "do_populate_sdk" can make SDK environment easily,
> but the problem is SDK's capacity is too huge.
> 
>  
> 
> Of course there's many reasons for that, but I guess the QEMU is one of
> the reason.(I suppose many binaries are used for QEMU.)
> 
> We has no plan to use QEMU, so I want exclude QEMU from my SDK.
> 
>  
> 
> but I have no idea where to begin.
> Is there any idea to exclude QEMU?

the SDK uses qemu for quite a bit of tasks internally, some recipes
depend on it for builds too for things which cant be done in cross
compile friendly ways. I think removing qemu might be a deep cut that
SDK wont survive for you. If you are looking for reducing the size you
might want to look at using a smaller image e.g. based on
core-image-minimal, if thats also too big for you. I would suggest look
elsewhere e.g. https://toolchains.free-electrons.com/

