Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56EFAE008F3; Tue, 31 Jan 2017 22:19:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC091E00480
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 22:18:57 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id c85so3434073wmi.1
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 22:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NPCTKJATIUW7QVjJ/l+nIP4v60lhRCm4pEGQD/fKGbc=;
	b=S8MSeayNmvToOJehsLIb3U7FnFVMw9btrTv5zk6ymDu32ixx2owU/SIpLVEr6gBVGt
	fDf2Wyv0coanIPlszsepV9HIHl8izmZRbZDzaxjGDN30T45fAjoDDfRqBE0lwBLJ96+U
	XIGJFiE+OZpqYhMrviaOLiJsITLhSdcSMMnc0KFapkvKHXwLiMoWGiub/Y2Vvlm8nnz5
	b1vb4rgRJz4X9Ubia43NQomwrY4CAQlQc/We5dJUP4hb0VEt1gcTdkc6poUMHTyDDOdg
	0+JbUK56JfF3qEaxW/EFvHTHMqPYOzr+JvEftFAr7kuRtCHRU9w0H1/6jUMAPRNvHOTA
	E7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NPCTKJATIUW7QVjJ/l+nIP4v60lhRCm4pEGQD/fKGbc=;
	b=Ef1h8XlrlGrJdcBPtjaQ8uNcTM7D/ElXH1+JJAUQSDeq7fyF1WjGdcj5jySLCV7Pdz
	0QCEIdckSUrKjXp65SwzHhfSITkN9uwL6J88x37FtKFfwdfq+Eh5evzy55ijSPA5XaUo
	6PYRjgZVr5bw7mfvAnBfnlYC7EYmbsK3DXXzlcJ+U2ga667Q1X6W2AZVYcpjTfi0SSQd
	wey+itzFNfUxNVZ+08WYzvEyo8nRLmWo1vdD/gc40En6G3q19n8A4+yit8owz5cdhlcT
	ocFLsF8APg6oplZT9e8GNlnvHyH7yX51Hp+RqFn9NkYwegAltKlHR7g4TEvktBHij4qx
	7WQw==
X-Gm-Message-State: AIkVDXLrgKdW88cBK8krorNMqKOVb5+IeOcpF9jj/MQVbqEaFFDkZilIFZX0mlG9Ux3DUtmtho1ipP068w/s6w==
X-Received: by 10.28.191.139 with SMTP id o11mr1026268wmi.97.1485929936500;
	Tue, 31 Jan 2017 22:18:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.130.137 with HTTP; Tue, 31 Jan 2017 22:18:55 -0800 (PST)
In-Reply-To: <7f1f57c3-7034-b122-a87e-f0b3804d6e9a@gmail.com>
References: <CAA2DH4uR5R_jwLEwXdzhUC=C4yFEqmRe8c5nqCCFEc_XsW9ENQ@mail.gmail.com>
	<7f1f57c3-7034-b122-a87e-f0b3804d6e9a@gmail.com>
From: Prasant J <pj0585@gmail.com>
Date: Wed, 1 Feb 2017 11:48:55 +0530
Message-ID: <CAA2DH4tkbKV0cdpRiGSXPvGVY6JuaCH51MQyiVuh3X8tdOPX=Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Is it possible NOT to split kernel modules in multiple packages
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
X-List-Received-Date: Wed, 01 Feb 2017 06:19:01 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jan 27, 2017 at 7:18 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On 1/25/17 11:29 PM, Prasant J wrote:
>> Hi,
>>
>> I'm using Morty release to create my custom BSP package for cortex-a5
>> based processor.
>>
>> I'm using my own custom kernel recipe that inherits kernel.bbclass
>> (which inherits kernel-module-split.bbclass)
>>
>>
>> All the modules are split in their own rpm packages. Is it possible
>> that  only one RPM package is created for all kernel modules and there
>> is no split?
>>
>
> I guess you want to include all the modules into your image. In that
> case you can add
>
> MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
>
> in your machine config.
>


@ Khem: Thanks for response!

Yes, I want to include all modules. ALSO (more importantly) I want
only one RPM for all modules. Instead of 50 or more rpms I would like
to have only 1 rpm which has all the kernel modules. Is it possible?

The reason I want this: I have my own GUI for system package
management for our end-users. I want to make it simple for them to
install newer modules by installing only 1 rpm.

Regards, Pj

