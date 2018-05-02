Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B51BE0084D; Wed,  2 May 2018 02:02:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DE4E007F2
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 02:01:58 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id q4-v6so8208092ite.3
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 02:01:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VQT2wv1KQg+z+VwEhqLDooeWetzq7T4jjPWixmqvk/Q=;
	b=YHnRdZQuXDqs3lAQLyns5yTbvHrMOKTZae8n0I2uUiIbCe7Czto0OMxGiBCtr1MW+U
	ASNNBoYk4C4yqNqvQ6BTLWr5pO/7FY1qmsJvbu0lN2N06KhQaAxvABkRvBEfit0oSqh0
	RxJMH01dDgSg4AOtVYao7vy26V9TsPtQKBWvVLTfG3ejkmKVWkG0M5RjIUCA3HXS77ie
	LgVDdqYRSwXKcL0DcIMvs2Knh+c2ApmKtBdp/0gMqTUC7/QUO8RpiP14sdaNyF2PBm+m
	GGDQLeNU0sI5ts71rbVr+pr6tHK96wfAv04ReP9zjL8Eb4YMDIAPK5TpMWujQjB47PYT
	FJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VQT2wv1KQg+z+VwEhqLDooeWetzq7T4jjPWixmqvk/Q=;
	b=JNcJVd4ePn+B9dO2PCbk/qzvHmeJbuxwa5myC9xjurgdJaMqIPE5jZPmX3PfhDbDJL
	YnbsridiBJj/xLVmzRPZCrd5cePEjJqULZXdX57teOn418vcm0IOFRun4WoQ5auHSWU/
	Egbghrp6VDVwHQDHeul/qV3bWO3oFP6kjFQezOqiGajd5B0C/Y4LDfD1yNraP8AT/lrj
	cglwwvL3wF7xAiJBAoBPo1+bguTnDpDugg3igao4OtQcH+ZIKJio2puNWZ1DxYeytTjE
	KNthgqGkLw/ZbOwhimvX66fSfGL6eG+oXlO6bfl0Ci1mK5NBxVsr3VQavB+Nh6+B6fGP
	w3fw==
X-Gm-Message-State: ALQs6tDXY72Rw4O6dd1bNDBL5No7aKqQW7yOSYFJ8ltbJvRJV9xwEhUb
	hW+w11/JGZSCfIUevw1sTQ4K/p7Mvhm3h8joBGkpPQ==
X-Google-Smtp-Source: AB8JxZo+Fm8hS67vGlMjg1f92aahTL7qC+9PyrAjLcKvYEBcDNDQEwFaSHcbuXG8eWkh94doGVnZT9u9MS/sgv3/GMI=
X-Received: by 2002:a24:b803:: with SMTP id
	m3-v6mr18668974ite.131.1525251718157; 
	Wed, 02 May 2018 02:01:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 2 May 2018 02:01:37 -0700 (PDT)
In-Reply-To: <CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
	<16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 May 2018 10:01:37 +0100
Message-ID: <CAJTo0Lad=PmT4n70SMLu8J29aVnenqOjx_DznVrp2Pwro2ELgQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Irving ST <irving@ssfivy.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Wed, 02 May 2018 09:02:00 -0000
Content-Type: text/plain; charset="UTF-8"

On 2 May 2018 at 01:41, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Tue, May 1, 2018 at 4:59 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Wednesday, 2 May 2018 11:54:00 AM NZST Andre McCurdy wrote:
>>> On Tue, May 1, 2018 at 3:10 PM, Paul Eggleton
>>> <paul.eggleton@linux.intel.com> wrote:
>>> > On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
>>> >> The make dependencies come from the ptest packages, so if you disable
>>> >> ptest in your DISTRO_FEATURES then those should disappear.
>>> >>
>>> >> Essentially doing a full build without any GPLv3 software *and* not
>>> >> using old releases which are still GPLv2 is tricky.  I can only
>>> >> suggest you don't use the meta-gpl2 layer (as you don't want the
>>> >> recipes to be used) and use bbappends to disable pieces where
>>> >> required.
>>> >
>>> > We probably need some sort of whitepaper on how to do that, it doesn't
>>> > look like our manuals cover it in sufficient detail. Any volunteers ? ;)
>>>
>>> Does "Blacklist GPLv3, don't use meta-gplv2, fix any issues you may
>>> run into" need a whitepaper? Or is there more to it than that?
>>
>> Apart from "disable ptest" as Ross pointed out, I would assume that's all
>> there is to it - but right now aside from asking here there's really no way
>> for someone to know that that's the best available way of handling it, so I
>> think it's worth documenting somewhere.
>
> Yes, OK. I hadn't realised ptest is enabled by default in poky (!?!).
>
>   http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?id=9381b2d2bddf9f67cf57b0718cf99e45805125fa

Poky is primarily a vehicle for testing the Yocto Project software, so
it follows that it enables ptest for QA purposes.

Ross

