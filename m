Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FCACE01010; Tue,  6 Sep 2016 16:41:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.66 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 379EAE0100C
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 16:41:47 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id v82so10848250oie.1
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 16:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:from:date:to:cc:message-id;
	bh=Fxh3XvNBVnNxyuFofXuO1O0Ead36bESG+UYN77DZKhQ=;
	b=GHFVPJDbzKcAoMEb8aC6o8FAwabK9om0nvxiVwXnXzRmD4s+e6SzbWJ67huPzZVqHk
	suLHn1EM+8M9QxDR2bhyTiXQ24PpG8aeOoDSTciR51HhjDRXKgMq6EceeGVCxwCKmvE3
	PGQThMvXfalc9dRgtBSzl3zmlu9EsS+miqChTarAUEHsmn5imTjkU8Xdx9MkpZiWF6PG
	m1vP6K8nSX0DhdCKqNIvsHfWXoxzbVkcHl4dEU9b+Vdrcv27eT+VvIZMsBtlIm2rNttr
	S6XrPGiUT3AUxWVgcjk6RwsCl9545ay8KiXGyIQhA8NcTCxCx53Qj9LG0OooA9S6W96O
	OmiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:disposition-notification-to:return-receipt-to
	:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:from:date:to:cc:message-id;
	bh=Fxh3XvNBVnNxyuFofXuO1O0Ead36bESG+UYN77DZKhQ=;
	b=dK1x6widtgpmq3T3sN0iSsOB4Jdt50DLponJXSRFFc/mPtcg4HbXOc6+tCtj66kQGo
	MaE2ec4vA13YB4Ch1aNGX0y1oCsB5Ia7mJC6tHaMtMDI88R5OvM50pMtee+0ZV2YO2nA
	uZgsjIYFfbYmzFMgzr8EoYqTJRS6cnF4zk1eGCu1M8OiYQpvVkV1XXEWQ/AKkXL734ur
	5MG3dm+o4g5nmQRHLC5tfvvtLbTKmu63wwiireQheoX7oKpa/vVpsSS/ifcj/Iae3a4z
	YQn2SxLS8cFGxTm8A28Lo25M+lw6rGhyxERbSfIQ/RUdLvOblWCrVOxxe5i1WrVjWheg
	QrPQ==
X-Gm-Message-State: AE9vXwN12X0iHWCNjmfq/DZv4SrYvVTT4j124ziozg6l5r3vOYk7X3v74ZW3BqB7ie4ZZQ==
X-Received: by 10.36.69.92 with SMTP id y89mr1969591ita.49.1473205307040;
	Tue, 06 Sep 2016 16:41:47 -0700 (PDT)
Received: from [192.168.0.11]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.250.193.223]) by smtp.gmail.com with ESMTPSA id
	r200sm909249itc.13.2016.09.06.16.41.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Sep 2016 16:41:46 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <CAF3SDA50QYHMECqOPsze-O5zT0h=DSOVKEODxFCnd68KbE2QGg@mail.gmail.com>
References: <CALRMKQr9upirFMexg8nkFEXY8DN9uA7LaCngNGQpk4EroHN3tw@mail.gmail.com>
	<CALRMKQr-HghH23Yia8H6iRyu__0DhK6V+YBP0CmoJMTvpOepqA@mail.gmail.com>
	<CAF3SDA50QYHMECqOPsze-O5zT0h=DSOVKEODxFCnd68KbE2QGg@mail.gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Tue, 06 Sep 2016 19:41:42 -0400
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <D52C86AF-587C-44B8-AB6C-42D57573607C@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building a Kernel Module that uses	/lib/modules/<version>/build/Makefile
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
X-List-Received-Date: Tue, 06 Sep 2016 23:41:54 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On September 6, 2016 6:50:34 PM EDT, "Daniel." <danielhilst@gmail.com> wrote:
>Ronald
>
>If you have a module developed against 3.10 you may have trouble
>compiling it against 4.x. You should port the module to 4.x kernel,
>not kernel to module. If you patch the kernel to compile that module
>other modules may break. I suggest that you download the kernel and
>module to some folders outside of Yocto while developing, create one
>or more patches with the fixes and then use Yocto to apply that
>patches against that module.
>
>Cheers,
>
If the driver is open can I take a look. It may not be too much work depending on what tree your basing against. 
Nick
>2016-09-06 19:02 GMT-03:00 Ronald Oakes <ronaldo@brc2.com>:
>> I seem to have been able to solve my own problem by doing a bit more
>> poking around:
>>
>> It looks like the makefile I'm looking for is found in
>> ${STAGING_KERNEL_DIR}, which appears in the Makefile as
>> $(KERNEL_PATH).
>>
>> At least once I replaced the setting that was hard coded to
>> /lib/modules/$(KERNEL_VERSION/build with $(KERNEL_PATH), I'm getting
>a
>> build.  (I'm still getting some issues with the fact that my third
>> party source doesn't want to build wtih either kernels 4.1.18 or
>4.4.x
>> as they are both too new, so I may have to patch it's linux_common.h
>> to accept 4.1.18 instead of 4.1.1, but that is a minor issue in
>> comparison)
>>
>> Thank you
>>   Ron Oakes
>>
>> On Tue, Sep 6, 2016 at 11:11 AM, Ronald Oakes <ronaldo@brc2.com>
>wrote:
>>> I'm trying to integrate a 3rd party kernel module for some hardware
>>> that we are using as part of our project.  Following the directions
>>> that work on the native Linux installation for building it doesn't
>>> quite work for a number of reasons, so I'm now modifying the
>generated
>>> Makefile.
>>>
>>> However, it appears that the bulk of the work is done by a standard
>>> makefile located in /lib/modules/$(KERNEL_VERSION)/build (which was
>>> actually hard-coded by the configure before I started modifying the
>>> makefile).  But, I'm not able to locate this in the files that Yocto
>>> has produced when building the embedded kernel and the other kernel
>>> modules.
>>>
>>> I've not booted the target and looked there - but I'd rather not
>build
>>> this on the target.  Ideally, I'd like to have everything built on
>my
>>> development system (not that we won't have the horsepower to build
>on
>>> the target, but I'd rather not be putting the compilers there, nor
>>> have to be having a module build as part of bring up each time - we
>>> won't have any non-volitate memory so everything will have to be
>>> loaded each time we boot.
>>>
>>> Similarly, building the binary and just including that may be
>>> difficult as our build system is running a much older kernel than
>our
>>> target (3.10 versus 4.4), so we'd still be in a cross-target
>situation
>>> and the 3rd party supplier assumes that one is building for the
>system
>>> one is running on and provides limited support otherwise in their
>>> documentation (I've not contacted them for assistance yet)
>>>
>>> Any suggestions/recomendations?
>>>
>>> Ron Oakes
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


