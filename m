Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C2CDE00CE5; Wed,  3 Apr 2019 07:16:22 -0700 (PDT)
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
	*      [66.111.4.28 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A5CBE00994
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 07:16:21 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 9B24121F17;
	Wed,  3 Apr 2019 10:16:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
	by compute1.internal (MEProxy); Wed, 03 Apr 2019 10:16:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type:content-transfer-encoding; s=fm1; bh=3
	9FaNu2MWSsf2RYftytOOpSJa6J3jJ/aEXpBHCZQwUQ=; b=id+2ENm7nZYRrnlBi
	I2CuB3Hk9+zK1cjKw5WmIMXXM4yPKiisveQ+B7AmunWS60Aku3xv1PLdbkSLw2Gq
	0ZmSwXKh8/CpHbeVZzWXCSkDGQRUzWWtfNflk/1LvECnB1zwRK6+ucN5a/GRkh/6
	EGi2BFwlPuq05KVPAokYI/kvFuFfNAgxgkL2hUwIJAZmSM8wTnCyTWVdKNQ1OvzY
	y/DJwwt1UQDLqulb1+pVagQuooZ3tKOxNt/2NckbWK1GK2atzjscjMzjKV+wxsKm
	a9BceB6m5bVPHEyKoBYMUTLt8RJSPFFZjdMw1zgPm34zH1vTiEritDd340yINUcY
	O1wvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=39FaNu2MWSsf2RYftytOOpSJa6J3jJ/aEXpBHCZQw
	UQ=; b=K3gHNxBHmN3EAeQ52lRcBfss56pR0r02jBmg1xymNvM16XN/lYR+M50Qr
	TGlhX5OxxCdREkN0LPRn+69MynqvUnB+p/az7UtBwkAnkmo/J5ElYQCHBrdmiHRo
	jSff5DXN5yg+cYAM5qGKd9UPti19KVH2vNFy1UyPg5NyKhnfAw0Jr0ynhZf1o/J1
	daMFNmmb9h6yX7pwUbpVs6qznDhpPAKfjRzLbNoH2S6d70mEjPPyfo+BhZKbYOUB
	JapszXlMLJiXfbTKmV7qOPgcjrKwgwLaDzpB3Zz9xUQMoNphMOdQHovOd84oJSwb
	92mMBadyDxSbkdwz3kwbiqtuxI35A==
X-ME-Sender: <xms:NMCkXKtqMm5qfYlsozHA_1WiiyKnzwwNCyNeaGlk4ehtznTL10NZHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrtdefgdegkeculddtuddrgedutddrtddtmd
	cutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdp
	uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
	hnthhsucdlqddutddtmdenucfjughrpefuvfhfhfhokffffgggjggtgfesthekredttdef
	jeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhessggvthgrfhhivhgvrd
	gtohdruhhkqeenucffohhmrghinhepghhithhlrggsrdgtohhmnecukfhppeekuddrudek
	jedrfedvrddufeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhessggvthgrfh
	hivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:NMCkXCVvfMVA7lfSeJtzHaVtoXvINhJ4dxHwBOEayG8UVdgRWMkadQ>
	<xmx:NMCkXGkwZk_LSMlU-fxlvT2DkOMCUIcGd7voOeEITskfdWhxDO2qlg>
	<xmx:NMCkXHDIiX5tsKaMZezlMQMpWmJe2pBbZF7WbZ62Fq4YvN-c6FwmqQ>
	<xmx:NMCkXNfYHtOYzU1dY7mdWmKc4VzGx_uNvuu_D3AGJwQh6wYWp4jpPA>
Received: from [192.168.1.100] (138.32.187.81.in-addr.arpa [81.187.32.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id C0002E408B;
	Wed,  3 Apr 2019 10:16:19 -0400 (EDT)
To: Lluis Campos <lluis.campos@northern.tech>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
	<2cf2ff61-4afe-abcf-c56c-286c88198c49@betafive.co.uk>
	<70715015-8652-4b32-15f7-2579933ede89@northern.tech>
From: Paul Barker <paul@betafive.co.uk>
Organization: Beta Five Ltd
Message-ID: <9f0f19eb-9678-3dd6-fee1-4b9dcf98a120@betafive.co.uk>
Date: Wed, 3 Apr 2019 15:16:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <70715015-8652-4b32-15f7-2579933ede89@northern.tech>
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
X-List-Received-Date: Wed, 03 Apr 2019 14:16:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/04/2019 14:51, Lluis Campos wrote:
> Hi Paul,
> 
> 
> On 02.04.2019 14:49, Paul Barker wrote:
>> On 02/04/2019 12:45, Lluis Campos wrote:
>>> Hi all,
>>>
>>> This is my very first question in the Yocto mailing list. Very 
>>> exited! Please let me know if I should use other list for this.
>>>
>>>
>>> I am building an image using musl libc instead of gnu libc. I am not 
>>> using yocto-tiny distro, instead I achieve this by setting on my 
>>> local.conf:
>>>
>>> TCLIBC = "musl"
>>>
>>>
>>> My app (mender) got a segfault just starting. See output from strace:
>>>
>>> root@raspberrypi3:~# strace mender
>>> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
>>> set_tls(0x76f1bffc)                     = 0
>>> set_tid_address(0x76f1bfa0)             = 3020
>>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, si_addr=0x530bc8} 
>>> ---
>>> +++ killed by SIGSEGV +++
>>> Segmentation fault
>>>
>>>
>>> To be able to debug the process, I added gdb to my image adding to my 
>>> local.conf:
>>>
>>> CORE_IMAGE_EXTRA_INSTALL += "packagegroup-core-buildessential 
>>> packagegroup-core-tools-debug"
>>>
>>>
>>> Then, ironically, gdb itself also segfaults:
>>>
>>> root@raspberrypi3:~# strace gdb 2>&1 | tail
>>> fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
>>> getdents64(3, /* 6 entries */, 2048)    = 144
>>> getdents64(3, /* 0 entries */, 2048)    = 0
>>> close(3)                                = 0
>>> ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, 
>>> ws_ypixel=0}) = 0
>>> getcwd("/home/root", 4096)              = 11
>>> access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or 
>>> directory)
>>> access("/usr/bin/gdb", X_OK)            = 0
>>> --- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, 
>>> si_addr=0x7e35aff0} ---
>>> +++ killed by SIGSEGV +++
>>>
>>>
>>> So, what is going on here? My guess is that some recipes are being 
>>> wrongly linked with gnu libc instead of musl, and then cannot run in 
>>> my device.
>>>
>>> Any ideas on how to debug the issue?
>>>
>>
>> Hi Lluis,
>>
>> This is an issue I've seen before with runc and gdb.
>>
>> In runc we saw SIGILL which I tracked down to some hideous 
>> setjmp/longjmp magic written in C. cgo is used to include this C code 
>> in with the Go code that comprises the rest of the application.
> 
> Our application is written in Go and we use CGO as well. So it sounds 
> quite similar.
> 
> 

Does your application use setjmp/longjmp or C++ exceptions in the 
sections built with CGO?

I've dug into the runc disassembly as well as adding extra prints and 
can see that it's at calls to those functions that the program counter 
jumps off into the weeds resulting in SIGILL. For gdb there's usage of 
C++ exception handling around gdb_main() and strace shows that the crash 
is very very early in execution so I suspect it's setjmp/longjmp again, 
used by C++ exception handling.

>>
>> In gdb we saw SIGSEGV which is what you've got above.
>>
>> I think things are being correctly linked against musl but then 
>> there's some runtime issue in recent musl versions, possibly in 
>> conjunction with recent kernel headers.
>>
>> Are you using the thud or master branch?
>>
> I am using thud branch. I haven't actually tried with master but I will 
> do it later today
> 

I've reproduced the issue on master. I've also ruled out the issue in 
sumo branch even if we uprev musl to the same version used on master. 
It's likely a gcc/musl incompatibility of some kind introduced in a 
recent gcc version.

I'm passing this one to a colleague for now but I'll try to have another 
look myself next week. It's captured in our issue tracker for Oryx here: 
https://gitlab.com/oryx/oryx/issues/14.

Thanks,

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

