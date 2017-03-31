Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E64A1E00A71; Fri, 31 Mar 2017 11:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75B83E00A5C
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 11:41:25 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o81so1053228wmb.0
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 11:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CuiUZsg2pVL2uKbKOlrbqElj05f/pXrb+aU/Jjl0VTA=;
	b=MWu3F4In8z4pXEYM8EeqEZRy72v2tGSS7WYhcyyP7cheEYDhrwyaQS5khUftbtZBQX
	Hu5/4GnguaqJtbfqK8thC876D65xWki0R0r0KFNMOUOeXUTNIa2+KW6RVyyixfU+RzaA
	yBEyZLNWl69tLjn+eP36o0bfd0O7P1/DRaeuvZ9BMqdeQdC4nE06eZvwtY8qtEvfDvFd
	fx5neziKwgquh/cpkjDCCNv1Ma2LmN+NmncCGaL+2wi8bo6GgUozwTw9vFUUTWnLZ1Bt
	mKwKCgN01wRBfu/R9rL9f/MW4e9FCwyUjmbY8kZ8uomNsJ/adRXUW0aJ1eaAFLqB8K2K
	w5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CuiUZsg2pVL2uKbKOlrbqElj05f/pXrb+aU/Jjl0VTA=;
	b=pXrAAPQhP4ePVba4TX9QddwhSiEfQCVWQXAHclxOc1Q63RO9jquuXXflmmZ/pqe0wf
	uvl99jY7c4EZqisflsPgAvfk0vrNzX6AK4Tu/Q0A8IG/PMO39HZhfMTauqJSc5ZuD3Ln
	msgbXz0ONGyhUi/hQgDko1Dah6M2q9bUg1jjW+tPflFPb+PI1f6cFFgc6nVjuUnKgcXo
	ERZZ320SRozfjuTh3ki9kJti7mudhOr3ZwfSyacgufGS5KUOweuiSZ36S6jz8zwQFynB
	qzBWgj6J+fde2aI54JjraQ84QECME0uPWlessG8P1Sny+RhT3xjc+OTVB2Ted9E+fdbJ
	2wlg==
X-Gm-Message-State: AFeK/H116yQ9y9d0338etBApERudxJxtl7bKgGtJ0NjAqe45J9MIlLKju4sQBlu5QXCxImzeaZqgxlqORQaSSg==
X-Received: by 10.28.224.11 with SMTP id x11mr4197787wmg.98.1490985684579;
	Fri, 31 Mar 2017 11:41:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.152.55 with HTTP; Fri, 31 Mar 2017 11:41:24 -0700 (PDT)
In-Reply-To: <d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
	<d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 31 Mar 2017 11:41:24 -0700
Message-ID: <CAJ86T=W7xBcfU59mScYaq50W2L2BjbgcGeWQ1B=LVpTn-2sKKw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: GCC on ARM
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
X-List-Received-Date: Fri, 31 Mar 2017 18:41:36 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 30, 2017 at 10:07 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On 3/30/17 9:07 PM, Gary Thomas wrote:
>> [slightly off-topic]
>>
>> I work with a number of embedded ARM devices, all with different
>> processors, hence somewhat different tuning and build directories:
>>   Raspberry-Pi (1,2,3 - mostly 3):
>>     TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"
>>     build dirs:
>>       tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
>>   BeagleBoneBlack:
>>     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard"
>>     build dirs:
>>       tmp/work/armv7ahf-neon-poky-linux-gnueabi
>>   i.MX6:
>>     TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard
>> cortexa9"
>>     build dirs:
>>       tmp/work/cortexa9hf-neon-poky-linux-gnueabi
>>       tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi
>>       tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi
>>
>> What I'm wondering is, except for the obvious programs that use SoC
>> specific
>> functions like the IPU/GPU on the i.MX6, how different are these
>> really?

These tuning features refer to the CPU core only - not the rest of the
SoC. Any differences in GPU etc are not relevant.

>> So
>> much so that they have to all have unique binaries?  Surely I could build
>> busybox or python and run the same binary on all three?

CPU cores are generally backwards compatible. The Raspberry-Pi 3
(armv7ve) could run binaries created for the other two (armv7a), but
not necessarily the other way around. e.g. armv7ve adds support for
integer division in HW, which isn't supported by armv7a, so if busybox
contains any integer division operations (which it almost certainly
does) then a busybox binary built for Raspberry-Pi 3 would fail to run
on the other two.

> You can chose a least common denominator and use that as DEFAULTTUNE for
> all your machines. May be like armv7at2-neon

The common denominator for the examples above would include hardfloat, ie:

  DEFAULTTUNE = "armv7athf-neon"

>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

