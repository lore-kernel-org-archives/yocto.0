Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3ECFE00AB0; Wed, 27 Feb 2019 16:11:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B4C8E0091D
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 16:11:55 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id z131so12141843itf.5
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 16:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=c/Kwa1ZzVnoKNWBdRo5aoLbzuoZMDmJ8KmvaK4Kjzi0=;
	b=C6lxDV2f2aNC88bw16i5XbU6LlR/FETKKyr8H20ITjyTJTZ3yJjAg9p0iw/Rn15th6
	jac47CSpslTujGqlZr/bbTySevxBHZwsjo/4iaT/KJqfsSezk6I/PoEHE8A6mG+UbbSk
	X9mTpmsLPavYIgS6UDduZ/mwJSnWXzfnubdK+TipjsIEb9Hmuc1jclut5PmYS8e9hATV
	/tK+R6x6FD7fBIkj0jlBU5YuAXKuS8dVgieeQci27FIQDEQr5IoBTi1h7l7tjuWii+AM
	gcEXrIGisq0tIOsvZI1o6y1NUESAYMbZL3nkY36LfAdu5I4N0dWDWBMPjlCCd2S+XvLm
	yLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=c/Kwa1ZzVnoKNWBdRo5aoLbzuoZMDmJ8KmvaK4Kjzi0=;
	b=r8l0x/BYRaYlB8juCbNBDKyZ7xlxsyaqyqvEijcZ481WIdVm6Ng+UhOReUIEX5ywRu
	kcQ7JKPQaiZkKBiqS0vxAzvJEjT82uz8Jm0hI1qU+USPXx1lVMyM2TpMkqO9Rf/FMrTM
	hDGP7qXlJmTo8/47nJd9nCAB8yAMycD25Tqqv7L6cu+pP2gnwrylN1ANEqHq7Ufaw7F5
	aXuD47rsA95A6VzIax3EQc9VVkC8WNKM6/tLMLj+fuZdpAcFXSqvrKiFSAPRIPtStVrg
	7E0WgGawp7V9PXQWX+NWLmQffoY0cVbgaDwKohOFs62nj1iKIVIoj7/1wUxraC7PXrgZ
	9Uqg==
X-Gm-Message-State: AHQUAubTBfv/jkpR0zh9URXrQIJyTd5D7T8uKGWr4TtOOZkzqVT99SFB
	vT5FkrDf2lK+fEBAD+lqV02Q6YW2cd5iXaZQSIysq03m
X-Google-Smtp-Source: AHgI3IZFxA3o+ezL07FxDWG7v2ib8HCqppISvo+ke029E6OBZMokLO3Vc5JSm5VUX1aILOxjp8ihbmYsxKgGpJwWzVE=
X-Received: by 2002:a02:cd11:: with SMTP id g17mr3106690jaq.79.1551312715651; 
	Wed, 27 Feb 2019 16:11:55 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<93dcfef4-e49f-a683-0f5b-3acdb9dbb663@innodelec.ch>
	<20190227200902.GG12046@bill-the-cat>
	<20190227214037.GA11051@localhost>
	<8a83e39d-9f90-19d3-f310-41c5cebe840a@innodelec.ch>
	<CAJTo0LYbuovnV4YqVQ0vM4BTfdLTZVz4QiQvvNZxJBR7a2dvgg@mail.gmail.com>
	<20190227235448.GJ12046@bill-the-cat>
	<CAJTo0LbvYvSrcOegU+iCj6Q2yHwyNefm4gW8k8MzGQntJQGNqw@mail.gmail.com>
	<9de08726-74a5-2b43-3941-15d22316068c@innodelec.ch>
In-Reply-To: <9de08726-74a5-2b43-3941-15d22316068c@innodelec.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Feb 2019 00:11:44 +0000
Message-ID: <CAJTo0LYP=1CDj16y6AUC-wPwrwmn++ERxT3=tKNn3Voeo-pKzQ@mail.gmail.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Thu, 28 Feb 2019 00:11:56 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Feb 2019 at 00:10, Jean-Christian de Rivaz
<jean-christian.derivaz@innodelec.ch> wrote:
> My image recipe look actually like below and require several
> meta-openembedded/meta-*. This is not a clean example. The
> packagegroup-core-full-cmdline already provides a chunk of commands but
> more are required to look like a modern distribution.
>
> LICENSE = "MIT"
>
> inherit core-image distro_features_check
>
> MACHINE_FEATURES += "acpi"
> MACHINE_FEATURES += "apm"
> MACHINE_FEATURES += "keyboard"
> MACHINE_FEATURES += "pcbios"
> MACHINE_FEATURES += "pci"
> MACHINE_FEATURES += "rtc"
> MACHINE_FEATURES += "screen"
> MACHINE_FEATURES += "serial"
> MACHINE_FEATURES += "wifi"

None of those will have an impact.

> REQUIRED_DISTRO_FEATURES = "x11"
> DISTRO_FEATURES += "keyboard"
> DISTRO_FEATURES += "ldconfig"

Neither will those.

Ross

