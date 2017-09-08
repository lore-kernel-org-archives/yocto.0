Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E3C5E00CCE; Fri,  8 Sep 2017 09:20:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9375FE00970
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 09:20:26 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id x17so2052367wmd.5
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 09:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=m60C6g93rTqNj1RUz3/WUUXNUKY/6K/5nW19IfbZrqw=;
	b=hyVQKar5wKO5pFtGay1/Lse3mrQZ9DTgqWkCdxMEwVUF3EGB+gmQapHn24cJVEH3sU
	ic9WW4PbLU9Jc0BVUUvPpQ081CUGK13LE2GdQDgS9AB3+fxzpiycmoJ3DTMkejQCBSAT
	jty7xINCkkKnOdUxmoNAFe9V8gsnnjyQl+QXbVsbkBTKvKuF84ifTpTG0uz4hsPKIDWh
	dp4s14TaYJesekztnQYbrM+BdDZ2YP8CjBqJMB/zYO0PrCMc/VUTjC1REQivEBHC0fCF
	Zyn3FtdcQdV/tja/rWioUm6bGrIJ5YVWydP2ptGbBbL9qB0of9dQFW9XUZ7yZpJar0VN
	qfrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=m60C6g93rTqNj1RUz3/WUUXNUKY/6K/5nW19IfbZrqw=;
	b=F1Wp1FkxRw1/gsZoqw2eetzVkA/UISSOcl8OSNnSV+yuYMQno1Izi4zah3NaKyTWiA
	GY2iQfRoIls7NKtb07NjwdPMI3iJDPhk7YKQ4vWgQR7zqdf38N8SPJJSZ0d/5X5YV02m
	h6Hgg8fd2JgkGmMgimJ8d4Pb6JI8N2kS0ZN0yiyMa7dY3kZcapPal+Xkbi7nOx672Fzu
	ZcBGC3GUNevEif19gM4CPtwfHqF7LZh0p5VbJT4v61pq4fbg3A/WVh6UAV7xS9hNsnf4
	QKWI62DJ2E+NKwfR2m6u0TAYA3k2w0mRXVMz22h7lFz48ghhUwTtdRSDehD5rUDMch/T
	rpVA==
X-Gm-Message-State: AHPjjUhOVV1CEpFUQcpZeJfkqgCV0xfxiWQDN9rYEbwpP4n/d9RYuyI3
	qGQth9wLe8FwAtO8jOc=
X-Google-Smtp-Source: AOwi7QDo7dn/0ObnmqNeeT2TTThADIE7UqT3YL+jEdkH5fM3vVObcgVhTDvAGQVLApj0eJmzkAvXVA==
X-Received: by 10.28.70.130 with SMTP id t124mr2030262wma.145.1504887625138;
	Fri, 08 Sep 2017 09:20:25 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-140-5.home.otenet.gr. [2.86.140.5])
	by smtp.gmail.com with ESMTPSA id
	187sm2405150wmm.42.2017.09.08.09.20.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Sep 2017 09:20:24 -0700 (PDT)
To: Fan Zhang <fzhang@sgl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b2971216-bfa5-20d3-9cdd-ceee0afffb76@sgl.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <2169f5a0-7166-1ff0-6b43-611167a8cacf@gmail.com>
Date: Fri, 8 Sep 2017 19:20:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <b2971216-bfa5-20d3-9cdd-ceee0afffb76@sgl.com>
Subject: Re: [meta-xilinx] How to include Xilinx DMA driver
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
X-List-Received-Date: Fri, 08 Sep 2017 16:20:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2017-09-08 19:00, Fan Zhang wrote:
> Hi All,
>  
> 1. How to include xilinx_dma.c driver in to the poky image build?

In case you want to include out-of tree drivers it could work like 
this[1] in case you want in-tree it's just a kernel patch similar to[2].

Apparently you will need to turn on kernel config features. You might 
try something like this[3].

For Yocto/Xilinx specific questions you might want to ask on the Xilinx 
mailing list[4].

[1] 
https://github.com/RobertBerger/meta-mainline/tree/pyro-training-v4.9.x/multi-v7-ml/recipes-zedboard/xilinx-dma

[2] 
https://github.com/RobertBerger/meta-mainline/blob/pyro-training-v4.9.x/multi-v7-ml/recipes-kernel/linux/patch/4.9.x/patches/zedboard-zynq7/zynq-qspi/0001-zynq-zedboard-non-mainline-qspi-support.patch

[3] 
https://github.com/RobertBerger/meta-mainline/tree/pyro-training-v4.9.x/multi-v7-ml/recipes-kernel/linux/config/multi-v7-ml-base/features/zynq-qspi

[4] https://lists.yoctoproject.org/listinfo/meta-xilinx

Regards,

Robert

