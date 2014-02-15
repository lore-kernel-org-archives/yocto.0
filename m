Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B62ACE0044C
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 17:46:58 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id kp14so13005475pab.34
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 17:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=5iRM0O8MjL4QKKUWBRWXS3lAynFayzXp+ViUQaIqwsQ=;
	b=BiNRoWToBwA9NLLqlAJhS1PLtQ3nxmm8/ceCIl3T/IaS1fqD+xgpKt/p2jzFRGJFor
	QnliKEf9AoQy0Rgp+dikyC7dZEbr/yYbfVQAbkHSvKhQT8Mb+mGEEs2SA69SZgZci08c
	WUr+MJBrw4iq7L8QC842OLAEfZ7USafmZOIGsW5J3VC8kIE/QX2HMePCzxL7jWX3g1dw
	3oq342fVLFAjogOQIygXM0bhebY94vwFx27OxBRyIoqBPmOgh9goLBCR7W0qw+rJ/V4n
	5XAWc/fOA1voFYy7A9La0+Z4QCGzepXmCDXYpGJESgR6NA3Bcr1rf/xiD7zJbTt030YG
	qlkQ==
X-Received: by 10.68.136.162 with SMTP id qb2mr12863945pbb.88.1392428817843;
	Fri, 14 Feb 2014 17:46:57 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	sy10sm53797754pac.15.2014.02.14.17.46.56 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 14 Feb 2014 17:46:56 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <52FE2B80.9030907@mlbassoc.com>
Date: Fri, 14 Feb 2014 17:46:55 -0800
Message-Id: <C250BCF5-44EA-4E18-B9DB-E761E85595AA@gmail.com>
References: <20140214142722.1D01B3804C0@gemini.denx.de>
	<52FE2B80.9030907@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Known toolchain bug?
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
X-List-Received-Date: Sat, 15 Feb 2014 01:46:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello Wolfgang

On Feb 14, 2014, at 6:43 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-02-14 07:27, Wolfgang Denk wrote:
>> Hello,
>>=20
>> in message [1] on the Linaro mailing list, Koen Kooi reported a
>> toolchain problem.  I can reproduce the same problem both in Yocto
>> 1.5.1 and witht he current top-of-tree; for example, using the latest
>> autobuilder result
>> core-image-sato-sdk-imx53qsb-20140213124023.rootfs.tar.bz2
>> I get this [source of Koen's test program attached]:
>=20
> Source code attachment missing?
>=20
>>=20
>> root@imx53qsb:/tmp# g++ -Wall -std=3Dc++11 -o b -lpthread b.cpp=20
>> root@imx53qsb:/tmp# ./b
>> pure virtual method called
>> terminate called without an active exception
>> Aborted
>>=20
>> Is this a (known?) tool chain issue, or am I missing something?
>>=20

as you can see this was a problem reported by your truly :)

infact, its an issue seen for gcc4.8 and arm architecture thus far seems =
to work fine for x86. It also works ok with gcc 4.7 on arm but given =
that c++11 is new there is something to fix there for arm. I hope linaro =
toolchain group has taken a note of this issue. as you can see its not =
only seen in Linaro toolchain which was my initial thought. but its also =
prevalent in upstream 4.8 gcc. I haven=92t tested gcc 4.9 may be its =
fixed there.


>>=20
>> [1] http://article.gmane.org/gmane.linux.linaro.toolchain/3925
>>=20
>>=20
>> Best regards,
>>=20
>> Wolfgang Denk
>>=20
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


