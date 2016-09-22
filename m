Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 125B5E009A5; Thu, 22 Sep 2016 12:55:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f195.google.com (mail-yb0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15ACDE00791
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 12:55:57 -0700 (PDT)
Received: by mail-yb0-f195.google.com with SMTP id p81so3002760ybb.2
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 12:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UF67Nfvoent+Qdwfw9gX0UGppy2WEYp084KS3WebStY=;
	b=HAbfvLjGl+DLqw9AeYb2TRU4zNvJLVRix0ai/Oj14tZa8Rsp3ZIzbZZIn0dZH8ot41
	bcmJW0Z6ym9KW+2Lvs8Bsr8PyEb2+yeThjztzpxtoyTUFyfAVd66o6Pjgg+7G7K981N+
	kHwtr9/e2UBdP2kotL+tma0HdFV7zpZ+WJSWaE3LJBoDgR3RYSFhBcpRxSzD3yEzpV0+
	wq3TJXQx9yLPwWxf9Dhyq6dfTqdBKTmSCvs8tOra65dqGI1XSAm6PeSZPiM94P4BPrqm
	BvZzO+fq4Nkzntlv9o+N9AsXWZO8cQ8mdt9/iO7Gxwow1O4MZS2VwBxVWVdLkAnDnApU
	QLKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UF67Nfvoent+Qdwfw9gX0UGppy2WEYp084KS3WebStY=;
	b=LxasZS5kHc8NGZlJ50wP+N6HnLHK1s/6Icsqk63KQ2rGjzlJ5yZDsEFt0Z7UEvWlhQ
	Nn75JK1tYT1jgB5Dk2HQ9IeUgZWt5xUq7oBiGVJFLmbOcz49/ge2CN8UwXDJ/hId6E0i
	lWjh0A9ARDwvoxY9PAZZv8Kkc3P4KuSMNbt4U3x0WJvsQdTCSaUK/Lliy1AlFi81Oapq
	j+xFZe2VAyA03ahAka8/+sRv1J3boN6m7fn6VUFOnfiES54hEzGbzz38emn9xM4a2rBw
	3/PVJmL/jUf4zJkJKTvncBhAY2yMtWTXS/8ycGr86pJ9nbYjCLEHtjUEODXLuRojEsUj
	lI7Q==
X-Gm-Message-State: AE9vXwNhVe+pMUKwGnDfGTgHpPi8spCPznmrEpuIjNMAi9onDSIUnoLH4C0nngKjFzqwGcX49cBwMfB1Q16N3w==
X-Received: by 10.37.196.197 with SMTP id u188mr2956246ybf.19.1474574156815;
	Thu, 22 Sep 2016 12:55:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.213.203 with HTTP; Thu, 22 Sep 2016 12:55:55 -0700 (PDT)
In-Reply-To: <CAMKF1sro2dOqgBVR+mXU0VmcWBQP0XPt6fEJW4=4+MRAAarFSQ@mail.gmail.com>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
	<CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
	<20160922152917.GP4814@bill-the-cat>
	<CAMKF1sro2dOqgBVR+mXU0VmcWBQP0XPt6fEJW4=4+MRAAarFSQ@mail.gmail.com>
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Thu, 22 Sep 2016 12:55:55 -0700
Message-ID: <CAJ70iBRZBNotf8BagoiWB3U55CDj9tbuPgjiL3vjjY6o-4f9ng@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Tom Rini <trini@konsulko.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Thu, 22 Sep 2016 19:55:59 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 22, 2016 at 10:21 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Thu, Sep 22, 2016 at 8:29 AM, Tom Rini <trini@konsulko.com> wrote:
>> On Wed, Sep 21, 2016 at 11:39:48AM -0700, Khem Raj wrote:
>>> On Fri, Sep 16, 2016 at 2:01 PM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>>> > Hi all,
>>> >
>>> > I just finished a first beta version of a meta layer for SBC pine64.
>>> > You can find it in  https://github.com/mont3z/meta-pine64
>>> >
>>> > I'd appreciate if anyone has any comments on possible improvements. A
>>> > major problem I had was the necessity of two toolchains: one for
>>> > compiling u-boot (32 bits) and another for compiling all other
>>> > components (64 bis). At the moment I have a very ugly hack to do it.
>>> > The 32 bit toolchain is an external toolchain and I set PATH
>>> > environmental variable in u-boot recipe.
>>>
>>> I think it would be desirable to have single toolchain, u-boot is a
>>> stand alone app
>>> in general, if your compiler can do multilib builds for 32bit then it
>>> would be possible
>>> to build it. May be you should work with the toolchain team for pine64 to see if
>>> that can be done. It will simplify using this layer.
>>
>> Actually, pine64 has a 64bit U-Boot, I think maybe the layer just needs
>> to be updated to use mainline (or v2016.09.01) U-Boot.
>>
>>> Other option I would suggest to build u-boot externally for your SoC, we do
>>> not necessarily need a bootloader for building final images anyway.
>>
>> Well, you do if you want a bootable image to be made :)  iirc all of the
>> models are SD card only, no eMMC so assuming firmware "elsewhere" is a
>> bad idea.
>
> You can always write a recipe to package a prebuilt u-boot.
>

Hi all,

unfortunately the pine64 mainlilne u-boot is not compatible with the
kernel I'm compiling.
To package a prebuilt u-boot could be one solution. At the moment I'm
investigating the possibility
of patching u-boot to compile it with multilib.

Thx,
Montez

