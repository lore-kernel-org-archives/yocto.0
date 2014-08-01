Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3434BE0043F; Fri,  1 Aug 2014 09:36:58 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06B61E0043F
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 09:36:52 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so1870723igb.15
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 09:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ro10ZAhEHbVebywQbugorSibkilaAv0gYnBbeJwHWkg=;
	b=Ebd6XFXFoOajCC8o5f7eOoOf7el/gTbk6e1Rm5SYQnz/sRiKRLLfO3UFBvP+mtqRfo
	XPD2m6DiNgkf6ZZoL/SOZ7kepZFpGgG0CsRcLgM8xGup2r/KbRTYnIRjDBtNKe57LOTC
	bb+qG7Ni3OBsdltVyPY5UQ5urv8BXp8GpiFm6zlL8p/UkWwgIbaseMqLptQDnmpQ8Ted
	5gDBuJW0ixu+BnOS2XZaW8AjDKLbNhr+VheLkGIYw6e2JfcCBZzvXZsg7iLMM3ZaQS/m
	vP+CSuy/Nd6NdzdO4MC9zck9Qb70+2/lKjreRBHZc1TfxZcx3JGMOYT6ufrkiten6JBi
	L2tg==
X-Received: by 10.42.90.74 with SMTP id j10mr8551229icm.29.1406911011726; Fri,
	01 Aug 2014 09:36:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 1 Aug 2014 09:36:21 -0700 (PDT)
In-Reply-To: <CAH21_vFksZwyBzoVfBY+SAfmsfpHBEh_0z56VRTnxVL6TfrChQ@mail.gmail.com>
References: <1406875687030.25848@kpit.com>
	<CAH21_vFksZwyBzoVfBY+SAfmsfpHBEh_0z56VRTnxVL6TfrChQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Aug 2014 09:36:21 -0700
Message-ID: <CAMKF1sr1WnKwa3DnXcPHyk_Q5xUwz7KRKXSQB2Xf1UtG5Cj-sQ@mail.gmail.com>
To: atulkumar singh <atul.singh008@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: elfutils-native0.158 configure failed
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
X-List-Received-Date: Fri, 01 Aug 2014 16:36:58 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 31, 2014 at 11:51 PM, atulkumar singh
<atul.singh008@gmail.com> wrote:
> checking build system type... i686-pc-linux-gnu
> checking host system type... i686-pc-linux-gnu
> checking for i686-linux-gcc... gcc
> checking whether the C compiler works... no
> configure: error: in
> `/home/atulk/poky-a5531a2b8983318b99c119a87b78a92cf84160b8/build-toolchain-sdk/tmp/work/i686-linux/elfutils-native/0.158-r0/build':
> configure: error: C compiler cannot create executables
> See `config.log' for more details

something is wrong with you native compiler

