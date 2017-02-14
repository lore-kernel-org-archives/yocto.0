Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D163FE0086E; Mon, 13 Feb 2017 17:22:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9790EE00754
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 17:22:29 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id 11so17197557qkl.0
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 17:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=12A0vUCckILEUh3GBn+xiQvHH3tSmOrsXf2oa0z2I68=;
	b=PqsF22v2NZiyRTw8WZkFdvPET+8RTpBXLIT6agdGR92xN09tSctfiA1pyxqO/VPQyC
	cwDSfT/MoSdyqTM916j0GHtcUz5MJsR/qy90d6Pg2h33uIUsMNe9RayEHMHRPD01mXEI
	/jdpLSoyFIbHAM8hyvFEmqN3Tk4CeQsZB+9E4U5hl+i2Gty0sIFmBk4dYryb1fzxDTnQ
	qM/WxhjNcqJriqzMjcfNCJq7c6lNT2OSNvkZ3ci0wQgEBoV3V6nMI5qVGTGYTb0HgJFk
	7SNapHleexjuZEk3BqsJpAEy1qDOJex/98vN0U9nYwxqfQ645MHqfP+WZWmjE9IPStY9
	wKTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=12A0vUCckILEUh3GBn+xiQvHH3tSmOrsXf2oa0z2I68=;
	b=PiU3IfbgLAeYoLCL5yFkob4OoViEaX2QJozs4eHnMLfGjioCtcRx3B4KSBvr3fk0wc
	MjB+uvDlnU21RhAnV1M++5F2dofq4IR01jeV34phpE5N36GxPMyf375mWM1H5TVAv6WO
	4H4s5uXysgegMe8YhN71g9IB9UdyJy018bPihwMjN6gwuCv9O+LLWNj9zWG8FejjI4AK
	fa2cyYsE09FhRjuLC7tPxBM7jtmnyn9Ot4ylMSUwiz2B9J5B3Qk0OHZvV/KYfMnUXTjh
	3L2v4JAI5vBxmA37VKlU7FrSFdOwEbX9qz7RfaWqEG6w4pD2TwwLDMluYSKJLeTdeCts
	LVFA==
X-Gm-Message-State: AMke39lVNDAVFr8GgALt7VDgh0nu1qJ/v9olVxIz7Q0zEKEmoUbB1bLQYz82ioGcnc6dzhcQht4vFHGOQVVgWQ==
X-Received: by 10.55.192.65 with SMTP id o62mr4785380qki.10.1487035348561;
	Mon, 13 Feb 2017 17:22:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.71 with HTTP; Mon, 13 Feb 2017 17:22:28 -0800 (PST)
In-Reply-To: <CABgxDoJ+ij9K86mUtSDxUfmCfTFgO_Zhw=bqYTJ2YojtpGY4dQ@mail.gmail.com>
References: <1486564699-6001-1-git-send-email-eddie.cai.linux@gmail.com>
	<1486564699-6001-3-git-send-email-eddie.cai.linux@gmail.com>
	<CABgxDoJ+ij9K86mUtSDxUfmCfTFgO_Zhw=bqYTJ2YojtpGY4dQ@mail.gmail.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Tue, 14 Feb 2017 09:22:28 +0800
Message-ID: <CAJrj+DPsrt61yQ6SP6sv=Y_GTK5=jLwyTaCLczGeufoXfs9icQ@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: yocto@yoctoproject.org, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][morty][PATH 2/3] machine: Use SOC specific assignements
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
X-List-Received-Date: Tue, 14 Feb 2017 01:22:32 -0000
Content-Type: text/plain; charset=UTF-8

Hi Romain

2017-02-14 1:02 GMT+08:00 Romain Perier <romain.perier@gmail.com>:
> It would be nice to do the same thing for ther SoCs, what do you think ?
Yes, But i found RK3066 and RK3188 is using the same file.
>
> Reviewed-by: Romain Perier <romain.perier@collabora.com>
>
> 2017-02-08 15:38 GMT+01:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>>
>> From: Eddie Cai <eddie.cai@rock-chips.com>
>>
>> In this way the modifications will be used on all RK3288 boards.
>>
>> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
>> ---
>>  conf/machine/include/rk3288.inc | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/conf/machine/include/rk3288.inc
>> b/conf/machine/include/rk3288.inc
>> index 6d4affd..b3726ee 100644
>> --- a/conf/machine/include/rk3288.inc
>> +++ b/conf/machine/include/rk3288.inc
>> @@ -1,7 +1,10 @@
>>  # Copyright (C) 2015 Romain Perier
>>  # Released under the MIT license (see COPYING.MIT for the terms)
>>
>> +SOC_FAMILY  = "rk3288"
>> +
>>  require conf/machine/include/tune-cortexa17.inc
>> +require conf/machine/include/soc-family.inc
>>
>>  DEFAULTTUNE="cortexa17hf-neon-vfpv4"
>>  PREFERRED_PROVIDER_virtual/kernel = "linux"
>> --
>> 2.7.4
>>
>

