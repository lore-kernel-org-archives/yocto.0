Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39E06E00CC1; Fri, 15 Sep 2017 06:54:57 -0700 (PDT)
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
	*      [74.125.83.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C755AE00C31
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:54:56 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id u18so1560384pgo.0
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 06:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5ee4aSRpc7oS1ImXrZZAlGg4KEA8jZ3/nZlZMJkF8Fk=;
	b=q9SFrEHpOblQfXWVMCF1U8MNslKirxmFxz058u0487FkgMjIZG+h7sYuTUDc2AIH4j
	Zn+Nc+JPZOKn+t7rNsouMwQRJYgMLkW9SyunHvenfnPoSNF+GXoJ5zsJ8K2VI5KlDH/q
	1hzTUuGsAMQZESHGhUiq7kIQkxtncyoNcU2wSpD1m2d1PFQoUuIjcXvOIHz+WWcmH0Ps
	E425B2D8vgNGqEPzCjQYFVQ0KYSWBOc/K4iuJaxPMV2LGLSB9/yYthix+KkTETdDleXi
	bs3wu10zlqWiX8LM3+CP18soCyAeRpmKl+HJeCZHP1TIJQxXpGFSRpA5IhsOsqbDyx4K
	dS8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5ee4aSRpc7oS1ImXrZZAlGg4KEA8jZ3/nZlZMJkF8Fk=;
	b=T1Eoj1zHUPy8UUvxTUZ19Q5XCoTaHOs7GK2uTxL8FTBYiP/LjGpYKppTFp/EA9dMl3
	JlnX/sQ6iLa9YzwcEDdeogogJFrsuwyFld+bklzd9asqwMQiaw39cozAgxrOoXl8Rhur
	ao/t3v8XwwwjSjBhwLD44rAe0pfE1Qe+kNhZ+Y1xj7GTqE2NdQg94TVaURQllg6L4ZzW
	CpnOGuRe4m/jmKTSmdXkBAjQzohzzQN5O+l1gleqec8huQ2GFIjtsU0Ky7zlg9IsFgMh
	1fgNXTkeGP11pYpAh79R+TyMXavATqLnIhwdK9LHGgHqTuxlmcy2Dig4OA4iRLjYGcgf
	MzPA==
X-Gm-Message-State: AHPjjUg7N4HYiXIEGUOFh65JTc8pCAeauR1f820hM2y7FteiyK3HWr9t
	DBz6R00IzpXxcsL3Iw2FWw9fuSXkSDLbteLVVRU=
X-Google-Smtp-Source: AOwi7QAJn8ygr+0ftlPLxrHLesWqYOh7wuCOo2cqMJ6DtYetIWIMLRProeIkl3Emz9MagNVsy+2sMcgYL9cNQoM211A=
X-Received: by 10.99.51.15 with SMTP id z15mr11333464pgz.287.1505483695923;
	Fri, 15 Sep 2017 06:54:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Fri, 15 Sep 2017 06:54:25 -0700 (PDT)
In-Reply-To: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Sep 2017 06:54:25 -0700
Message-ID: <CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Fri, 15 Sep 2017 13:54:57 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> wrote:
> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into the following compiler error when
> compiling an application using the SDK:
>
> internal compiler error: Max. number of generated reload insns per insn is achieved (90)
>
> It turns out that a patch was submitted for g++ early last year for the above problem,

We need to backport the patch to 6.3.0 and regenerate SDK. If you can
point to patch that will be helpful.

 but apparently that
> patch is not in the 6.3.0 version within the SDK. When I try to specify a newer version,
> (by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake reports that only 5.4.0 or 6.3.0
> are available. Any suggestions on how to resolve this? (i.e. is there some way to use a newer g++ or to
> apply the patch?)
>
> Thanks,
> Bill
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

