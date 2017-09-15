Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AAECE00CF1; Fri, 15 Sep 2017 07:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.50 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F03E00CC0
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 07:43:48 -0700 (PDT)
Received: by mail-pg0-f50.google.com with SMTP id k193so1625561pgc.8
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 07:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jxEM8+/eM4yjBgVlrxNC1tMQi8jhHyHl1/AH18O8dqc=;
	b=QYgAIq5sS3fd37OUKoMIsVzJzxweIF2JDtLiba2lI/GJQglPhOAngXsvKcMhOdvONl
	staRv6kwgUM6nmKoNMtHkvJ0jnOr94hrwmlb08Zo6RUfzQuG7ntaSXcPGi2MmVvzNbep
	wFSfo7Xm4WEyR1TIuOTT7JG/ExBHFoN4qrWEeE3uDD3p4qOdyWhSIfLt/7UYGFCRGuI8
	9tvoVkPWAHckoAA6TJhmTQNUiOhjqe1Bw9fybT0q2qFOwLicZgk1EVDPmX+RB0Wl2eeH
	n7BVme8sarnbOD5bvCXs8eXd26ig5tJ5Tp+1oEJg0cKeafGSF/HPqi1vhwnGe8ZtpO+k
	T5aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jxEM8+/eM4yjBgVlrxNC1tMQi8jhHyHl1/AH18O8dqc=;
	b=YjS4yRqQ4caFZ+qjeVfCb0YfW5rKcJrmIlranUSpEina4WpFk6+4WBmkXGHsdOi+V3
	zEnim1FrWmlqhPB1x2cfuzfCR9IFTXkp9WTjGiiN8PEXy/UPQqLyhKbZEaL3QDaPuxZU
	6HUyg/kJWlGd/xcrIp/zp9pIn64TAVyLqaKwErivsklEK6/nE0+sgnuwAK9bxzy6XZoy
	Q2opmYBszlbwuuYzPPPDwjv3p2ZI/fxUOZJtO2u05bFnkacMUA25SftHk+xhQvsM3KUg
	tyDvS9tlztFkkbdJZNByIdVdx9zufZ2ogMKs64F/BN+uxjpXjilNzwTagSG8lNTHr8pN
	Qbyw==
X-Gm-Message-State: AHPjjUiyt0By2GByWsJ8ev8+V6JGNTaDNHFTwBFwB0efky+TsJLrAJ/W
	ZRRn+Pti2Dr4PbWDp3Q4gUtJ+TXFUnvmx4Zr5e0=
X-Google-Smtp-Source: ADKCNb5/I12JufNWwDUbH0o6s7VSJHCXb8A658BNZXg/6noJNtEaV7MrlT3B7s/3xmKqRUhJg3VaC0LvUYhWcZ26g2k=
X-Received: by 10.99.44.86 with SMTP id s83mr24711874pgs.341.1505486627902;
	Fri, 15 Sep 2017 07:43:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Fri, 15 Sep 2017 07:43:17 -0700 (PDT)
In-Reply-To: <D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
	<CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
	<D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Sep 2017 07:43:17 -0700
Message-ID: <CAMKF1spsgUEMnGTht1z2AO6moLSYuid0ZY2BednYR4pnp5bTvA@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>
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
X-List-Received-Date: Fri, 15 Sep 2017 14:43:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 15, 2017 at 7:35 AM, Bill Jenkins <bill@korgrd.com> wrote:
>
>> On Sep 15, 2017, at 6:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> wrote:
>>> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into the following compiler error when
>>> compiling an application using the SDK:
>>>
>>> internal compiler error: Max. number of generated reload insns per insn is achieved (90)
>>>
>>> It turns out that a patch was submitted for g++ early last year for the above problem,
>>
>> We need to backport the patch to 6.3.0 and regenerate SDK. If you can
>> point to patch that will be helpful.
>
> Thanks Khem, here's a link to the commit:
>
> https://github.com/gcc-mirror/gcc/commit/4fe01ba94e99e792ebe9da2ccb3b071aa1bac388#diff-af18d9175d034b2b3726f1ddc05fae55
>

OK and which release are you on ?

>> but apparently that
>>> patch is not in the 6.3.0 version within the SDK. When I try to specify a newer version,
>>> (by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake reports that only 5.4.0 or 6.3.0
>>> are available. Any suggestions on how to resolve this? (i.e. is there some way to use a newer g++ or to
>>> apply the patch?)
>>>
>>> Thanks,
>>> Bill
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>

