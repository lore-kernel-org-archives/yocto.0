Return-Path: <binhancntt@iritech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D4F9E009B3; Mon, 17 Aug 2015 23:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HK_RANDOM_FROM,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC63E00861
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 23:27:49 -0700 (PDT)
Received: by pdrh1 with SMTP id h1so65148258pdr.0
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 23:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iritech.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-type:content-transfer-encoding;
	bh=oW7YsDO/FKEhIt2QoB0Sb4MUBh67WnDybLfkqyvQUJo=;
	b=Tyjo9ZP3TPG0AVZpIL24sQx1f7/RXmiAAQ89hJ81V0KsKZYkaQ83b3COQ5uR/jDkUG
	02/uyI/bsVGbusaO0bDk2d/h2OZGx2uNIgAa4xaFLZhNadDHJwRXt+fqwRA9aoTY1Bfx
	ngQ9YPp9VsGVz8ly0t41dS01/T5kKpQ7j4IwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-type:content-transfer-encoding;
	bh=oW7YsDO/FKEhIt2QoB0Sb4MUBh67WnDybLfkqyvQUJo=;
	b=ZImNKxsFXuQ4iPNJZV98ydDuUIFif363qRAgqbbcNcQ1u07N7AcnWGtqnh5nrvT9MQ
	SmS8LL9hYrj5Kl/jp6YGmlWCD++bKawrljN3t+deWiY420wqOVRtSG0+Pr1qW7X8AVjU
	SaYcgNme5o9/zPYVr1QAAOq3gFvCEyCGjCPYN8Ki9dGc1KqM2a6EAlu5QFjMMbBOLX/x
	PKd2ZPxhSJVn4dGIjeHXDwV2jD3dxKCxh/CjOSWruJltBix/MZrYuQXXmInnAhJvJWTk
	GckDRAFI/ot7e15MR0cxDZL0VjUvHhzhR53JkGXUc/E9G/cSmvDmQ22EH8gm3+mtEgVk
	FMWg==
X-Gm-Message-State: ALoCoQljFHrbz8mn+9ld6Xa9GbaPAXGcX9HhnXxyz7lVQ7wmdv+cl1a+KBE2xRYGAIU8N5TFTZVu
X-Received: by 10.70.3.4 with SMTP id 4mr9939502pdy.103.1439879268642;
	Mon, 17 Aug 2015 23:27:48 -0700 (PDT)
Received: from [192.168.10.39] ([116.126.115.154])
	by smtp.googlemail.com with ESMTPSA id
	pt3sm16715390pbb.38.2015.08.17.23.27.47 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Aug 2015 23:27:47 -0700 (PDT)
To: yocto@yoctoproject.org
From: binhancntt <binhancntt@iritech.com>
Message-ID: <55D2D061.8080201@iritech.com>
Date: Tue, 18 Aug 2015 15:27:45 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: Deploy new driver
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
X-List-Received-Date: Tue, 18 Aug 2015 06:27:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,
I'm deploying a customized usb gadget as following ways:
1. create a new recipes and specify MACHINE_ESSENTIAL_EXTRA_RDEPEND += 
"mygadget". I expect it is loaded with kernel but the .KO is included 
only to /lib/modules/3.14.28-1.0.0_ga+g91cf351/extra. I tried with 
KERNEL_MODULE_AUTOLOAD += "mygadget" but it does not help.

2. Kernel source code is extracted to 
build/tmp/work-shared/<MACHINE>/kernel-source. I intended to add my 
driver to drivers/usb/gadget/ but whenever I tried 'bitbake linux-imx -c 
menuconfig', this source is removed completely.

Can you please show me what wrong I have made and what direction should 
I follow to add a new driver to kernel?
Thank you!!!

