Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7876CE009BC; Sat, 25 Feb 2017 22:28:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179EDE0095F
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:28:14 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id r136so4021055vke.1
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FWZno7zrDeEkSSspJj5nWX6xQuUZtRd7tt9+LFKX/QM=;
	b=HnztAtMGYG0zycWgiy/7OaTHcPDlwIxQTHGLl6pxqDlwhg+u0zDQ7ku4DdTYr1iu9R
	PJMBbHRzYQipODIiYbdFh9Ip6DNV/iHFSzt092CBhu2+a1g4hwKLhcZdM9T5H4RozXD7
	Yw1vuD+bFiODGmOAiSsYEGwaorYz6bvoiqU23FPByXXBYRr55PIKd/SkFkqCcoR0LJAo
	+T8jYCzEZSZBNZprT6caOYB4lCCK+YKapDf5U5VfF1eZ6cnFhyiSLoikiyZl39P6c0HU
	A2tmpj/zNcyI2YAHybATDyLhxUQVfOUwf1AToKWLg1T+p80Ul/UmJs9dz8gcAaM9OnNI
	tdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FWZno7zrDeEkSSspJj5nWX6xQuUZtRd7tt9+LFKX/QM=;
	b=WXBo8xmMmhh9KmUje8PsxvPrdtc8ILu3SIt0PTL1Eg/EOUWOZN8NIXy2tTCPEnpD7b
	tppq1w1JUtTdjKn7ovHufq3xSUtbwid1YYTTgdj/wv7Pz9v3x3jM1n+ZocbVZW/QP5wj
	4Ku8xeI5IxFQ7Mw2NAa0qYSJG+wn9j9qShnS2uPYaQC9x6q11YASlgaxCGIH86cyBxcc
	mSz5VQ5pQFMYEyA+qGqbmvfX65aEGydq/1dEGttDxG/ZLHRqSjdt46rDS5oZECv7YQU7
	hPKfvxflAbAWQMvmFSWlGlfveKXrFsr6aIbb56BG7ykbQFHCDupSrdWWiMcmqoicFUdp
	asZw==
X-Gm-Message-State: AMke39ngc4USBB658SyuWt3PXdivhLLbWFQFyCM897Vin2LhhdMncLlCGRNlx+QWlAsp1EbOwdF4dt/j9Q7mcQ==
X-Received: by 10.31.73.5 with SMTP id w5mr3753546vka.160.1488090494413; Sat,
	25 Feb 2017 22:28:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sat, 25 Feb 2017 22:28:13 -0800 (PST)
In-Reply-To: <CAJrj+DNRLr6e5b3nmjdKL8cNP3nbQPjw0-690C+Lb45xng-xWQ@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-6-twoerner@gmail.com>
	<CAJrj+DNRLr6e5b3nmjdKL8cNP3nbQPjw0-690C+Lb45xng-xWQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 26 Feb 2017 01:28:13 -0500
Message-ID: <CAHUNapSw4DB5OO6WqKsVJ7FGDbQGGm=+jLhq+fixTCn6kSjepA@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 5/5] machine: rk3288: GPT image support
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
X-List-Received-Date: Sun, 26 Feb 2017 06:28:17 -0000
Content-Type: text/plain; charset=UTF-8

applied, thanks!

On Sun, Feb 19, 2017 at 1:33 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
> Hi Trevor
>
>
> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>
>> Configure any rk3288 build to generate the new GPT image which is then
>> either
>> flashed to eMMC or dd'ed to an SDcard.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> ---
>>  conf/machine/include/rk3288.inc | 3 +++
>>  1 file changed, 3 insertions(+)
>
> Reviewed-by Eddie Cai <eddie.cai.linux@gmail.com>
>>
>>
>> diff --git a/conf/machine/include/rk3288.inc
>> b/conf/machine/include/rk3288.inc
>> index 4a4201f..964d8b0 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -13,3 +13,6 @@ KBUILD_DEFCONFIG = "multi_v7_defconfig"
>>
>>  PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-rockchip"
>>  SPL_BINARY ?= "u-boot-spl-dtb.bin"
>> +
>> +IMAGE_FSTYPES = "ext4 rockchip-gpt-img"
>> +IMAGE_CLASSES += "rockchip-gpt-img"
>> --
>> 2.12.0.rc1.48.g076c053
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

