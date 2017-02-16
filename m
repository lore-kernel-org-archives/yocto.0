Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 989F3E00A0A; Wed, 15 Feb 2017 18:34:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.196 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DFB8E009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:34:56 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id k3so362013uak.3
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Opi2HlDeFn0BDTgthPnIkR2s8g9aVCVVPScS9OlqbqU=;
	b=o9nZTxgELGRlJdzkS5LKDl5vWVGKktdhSSjnNAsbTIj7rS21J81Y5fekXTGCRIEPgQ
	VwjgA7ZzS07mrsgMcPWajPA+5UgBQwzfhOEmf5uvc+kbNiiw/at4HdhB6bnoTCPpd2Hi
	5mTSHCe2Q/TRTbPy2opfEB0hQ3yPtBxB3MEaUx8NcH4eqcTAgzH3dGN48TmnlOKnwTVz
	S2Gnhj7888xpoGeGAsHaDRS3fpMi2n7yOBvFKeQovukFVFjXUlC+EUq9yHu2LN8Ahbs0
	vUWe+IPWVthbIye9T35kDRytOzSf7ha7aBeIXboNPM1SFdS0fzAlx3mPD24t6fyaHmKM
	FZFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Opi2HlDeFn0BDTgthPnIkR2s8g9aVCVVPScS9OlqbqU=;
	b=P+dXQa5sFptXkgcvNa2yjCXn/k8bwW9bxPfYKKLMiA+jAxTXh/z8jQJeAhFxR6UoZ/
	6Kyoqrpm2M3mAYdq6qRzRCMIQHYaI+zd/WN76cpcuDcnwAxTIhGx5b/NgO0TaMDl+IWf
	kkcUNRUqcDmf9MXxgaxpiid14EV+uaGtYEzepR7wzs/ynv+5fNg7Z/P8Cowb7HcREqBt
	/mISxGE/42P7BFw6/U4J+fXiZnRAkAli0SpEtHR9FeT2kO+EtveFFdkgQcTSylcnUd1v
	UCT+ptXYMemc57Hh5cGpyVo+r6gQrJdAcK5NODRnXKzrMgdbMW6Og/k+UYhxbZ9fQXLB
	guIQ==
X-Gm-Message-State: AMke39lA6nzrXMVqFffMwMe+qJp+GMGsICGI6T6QIGu/TCpkwzWFZ4QGjJTT6/sca3O8Q+fcelv101AvOo6JbQ==
X-Received: by 10.176.6.130 with SMTP id g2mr16604635uag.91.1487212496078;
	Wed, 15 Feb 2017 18:34:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.222 with HTTP; Wed, 15 Feb 2017 18:34:25 -0800 (PST)
In-Reply-To: <20170216020918.GE31588@carbonA>
References: <20170212052655.12342-1-raj.khem@gmail.com>
	<20170212052655.12342-3-raj.khem@gmail.com>
	<20170216020918.GE31588@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Feb 2017 18:34:25 -0800
Message-ID: <CAMKF1srjMUswSDM8eUUd1jLT_knfKhRjtde88pwt7H22X+z6ZQ@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 03/11] raspberrypi3-64.conf: Use 4.9 as default kernel
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
X-List-Received-Date: Thu, 16 Feb 2017 02:34:58 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 15, 2017 at 6:09 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sat, Feb 11, 2017 at 09:26:47PM -0800, Khem Raj wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  conf/machine/raspberrypi3-64.conf | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
>> index 5598e50..cdcd726 100644
>> --- a/conf/machine/raspberrypi3-64.conf
>> +++ b/conf/machine/raspberrypi3-64.conf
>> @@ -13,3 +13,5 @@ SERIAL_CONSOLE = "115200 ttyS0"
>>  VC4_CMA_SIZE ?= "cma-256"
>>
>>  UBOOT_MACHINE = "rpi_3_config"
>> +
>> +PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
>
> This doesn't really work as rpi-default-versions.inc already sets the
> version and this will not overwrite. Maybe have this before including
> rpi-base.inc?

actually I realized that I set the PREFERRED_VERSION_linux-raspberrypi
in my local.conf and that overrides all. I will send a followup for
this.

>
>> --
>> 2.11.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

