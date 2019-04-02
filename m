Return-Path: <lluis.campos@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D556E00A54; Tue,  2 Apr 2019 04:45:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1051E0053F
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 04:45:14 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id l7so11264586ljg.6
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 04:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=5VSWJvwfsRqulh1CzwwTyRLJG+Kz+9MeXK5vCzXc4Vs=;
	b=X0MfDIgoK5mJc3Xyk+7iUngneX3GEyo3ym+x4XfJXTxlHQL1pyEW1eB1ACG2ElahX9
	Y2jbfsiN4NDNW2sJw9EzWCugUbiZrWGn1ldjiJNFPb+CubXsNqh1PyywVwbnp25b3KPr
	wLpiTO4Rt4rfGId/LfBFYCu3cPmwBPpsl/BZizq2WZAZ7jxRzBL8hHE3qWi1E2odF7AU
	1A4kEVA2jnnS0zO6as3krpVL4TyteV0KAILvLUPvM60xiJryQimFojRSqzX1ZK7AmOUC
	HkcunNf3u84mc4J+d0UXp2GhNDHgMSpwCTuTtJlfRfBU06cQoe6ayIVDxC+AI3o7bYEC
	7PSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=5VSWJvwfsRqulh1CzwwTyRLJG+Kz+9MeXK5vCzXc4Vs=;
	b=Rxp0nL4Hp6Yk6n0ttxeRPBvLYGnxEia05KNEBxe7XbLloafPSfLjGUVZ0Tnoo7Iqgp
	PkZZk5sqqUE7ecymmy3o6MyWXlryBOErK5Auz6mIxAOlCBMVnwOQV28wZmnRm8sHiGCL
	AMzHPK9Xl9toCxaSdIQ+YheaxsynzaYGAlePdSaS79btYpRekKTuilTpZo5ARXh4JGUX
	Saz1dtHv4AQCQ6Uj1gs4qQQHkHKoF1ATlmcTzlDdeCaOqEYhjdS2cWngJEUiFy+zRlwF
	tAFYILwY195oO/1Bn+fqNbmSs0FSdcfO+V+GfRRZsIFDkJY246YnzZ9slm6/KsEonhME
	CsBg==
X-Gm-Message-State: APjAAAUvKLJVlFnP3SNNljkdD8C84wcyhbD0vV4UPsBze0AKp+R1V7b6
	wuXTsXWCSZ5Ms5/9Gf8TYChVmk4w6Bo=
X-Google-Smtp-Source: APXvYqzvPfwxO1YHCJNsrtTZ1KOuxb8/XpDEwLB3wL5P1di0MttzuPFw71Vx923eH7TK3stUb0adsw==
X-Received: by 2002:a2e:8693:: with SMTP id l19mr26938159lji.47.1554205513618; 
	Tue, 02 Apr 2019 04:45:13 -0700 (PDT)
Received: from [10.20.33.217] ([195.159.234.190])
	by smtp.gmail.com with ESMTPSA id
	t29sm2693840ljd.82.2019.04.02.04.45.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 04:45:12 -0700 (PDT)
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
From: Lluis Campos <lluis.campos@northern.tech>
Message-ID: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
Date: Tue, 2 Apr 2019 13:45:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.0
MIME-Version: 1.0
Subject: gdb built with musl libc segfault
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
X-List-Received-Date: Tue, 02 Apr 2019 11:45:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

This is my very first question in the Yocto mailing list. Very exited! 
Please let me know if I should use other list for this.


I am building an image using musl libc instead of gnu libc. I am not 
using yocto-tiny distro, instead I achieve this by setting on my local.conf:

TCLIBC = "musl"


My app (mender) got a segfault just starting. See output from strace:

root@raspberrypi3:~# strace mender
execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) = 0
set_tls(0x76f1bffc)                     = 0
set_tid_address(0x76f1bfa0)             = 3020
--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_ACCERR, si_addr=0x530bc8} ---
+++ killed by SIGSEGV +++
Segmentation fault


To be able to debug the process, I added gdb to my image adding to my 
local.conf:

CORE_IMAGE_EXTRA_INSTALL += "packagegroup-core-buildessential 
packagegroup-core-tools-debug"


Then, ironically, gdb itself also segfaults:

root@raspberrypi3:~# strace gdb 2>&1 | tail
fcntl64(3, F_SETFD, FD_CLOEXEC)         = 0
getdents64(3, /* 6 entries */, 2048)    = 144
getdents64(3, /* 0 entries */, 2048)    = 0
close(3)                                = 0
ioctl(0, TIOCGWINSZ, {ws_row=25, ws_col=74, ws_xpixel=0, ws_ypixel=0}) = 0
getcwd("/home/root", 4096)              = 11
access("/usr/local/bin/gdb", X_OK)      = -1 ENOENT (No such file or 
directory)
access("/usr/bin/gdb", X_OK)            = 0
--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0x7e35aff0} ---
+++ killed by SIGSEGV +++


So, what is going on here? My guess is that some recipes are being 
wrongly linked with gnu libc instead of musl, and then cannot run in my 
device.

Any ideas on how to debug the issue?

Thanks!


Lluís Campos
mender.io
Northen Tech


