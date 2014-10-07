Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A17DFE00853; Tue,  7 Oct 2014 08:18:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63895E0076C
	for <yocto@yoctoproject.org>; Tue,  7 Oct 2014 08:18:09 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id l13so4909061iga.5
	for <yocto@yoctoproject.org>; Tue, 07 Oct 2014 08:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=J2xKaauIFFMtzt1tsIYKuDsd0p+AIMdpUT1LlvNEGZc=;
	b=EJ/9pMCqbm+EmO2+n5FJgw08ESlhdPlR50FhLxkBD1Hc/ozB3NqeYV4jY/cVQrlA5n
	z2wSg9vTeoIicJr1CWGzPTStJxllMRkmHR9KI00TYYJQfjJ5BcnW0kjyhJ7jeqaKkLP6
	0lpgdt1qUcxN9f750LT8Y9oJXPaYr3bH2Ii+eSf5FqSmhXjNRzisQMdHFdJ7C2qNDrcq
	mJzhUkUncaXaXw6eKwR0SMMZcEavnLhv/EUDDYT3C6akh9TuVXR6ZHGeMlXyadlbBG22
	+ibN6wajRCfpMfeT47Mr57/hzPjqIsLogshbTnPLffs3BflXbv8PLGhXasnd5GbLrQ6F
	EPXg==
X-Received: by 10.42.83.81 with SMTP id g17mr5616892icl.45.1412695088296; Tue,
	07 Oct 2014 08:18:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.179.5 with HTTP; Tue, 7 Oct 2014 08:17:38 -0700 (PDT)
In-Reply-To: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Oct 2014 08:17:38 -0700
Message-ID: <CAMKF1srK-qJOxNGrXsCAQ-=NN6mGHHD=a5O=9XWu=GMCZON72g@mail.gmail.com>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Tue, 07 Oct 2014 15:18:19 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 7, 2014 at 4:07 AM, Wy kevinthesun <kevinthesunwy@gmail.com> wrote:
> Hi, I am new to Yocto Project and learning to develop software on Atmel
> SAMA5D3 Xplained board, on which Yocto 1.5.1 is pre-built. I followed the
> instructions and got the 1.6.1 toolchain
>
> poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.1.sh.
>
> I can compile the simple HelloWorld program and binary file is made. Then I
> copied the binary file
>
> into board and tried to run it. However, when I changed to the file located
> directory and type
>
> "./Hello", it returned "sh: ./Hello: No such file or directory". Then I
> tried "sh Hello", it gave
>
> me  "Hello: Hello: cannot execute binary file ". If I type "file Hello", it
> gives "Hello: ELF 32-bit
>  LSB  executable, ARM, EABI5 version 1 (SYSV), dynamically linked (uses
> shared libs), for GNU/Linux 2.6.16,
> BuildID[sha1]=9933a2d2ce212099c5f9902a8e612c1423e136da, not stripped". I
> googled and someone
>
> said the problem may be the toolchain. Then I tried 1.3, 1.5.1 toolchain for
> arm, but still same
>
> error. Could you please help me about this problem?

whats running on board ? make sure that it has ldso in same directory
and name as encoded
in binary. it seems there is a mismatch. Try

/lib/ld-linux.so.XXX ./a.out

does that run ?

>
> Thank you!
>
> Kevin.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

