Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAA96E009E7; Tue, 26 Jul 2016 05:01:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AE0EE004F1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 05:01:10 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id o80so13228411wme.1
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 05:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=hD5nSMSOkFI4vln0izMs9jMPg8+f6fcIUvXwKAx1uSg=;
	b=UEAOq/97gA6+5ZUzEmphGt+2ZSwsctltv56N5SW08yjDyrk0u3kymAAPvH7gONflI2
	Ln5B4YbLujIntvC/7T0Kleh9f7mm4+aLWaEj1B1VX9Fa2Ckp/za/8AToiHEGf/mPmCb2
	+LBWlHRfsMvPRWfnbNK+NLPZIUXC7HoQUITEbYs0jcI7CY+Mq23YkI8bDkYMS+G8qW1z
	oSUp1/RBd/pFA1Nz17PP4c1nPnSwjCHm1xESCEskiyQBB9j1/dxPPbGd2QIdq2nrwO/N
	m5VubEEK+PEDIe9HbFi121be5/iPhGbhk16dHBS6u5aU6746LSWrbXaAkNfEsOwRFo2q
	vxUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=hD5nSMSOkFI4vln0izMs9jMPg8+f6fcIUvXwKAx1uSg=;
	b=VUVFqOn2O3HmwVhqDPDbqhEE8XzDCSp2UyPxPu1ekDGdZqwRc8pBd7s9MpHPaI1Dkt
	F2lZ13VftKJWmyiMzC2b7SX09YPNKWUxqHK9mn+RAqmlMkPNZdCU2B5WddUayi8i5t8M
	24BsnDLC9iImV2egG2DHkwJ9lqMdHLNraGk4at4yp5fuLXMKbBZJCJvhUmZ9xkqTlZGa
	2z5Iu2oKS+WZrN6C3tQ2kfM//Hy8l987nJ4bsFIequaBFDFTxuXDOBCZKWqtOkAuE7oi
	ExYcpW2/EUEVHLb3FnX3GPNYu97Lp37SaCZp4Q8WGiOSKexLNfUejCHrjNzTLdLxAtO4
	H8nw==
X-Gm-Message-State: AEkoouuAX58VLCOKBT8H23rbVGyJ5Jeq0yvskaZn435a42PswdpYg/8FbeqL6XX1P7oJew==
X-Received: by 10.194.61.205 with SMTP id s13mr19943182wjr.86.1469534469551;
	Tue, 26 Jul 2016 05:01:09 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id n6sm639152wjj.5.2016.07.26.05.01.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Jul 2016 05:01:07 -0700 (PDT)
To: Anindya Sundar Gayen <AnindyaSundar.Gayen@inedasystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BM1PR01MB0563A5094BEDF13CF53B0053950E0@BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <0ed0c754-4643-e083-dad1-17800a9c4e15@elfin.de>
Date: Tue, 26 Jul 2016 14:01:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <BM1PR01MB0563A5094BEDF13CF53B0053950E0@BM1PR01MB0563.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: Kernel panic - not syncing: Attempted to kill init! exitcode=0x00007f00
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
X-List-Received-Date: Tue, 26 Jul 2016 12:01:15 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

This error is probably caused by exiting /init script inside initramfs.

Are you sure that your init script is mounting and switching root properly?


You can share your init script, but I'm not sure that it's the proper 
list to fix that for you.



BR,

Piotr


On 26.07.2016 12:23, Anindya Sundar Gayen wrote:
>
> Hi,
>
>
> I am trying to build Yocto for my custom FPGA board. I added the 
> meta-bsp layer. But after successful building of Yocto I am getting 
> "Kernel panic - not syncing: Attempted to kill init! 
> exitcode=0x00007f00". Kernel log mentioned below.
>
>
> I am using Yocto version dizzy and the same rfs is working fine with 
> phycore Vybrid board because both (Vybrid & my custom FPGA) are using 
> cortex-A5. I am compiling my Linux kernel externally using poky 
> toolchain because I need to make it initramfs. Phycore Vybrid board is 
> using Linux kernel version 3.0.15 and for my custom FPGA board it is 
> 4.6. It seems to be noticed that 4.6 Linux kernel with openWRT is 
> perfectly running whenever I am creating that also as initramfs for my 
> custom FPGA.
>
>
> So, please let me know how to resolve it.
>
>
> *LOG:~*
>
>
> [   10.160000] console [ttyS0] enabled
> [   10.160000] console [ttyS0] enabled
> [   10.170000] bootconsole [earlycon0] disabled
> [   10.170000] bootconsole [earlycon0] disabled
> [   10.380000] Warning: unable to open an initial console.
> [   10.390000] devtmpfs: mounted
> [   12.130000] Freeing unused kernel memory: 4648K (2022e000 - 206b8000)
> [   12.140000] This architecture does not have kernel memory protection.
> [   12.320000] Kernel panic - not syncing: Attempted to kill init! 
> exitcode=0x00007f00
> [   12.320000]
> [   12.320000] Rebooting in 5 seconds..Reboot failed -- System halted
>
>
> *Thanks & regards,
> Anindya Sundar Gayen
> Contact | 7842753740*
>
>


