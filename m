Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5BECE00AA9; Tue,  2 Apr 2019 05:49:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F9CE00A0C
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 05:49:57 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 5DF64221C7;
	Tue,  2 Apr 2019 08:49:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
	by compute1.internal (MEProxy); Tue, 02 Apr 2019 08:49:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=Z
	ShsTMQVrgYAIrQ/LUMtvH1p3EIwESZe7u5c6CK+hhs=; b=cFmOya/mNTpdr5fmb
	Z8d3duaW87K8wOryG/aPCWWwvDLsOPNwxLHc/mPYBllgFKcjUWTMJizk9tkPklCu
	0sFFM00IL2vtjzRU2rrJMLVYCJQ8RQSgS1I9t3kvUokTb067dAs2Xbm9n9/5pegX
	kCmQ9Zn/d8YT8CFOlIxEGHEJN2rZ9ysv6mF4ppZBIREHwjTxp2UrPQQz/3rjPWDW
	wmU4KdJR/fXXCi8T/3xuNtS8ewZqPpio5zXp055N8s7h8rhkPK0wTGghq6Q6g5kF
	KJxuzOONJg0RLoRQwRiMAAeNd4jhaeRFIIKk98y4uhGHYEWL5r5jFQNOM+o7ImkF
	aO5rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=ZShsTMQVrgYAIrQ/LUMtvH1p3EIwESZe7u5c6CK+h
	hs=; b=5uQR84m7xBpWBpvxXX4lJI8F/W1ymy7uKL7tUV9ch9A9pUZ0+k/7cICoJ
	EWTSEh7Zg0cuw5A2z4TBX+nJyjKBg4Qu6f4V4B53YVJmjXiujTMIlKUieX9OJKyN
	ovGn1e0LUwTyK6UAq1XCotA2Jup6iNtFc4KsadojkRjbEQRuq359hpXNMNkHV+pF
	kYJyEoSc8L+w14H2SfTF0/o4tbbOab5xaRUjffKsKrWukq1U7DGltQJ1U12rko5Y
	zTLcyo2lJGW28QQql/tOCDqaFMVBjKummplrWK1k+L1tlKvd6Jx4zX8DJfYutGLx
	gDsQcrl7kpsMDv9U+yL+MJrd5DsmQ==
X-ME-Sender: <xms:dFqjXFuHnOzDchLi0ibIozP9hh5CX0LdFUvw_VMi4lAffUCL1PYQgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrtddtgdefjeculddtuddrgedutddrtddtmd
	cutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdp
	uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
	hnthhsucdlqddutddtmdenucfjughrpefuvfhfhfhokffffgggjggtgfesthekredttdef
	jeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhessggvthgrfhhivhgvrd
	gtohdruhhkqeenucfkphepkedurddukeejrdefvddrudefkeenucfrrghrrghmpehmrghi
	lhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghruf
	hiiigvpedt
X-ME-Proxy: <xmx:dFqjXPLR1KD9pQzv2BVkGUyQSVf3Fgc6lA1fYKE_nbFckdxnxpAeMg>
	<xmx:dFqjXG-kCV7E0Z05RZPK3GvlRemBHjsBRYiDxG_CVk-mYnOaBQ_vcQ>
	<xmx:dFqjXAwdeN4M2n5dS-ZPH8eOSvZg3emU98Yay4snzWWelXYYOc1dIg>
	<xmx:dVqjXD1JR3aENkvuvuOjw-nN62eyTsaCb3w3jiIGKuBOAjKqyMsIRg>
Received: from [192.168.1.100] (138.32.187.81.in-addr.arpa [81.187.32.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0970C1030F;
	Tue,  2 Apr 2019 08:49:55 -0400 (EDT)
To: Lluis Campos <lluis.campos@northern.tech>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
From: Paul Barker <paul@betafive.co.uk>
Organization: Beta Five Ltd
Message-ID: <2cf2ff61-4afe-abcf-c56c-286c88198c49@betafive.co.uk>
Date: Tue, 2 Apr 2019 13:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
Subject: Re: gdb built with musl libc segfault
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
X-List-Received-Date: Tue, 02 Apr 2019 12:49:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/04/2019 12:45, Lluis Campos wrote:
> Hi all,
> 
> This is my very first question in the Yocto mailing list. Very exited! 
> Please let me know if I should use other list for this.
> 
> 
> I am building an image using musl libc instead of gnu libc. I am not 
> using yocto-tiny distro, instead I achieve this by setting on my 
> local.conf:
> 
> TCLIBC = "musl"
> 
> 
> My app (mender) got a segfault just starting. See output from strace:
> 
> root@raspberrypi3:~# strace mender
> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
> set_tls(0x76f1bffc)                     = 0
> set_tid_address(0x76f1bfa0)             = 3020
> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, si_addr=0x530bc8} ---
> +++ killed by SIGSEGV +++
> Segmentation fault
> 
> 
> To be able to debug the process, I added gdb to my image adding to my 
> local.conf:
> 
> CORE_IMAGE_EXTRA_INSTALL += "packagegroup-core-buildessential 
> packagegroup-core-tools-debug"
> 
> 
> Then, ironically, gdb itself also segfaults:
> 
> root@raspberrypi3:~# strace gdb 2>&1 | tail
> fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
> getdents64(3, /* 6 entries */, 2048)    = 144
> getdents64(3, /* 0 entries */, 2048)    = 0
> close(3)                                = 0
> ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, ws_ypixel=0}) = 0
> getcwd("/home/root", 4096)              = 11
> access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or 
> directory)
> access("/usr/bin/gdb", X_OK)            = 0
> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0x7e35aff0} ---
> +++ killed by SIGSEGV +++
> 
> 
> So, what is going on here? My guess is that some recipes are being 
> wrongly linked with gnu libc instead of musl, and then cannot run in my 
> device.
> 
> Any ideas on how to debug the issue?
> 

Hi Lluis,

This is an issue I've seen before with runc and gdb.

In runc we saw SIGILL which I tracked down to some hideous 
setjmp/longjmp magic written in C. cgo is used to include this C code in 
with the Go code that comprises the rest of the application.

In gdb we saw SIGSEGV which is what you've got above.

I think things are being correctly linked against musl but then there's 
some runtime issue in recent musl versions, possibly in conjunction with 
recent kernel headers.

Are you using the thud or master branch?

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

