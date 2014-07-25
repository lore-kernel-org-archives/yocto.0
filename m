Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07F62E00736; Thu, 24 Jul 2014 17:51:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 687B8E006C4
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 17:51:35 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so155326igc.6
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 17:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NFpET7qujTK9SBmSSAFyK1s8xxGCkorVR7npvElAH6c=;
	b=WFNMHDbPhsf6HCro5YF+eLLRXNOr9+SM1JBAoax4mUqkwQjgRgUw8lNmzUm3HloJwV
	TJjlTorsA3T8rn4r63mcqirQpp+6ABvyr0OoeV+A24T6XFNqpdNaFhqsD2QS4HtLQzWu
	4HpxlRx2zpPc73tcTdgVF7XSrbWGRttMfOTLUvQsjXvPb8IHDa25Aym5pTVscgmGg1Tq
	UfL5TZ4UkzNuDLVLZZdFe3wvJGNymZPFaPSMTd2sp1sua6z71ltxYTnR/PlNwNx9RfaM
	CoVUeHnKV/Xgz1mvD1JHP+fqFiQXxLnFjZmVO3iLyS++EOl1jhT573xHQKzRhioZcvHU
	W/kg==
X-Received: by 10.42.23.16 with SMTP id q16mr17684771icb.0.1406249495187; Thu,
	24 Jul 2014 17:51:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Thu, 24 Jul 2014 17:51:05 -0700 (PDT)
In-Reply-To: <53D1A854.1080002@gmail.com>
References: <46282394-4892-46D1-B523-197B44CAEF9B@keylevel.com>
	<53D1A854.1080002@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Jul 2014 17:51:05 -0700
Message-ID: <CAMKF1srrntvZoe6b_mUq2i0tC=GGSFX3GV3UhQ96V9MAv5aF7A@mail.gmail.com>
To: Mark Evans <mark.a.evans@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenSSL 1.0.0m
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
X-List-Received-Date: Fri, 25 Jul 2014 00:51:41 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 24, 2014 at 5:44 PM, Mark Evans <mark.a.evans@gmail.com> wrote:
> question on the openssl recipes and openssl versions... Point me to the
> correct distro if this is the incorrect spot to ask this...
>
> We're currently on Danny, 1.3.2. In there, the openssl version is 1.0.0j.
> The openssl project is currently promoting  1.0.1h. Due to the multiple CVEs
> being released, we're wanting to move to the latest. But, looking at the
> poky releases, it seems that, after "Danny", Poky reverted back to 1.0.0e
> and added patches as CVEs are released. For example, here's the patches in
> "Daisy" (1.6.1):
>
> openssl-1.0.1e-cve-2014-0195.patch
> openssl-1.0.1e-cve-2014-0198.patch
> openssl-1.0.1e-cve-2014-0221.patch
> openssl-1.0.1e-cve-2014-0224.patch
> openssl-1.0.1e-cve-2014-3470.patch
> openssl-CVE-2010-5298.patch
>
> Am I reading that correct? If I move to the recipes there, will that close
> current issues on openssl? Or, is there a recipe available to use 1.0.1h?
>

oe-core/master is having 1.0.1h, you can backport that into your own
layer and tool your project
to use it.


> Thanks for any info.
> Mark Evans
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

