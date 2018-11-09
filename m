Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3125E00BD0; Fri,  9 Nov 2018 04:11:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74DEFE00720
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 04:11:39 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id k141-v6so2855732itk.3
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 04:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=O0FyUFpxDnk7fnnfkWQzSCGc6tJP/G1ZPXLlsPpkA0k=;
	b=N9nlG+WKkQRPY1UVOYVUuaLUOqMajGq5POPtdSON9vlf7uhk3mRTBsOAnNpytJPBo9
	ZNkK2FA4uIWN8Fp++Sji5lQKD1UObsMfStylsueVEXpCJYpVoL/m8bKON5ERipBKxyZ7
	0zrhmaw7DgfcnVX3naFh0+Lj0tLztLaUpYUme/33SFb1eHT6eItzPP3tEqgq6taWPUXk
	wYEU6A1yswJatIfv2ZR3bQjfwVucRvDuLIuBudR3owbnsTJQPbdlLr3NWBItxtK2w3LD
	h4CzYTfKYQ4lYcDcg7DyLQz5cPeBz/W5RDe/4LT7hCF1AuMBxtavW5FVHCZmHuQIor/1
	y1FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=O0FyUFpxDnk7fnnfkWQzSCGc6tJP/G1ZPXLlsPpkA0k=;
	b=XPE0xTB0IkPP0a3HtfEr0RN7ANmQeF1Mopi6KiN9wt9UvSUW4d9S61oxiTtElgInkN
	kNocncINk9GZGcMsMrr492NE0MY8Z/nxhy7aZeqNlzN/BLwGrhC61vJ3h9ZtAC+59Y9M
	rlZBfENn+nyI0C0BAdv8PC3w3iTodRLjasj8LpUKk/JxKDcLdnLb2xymP00UsDjBVS7W
	z08E7grwsvTPi+eV1ff1dLmGGiXcpHjhtdETCSJQtAfeL5t0R5ob2Gn5F9t/ek1cfxPh
	MnyPRLaZUtgNkdgedmk0JWmFKZFMA9kjyEg/8t4UEcGqzM4JILaGuE1Eq7hi3AX7j+RG
	V0Iw==
X-Gm-Message-State: AGRZ1gJkc2IuDY0z/TovCK8qk60aiAAv2U9dKXNy2+kSCsPJVFDbMAB/
	MJzN//0Vg5UiYXChg4fyoHxPtUrjNZQ1fSmd4z04SUCN
X-Google-Smtp-Source: AJdET5eCd4KD06ECCjMwAsvTs1flJFu9phYScghJVf6aP779lNmcJIWfIs89tEMk40xdZCXC3As6zGangl6X5tGXX1Y=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr2087101ite.130.1541765498968; 
	Fri, 09 Nov 2018 04:11:38 -0800 (PST)
MIME-Version: 1.0
References: <1fdcb125-8659-2d44-fad4-cf833d655b9d@faresoftware.it>
In-Reply-To: <1fdcb125-8659-2d44-fad4-cf833d655b9d@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Nov 2018 12:11:27 +0000
Message-ID: <CAJTo0Lb87Shg-NUubjw2KnVf6D77SOi7Fet7+BTwMb7fgZeYkQ@mail.gmail.com>
To: mauro@faresoftware.it
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Autoincing version every rebuild
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
X-List-Received-Date: Fri, 09 Nov 2018 12:11:40 -0000
Content-Type: text/plain; charset="UTF-8"

Use the PR service, that's exactly what this is for.

Ross
On Fri, 9 Nov 2018 at 10:51, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I'd like increment version number (PV) o release number (PR) every time
> I built a recipe.
>
> I use this strategy in debug mode to give a reference to every debug
> session.
>
>
> In production it PV and PR value for the recipe will be fixed.
>
>
> Any idea?
>
>
> I'm working with fsl 4.1.15-2.0.1
>
>
> Best regards,
>
>   Mauro
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

