Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4042E00CF1; Fri, 15 Sep 2017 08:02:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EED5E00CC2
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 08:02:41 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id w94so9055254ioi.7
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 08:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=EZotzTO3Kn95xsk/jkmzgTJ6YwBqAuJpfkWvWOe7Lts=;
	b=xdeoFKAVGTG8mr9NMaPbznl1GW7wpKgjzY/bYPyuR86oTdIWtlvmED9YqnbZqJajiY
	2yLOwW8M5BHDphLCo92ZAhRhkQtJTYvGNfRZICY1i3auFm60xXPSgmMktJtCEP7UgENV
	0ojtybzg17M1hL55gUkZCbcaAgd2NfSf9qqijzoZne7gaoy7c8jy7HDBThSM0nQm3olk
	T7l/B6coh/j3FAxAPYQXKCNNYsXWxTYKACIb4hlJAPmhyBm/YQqpkEIt2bj2d/nO5kub
	418QNp9bJ/GfO5eyecpVLZHx7ua0FpuAPII9as0t/wHReCdejNdRL/xTEk9NZznOaVX4
	159w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=EZotzTO3Kn95xsk/jkmzgTJ6YwBqAuJpfkWvWOe7Lts=;
	b=Pt5ZNZrE3L7fhO2+xhWFD3SzyPsX38Vn4zJJoOAcjGolBmyOQO0jEQF/mAx9uoDJLH
	mGqHl6yz2MZKUkO6C+dGMWx1gPGc5UfPnM1CpYm4grScKSzEPb6LoRAMD2BE4ITeXhUA
	uc/a2yRKl2aQwYaMporxnBXZe0Y/gkl2o9c72g57A+LR3GC7NraSetyojw7OyjCC5DlX
	s5Qgsc+bImNDD5kNHwiqFsgkDAt78sXRHJc2oPQ/HJV0eoCgTDYpPyZApWajZafofT7v
	vGQKImFDPzOYi0gFeiTxni+boSQfcdx3Js/soBhCQnyetUWcInlWp/F/xPysOno7SL3y
	W6JQ==
X-Gm-Message-State: AHPjjUhE4wbmeq6lX8HA3sdtRhjwNm/+vhHvUaOCu8zTfBX4n/PwjtaL
	XaSev4dWJ/s3CtND
X-Google-Smtp-Source: AOwi7QDCRe7lQ8xkl5kOau4P2BP7MNpfLZW70iJeCvq6PryzBoI8q5LoHCyUvL+/HaCK4rbbZiVuvw==
X-Received: by 10.202.175.137 with SMTP id y131mr25048934oie.114.1505487761354;
	Fri, 15 Sep 2017 08:02:41 -0700 (PDT)
Received: from [172.20.3.38] ([209.116.245.4])
	by smtp.gmail.com with ESMTPSA id
	y192sm1022094oie.36.2017.09.15.08.02.40
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Sep 2017 08:02:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Bill Jenkins <bill@korgrd.com>
In-Reply-To: <CAMKF1spsgUEMnGTht1z2AO6moLSYuid0ZY2BednYR4pnp5bTvA@mail.gmail.com>
Date: Fri, 15 Sep 2017 08:02:39 -0700
Message-Id: <E3B6A24B-9451-416D-A59E-B66326392FAE@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
	<CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
	<D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
	<CAMKF1spsgUEMnGTht1z2AO6moLSYuid0ZY2BednYR4pnp5bTvA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Fri, 15 Sep 2017 15:02:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 15, 2017, at 7:43 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Fri, Sep 15, 2017 at 7:35 AM, Bill Jenkins <bill@korgrd.com> wrote:
>>=20
>>> On Sep 15, 2017, at 6:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>=20
>>> On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> =
wrote:
>>>> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into =
the following compiler error when
>>>> compiling an application using the SDK:
>>>>=20
>>>> internal compiler error: Max. number of generated reload insns per =
insn is achieved (90)
>>>>=20
>>>> It turns out that a patch was submitted for g++ early last year for =
the above problem,
>>>=20
>>> We need to backport the patch to 6.3.0 and regenerate SDK. If you =
can
>>> point to patch that will be helpful.
>>=20
>> Thanks Khem, here's a link to the commit:
>>=20
>> =
https://github.com/gcc-mirror/gcc/commit/4fe01ba94e99e792ebe9da2ccb3b071aa=
1bac388#diff-af18d9175d034b2b3726f1ddc05fae55
>>=20
>=20
> OK and which release are you on ?

I've been building in the pyro branch. DISTRO_VERSION reports 2.3.2.

>=20
>>> but apparently that
>>>> patch is not in the 6.3.0 version within the SDK. When I try to =
specify a newer version,
>>>> (by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake =
reports that only 5.4.0 or 6.3.0
>>>> are available. Any suggestions on how to resolve this? (i.e. is =
there some way to use a newer g++ or to
>>>> apply the patch?)
>>>>=20
>>>> Thanks,
>>>> Bill
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20


