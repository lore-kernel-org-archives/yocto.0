Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EC5CCCD184
	for <webhook@archiver.kernel.org>; Tue, 14 Oct 2025 07:24:17 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.9477.1760426649181703532
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Oct 2025 00:24:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=VlJ0dzqn;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-371e4858f74so59236281fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 00:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760426647; x=1761031447; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+RDzGwkdsKdjLW7/2rVoE5ZGmpbSNcamAhfWHTTCKo=;
        b=VlJ0dzqnisB6qiaFVf/4rPM6TI+KUXKEIv0yCaQbnu3SYEOlMsIB5eb6+eNpDbwYBR
         Ue/n+HvSAn55mXV9luOH2KBFpHma3kDbq3DoaT2criYLdBeo5QpLKj80phP72/L+TFQv
         D5XnUCLougbHOnrd4Jzt5zIGJX75QFsJV3TtZ5F8z0UsCckZBTPKCuaq3Qo0IW29siM5
         79GgCd30PZPEa6UYaP0whsKcoClPqVppmYCBYWnUgYKs7gX08/ULf0fMiDEIzdp0r1BC
         pNswiSP8JWOayi2dZDYWxCVFmGYqExvHPKjftKmfoMAa4LGFDORJr3V0e3FSX/ATb83m
         aA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760426647; x=1761031447;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3+RDzGwkdsKdjLW7/2rVoE5ZGmpbSNcamAhfWHTTCKo=;
        b=u6VOXsAAsdvZ/YvWspfT0ODm3F059gVG2CAdQidBeWUxG9KD6zJ8pjZDLQJ/FCDu6k
         PKpVv811HQR4iHsCH+ibFZrn5wormj+ERwUhOlv1ACIiJtm+sJMoD5wroFuz5kYDXS1Q
         1r3vm+fwlp0PtZsSsfp85i709JSi8OgK2E14gX+K+mUvhYTaiGBUexic9cODibctf2Z4
         6xjhGosvHl7Ph/Vs2Z2/Fy/rMDFvxO6HNhrxJTwKFb1PvLh2LGkN7AuiqyE9FSiXSrhE
         Z66k1xrhFOeIxwx/dG7ZB8+UQ7SqkXZYGtt9P4sEUa9tYRX1j8JDQXG2QJdDfaglHag0
         xC2A==
X-Gm-Message-State: AOJu0Yy9HNeaTeWpRCzCz9HzJQsVydfcTTYTPnTTBWvpicUl/0Y4uEch
	KMjmlxChdPkQoDFt8X3ZmvsQ9eO7ieiazCD0UlTtr0+VHJob48QLQyZbfIrG8Ic9EjkF+PJBSYW
	sxBlP/6I=
X-Gm-Gg: ASbGncsSJvDCmawbvlv5Cky09mJXnQxh+Jsnymn9yKSXBSXP8zviiXvvx9Wsjrs4+qT
	uYeapKfx/tgmjftccLuV/kBCbq7ZQoyOvXi8YLZJhqGFlo+cx1fnhuHxcDGaxoVb+uTMCbadxDG
	T1PAcNkHSqr8qtDh3emr+dECTy/YNwDAeSfF0UNUyLHVoIxZHGq6aBCbWfDrt6AsWP/Dv5jxxBq
	RJT58EMDUbTXFK9F4MPOhtltPX/AujM6/HyqQwplE2h4tcd7MsxoJ9I0S1dPxhm181YFQpbyDk2
	hQ8uxl2/qzD0n4LtiFzl9MQhEC1TKiQC2RpKhuEdU8mxU2+9ZZ7OCCqIipImkGhmaedCxDh9FnF
	ZUHMB+J2HOdmlVs7n2qC5cp+NyGqAZ5XU5gFA+pEQcUS3UXYYr0uO7SVvEEqsOEZzMG7frtu1td
	ZEf/tlEtR7PM3H3Q==
