Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95D85E00A1C; Thu, 29 Mar 2018 13:23:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f172.google.com (mail-yw0-f172.google.com
	[209.85.161.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EFFCE00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:23:09 -0700 (PDT)
Received: by mail-yw0-f172.google.com with SMTP id v68so2351894ywg.13
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+rS9QNyVGvmwdB48KuYVU63z4s5n5+QApPYZyILALQU=;
	b=Lk5LNYYHnLIXafUhEb4qHlCsY5kbSTzHJhHSIUApb2/Wc2D9Tv2xr2wYQCFWndAoQF
	qZqeLG8FJhUzzDmbO5I28VWZ5+ojxEC1PBInhxri5C9wq+XIEWUdMy4Y+QgH5JM5fgYh
	f+7/0467olRBvylgWRV5txAn/Hu5ObsY8DVMAuBWwaz1lFJLB03IaZWyyMnqqfotTOvu
	lWlKSI0ywsEsmo49qobkUh951t6GN5k/58nbO0l/xoVWx3jEhksS6ayDiSmFy/IA3PZs
	RfC6KNPWQvVLNSY/RTicO5ZxHxffWouI7eEy7EhlbK36aMMpO7te0+MP4friXPzPDJ5F
	AjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+rS9QNyVGvmwdB48KuYVU63z4s5n5+QApPYZyILALQU=;
	b=iYOzPiVy3O8szaIWcIyQqPGOvzhkrZ3QaJ8kTSLlRzSe+x6iQ+u0KC6Wote45xCD0R
	j2wG+ROxiOn9ZZ2e0zAvimJs9rmyCvZ7X9L/egA6DHBHyaq+yF44fWjLqgDAdbxhSBKG
	Ad8IczNly6WPhjDm5E2SAiwGRqw6eTo/lx3co1TrVVg8nXfMmTWIx1nR4EfHD0s7v+n7
	5w+XzAr604JERbwoe4IbcATE52g2/Iny1W/y9u+QGGHKbBli0bKz34lm4Lksjf/66SBx
	aXY3ZsQC+gDerojHKioe1NMmXvKA4dL2Hus3htQgnISk4QQEPfC0T44U7h077NhZu8nm
	M+Ng==
X-Gm-Message-State: AElRT7FJBKbusO7NhnJ6O6e9SaEvwRqCCxis1Zg7Dh6oAQf9DfRn1iGt
	4rP2VW5nlHtmgrCiKSxmCZlM9DG4Mkj8HiKtGL8=
X-Google-Smtp-Source: AIpwx4+pDSi4M9V/Oo85m7mgZ1IAz6xoAAgN06O7zFOQDqizXE44Xqtdd2OW2D1swM7RDcItjI0tM1EtODfI4h4laTk=
X-Received: by 10.129.108.137 with SMTP id h131mr5740296ywc.180.1522354988523; 
	Thu, 29 Mar 2018 13:23:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 13:23:07
	-0700 (PDT)
In-Reply-To: <CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 22:23:07 +0200
Message-ID: <CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 20:23:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 29, 2018 at 9:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
> 64bit with mesa yes, for 32bit I usually test on wayland+Westeros+WPE
>
> 2018-03-29 12:26 GMT-07:00 Trevor Woerner <twoerner@gmail.com>:
>> 64bit RPi or 32?
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
Have 32Bit still

