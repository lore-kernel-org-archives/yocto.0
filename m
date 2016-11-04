Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A25C3E00BB0; Fri,  4 Nov 2016 10:46:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0A4E00ACE
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 10:46:51 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id w194so73250598vkw.2
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2016 10:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=emb4ZAYyDPIMlgwSHQYjyOttzpuWdZis2j1se/tlDOI=;
	b=EP8ri75x7TlWbigM2dKtl+wkj2/8KrExDnq5yt8AX/FTkJ90d8J2WX7HwdgzuJUWLl
	YKuk3PQRnIb3Qov6+KZZ7k379F/oeiTwvAEgj2O2GJWJvxgGge2zHMUrLUQX0rzNJIfk
	n4XWyAZKt2HwTav7pZ2X1JJl5KGjhr+nsemVUmvVdDHxfOdG/1f+jYSD1oqtUmTH4iR1
	KJuVZS8fqi65Y40sztkhpLlzOnx4xkVEWh+jlsfsmAkFOZIlXU9PUa4nT2bBvNbv4BPu
	BZaNbhlkJtlKqXJGF91wfhFhKC6z4/lP7v0UGT2Gg6BHDLXw6d9tee44mEpMj8V2YWGo
	VlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=emb4ZAYyDPIMlgwSHQYjyOttzpuWdZis2j1se/tlDOI=;
	b=Xp3rB3Be9gFGLEiqaw6v1Wt2UfCCMZWEEMasS3WyQc+hn9MJi0bQbf8k8UVSk6xbnf
	MlV30hOEnTo4oqxl3QVKgbBU5yclgPZEI/5pVkvIxt3DEMwml9GICY+7T6hS/VK+GUon
	QtQMJPN14uMwieygjz0nSi78RR8BqCCKZi1kig9gkR/cB+mDNha1fKas13LOK7635PiZ
	XpZCsidw0alsezueLO63EoxktOGfKKnZlZNpP1IVLkP9v6RuTNVEIGS9qP/A0huIjP5l
	sUuNFdBUXWbzf/14iPWBldDpcwuChl+Q+furbBizwkYrtoLSB7ONwEmd+9qbdCpAGJy5
	zt0w==
X-Gm-Message-State: ABUngvc2wbGjeDsupWQ4sf5UfbKjhMFQ/n+QvVzTnxFLjrhrw86M5aE5rMuBmcegLn0ftMiyi2ifWZHwAM8P+w==
X-Received: by 10.31.153.195 with SMTP id b186mr12371184vke.140.1478281611044; 
	Fri, 04 Nov 2016 10:46:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Fri, 4 Nov 2016 10:46:20 -0700 (PDT)
In-Reply-To: <560994DC-02C8-4A2C-B489-646F9DBBF7EF@cisco.com>
References: <560994DC-02C8-4A2C-B489-646F9DBBF7EF@cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Nov 2016 10:46:20 -0700
Message-ID: <CAMKF1srt_esuvzVMxprmQw92udoGxBsfMwhA9Kxe5RwRhuOzhQ@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto : QA issue: package qlibc-dbg contains bad RPATH
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
X-List-Received-Date: Fri, 04 Nov 2016 17:46:55 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 4, 2016 at 8:09 AM, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote=
:
> Hi Yocto Gurus,
>
> ERROR: QA Issue: package qlibc-dbg contains bad RPATH

quick fix is in a do_install or do_install_append do

chrpath -d ${D}${libdir}/libqlibcext.so

ideally, one should fix build system to not emit the wrong rpath in first p=
lace.

> /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp_qlibc32/tmp/work/ppce50=
0v2-poky-linux-gnuspe/qlibc/1.0-r0/git/lib
> in file
> /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp_qlibc32/tmp/work/ppce50=
0v2-poky-linux-gnuspe/qlibc/1.0-r0/packages-split/qlibc-dbg/usr/lib/libqlib=
cext.so
> [rpaths]
> ERROR: QA run found fatal errors. Please consider fixing them.
>
>
> I am able to compile and build IPK package for qlibc recipe. But it the
> above QA issue, which indicate package qlibc-dbg has a bad RPATH.
> Any idea how to solve this?
>
> Many thanks in advance
>   =E2=80=94Dinh
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

