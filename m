Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE1AFE008A2; Wed, 28 Mar 2018 17:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC348E007F2
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 17:13:26 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id t10so1886506pgv.8
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 17:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=LXeTWK2u2NRKhzMZZ59COgCw7Sr2OjPpIoNYZ5e9fUI=;
	b=L2lDGavaj7B4upwwwJDemaatOkhuU0UdbCikNWMVYawsfsJtRUejsAbNa9ohoZvzGB
	WehUqoktHJ/i9nNMsJ/6Z1vcsoDgSrSj45ZfcXVVpW5cOzvK+BSncazKf8r4IUV9VUCO
	raawSGIiHOOsFtHcgOMf9DnaY9DukF4TcUM2bG7G6016y4JNoFsQTjH+fMVxtjCBkfKa
	LnLSklPb5+6IaZi1Ngj9zLGuzNY4y4OfvEd8TamuQluNgjIWM7phMRysPFm1U0TIg36w
	iV0QQY5Z8Eap92L1UwfGtevjw3xml1WUUNk0SWdlfnWQBBsV5qDLnExmyji9VyZQ3Fte
	zTyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=LXeTWK2u2NRKhzMZZ59COgCw7Sr2OjPpIoNYZ5e9fUI=;
	b=azeeajc58iXVhG6McKrZntsf7eaX/P1AgaMuxUva/NRiK2BBy21hTPaUYLTHNpzla/
	iGo678pT11tN9Eef/+rFSM2a2IqjZvbynvpqIRSumaJo1hLtoJWoa8hMDXGRVx/zB1p7
	HaNk4gNneCk1qt4OHXyy4kluDnh6S/IpU71sgfq02qBMygILFCX/EsNj1kthOunhHUyV
	pbRkLJXw2b3cFoydmxqbPaaq82O25cbwMG1fGt0vRpwr6GqRmV3r6/x0Of7UAJ2Tm2sx
	YckBPbvEwkLjlKZUlx9bM/pyhLp8aKOatbaHm+v/CDBmXZCycfbX4nGCCHc/e8L0PIXt
	HlhA==
X-Gm-Message-State: AElRT7EudbuwBgtZkiLkg62fLf8+pFhoGy5olOHzIXrLXypyzoZiuZ6L
	bD8RVwx/jvUYyLohxeuocru90Fyw
X-Google-Smtp-Source: AIpwx4/x1aKHMNdddart+mxWcEMqUnIWczjgMczu2QAwvhwYHgeJyAP/0cIzyv/3DfsHyo5IGWGD5g==
X-Received: by 2002:a17:902:341:: with SMTP id
	59-v6mr5636193pld.407.1522282405492; 
	Wed, 28 Mar 2018 17:13:25 -0700 (PDT)
Received: from hermes.local ([2601:646:8880:466c:e996:2d15:f718:d3cf])
	by smtp.gmail.com with ESMTPSA id 75sm249092pfx.71.2018.03.28.17.13.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Mar 2018 17:13:24 -0700 (PDT)
To: Vincent Daanen <vincent.daanen@orthotaxy.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8e8cf5f3-e5a7-2a2d-dbd3-3ffd261f8682@gmail.com>
Date: Wed, 28 Mar 2018 17:13:23 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0)
	Gecko/20100101 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB014309F6A26B68B561F4B3588DA30@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Subject: Re: defconfig file (or fragment files) not used
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
X-List-Received-Date: Thu, 29 Mar 2018 00:13:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/28/18 9:27 AM, Vincent Daanen wrote:
> Hi,
> 
> I want to add CAN driver support to the kernel. Here is the procedure I 
> followed:
> 
>  1. Generate a .config file
>  2. Copy it to meta-myWork/recipes-kernel/linux/files/defconfig
>  3. Update it: set at the end the config to enable CAN as follows
> 
> # CAN Bus
> 
> CONFIG_NET=y
> 
> CONFIG_CAN=y
> 
> CONFIG_CAN_RAW=y
> 
> CONFIG_CAN_BCM=y
> 
> CONFIG_CAN_GW=y
> 
> #
> 
> # CAN Device Drivers
> 
> #
> 
> CONFIG_CAN_VCAN=y
> 
> # CONFIG_CAN_SLCAN is not set
> 
> CONFIG_CAN_DEV=y
> 
> # CONFIG_CAN_CALC_BITTIMING is not set
> 
> # CONFIG_CAN_LEDS is not set
> 
> # CONFIG_CAN_SJA1000 is not set
> 
>  4. Update the linux-yocto_%.bbappend file as follows
> 
> SUMMARY = "Recipe to configure kernel as required"
> 
> LICENSE = "CLOSED"
> 
> inherit kernel-yocto
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> 
> SRC_URI += file://defconfig
> 
>  5. Request rebuilt:
> 
> bitbake linux-yocto-rt -c cleansstate
> 
> bitbake -k linux-yocto-rt
> 
> Once the image started (with qemu), I check if the CAN is enabled (using 
> zcat /proc/config.gz | grep CAN) and I always get “CAN not set”
> 
> I also tried using fragment and I got the same result ☹
> 
> According the user manual, it seems to me I’m doing the right think!
> 
> Does someone know why my defconfig file is not taken into account ?
> 

If you are using linux-yocto for your kernel provider then I wouldr 
recommend that you look into developer manual.

you should look into using config fragments to modify the needed options 
e.g. see 
https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration

> Thanks
> 
> Vincent
> 
> 

