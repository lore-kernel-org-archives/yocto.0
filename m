Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50DA1E00C15; Tue, 26 Apr 2016 07:17:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBC35E0093E
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 07:17:41 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id c6so6158796qga.1
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 07:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0s0S4rpQhBbZi3/vfdEtDCfx0pRiKGRKGLgrh6sKKDc=;
	b=jYcmRZqredEPBPi8CRc3uspuQayjedmIcbBdEjurrTlHqOXrUZnjhau91Nz/ARXfU0
	speXxFSUxARyRmCf3hPsXq5rvmXOQlvARMS1+CiRhYXzaKwOuFCQgegS+Nqw+GihHkTl
	cnfR5HAbUZw1PqO87CVRp25du0MbJlMtEFg4Q+Ax3SyRi20zKDAR8bdyJ1Bnyew1QBlX
	scFcqjO46OpG3SM4jsvlyFsRrN4i7SyPxfzLvCXoRoHvsgJgYe6HEtLjq23l+j8p3AZD
	wSnQYwfnsxpWpooF172/fyWP9BDdW2qd4G1R0pOtRRxzC5t/sb/QxI5IG1pdHQr8qDa8
	rMwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0s0S4rpQhBbZi3/vfdEtDCfx0pRiKGRKGLgrh6sKKDc=;
	b=RdoJbtEXUrPbGjmkOvdFVgSz2ghQLnxBNDTb8eJxS6BMuQO2NrZMfm/IZGP5ky6eX0
	0MYcR3LRWUjSUrqhuaNAXQbiwSnQ3NJqO8riuywwYj/idYpC7Uyq24tdZgNkvmfRLqST
	blpUdcc5h57/Dt4XxDQoM7Qu2Gq89+yF/bC7GZeZYbkaHFcvHd/Ou1pAxCTYSTQEyyyH
	biXMhz/HE+xDlQlHG2i7m7MCQhfGDbp2+5Xe7kC7C8KilkWBtkT/XZUTwqUPo+ZYXgRF
	rxmWJg3WqINHlwpu3EOXRb6zC3MKZkkKeRecKIod8lBB5YZHG7ioZDFXKNjAv+d7dGW4
	zXuA==
X-Gm-Message-State: AOPr4FV1qOX0Ct6rdQPVgs5IdFwbQ18kWdCLqyawAG3gxBr02A5RfssQrsqxYDlgXjn9h2135jpMjVZVkwtXwg==
X-Received: by 10.140.148.134 with SMTP id 128mr2570744qhu.98.1461680260760;
	Tue, 26 Apr 2016 07:17:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Tue, 26 Apr 2016 07:17:11 -0700 (PDT)
In-Reply-To: <PN1PR01MB0333EF4C74C76713DA2E13CBEF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB0333D0AA52455F3BFC07AB53EF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1spiMKDGzfd21izpjak1rRm_XqpNzuTTd_Mx6726H9cw7Q@mail.gmail.com>
	<PN1PR01MB0333EF4C74C76713DA2E13CBEF630@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 26 Apr 2016 07:17:11 -0700
Message-ID: <CAMKF1sovztNm0iBtoXrcE4jDHrZ4YOSVR7POyFKh++rT5DFLHw@mail.gmail.com>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Build error
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
X-List-Received-Date: Tue, 26 Apr 2016 14:17:47 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 26, 2016 at 12:10 AM, Harinath maddelal
<Harinath.maddela@inedasystems.com> wrote:
>
> Hi,
>
>
> Kernel Version is 3.10.60 & our platform is mips32.

you are building old kernel with newer toolchain this backport might help
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=842dfc11ea9a21f9825167c8a4f2834b205b0a79

>
> For GCC I haven't made any changes. I have used the default GCC from yocto.
> Looks like by default it is using 5.3.0 version.
>
>
> Can we specify our GCC in the YOCTO?

even if you can, I advise not to do so.


>
>
> Thanks and Regards,
> Harinath
>
>
>
> ________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Tuesday, April 26, 2016 12:13 PM
> To: Harinath maddelal; yocto@yoctoproject.org
> Subject: Re: [yocto] Kernel Build error
>
> which version of kernel are you compiling and what version of gcc is in play
> ?
>
> On Mon, Apr 25, 2016 at 11:31 PM Harinath maddelal
> <Harinath.maddela@inedasystems.com> wrote:
>>
>> Hi All,
>>
>>
>> When i'm trying to build my kernel using yocto, im getting following error
>>
>>
>> |   CHK     include/generated/compile.h
>> |   AS      arch/mips/kernel/r4k_fpu.o
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:
>> Assembler messages:
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:89:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f0,272+0($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:90:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f2,272+16($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:91:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f4,272+32($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:92:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f6,272+48($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:93:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f8,272+64($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:94:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f10,272+80($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:95:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f12,272+96($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:96:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f14,272+112($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:97:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f16,272+128($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:98:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f18,272+144($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:99:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f20,272+160($4)'
>> |
>> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/kernel/r4k_fpu.S:100:
>> Error: opcode not supported on this processor: mips3 (mips3) `sdc1
>> $f22,272+176($4)'
>>
>>
>> Can you please tell me what could be the issue? We have used mips32r2 in
>> our machine file but if the error log is observed where it says "Error:
>> opcode not supported on this processor: mips3 (mips3) `sdc1 $f6,272+48($4)".
>>
>>
>> Can you please help me resolve this issue. Thanks in Advance
>>
>>
>> Thanks and Regards,
>> Harinath
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________

