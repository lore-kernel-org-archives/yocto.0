Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BA7AE00D6B; Tue,  2 Jul 2019 00:40:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F463E003C1
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 00:40:39 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id u13so34905440iop.0
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 00:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oCRju/jqcLUBC7LUfglsg1M043kd+fHZxVS2MnVnr14=;
	b=Q3Nr6sGOR19QJd8WcoMhK8V8Bc6ny/nFcaEFzBpUiHZnE3ogvWkQeNE+feMW82fD6L
	mkoz5rseXFKFln6RIo67K+7945/xYe76t/WNyXFaKmK86dyhfSnjq8lt9zuexSkC+mNx
	YvDfZ9AY8/8FdL6s4IRjruKPPSzVBlDmzPkGZvOKSMuYQbfWHMUl2NThWJpuc17RZHAO
	FjAVzxXI0Dik0laslAx0iPqUbrnCf9O2y947otuBBZyojhCOGYeWdnLRYtPH+XjrRsmH
	XhZNnxsUNR8+RcVmAbSgiB0sAj0qQwCKcNxKwH/lt0daieQQd90+9xBk7MiEZpN1Rp/T
	pN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oCRju/jqcLUBC7LUfglsg1M043kd+fHZxVS2MnVnr14=;
	b=HCkVwIqr+8P5HhakT9UYJPUWJIOmpv93G/caY9b02a3IW1+tVYxa8YX8rLTiIbBp77
	1brPYH9nAn6Izn7kKd6Nf39FYML2KyRlP66PFLQYaDeucrkBuzMKp4gsuHy16ENX0uY2
	YzcEbPXKic9/DuDsdullgXCR4BbtLOVkPtZspmz4zcnIdzLZNNg4TLhwHsbCVnktOZbf
	rz8SnVI9CW4bJkTAcrqa7xmPKVUX32t9DV7UM2ifV4ZKrk2irbd5/tKVYY4YTlLf85OU
	EFTwpnbwxLUDd2QWlU+I1vZCUbnZHYTLeg2AeQnNDxunzaD799rDtvxmOtjpZ8qMexnu
	qFsw==
X-Gm-Message-State: APjAAAWfbXkCPQ+u0o7IXaVKhb2NY8gaswaBO/5RArQhZsZcxv4+OEVX
	4Cl4PEM/GaxaFoDJA7L6SVuSRDAUYgVwPtfo+gE=
X-Google-Smtp-Source: APXvYqyUeuTRCV4bbLIN7CkqcmQcsqUClfzdzw1WzOQxjFzzEg6nDSbSElacp+IuYrlKoRxA4I5b7/5Yx/6BDk7Fhz4=
X-Received: by 2002:a5d:9d97:: with SMTP id 23mr32115992ion.204.1562053239505; 
	Tue, 02 Jul 2019 00:40:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:8a3d:0:0:0:0:0 with HTTP;
	Tue, 2 Jul 2019 00:40:38 -0700 (PDT)
In-Reply-To: <CAAx3WaCNkhNS38tsYaycsiNzeJYN_YjXoGak4Yd1QxSUWQmYPA@mail.gmail.com>
References: <CAA=hcWS547t=FCMVfxhvWuEtLD_sfp8RrEGwqQQ5de2XScxb2A@mail.gmail.com>
	<CAAx3WaCNkhNS38tsYaycsiNzeJYN_YjXoGak4Yd1QxSUWQmYPA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 2 Jul 2019 17:40:38 +1000
Message-ID: <CAA=hcWSr42PPkOiUkz0sG3F7Nxp4eWEi4mGVn85Pgg4yt6Az-g@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Allow choose of U-Boot config for machine
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
X-List-Received-Date: Tue, 02 Jul 2019 07:40:41 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Gabriele, you are right, it did not work in command line but it
did not complain after UBOOT_CONFIG = "nand" to local.conf, how can I
am sure it is built to boot from nand? I don't have a board to try
yet.

Thank you very much.

Kind regards,

- jh


On 7/2/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi,
>
> you must use double quotes around nand, so:
> UBOOT_CONFIG = "nand"
>
> However I cannot guarantee this line will be the solution, I usually use a
> customized uboot.
>
> Gabriele
>
> Il giorno mar 2 lug 2019 alle ore 04:07 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Hi,
>>
>> The imx6ullevk.conf defined sdcard for booting on imx6 EVK:
>>
>> imx6ullevk.conf
>>
>> UBOOT_CONFIG ??= "sd"
>> UBOOT_CONFIG[sd] = "mx6ull_14x14_evk_config,sdcard"
>> UBOOT_CONFIG[mfgtool] = "mx6ull_14x14_evk_config"
>>
>> I need to change it for a customized board referenced from imx6 EVK
>> but booting from NAND, there are some blogs said it can be done to add
>> UBOOT_CONFIG=nand either in local.conf or command line. I tried it did
>> not work:
>>
>> ERROR: Unable to start bitbake server (None)
>> --- Starting bitbake server pid 2673 at 2019-07-02 11:54:24.011086 ---
>> ERROR: local.conf:34: unparsed line: 'UBOOT_CONFIG=nand'
>>
>> What should be a proper process to overwrite imx6ullevk.conf
>> UBOOT_CONFIG from sdcard to nand?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - JH
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

