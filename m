Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A01C1E00D51; Wed,  8 Nov 2017 09:06:23 -0800 (PST)
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
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D42E00D62
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 09:06:22 -0800 (PST)
Received: by mail-pf0-f169.google.com with SMTP id p87so2163409pfj.3
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 09:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4+TttWBnUTf3UjrKr3bPAye+W6Qy7cd+8khWo35JD94=;
	b=HM2Pb+Xa2QJ8mzFgQgAotNbUeXx8pdyU7msk+KUS4T1B1ijDBCwWJLS2k+IOuAWrYz
	fseo12sMG6XpEYV7hmOX0xL1/wFTMOHgYBL9SmUVpgNpRmD8k8HbWhw0SJhICd8A3uKD
	gLTPeyD0UIwLHXp/YwZQ+ylXle0LzBaSOOL20RmpXgs9VhSoyEoeJBClAjUEmtMKWf1H
	XKkr5netceF//CB+ULps2XKg/Ghr6hT9X6vcSO+kOMXz/ZgdLqVrCr8hvHaWxeUGA3xL
	ZT7e6BiMWI5u35Rugk7/8/+XIYWWbmrQOp4Nc4ZPz80wVMC7VZCReV2s2GicnnuvZvL6
	n3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4+TttWBnUTf3UjrKr3bPAye+W6Qy7cd+8khWo35JD94=;
	b=mlM1lvlrXRS1EphItqEQM2kll/py2CXL1VP9kd1NmvVmlkEZboBlIMp3i4n4rXooQG
	/teBz05ywWi408LIK+7bZFqf5vb1Sn0XE5u09Sn/lwZAYvx6FxRoEvfbWOLFpUg1Uugq
	AG2UlRc1SficBgxN4HpRtLG4oKyojgBsNPyvW/eQhIFgBgjH/ryKEOg3P3HLvktZi9a/
	btrpXawvGbXBvwOX0QMe/WIjLt8XE9vLCx4Cbz+b6H7ISao9q0ey08bDBMW3HZ1LnkaN
	j+9mVYMNvtjnpIA8G2CYqsZJSttjfb/c9T7YW/x10Y9Gkmz03j0bVtbJ7cRM8iZ3/539
	d2fw==
X-Gm-Message-State: AJaThX7OoPukEhdCRwDzqYo0b7MFFogHikncjPlU3cmcGmuMIoM5JJjl
	Y+5kNDM32JJQnDBgv/4SK/7GGXBhKntuyzee3R0=
X-Google-Smtp-Source: ABhQp+RD1zO9TgYy2ZR/ixHMThm7Os2CeTYuOakrmbOg9FWKcxKpFcC/se34bLivkhdETBTogftpqp9pl9V++/9TM5k=
X-Received: by 10.99.183.67 with SMTP id w3mr1050358pgt.329.1510160782277;
	Wed, 08 Nov 2017 09:06:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Wed, 8 Nov 2017 09:05:51 -0800 (PST)
In-Reply-To: <CAJ2oMhK+0FO-scN_YeKEmTUPtT+3NNGr-HCmUDLyQ-j-VQ3F8A@mail.gmail.com>
References: <CAJ2oMhK+0FO-scN_YeKEmTUPtT+3NNGr-HCmUDLyQ-j-VQ3F8A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Nov 2017 09:05:51 -0800
Message-ID: <CAMKF1sqoaaFB0d6NLVijMPq4DjWgVm5Lc9v1D0i7WUoJDqRm=w@mail.gmail.com>
To: Ran Shalit <ranshalit@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: 32-bit sdk (/opt/poky) in 64 bit machine
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
X-List-Received-Date: Wed, 08 Nov 2017 17:06:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 8, 2017 at 6:23 AM, Ran Shalit <ranshalit@gmail.com> wrote:
> Hello,
>
> Is it possible to use 32-bit sdk (/opt/poky) in 64 bit machine ?
>

I dont think it will be straight forward, you might be able to get by
adding all multilib to your sdkhost and see if it works.

> Regards,
> Ran
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

