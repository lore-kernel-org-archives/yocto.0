Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4254AE00B1A; Thu, 12 Apr 2018 03:25:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DBE0E00AAF
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 03:25:42 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id u141-v6so4653013oif.1
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2018 03:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HOJGS267AtYMXTQue/XmonFjMp3oKiQ4EOe4vfJ8u3Y=;
	b=V2HYiGXxKISiX4acaQEXooZPD2KtVB5UHWDJdjXYGDnR8FBxdBxd3++8TjH3nN1k0G
	IpvWmNK7ZFhhpv9rd8w4q6wq2hRCdtT6Wc8RfQgjUncQl90TD8k7ujvi53kBOO5Bi2AP
	/K+X6jesgj+1jBG/9wHfHSrL7bjgXb2vtjUv81jIlQbN0krXSKY3xodCbCiMNxpR66Ek
	uwc8OnVOhUI1LevUmUW9feSnThgxKtXcEVIKRS3H83FqWC+Bc+oMnfJag/jM1hC9E+X8
	NhvB9DZ1pMPFLA8otSX4XXDvSDMkMPaVyaBX+pPYQEBBARQCyxpN0xHsqpFMIze3bbi0
	jVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HOJGS267AtYMXTQue/XmonFjMp3oKiQ4EOe4vfJ8u3Y=;
	b=Ifw9KNbL0lSuqsYnqYggjTVglZHqOZlw+6bXdfzvXCAsxJ4e9GRIZRxnMUmpA91JGg
	8Ogj/Qa8AWRB14dHPl+rfgSMoKl5CCx9o5Rrv38t6/0RPAZwXIj0VaSxg/aBggRONoQW
	257YtDaYGTCoEcyAOVSpmbToGeZIJZAtcO7vWncMBLmAAYIpazSGHxS2Wz78n2GDJqaZ
	yaYmXpWpMFWjlN99Xd+n+OneS3TXeTzK0dsBhEk7I1r8syZqLG5zhPFUp0Zf6jCa+XhR
	dqjQcop1IHyMPvylbsKf0HiJS6aKDnXykvbBKIKHYNsEjydx90+iu+NcU5FKGjGV+i7n
	xoww==
X-Gm-Message-State: ALQs6tDLF8YItpOBMHMfC43lhgByxntMh75REehczdIhCrB+dqlLcww9
	UBHpzbHehYZwVvKhUfqwIHCpCgAiwyE4NpS6dqgmdA==
X-Google-Smtp-Source: AIpwx48vL9jAxqHmAbQA1bqqEMrf8CVMqBOPlXIuerzeAGrrkrAsvrtFlu2jNmfnGPWVVTBTeYFeyU7IeyDL1nFvmZA=
X-Received: by 2002:aca:e40b:: with SMTP id
	b11-v6mr5635958oih.70.1523528742151; 
	Thu, 12 Apr 2018 03:25:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Thu, 12 Apr 2018 03:25:21 -0700 (PDT)
In-Reply-To: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Apr 2018 11:25:21 +0100
Message-ID: <CAJTo0LZ=8n9CC=F0zG_fY9QEnNCeWQhkjDXw081Z8ZojqRD-xw@mail.gmail.com>
To: Richard Collins <richard.collins@guidedknowledge.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Thu, 12 Apr 2018 10:25:44 -0000
Content-Type: text/plain; charset="UTF-8"

If your project also includes meta-poky then poky.conf will contain a
DISTRO_VERSION assignment.  However,
https://wiki.yoctoproject.org/wiki/Releases indicates that bitbake
1.32 was part of 2.2/morty.

Ross

On 12 April 2018 at 10:44, Richard Collins
<richard.collins@guidedknowledge.com> wrote:
> I've inherited a Yocto project that I know to be an old version. So one of
> my tasks is to update to the latest version. Before I do this I would like
> to know what version I have. The only information I can find is the bitbake
> version, BB_VERSION        = "1.32.0".
>
> Many thanks,
> Richard.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

