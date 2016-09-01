Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D279FE00D46; Thu,  1 Sep 2016 08:57:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	*  1.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B2DE00D3F
	for <yocto@yoctoproject.org>; Thu,  1 Sep 2016 08:57:17 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id i32so153271228uai.2
	for <yocto@yoctoproject.org>; Thu, 01 Sep 2016 08:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SY2IYstgvJLgQnzqiD24TvnSHE8e2X5Wz15ci2k5oIg=;
	b=tOkKzE6VY8a5xVYJmdaDLuPlR/Ejg4EkbXclOxcgi36kX4WjbqjKL0rm4N5vbeBiwT
	zqA4TFwkNhiuq+F8w0K2i0kVcuCuBsDc3/kgRyhvE/veWff7rxNOp/4NDiwkIuV5kzpm
	h53GrP9O67zs4AeDTAwrSSC8YhTJjAVlb62Opachg/o1+9Up+Ey9cpP4BkuWWDnE3hsK
	R0mVsfICPY6/3JegZ/HKQ1RL/Zf2oemxtLbuPAWTF5foy2zCGiYpUykhWQtYkare1XM+
	rCpITRTkw0zZ9d7otHtBT7+GGbPj0Hq7HJLR3kZaC/igGv1VjwhLyHOxmxBfS/5W3YYr
	55WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SY2IYstgvJLgQnzqiD24TvnSHE8e2X5Wz15ci2k5oIg=;
	b=Wg1UpCcnM8YmleLo9bwt3Fr7OB4mFFR8wiaQvOGkh8QUkNDPEch+/MxEGBL3SxmViI
	ykvQMKTOcs+RY7SXZSsB+h+PZPD7k/JNgAEGH7X52rDOWev6yM1LmtvRbzD1OSjj+phM
	sQH/cOAZrJ1Qsp8YImmAy2hyCXVXDJLSHQnP+DFiAkdH/ZiPkpe754zUe1LNzAzxzZvR
	qX17nVuB2jQrVACZKQ8UUhshFqxKSwYBWOK4j/gIp8H+oddlHUiTzPouJLcIynTDks7k
	grT7jsApqlE1128UTRGJcdrKf2y4JyAE0hj/WAx/6oCY8Rh7O/aSrWtuz4a2XY7U5xoG
	67Eg==
X-Gm-Message-State: AE9vXwOKRoaFqVRngqKOv4Gl9RggXQDbT67yAT4GBqFLZ3WVbXBlBXuqxu8Yz4n7DFIS2RqGQNOkK49fAwoQbQ==
X-Received: by 10.176.2.148 with SMTP id 20mr10051072uah.10.1472745436713;
	Thu, 01 Sep 2016 08:57:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.73.23 with HTTP; Thu, 1 Sep 2016 08:56:56 -0700 (PDT)
In-Reply-To: <87shtjaaje.fsf@posteo.net>
References: <87poooc2ha.fsf@posteo.net>
	<CAD4b0_JqqWmkL5egXgbSVvq5xpb-ck2-sj9rr3hBbcOeEB5-VQ@mail.gmail.com>
	<87k2ewau7z.fsf@posteo.net>
	<CAD4b0_JE1iN8WgT9k=VtjPLtKvSNs1B0=zZBeAsUaXJWcC8zEw@mail.gmail.com>
	<87fupkarqt.fsf@posteo.net>
	<85bd928a2ecb47663d9a90ca24756f16@herrie.org>
	<CAHiDW_GBefiLcDQOgEEPVXeKTQGun8w6n62H33V6W4bvCv6sSA@mail.gmail.com>
	<87bn07bw9s.fsf@posteo.net> <874m5zbuwl.fsf@posteo.net>
	<5ab4fbf1a8106fa4a5d7db3b457db8fb@herrie.org>
	<87zinraduo.fsf@posteo.net>
	<2470b2c489daa8d6863159ea44d04367@herrie.org>
	<87shtjaaje.fsf@posteo.net>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Thu, 1 Sep 2016 17:56:56 +0200
Message-ID: <CAD4b0_KE4c3EFan96E7FzaNofJgB7mYjD3VDV=Wr4MwD0fXC-A@mail.gmail.com>
To: Pietro <pulsarpietro@posteo.net>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto and Google protobuffer
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
X-List-Received-Date: Thu, 01 Sep 2016 15:57:19 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 1, 2016 at 5:45 PM, Pietro <pulsarpietro@posteo.net> wrote:
> Herman van Hazendonk <me@herrie.org>
> writes:
>
>> If it takes the wrong version, it could be your layers aren't in the
>> right order. That's the first thing to check.
>>
>> You might want to try to run bitbake with
>>
>> -f protobuf -c cleanall or -f protobuf-native -c cleanall
>>
>> This will remove all locally ;)
>>
>> Then rebuild it... I haven't played much with the -native bits, so not
>> sure how those work.
>>
> I needed to specify DEPENDS = "protobuf-native" to get it working, I
> would be really interested to understand exactly what that does, but I
> must admit to myself I can't understand everything in a single shot.

Quoting my first email:
>> All you need to do,
>>is include meta-oe in your layers (bblayers.conf) and have
>> protobuf-native listed in DEPENDS inside your package recipe.

DEPENDS lists build time dependencies, like libraries, tools etc.
protobuf-native, by convention, means that the package was built for
your build host. This enables you to run protoc during the build to
generate proper language bindings.

>
> So never mind.
>
> I still have another question :-)
>
> I am about to create another recipe for the gprc library for C++, to
> build it on my local machine has been pretty simple:
>
> $ git clone -b $(curl -L http://grpc.io/release)
> https://github.com/grpc/grpc
> $ cd grpc
> $ git submodule update --init
> $ make
> $ [sudo] make install
>
> The recipe I have created so far would clone/checkout the source code
> from a GIT repo or something similar and then the build process could
> start straight away.
>
> In my case I have an additional step:
>
> git submodule update --init
>

There's a submodule fetcher, when setting SRC_URI use `gitsm://`
instead of `git://` see
https://www.yoctoproject.org/docs/2.1/bitbake-user-manual/bitbake-user-manual.html#gitsm-fetcher
for details.

Cheers,
-- 
Maciej Borzecki
RnDity

