Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C40ECE00D30; Wed,  3 Jul 2019 06:55:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4860DE00C87
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 06:55:08 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id j6so4967254ioa.5
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2019 06:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=W3Gp3jkr7+CdwNYkymfFLDMmVH7dcnYNfNgkipbu7h0=;
	b=BdIaEEwsptZdFQEscz7/hw8dHmqeD1gJGwIzIEV4xKu/+jHOfi3k/6YzuLwty/F6zQ
	4C0CaM9dYv9gJ8n7rm9qPOJu3j6z0Gl6+1saHMDDPTEZwtfxd1ERo13XV71srFMDgeyp
	T/mkU7nsttKtcL8YdebNkDgrE8EfMgw2v4zJisNjfaDBzVcWAby6JKl/sLRO9oavx1Hq
	FMlSPfzsfnaWC1TDA0kpJVL2ha6FXcbRyiViEouBEqT+P0Vqyb5iIx5NKERHSiNc7aV2
	iljpAks6hTZvUBWkl6JLwTonL0xxdlCxNxfwTFUF1EMXLVQU2t8OwkOkGCIQlSMwC98o
	yFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=W3Gp3jkr7+CdwNYkymfFLDMmVH7dcnYNfNgkipbu7h0=;
	b=hg/JUhhDMzUKPJCiq37kqff2dlkw5GRkxin9L+f/PcdgQhOGniLA32pXVdGuh975c0
	Yng4/lhSYu/8NSawcWdK1O1+Do/iukEndVjVQgrRUkT7QOwFN2HfG/eGMyzLZQm8lTLk
	tQsq5EJJw6RqCCDQvuSeQrPpyQhP7nKuhqXxxDgiG8uXN4/n1gX1/+SWE69s37XU6Vzc
	ZDeyKFpAhm/t5pAgq5Y7uaI0nBmU1EzsC+vWsmyMwq6RII69BhqjprfdI+mzlfUYGEjq
	JkrPP51huyyTzqRkkqJbc9vNGjWNASi00CcY/H5hsP4rwltm/dLuXGZa1rweMstfL4es
	vZwA==
X-Gm-Message-State: APjAAAU2Jt3uiXJiqb801C/z9W0BY6My3pHGXc0nWZjSFM2nq/YjFKSA
	1rceTQD8BKdKVSG4sEbDXgR+8MfymwSjleNlJIKd/Q==
X-Google-Smtp-Source: APXvYqxDPPqjfeOJfs1dwVkcb29rU+cFXxjDSJDdHez0CjFoepaF97D+7b94XNz0II0rxEJQ8I7/APj3WN8/BwV1NL4=
X-Received: by 2002:a6b:38c3:: with SMTP id
	f186mr38380732ioa.187.1562162107668; 
	Wed, 03 Jul 2019 06:55:07 -0700 (PDT)
MIME-Version: 1.0
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
	<CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
	<1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
	<CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
	<9d65e7b2c1794d4ab7618a9a769b4bf9@trijicon.com>
In-Reply-To: <9d65e7b2c1794d4ab7618a9a769b4bf9@trijicon.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Jul 2019 14:54:55 +0100
Message-ID: <CAJTo0LYxA818Q3vmOea4rRffiJR=XkSkRe3cSMPtc+7otQuo7A@mail.gmail.com>
To: Chad Gong <cgong@trijicon.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Wed, 03 Jul 2019 13:55:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 3 Jul 2019 at 14:21, Chad Gong <cgong@trijicon.com> wrote:
> I re-ran another build of the same configuration. This time there is no f=
etch error for the file that failed last time. I looks each time I build, I=
 get different fetch error randomly. But this time the failed URL is git sh=
own below, and I cannot even use wget to download it.
>
> ERROR: libnsl2-native-1.2.0+gitAUTOINC+37c5ffe303-r0 do_fetch: Fetcher fa=
ilure for URL: 'git://github.com/thkukuk/libnsl'. Unable to fetch URL from =
any source.
>
> $ wget git://github.com/thkukuk/libnsl
> git://github.com/thkukuk/libnsl: Unsupported scheme =E2=80=98git=E2=80=99=
.

Yes, wget is a HTTP fetcher, not a git fetcher.

Look at the log.do_fetch for libnsl2-native
(tmp/work/*/libnsl2-native/1.2.0/temp/log.do_fetch.  That will tell
you what is failing.  Maybe you've a firewall that isn't allowing git
out?

Ross

