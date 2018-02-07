Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89F38E00E6A; Wed,  7 Feb 2018 04:12:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE7B3E00D91
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 04:12:54 -0800 (PST)
Received: by mail-wr0-f181.google.com with SMTP id v31so757250wrc.11
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 04:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=yqGvn2PAvj/xEm0A2XbooOLxf0uDHPIPPoscy9gAyeg=;
	b=mgxHsu9FBnKKCcAXC17STdy4P8c2q+NAJ8R4O0B2+jYoeQd95BstQdnRp1AOLue013
	/L3HVcFcffe0ndF3IHFfK1koRpzXd9r/xOsh3pYS1i37Zu52szKCMR0CTEcxb42SEOcV
	aofeM8csnk8R9ZM33nFf/venBHt+ww+7uZrSOm7koNcASc9iBOrjX+ldKokQKb3jZgzn
	hcJS3N/hMznm+Q7CQIKR/CtBnIJN/4xRn0ISPiuhh77ICnCr7obB/0ywyqOOSUKpkuqx
	HrMkPcAaknddxaajWDjvn+T5OnQjLpTrroD+k/WT2RCPlUpOVozsKBoYsMm7R/uYTkDs
	iICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=yqGvn2PAvj/xEm0A2XbooOLxf0uDHPIPPoscy9gAyeg=;
	b=q2q4JqpPu+7QzaZvFEO+80tDY6b9tQ8Ac2LD4ukfaaU57vu4vbU3inbt+9uLelWOFP
	1Uv9f91HaBFw5yITDVJAlxyuZ4M3bzxFfwjhvM77slVNTVpDvUsqiiADnUf6KKFesh6P
	5L3GzXleqgwloHwZ/NF/SwXSw5D2TxiyO5L9I2KFKEHZJFiVJ3atdQHG8M/IXPT1ELzo
	+5oDn2Tkc4aB5GslHq++fBBYFzuu5aCWHG9vx4LyN20r16pMDbDH4p8Tgj6yxU1S/qME
	KTW8PZ+EB5YsqFRH5+KE/oG89J4LspqAGlPFg6siRe2NYg5a7NgqsPiDZAAyc+CVjd9+
	BxLw==
X-Gm-Message-State: APf1xPB9zmBQeClMTN9/0NwXg13fXfC/0cVmZtbeudZlTwR0pjJzvgHs
	5gecpB8BAyNcv0CuzCKevimM6BaZ
X-Google-Smtp-Source: AH8x227z2NhI02Poefcz6t9siSxoHzOIV4nLeIkFtz+1n5KlRRY8PsTZrQzcsDA9QAcu9m8vSmvEsQ==
X-Received: by 10.223.182.71 with SMTP id i7mr5299658wre.166.1518005573600;
	Wed, 07 Feb 2018 04:12:53 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-138-178.home.otenet.gr.
	[2.86.138.178])
	by smtp.gmail.com with ESMTPSA id 19sm1066626wrx.73.2018.02.07.04.12.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Feb 2018 04:12:52 -0800 (PST)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
Date: Wed, 7 Feb 2018 14:12:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 12:12:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2018-02-07 09:46, Mircea Gliga wrote:
> Thanks for your answer.
> I already have the ALLOW_EMPTY_${PN} = "1" in the recipe
> 
> What I still don't get is why the -dev gets installed but the -staticdev 
> doesn't, even though the dependency is satisfied (the empty pkg exists).
> 
> 
Just to understand what you are trying to do:

Would like to have both .a and .so files for your library in your SDK?

What should be on the rootfs? I guess the .so

You can check the contents of your packages with:

oe-pkgdata-util list-pkg-files -p <package-name>

How do you build your stuff? autotools?

I needed to do the following in my recipe with autotools:

# By default EXTRA_OECONF is set to --disable-static ...
# Let's get rid of this
DISABLE_STATIC = ""
EXTRA_OECONF := "${@oe_filter_out('--disable-static', '${EXTRA_OECONF}', 
d)}"
# enable static and disable shared (for fun)
EXTRA_OECONF += "--enable-static --enable-shared"

----

I added this to local.conf:

# -->
IMAGE_INSTALL_append = " libhw-so-a"
# add libhw-so-a-dev and libhw-so-a-staticdev to SDK:
TOOLCHAIN_TARGET_TASK_append = " libhw-so-a-staticdev libhw-so-a-dev"
# <--

That's the content of the packages produced:

libhw-so-a:
         /usr/lib/libhw.so.0
         /usr/lib/libhw.so.0.0.0
libhw-so-a-dbg:
         /usr/lib/debug/usr/lib/libhw.so.0.0.0.debug
         /usr/src/debug/libhw-so-a/1.0-r0/libhw-so-a-1.0/lib/lib_hw1.c
         /usr/src/debug/libhw-so-a/1.0-r0/libhw-so-a-1.0/lib/lib_hw2.c
libhw-so-a-dev:
         /usr/include/lib_hw.h
         /usr/lib/libhw.so
libhw-so-a-staticdev:
         /usr/lib/libhw.a

in the rootfs:

./usr/lib/libhw.so.0
./usr/lib/libhw.so.0.0.0

in the SDK:

./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.a
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so.0
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.so.0.0.0
./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/include/lib_hw.h

Can you cook up an example where we can see/reproduce your problem?

----

Regards,

Robert