X-Google-Smtp-Source: AGHT+IFHQmlE+gzNBu2z79c0VxRITOBoUEMuTLs1dE9Di5K/uXLdfmcjsMuav5HDwnGa4Fa+WXYFkQ==
X-Received: by 2002:a2e:a781:0:b0:376:41f5:a6ca with SMTP id 38308e7fff4ca-37641f5d400mr27963401fa.0.1760426646860;
        Tue, 14 Oct 2025 00:24:06 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762ea3a002sm37404261fa.41.2025.10.14.00.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 00:24:06 -0700 (PDT)
Date: Tue, 14 Oct 2025 10:24:05 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, bmarty@kochag.ch
Subject: Re: [yocto] Secure Boot and LUKS-encrypted rootfs on Raspberry Pi CM4
Message-ID: <aO36lSRn0CJeZkUo@nuoska>
References: <AS8PR08MB100979905EC066383DD0FA283C7EAA@AS8PR08MB10097.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AS8PR08MB100979905EC066383DD0FA283C7EAA@AS8PR08MB10097.eurprd08.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Oct 2025 07:24:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65928

Hi,

On Mon, Oct 13, 2025 at 03:39:56PM +0000, Benjamin Marty via lists.yoctoproject.org wrote:
> Hello all
> 
> I have an A/B system running on a Raspberry Pi CM4 using the tryboot_a_b mode from the Raspberry Pi Firmware (via the https://github.com/agherzan/meta-raspberrypi layer).
> 
> I’m now exploring how to implement Secure Boot using the Raspberry Pi Firmware (without U-Boot) and have run into a few design challenges:
> - The files on the boot partition (cmdline.txt, config.txt, kernel8.img, initramfs etc.) need to be packed into a boot.img file using the Raspberry Pi script https://github.com/raspberrypi/usbboot/blob/master/tools/rpi-make-boot-image. I believe this could be integrated with a .bbclass file.
> - The resulting boot.img file then needs to be signed using https://github.com/raspberrypi/rpi-eeprom/blob/master/rpi-eeprom-digest, which could also be handled through a .bbclass file.
> - Both rootfs partitions (A/B) should be LUKS-encrypted, unlocked during boot via an initramfs. This seems like the biggest challenge, I'm not sure if this is even possible with WIC, especially because the key for the partition needs to be device-specific.
> 
> Has anyone worked on something similar, or have pointers on how to best approach this?

I would abstract away from LUKS a bit. What is usually needed is
data which is signed but shared across all devices and then data
and/or storage which unique and protected on each device seprately.
Thus somewhere on each device there is a device specific secret
which is used to create device specific keys and encrypted storage.

Once you have secure boot from HW to a Linux kernel and initramfs
on a device, I would split the common read-only mass storage, e.g.
rootfs, to a dm-verity partition which can be created by yocto
into a wic image. The dm-verity root hash can be bound into
e.g. UKI image with kernel, kernel command line and initrd which
are signed with secureboot keys which the firmware always verifies.
For non-UEFI firmware there must be ways to achieve the same.

Then the device specific protected storage can be created with a TPM.
For example systemd-repart in the initrd can be configured to create
a TPM backed encrypted storage with even variable size. Depending on
the TPM PCR policy this can 'measure' the boot and make sure that decrypting
the storage only works if boot binaries were correct, or the default
which AFAIK ties the encrypted storage to UEFI secureboot keys, which allows
changes and updates to the kernel, initrd, rootfs etc. If there is no
HW TPM device available, it may be an option to use OP-TEE and firmware
TPM (fTPM) TA, but that also depends on RPMB secure storage support
which needs to be available.

Sample systemd-repart config is here:
https://gitlab.com/Linaro/trustedsubstrate/meta-ledge-secure/-/blob/systemd_uki/meta-ledge-secure/recipes-core/systemd/systemd-repart-conf.bb?ref_type=heads#L21

Hope this helps.

Cheers,

-Mikko

