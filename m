Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E71B7E00B77; Tue, 24 Jan 2017 11:23:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18BBE00B77
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:23:01 -0800 (PST)
Received: by mail-pf0-f193.google.com with SMTP id 19so12627633pfo.3
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 11:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=vTlinBRn42nJ+DIKECnWq6g2Q8AneEBZi1kQOeO1Sck=;
	b=aZ6QZRKAFs3/w8+P9YuK9F1xLYJectJA2HcbToRgZJNJFt61h95N1RHzPxjiGeuDP4
	4CdrZI46D1UAbeY453iW8dySMjt/MS1+qNae5E/5tqHTMI2KN5zxOgapzvMAteLJKWk3
	i/fbFJ7+OD/eWqdqBfHtq1CqoNHTUvIzotbBYqGc3uuI5MhIUiFzA2VUHG6RVcIVs8NN
	iLi8y2mtxE4tlya2Pg6LbxdrkMNGNfRRzNz+ZihxtZ4ofLIdS0nFDqlKj70XKQsjC9jF
	d14si9vpeftiXRTpgrB17FSxOG35Lwgvaxf11W3rUFGRzf+G0kdeuDos6Z8ZrmhbjXBb
	3DiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=vTlinBRn42nJ+DIKECnWq6g2Q8AneEBZi1kQOeO1Sck=;
	b=ESm44wcfZJp6hEVS0ctCw+1YDIzrU2xxYzpixD9PM1t5ixpnQHR77WSoIQLr825V4J
	8Od7wRjCs7VVJphiK00fEqnc2RT06uAVrf/yL3sanQSRQM0T0G8rR4Z4APqyldb9+i0H
	K1k63wjstQJNapI89KwGD8T0v8Wcx/ZUV4eOP08PtxCOvAD+HB746UFu7W2IiqEBVAmo
	o/4qVnpkQ+X2yW7hd3HT4WI75zBQx/FGogar/utu/jfAE7GQNW/+SqsVle65VBuj5btF
	cgcFSYRkHbjR4+MQpqdWzDxN9zt45WLNWux9dsTeZDKGwzGkBdNn9sTJCYDf55zW15pU
	+VQQ==
X-Gm-Message-State: AIkVDXKv4CK9kovCNssGKCgXwVAvsPSXHEWLE2s4YWDGfLPB29TcBTaFBWbWWbiUvmiBEw==
X-Received: by 10.98.7.11 with SMTP id b11mr40952133pfd.154.1485285780927;
	Tue, 24 Jan 2017 11:23:00 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:c8b8:641d:6d81:476d])
	by smtp.gmail.com with ESMTPSA id
	o18sm7565271pgn.36.2017.01.24.11.23.00 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Jan 2017 11:23:00 -0800 (PST)
To: yocto@yoctoproject.org
References: <CANCRmL5xrZ+XYfcVG+V-77JFk8D-1s5PA+MDZeU9KedTEAbtEQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <17d034a4-45e6-d672-5a72-339171254912@gmail.com>
Date: Tue, 24 Jan 2017 11:22:59 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CANCRmL5xrZ+XYfcVG+V-77JFk8D-1s5PA+MDZeU9KedTEAbtEQ@mail.gmail.com>
Subject: Re: Problems with building out-of-tree modules in morty
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
X-List-Received-Date: Tue, 24 Jan 2017 19:23:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 1/24/17 7:16 AM, Bogusz Brodziński wrote:
> Hi,
> 
> TL;DR after migrating from jethro to morty my out-of-tree modules do not
> load.
> 
> Long version:
> Im developing uio driver for a custom FPGA. The base is xilinx zu15
> (note: as the explanation will go on I *think* it will be clear that
> this is not related to meta-xilinx).
> It's basically a debug interface that generates IRQ-like events on files
> (poll) for newly developed/tested features. The initial structure was
> poky jethro, meta-xilinx with linux-xlnx 4.4 for aarch64. The module is
> basically uio driver, but creates individual uio for each signal. The
> makefile is straight from
> https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html and the
> recipee inherits from module.
> When using jethro the module got built out-of-tree with no problem and I
> could load it. After migrating to morty (I also bumped meta-xilinx rev,
> but I use the same kernel SRCREV and project layer) I still can build
> the module, but when loading it I get:
> 
> $ modprobe uio_pdrv_testirq
> [   79.059558] module uio_pdrv_testirq: unsupported RELA relocation: 275
> modprobe: can't load module uio_pdrv_testirq
> (testirq/uio_pdrv_testirq.ko): invalid module format
> 
> $ modinfo uio_pdrv_testirq
> filename:       testirq/uio_pdrv_testirq.ko
> license:        GPL v2
> author:         BB
> description:    Userspace I/O test driver irq handler
> depends:
> vermagic:       4.4.0-xilinx SMP preempt mod_unload modversions aarch64
> 
> I looked for a solution and found this
> http://lists.infradead.org/pipermail/linux-arm-kernel/2015-October/375429.html
> thread
> I checked that I have all the ERRATUM enabled (with emphasys on
> ARM64_ERRATUM_843419):
> CONFIG_ARM64_ERRATUM_826319=y
> CONFIG_ARM64_ERRATUM_827319=y
> CONFIG_ARM64_ERRATUM_824069=y
> CONFIG_ARM64_ERRATUM_819472=y
> CONFIG_ARM64_ERRATUM_832075=y
> CONFIG_ARM64_ERRATUM_845719=y
> CONFIG_ARM64_ERRATUM_843419=y
> 
> and I added
> CFLAGS_MODULE  += -mcmodel=large
> 
> Result: no change; testirq still fails to load.
> 
> I would be grateful for any suggestions where to look or what to do next.
> 

Backport

https://github.com/torvalds/linux/commit/df057cc7b4fa59e9b55f07ffdb6c62bf02e99a00

https://github.com/torvalds/linux/commit/67dfa1751ce71e629aad7c438e1678ad41054677

To your kernel. Additionally  you also can have gcc fix

https://github.com/kraj/gcc/commit/947be775c188312ff802d9f63dbdccd017cb4a29

hopefully these will help

> Best regards,
> Bogusz Brodzinski
> 
> 
> 

