Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15FFDE00757; Tue, 17 Feb 2015 13:27:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D633CE00521
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:27:30 -0800 (PST)
Received: by pdjg10 with SMTP id g10so46591749pdj.1
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:27:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=gk9/V6Fu2CpDqRQOilFnTKTADZUEx67dlGTWT9OAVNQ=;
	b=bgrFeYWeh3yNWh3wgiMA28f3UQy07XX6SkKJ+dJnG3J1shNpX4vKJ8JHKhVLpf49qk
	VHC36VK3Q6GO7Bb9JcldTKudgQLfyLvPJCiL8fyP+G5lzKqyHqzQ0ZNsRFzXsF4Uf4Cj
	AEVfcJYXcjGNIRcSDPQvhs9YPeuIzO4mlAuqD62Jvkc5j3iTzS0c+N7ke+NBDZ2Phfk/
	XPoLvvG2HHQLKwqgt60rEd1I1s8+HrR8mz11N/XdmTQBo5iEyZ6daE3XO7rvFuPgI/Wb
	8x1ipXulEZ8JIWkmwztAdMLK+JQW/3Di1nYgIz+iTxXP72wu45sr6iOoA64Xg5vUoyf9
	K2+Q==
X-Gm-Message-State: ALoCoQn0nlmxIYgLuPtrMoyBynF3rVfT8yjwX0BggpLDCS1pS4LWD7n9wN1PW9AUF8XLjF67TLOf
X-Received: by 10.70.101.136 with SMTP id fg8mr53064420pdb.65.1424208449915;
	Tue, 17 Feb 2015 13:27:29 -0800 (PST)
Received: from [192.168.2.35] ([213.132.102.178])
	by mx.google.com with ESMTPSA id qo4sm4084059pdb.71.2015.02.17.13.27.28
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 17 Feb 2015 13:27:29 -0800 (PST)
Message-ID: <54E3B23E.4060101@mvista.com>
Date: Tue, 17 Feb 2015 13:27:26 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <30DC4EDFD798C94083F3E083754532CC73DF308E@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <30DC4EDFD798C94083F3E083754532CC73DF308E@G08CNEXMBPEKD02.g08.fujitsu.local>
Subject: Re: [Question] How to walkaround this warning
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
X-List-Received-Date: Tue, 17 Feb 2015 21:27:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I think it means the package would prefer to use 'UID' = tss and needs 
something like inheriting useradd + setup, otherwise it defaults to root.

I will take a look at the recipe since I did the last update and did 
notice that message.

- armin

On 02/16/2015 09:07 PM, Bian, Naimeng wrote:
> Hi folks
>
> I built my image and got the following warning message in do_rootfs.
> ----------------------------------------------------------------------
> Output from btrfs-tools-3.14.2+git0+24cf4d8c3e-r0@core2_64:
> warning: user tss does not exist - using root
> warning: group pulse does not exist - using root
> ----------------------------------------------------------------------
>
> My poky is 1.7.1 as below
> ----------------------------------------------------------------------
> DISTRO = "poky"
> DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
> DISTRO_VERSION = "1.7.1"
> DISTRO_CODENAME = "dizzy"
> ---------------------------------------------------------------------
>
> Any suggestion, thanks.
>
> Cheers
>   Bian
>

