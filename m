Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7878BE0053F; Tue, 28 Aug 2018 10:45:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0686E0043F
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 10:45:40 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id t5-v6so2696040qtn.3
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 10:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=4jJJFeAHHbfxE2T+Mo7VCH30ss08AWtW7DMsU1j9HrI=;
	b=fgBgtQtl8b9o2FYnekc+Trci6VKNHJyWRcK8uwrGPRtwLPvUGaj0UvNxVADLIHPEmg
	qTCSiY647DoSaIOQuX0JrEub+kq912oBhh4cZtzcLm2pK9zECv1K6gmysu4550OlRIs4
	SrnkTjFFOBHooC/EJGWuV/E7CQyGZ8fSKJtsjNBN0NW7xe579s4HeimHc/0b+gh+ispw
	4mGZJmXM+SWs9EPIb/9olDxAoPJPJZAOZq3XZAMsChArDbHiQUKilwhSiCnZN0HiHWOB
	UlAn/3SYgcdcU7kr7MDyp+ezFNv52A8zrTnWfgyhXFSaCemIHPTYQKo+y95nU4B68JIn
	Oj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=4jJJFeAHHbfxE2T+Mo7VCH30ss08AWtW7DMsU1j9HrI=;
	b=IyZGWjlcXrj6aC90MVAWI3ELr/+TLF3/UNb2Y33MOY9cEhyCi/KLfiWKm7P2hVzMgE
	gBLAsQ0K9Vgc5CR291qggFDC5tIyIJHeSgTB5KYXytty1dTTr8+ukd3khU09LsnzsSut
	9WpdUY/XrkNszQADV38/h1egRi54cCTUTp1bUsPacP3YwVgzn+wcDzZXBlC26/F43zFl
	B0VJgP9a9bNs4iTUc9K8Yl+nEYenp5XU/1t7tBtEcmExWGZgK4RdFX8MjBtgig0bcEyK
	lexzqxerd303hNoFamU8KPtPLonZ9YeN9/rZMPW6I4RIdMPVfGBPWNhmCeJtkaDLLI+t
	zB6Q==
X-Gm-Message-State: APzg51Cr5NSOb+V35MYkD4vUi6N/PKX7wbYnobBYLnJDuOH5CNlMsaiw
	8TkTKpceRlFtdeCjpQ+AAh9vvBMXK+1hRvytA2g=
X-Google-Smtp-Source: ANB0VdadkqG9CAv/T/pRfs0T/OM6SNIaao1qNZIcR0RkoKtrzeiWGTG+zjlGFMZmnOx4U5ulXIVjerpF45AXwUWO4dA=
X-Received: by 2002:ac8:4304:: with SMTP id
	z4-v6mr2771737qtm.295.1535478339896; 
	Tue, 28 Aug 2018 10:45:39 -0700 (PDT)
MIME-Version: 1.0
References: <4ff2f2e4.11869.165809d8294.Coremail.lbxhust@163.com>
In-Reply-To: <4ff2f2e4.11869.165809d8294.Coremail.lbxhust@163.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Aug 2018 10:45:13 -0700
Message-ID: <CAMKF1sp-4jyVUFcTPYKv-s1naYKsga7S0287_Wrr0GSMDH6vvA@mail.gmail.com>
To: lbxhust@163.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Does yocto support android build tools?
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
X-List-Received-Date: Tue, 28 Aug 2018 17:45:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 28, 2018 at 5:59 AM benxi <lbxhust@163.com> wrote:
>
> Hello Everyone,
>     I'm trying to introduce an android package to my image. As I know, android uses its own build development kit, and uses Android.mk and Android.bp rather than traditional makefiles.
>     I'm curious about if yocto supports such mechanism. Do I have to replace Android.mk and Android.bp with Makefiles?
>
>     The following link says that yocto may be compatible with android packages. I've googled a lot but I didn't get any tip.
>     https://stackoverflow.com/questions/40759597/what-is-android-compat-build-artifacts-of-poky-in-yocto
>
>     So, before rewriting all the makefiles, I would rather ask: is there any better way to solve the problem?

Yocto build system delegates the build work to component's own build
system therefore it should be inline to build android packages, may be
a bbclass to abstract common android build functions and then writing
recipes would become easier. It might be one time work but worth if
there are many packages that need to be ported.
you have to also keep in mind the runtime differences between android
and general Linux systems.

