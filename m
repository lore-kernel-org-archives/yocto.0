Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51B80E0082A; Wed,  1 Feb 2017 09:24:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2277E00524
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 09:24:55 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id 3so16957181pgj.1
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 09:24:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=G9RJfcpY2WqmuJ8ByLKUXF+UwwVx/a1kHTmZtJiF7ws=;
	b=AhtoYBZAUSJnyzEDanAQnnEKZAqBQEFycDFsNVxqveD9TYgcOEM4o0I9zpP6/Yrg4Q
	6qjp/tugJwHVsiUDYgBzcZGICwD+TQKSNXFKfs8bHRHNxWQ4CIEHmZzu39UYC8lBFvDo
	Ecz96AZHhIaDFaUybxZbuENhYptY2+G3Q1PAhmVypjyPK/hBzvpNsTqlmmBFS6upzWqu
	g5uVf8k2D2gGKbtz1JH4qwc3RBxlB2ZFdCoHYNVsC0TGSGIWCMAGZrgIK2R2UeV16viU
	h5hasEMvr5H3ewhEhDaExRKlKJACBqcZHZP9yDRZJfL2zCA0cO5VywQ1KsWYoyeEG/4H
	7sFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=G9RJfcpY2WqmuJ8ByLKUXF+UwwVx/a1kHTmZtJiF7ws=;
	b=QJyB8dBDhgLIlw7in5Pl0IKzcoRqSARyDksvcJrQldGbQOyctLTuisbHsbVIF6gG7Q
	ZtOLXxKFaKCBrwnrKTN62rabahUduyyuQVFWyM+YVCF9Cz7a2iK1SOBLRYg14lyE9r8I
	BjLh8hqy7G6ZhpSJuTqmGud11+bJhWVm+dNEXHNxeVaFRhHr2VgbyZXebrIjwqpHCoBE
	mSb+488ppVLmV6iLkYDoiNWhQ3uH52QMvlhMt7g0FwM0Wo3fDeFrVgQq6t4abFqasHDK
	WLRRhskMW8OclcluiSFga2LVCj2aBaUYU6DjfUBK7CIpGz3MdhyaP9rk7DPUT7HDMuUU
	Jtjw==
X-Gm-Message-State: AIkVDXL7xZGK/FQ/TsOnQZ4X3RvED7z3Ewq5Ebqe7pC6cbwZOEBdt52vzdE2VSj7zbVoRQ==
X-Received: by 10.98.65.148 with SMTP id g20mr5060185pfd.44.1485969894572;
	Wed, 01 Feb 2017 09:24:54 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:8ce9:48a5:c3c4:adfc])
	by smtp.gmail.com with ESMTPSA id
	f3sm51209499pfd.10.2017.02.01.09.24.53 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Feb 2017 09:24:54 -0800 (PST)
To: yocto@yoctoproject.org
References: <CANxWOTYfkUDguyFogHHA2HH77McT06-4+z96S7pJupfRKHhm+g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <a1f5e2a1-62cc-9141-0f4e-9aeec971453e@gmail.com>
Date: Wed, 1 Feb 2017 09:24:53 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CANxWOTYfkUDguyFogHHA2HH77McT06-4+z96S7pJupfRKHhm+g@mail.gmail.com>
Subject: Re: meta-raspberrypi issue
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
X-List-Received-Date: Wed, 01 Feb 2017 17:24:56 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/1/17 8:08 AM, Usman Haider wrote:
> Hi,
> 
> I am new to yocto and just started working on it. I am having issue
> with meta-raspberrypi. I did inside poky
> 
> $ git checkout -b work_branch -t origin/daisy
> 
> $ git clone git://git.yoctoproject.org/meta-raspberrypi
> <http://git.yoctoproject.org/meta-raspberrypi>
> 

you need to checkout daisy branch of meta-raspberrypi as well.

> $ source oe-init-build-env rpi-build
> 
> updated the local.conf and bblayer.conf files inside rpi-build
> 
> In local.conf
> 
> BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
> PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
> MACHINE ?= "raspberrypi"
> 
> In bblayer.conf
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "6"
> 
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
> 
> BBLAYERS ?= " \
>   /home/vm/poky/meta \
>   /home/vm/poky/meta-yocto \
>   /home/vm/poky/meta-yocto-bsp \
>   /home/vm/poky/meta-raspberrypi \
>   "
> BBLAYERS_NON_REMOVABLE ?= " \
>   /home/vm/poky/meta \
>   /home/vm/poky/meta-yocto \
>   "
> 
> When I run bitbake rpi-basic-image, I get following
> 
> 
> *********************************
> 
> vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image
> WARNING: Host distribution "Ubuntu-16.04" has not been validated with
> this version of the build system; you may possibly experience unexpected
> failures. It is recommended that you use a tested distribution.
> Parsing recipes: 100% |#########################################| Time:
> 00:02:37
> Parsing of 882 .bb files complete (0 cached, 882 parsed). 1241 targets,
> 63 skipped, 0 masked, 0 errors.
> ERROR: No recipes available for:
>  
> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>  
> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> ERROR: Command execution failed: Exited with 1
> 
> *************************************
> 
> What could be the issue?
> 
> --
> Usman
> 
> 

