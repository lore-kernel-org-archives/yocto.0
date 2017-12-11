Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1A70E00D6B; Mon, 11 Dec 2017 03:17:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F077E00D32
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:17:05 -0800 (PST)
Received: by mail-wr0-f194.google.com with SMTP id l22so17132364wrc.11
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=0UByHYPYS/pRBX1BdSdvMl3MZA6Rr1oqUV1V66Sq8BY=;
	b=jvmzMO67hQwVSn4NNRi5FoEgOwyZivnGkPIsApX3hHsC88VAs1u3MidbLJLLRGFoEj
	o9PZJ4QWseHeL72kxh7fdIIOq0N2fC+rNh699flYELS2JZr5/k1jVG9FJSvRF1CKrkCi
	8eSiHUO7a5pRBg6S5hYX/SOm69o2AMVpXG8h8cWHRK2rKavrFwyASmUw2VemhppJlm0u
	IT4T3n08MFaMqwbWDitlefDi3rcsut2Jdenu0ObD1GdGzvrA/NrUpnz9NmcqQvPwMt2G
	3q5Lu+QZpnG2tZM7JzxMbJ4Jiac1yvMVlvEuZg1MmtRWtsHg3CwQajiqaYGY5uxxjNcc
	dupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=0UByHYPYS/pRBX1BdSdvMl3MZA6Rr1oqUV1V66Sq8BY=;
	b=RFPMDyw8vxc8BnDHPU4WutbtkTRIsHN2Tp3ZG7PQfkR3Q7S3wURDytexjvsMSj/QSj
	l7CaEnNfbtVXXrQDzoSTfA489ep3mBrrhRLFlX+s6Ypnb2E+twmvJ41DLXkI1ldYyOxs
	EgISB0cmJmP1TuxCJkZ2U3hU6rgfHtSiEqLGygtpDmzAAWd68ZHFj/uwv5oFXwN9IakL
	bUIoX0qn9Cv+taE5XG6R1n8LXJyNb7hPlMN0xkZJ54vwomdym1A9H1cy9pqB0R6Ek48O
	vzNN7kPp4jpGvhJ7N32EYNMFeM4Z1S5xnWmY33dvaQCAjcNMGDJlWuPZ+Kb2bR6Z3MJa
	bZaQ==
X-Gm-Message-State: AKGB3mIz3LlB0IsY/r7YuFmWk4m+kyR4bLF8kPtXqjnHr7W/cS1Bt1lk
	10NpS4d62MI47PcdkAqg7UGyC6RRW5XPnWkQe3jtKA==
X-Google-Smtp-Source: ACJfBovHxXXH7WyByAtrmKgN7fqUPrFKrD2jhGIdTaD1IT+wfFdgwSRoVcN2Xok86o5UNTMgkO143a0jPoSZdGAYP+w=
X-Received: by 10.223.158.147 with SMTP id a19mr2025wrf.179.1512991025144;
	Mon, 11 Dec 2017 03:17:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 03:17:04 -0800 (PST)
In-Reply-To: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 11:17:04 +0000
Message-ID: <CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Mon, 11 Dec 2017 11:17:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 10, 2017 at 5:14 PM, Daniel. <danielhilst@gmail.com> wrote:
> Hi everybody,
>
> I'm building a vanilla image for MACHINE=3Draspberrypi3-64. I'm doing the
> build for the first time and faced an error at
> linux-raspberrypi:do_kernel_configme. I found that .kernel-meta/configs
> folder was missing, so I fired a devshell and created it. After that
> everything works as expected and linux-raspberrypi build fines.
>
> The solution I got is palliative, what would be the real solution and wha=
t
> is this .kernel-meta folder? I had never seem this folder before.

I have seen this issue occasionally when the do_kernel_configme task
is re-executed. A "bitbake virtual/kernel -c clean" has always
resolved this for me, allowing the next build to succeed. It doesn't
occur on my autobuild systems though so I figure it's an edge case I'm
hitting when building locally as I'm hacking around on recipes.

I've never seen this on the first build of the kernel though.

Which version of Yocto are you using? Could you send us the build
configuration summary and the full error messages printed by bitbake?

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

